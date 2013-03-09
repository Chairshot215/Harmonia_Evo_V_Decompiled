.class public Lcom/android/phone/PhonePreference;
.super Lcom/htc/preference/HtcPreferenceActivity;
.source "PhonePreference.java"

# interfaces
.implements Lcom/htc/preference/HtcPreference$OnPreferenceChangeListener;
.implements Landroid/content/DialogInterface$OnDismissListener;


# static fields
.field private static final BUTTON_HOME_COUNTRY_KEY:Ljava/lang/String; = "button_home_country_key"

.field private static final BUTTON_HOME_DIALING_KEY:Ljava/lang/String; = "button_home_dialing_key"

.field private static final DEBUG:Z = false

.field static final DEFAULT_EDIT_REJECT_MSG:Z = true

.field static final DEFAULT_QUICK_TEXT_INDEX:I = 0x0

.field static final DEFAULT_SAVE_UNKNOWN:Z = true

.field private static final EDIT_REJECT_MESSAGE_DIALOG:I = 0x0

.field public static final INTERNATIONAL_DIALING_EXPECTED_NUMBER:Ljava/lang/String; = "+82"

.field public static final INTERNATIONAL_DIALING_KEY:Ljava/lang/String; = "international_dialing_key"

.field public static final INTERNATIONAL_DIALING_NUMBER_KEY:Ljava/lang/String; = "international_dialing_number_key"

.field static final KEY_CATE_PHONE_SETTING:Ljava/lang/String; = "pref_cate_phone_setting"

.field static final KEY_EDIT_REJECT_MSG_TEXT:Ljava/lang/String; = "pref_key_edit_reject_msg"

.field static final KEY_REJECT_MSG_TEXT:Ljava/lang/String; = "pref_key_reject_msg_text"

.field static final KEY_SAVE_UNKNOWN_TO_CONTACT:Ljava/lang/String; = "pref_key_save_contact"

.field static final REQUEST_CODE_REJECT_MESSAGE:I = 0x1

.field private static final TAG:Ljava/lang/String; = "PhonePreference"


# instance fields
.field private mButtonHomeCountry:Lcom/htc/preference/HtcCheckBoxPreference;

.field private mButtonHomeDialing:Lcom/htc/preference/HtcPreference;

.field private mCallRejectMessage:Lcom/htc/preference/HtcPreference;

.field private mCharmNotification:Lcom/htc/preference/HtcCheckBoxPreference;

.field private mDefaultCallRejectMessage:Ljava/lang/String;

.field private mIntlDialingChkBox:Lcom/htc/preference/HtcCheckBoxPreference;

.field private mIntlDialingEditNumber:Lcom/android/phone/EditNumberPreference;

.field private mPhone:Lcom/android/internal/telephony/Phone;

.field private mPhoneNotificationPreview:Lcom/htc/preference/HtcCheckBoxPreference;

.field private mSharedPreferences:Landroid/content/SharedPreferences;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 131
    invoke-direct {p0}, Lcom/htc/preference/HtcPreferenceActivity;-><init>()V

    .line 116
    iput-object v0, p0, Lcom/android/phone/PhonePreference;->mIntlDialingChkBox:Lcom/htc/preference/HtcCheckBoxPreference;

    .line 117
    iput-object v0, p0, Lcom/android/phone/PhonePreference;->mIntlDialingEditNumber:Lcom/android/phone/EditNumberPreference;

    .line 132
    return-void
.end method

.method static synthetic access$000(Lcom/android/phone/PhonePreference;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 58
    iget-object v0, p0, Lcom/android/phone/PhonePreference;->mDefaultCallRejectMessage:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/phone/PhonePreference;)Landroid/content/SharedPreferences;
    .locals 1
    .parameter "x0"

    .prologue
    .line 58
    iget-object v0, p0, Lcom/android/phone/PhonePreference;->mSharedPreferences:Landroid/content/SharedPreferences;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/phone/PhonePreference;)Lcom/htc/preference/HtcPreference;
    .locals 1
    .parameter "x0"

    .prologue
    .line 58
    iget-object v0, p0, Lcom/android/phone/PhonePreference;->mCallRejectMessage:Lcom/htc/preference/HtcPreference;

    return-object v0
.end method

.method private isAirplaneModeOn()Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 374
    invoke-virtual {p0}, Lcom/android/phone/PhonePreference;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "airplane_mode_on"

    invoke-static {v1, v2, v0}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method private static final isRejectMsgUserEditable()Z
    .locals 2

    .prologue
    .line 282
    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v1, 0x19

    if-ne v0, v1, :cond_0

    .line 283
    const/4 v0, 0x1

    .line 285
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private updateRejMsgPref()V
    .locals 6

    .prologue
    .line 350
    const-string v2, "pref_key_reject_msg_text"

    invoke-virtual {p0, v2}, Lcom/android/phone/PhonePreference;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v2

    iput-object v2, p0, Lcom/android/phone/PhonePreference;->mCallRejectMessage:Lcom/htc/preference/HtcPreference;

    .line 352
    sget-short v2, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    const/16 v3, 0x51

    if-ne v2, v3, :cond_2

    .line 353
    const-string v2, "pref_key_edit_reject_msg"

    invoke-virtual {p0, v2}, Lcom/android/phone/PhonePreference;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v0

    .line 354
    .local v0, editMsgPref:Lcom/htc/preference/HtcPreference;
    const-string v2, "pref_cate_phone_setting"

    invoke-virtual {p0, v2}, Lcom/android/phone/PhonePreference;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v1

    check-cast v1, Lcom/htc/preference/HtcPreferenceCategory;

    .line 355
    .local v1, prefCatePhoneSetting:Lcom/htc/preference/HtcPreferenceCategory;
    if-eqz v1, :cond_1

    .line 356
    iget-object v2, p0, Lcom/android/phone/PhonePreference;->mCallRejectMessage:Lcom/htc/preference/HtcPreference;

    if-eqz v2, :cond_0

    .line 357
    iget-object v2, p0, Lcom/android/phone/PhonePreference;->mCallRejectMessage:Lcom/htc/preference/HtcPreference;

    invoke-virtual {v1, v2}, Lcom/htc/preference/HtcPreferenceCategory;->removePreference(Lcom/htc/preference/HtcPreference;)Z

    .line 358
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/android/phone/PhonePreference;->mCallRejectMessage:Lcom/htc/preference/HtcPreference;

    .line 360
    :cond_0
    if-eqz v0, :cond_1

    .line 361
    invoke-virtual {v1, v0}, Lcom/htc/preference/HtcPreferenceCategory;->removePreference(Lcom/htc/preference/HtcPreference;)Z

    .line 372
    .end local v0           #editMsgPref:Lcom/htc/preference/HtcPreference;
    .end local v1           #prefCatePhoneSetting:Lcom/htc/preference/HtcPreferenceCategory;
    :cond_1
    :goto_0
    return-void

    .line 365
    :cond_2
    const v2, 0x7f0e005e

    invoke-virtual {p0, v2}, Lcom/android/phone/PhonePreference;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/phone/PhonePreference;->mDefaultCallRejectMessage:Ljava/lang/String;

    .line 366
    iget-object v2, p0, Lcom/android/phone/PhonePreference;->mCallRejectMessage:Lcom/htc/preference/HtcPreference;

    if-eqz v2, :cond_1

    .line 367
    iget-object v2, p0, Lcom/android/phone/PhonePreference;->mCallRejectMessage:Lcom/htc/preference/HtcPreference;

    invoke-virtual {v2}, Lcom/htc/preference/HtcPreference;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v2

    iput-object v2, p0, Lcom/android/phone/PhonePreference;->mSharedPreferences:Landroid/content/SharedPreferences;

    .line 368
    iget-object v2, p0, Lcom/android/phone/PhonePreference;->mCallRejectMessage:Lcom/htc/preference/HtcPreference;

    iget-object v3, p0, Lcom/android/phone/PhonePreference;->mSharedPreferences:Landroid/content/SharedPreferences;

    const-string v4, "pref_key_reject_msg_text"

    iget-object v5, p0, Lcom/android/phone/PhonePreference;->mDefaultCallRejectMessage:Ljava/lang/String;

    invoke-interface {v3, v4, v5}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/htc/preference/HtcPreference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method


# virtual methods
.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 3
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "data"

    .prologue
    .line 328
    const/4 v2, 0x1

    if-ne v2, p1, :cond_0

    .line 329
    const/4 v2, -0x1

    if-ne v2, p2, :cond_0

    .line 330
    const-string v2, "content"

    invoke-virtual {p3, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 331
    .local v1, quickText:Ljava/lang/String;
    iget-object v2, p0, Lcom/android/phone/PhonePreference;->mSharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 332
    .local v0, editor:Landroid/content/SharedPreferences$Editor;
    const-string v2, "pref_key_reject_msg_text"

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 334
    iget-object v2, p0, Lcom/android/phone/PhonePreference;->mCallRejectMessage:Lcom/htc/preference/HtcPreference;

    invoke-virtual {v2, v1}, Lcom/htc/preference/HtcPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 338
    .end local v0           #editor:Landroid/content/SharedPreferences$Editor;
    .end local v1           #quickText:Ljava/lang/String;
    :cond_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 7
    .parameter "icicle"

    .prologue
    const/4 v6, 0x0

    .line 136
    invoke-super {p0, p1}, Lcom/htc/preference/HtcPreferenceActivity;->onCreate(Landroid/os/Bundle;)V

    .line 138
    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->getDefaultPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v3

    iput-object v3, p0, Lcom/android/phone/PhonePreference;->mPhone:Lcom/android/internal/telephony/Phone;

    .line 140
    const v3, 0x7f050025

    invoke-virtual {p0, v3}, Lcom/android/phone/PhonePreference;->addPreferencesFromResource(I)V

    .line 142
    invoke-direct {p0}, Lcom/android/phone/PhonePreference;->updateRejMsgPref()V

    .line 146
    invoke-virtual {p0}, Lcom/android/phone/PhonePreference;->getPreferenceScreen()Lcom/htc/preference/HtcPreferenceScreen;

    move-result-object v1

    .line 147
    .local v1, prefSet:Lcom/htc/preference/HtcPreferenceScreen;
    iget-object v3, p0, Lcom/android/phone/PhonePreference;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v3}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v0

    .line 148
    .local v0, phoneType:I
    const-string v3, "button_home_country_key"

    invoke-virtual {p0, v3}, Lcom/android/phone/PhonePreference;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v3

    check-cast v3, Lcom/htc/preference/HtcCheckBoxPreference;

    iput-object v3, p0, Lcom/android/phone/PhonePreference;->mButtonHomeCountry:Lcom/htc/preference/HtcCheckBoxPreference;

    .line 149
    const-string v3, "button_home_dialing_key"

    invoke-virtual {p0, v3}, Lcom/android/phone/PhonePreference;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v3

    iput-object v3, p0, Lcom/android/phone/PhonePreference;->mButtonHomeDialing:Lcom/htc/preference/HtcPreference;

    .line 150
    const-wide v3, 0x4000cccccccccccdL

    invoke-static {v3, v4}, Lcom/htc/util/contacts/BuildUtils$HtcSense;->isAboveOrEqualToVer(D)Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-static {}, Lcom/android/internal/telephony/HtcBuildUtils;->VERIZON_WPHONE_CONFIG()Z

    move-result v3

    if-eqz v3, :cond_0

    sget-short v3, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    const/16 v4, 0xd8

    if-ne v3, v4, :cond_1

    :cond_0
    invoke-static {}, Lcom/android/internal/telephony/HtcBuildUtils;->SPRINT_WPHONE_CONFIG()Z

    move-result v3

    if-nez v3, :cond_1

    const/4 v3, 0x2

    if-ne v0, v3, :cond_3

    invoke-static {}, Lcom/android/internal/telephony/HtcBuildUtils;->enableRUIMCard()Z

    move-result v3

    if-nez v3, :cond_3

    invoke-static {}, Lcom/android/internal/telephony/HtcBuildUtils;->CT_CONFIG()Z

    move-result v3

    if-nez v3, :cond_3

    .line 154
    :cond_1
    iget-object v3, p0, Lcom/android/phone/PhonePreference;->mButtonHomeCountry:Lcom/htc/preference/HtcCheckBoxPreference;

    if-eqz v3, :cond_2

    .line 155
    iget-object v3, p0, Lcom/android/phone/PhonePreference;->mButtonHomeCountry:Lcom/htc/preference/HtcCheckBoxPreference;

    invoke-virtual {v1, v3}, Lcom/htc/preference/HtcPreferenceScreen;->removePreference(Lcom/htc/preference/HtcPreference;)Z

    .line 156
    iput-object v6, p0, Lcom/android/phone/PhonePreference;->mButtonHomeCountry:Lcom/htc/preference/HtcCheckBoxPreference;

    .line 158
    :cond_2
    iget-object v3, p0, Lcom/android/phone/PhonePreference;->mButtonHomeDialing:Lcom/htc/preference/HtcPreference;

    if-eqz v3, :cond_3

    .line 159
    iget-object v3, p0, Lcom/android/phone/PhonePreference;->mButtonHomeDialing:Lcom/htc/preference/HtcPreference;

    invoke-virtual {v1, v3}, Lcom/htc/preference/HtcPreferenceScreen;->removePreference(Lcom/htc/preference/HtcPreference;)Z

    .line 160
    iput-object v6, p0, Lcom/android/phone/PhonePreference;->mButtonHomeDialing:Lcom/htc/preference/HtcPreference;

    .line 165
    :cond_3
    const-string v3, "international_dialing_key"

    invoke-virtual {p0, v3}, Lcom/android/phone/PhonePreference;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v3

    check-cast v3, Lcom/htc/preference/HtcCheckBoxPreference;

    iput-object v3, p0, Lcom/android/phone/PhonePreference;->mIntlDialingChkBox:Lcom/htc/preference/HtcCheckBoxPreference;

    .line 166
    const-string v3, "international_dialing_number_key"

    invoke-virtual {p0, v3}, Lcom/android/phone/PhonePreference;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v3

    check-cast v3, Lcom/android/phone/EditNumberPreference;

    iput-object v3, p0, Lcom/android/phone/PhonePreference;->mIntlDialingEditNumber:Lcom/android/phone/EditNumberPreference;

    .line 167
    sget-boolean v3, Lcom/android/phone/HtcFeatureList;->FEATURE_INTERNATIONAL_DIALING:Z

    if-eqz v3, :cond_7

    .line 168
    iget-object v3, p0, Lcom/android/phone/PhonePreference;->mIntlDialingChkBox:Lcom/htc/preference/HtcCheckBoxPreference;

    if-eqz v3, :cond_4

    .line 169
    iget-object v3, p0, Lcom/android/phone/PhonePreference;->mIntlDialingChkBox:Lcom/htc/preference/HtcCheckBoxPreference;

    invoke-virtual {v3, p0}, Lcom/htc/preference/HtcCheckBoxPreference;->setOnPreferenceChangeListener(Lcom/htc/preference/HtcPreference$OnPreferenceChangeListener;)V

    .line 171
    :cond_4
    iget-object v3, p0, Lcom/android/phone/PhonePreference;->mIntlDialingEditNumber:Lcom/android/phone/EditNumberPreference;

    if-eqz v3, :cond_5

    .line 172
    iget-object v3, p0, Lcom/android/phone/PhonePreference;->mIntlDialingEditNumber:Lcom/android/phone/EditNumberPreference;

    invoke-virtual {v3, p0}, Lcom/android/phone/EditNumberPreference;->setOnPreferenceChangeListener(Lcom/htc/preference/HtcPreference$OnPreferenceChangeListener;)V

    .line 173
    iget-object v3, p0, Lcom/android/phone/PhonePreference;->mIntlDialingEditNumber:Lcom/android/phone/EditNumberPreference;

    invoke-virtual {v3, p0}, Lcom/android/phone/EditNumberPreference;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 185
    :cond_5
    :goto_0
    const-string v3, "charm_phone_notification"

    invoke-virtual {p0, v3}, Lcom/android/phone/PhonePreference;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v3

    check-cast v3, Lcom/htc/preference/HtcCheckBoxPreference;

    iput-object v3, p0, Lcom/android/phone/PhonePreference;->mCharmNotification:Lcom/htc/preference/HtcCheckBoxPreference;

    .line 186
    invoke-virtual {p0}, Lcom/android/phone/PhonePreference;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "charm_indicator_supported"

    const/4 v5, 0x0

    invoke-static {v3, v4, v5}, Landroid/provider/Settings$System;->getBoolean(Landroid/content/ContentResolver;Ljava/lang/String;Z)Z

    move-result v2

    .line 187
    .local v2, toggle:Z
    if-nez v2, :cond_6

    iget-object v3, p0, Lcom/android/phone/PhonePreference;->mCharmNotification:Lcom/htc/preference/HtcCheckBoxPreference;

    if-eqz v3, :cond_6

    .line 188
    iget-object v3, p0, Lcom/android/phone/PhonePreference;->mCharmNotification:Lcom/htc/preference/HtcCheckBoxPreference;

    invoke-virtual {v1, v3}, Lcom/htc/preference/HtcPreferenceScreen;->removePreference(Lcom/htc/preference/HtcPreference;)Z

    .line 189
    iput-object v6, p0, Lcom/android/phone/PhonePreference;->mCharmNotification:Lcom/htc/preference/HtcCheckBoxPreference;

    .line 191
    :cond_6
    const-string v3, "htc_phone_notification_preview"

    invoke-virtual {p0, v3}, Lcom/android/phone/PhonePreference;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v3

    check-cast v3, Lcom/htc/preference/HtcCheckBoxPreference;

    iput-object v3, p0, Lcom/android/phone/PhonePreference;->mPhoneNotificationPreview:Lcom/htc/preference/HtcCheckBoxPreference;

    .line 193
    return-void

    .line 176
    .end local v2           #toggle:Z
    :cond_7
    iget-object v3, p0, Lcom/android/phone/PhonePreference;->mIntlDialingChkBox:Lcom/htc/preference/HtcCheckBoxPreference;

    if-eqz v3, :cond_8

    .line 177
    iget-object v3, p0, Lcom/android/phone/PhonePreference;->mIntlDialingChkBox:Lcom/htc/preference/HtcCheckBoxPreference;

    invoke-virtual {v1, v3}, Lcom/htc/preference/HtcPreferenceScreen;->removePreference(Lcom/htc/preference/HtcPreference;)Z

    .line 179
    :cond_8
    iget-object v3, p0, Lcom/android/phone/PhonePreference;->mIntlDialingEditNumber:Lcom/android/phone/EditNumberPreference;

    if-eqz v3, :cond_5

    .line 180
    iget-object v3, p0, Lcom/android/phone/PhonePreference;->mIntlDialingEditNumber:Lcom/android/phone/EditNumberPreference;

    invoke-virtual {v1, v3}, Lcom/htc/preference/HtcPreferenceScreen;->removePreference(Lcom/htc/preference/HtcPreference;)Z

    goto :goto_0
.end method

.method protected onCreateDialog(I)Landroid/app/Dialog;
    .locals 8
    .parameter "id"

    .prologue
    const/4 v7, 0x0

    .line 293
    const/4 v2, 0x0

    .line 294
    .local v2, result:Landroid/app/Dialog;
    if-nez p1, :cond_0

    .line 295
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 296
    .local v0, inflater:Landroid/view/LayoutInflater;
    const v4, 0x7f03004c

    invoke-virtual {v0, v4, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    .line 297
    .local v3, view:Landroid/view/View;
    const v4, 0x7f08009d

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/EditText;

    .line 298
    .local v1, message:Landroid/widget/EditText;
    const/16 v4, 0x4001

    invoke-virtual {v1, v4}, Landroid/widget/EditText;->setInputType(I)V

    .line 299
    const/4 v4, 0x0

    invoke-virtual {v1, v4}, Landroid/widget/EditText;->setSingleLine(Z)V

    .line 300
    const/16 v4, 0x8

    invoke-virtual {v1, v4}, Landroid/widget/EditText;->setMaxLines(I)V

    .line 303
    new-instance v4, Lcom/htc/widget/HtcAlertDialog$Builder;

    invoke-direct {v4, p0}, Lcom/htc/widget/HtcAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v5, 0x7f0e005c

    invoke-virtual {v4, v5}, Lcom/htc/widget/HtcAlertDialog$Builder;->setTitle(I)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v4

    invoke-virtual {v4, v3}, Lcom/htc/widget/HtcAlertDialog$Builder;->setView(Landroid/view/View;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v4

    const v5, 0x7f0e0264

    new-instance v6, Lcom/android/phone/PhonePreference$1;

    invoke-direct {v6, p0, v1}, Lcom/android/phone/PhonePreference$1;-><init>(Lcom/android/phone/PhonePreference;Landroid/widget/EditText;)V

    invoke-virtual {v4, v5, v6}, Lcom/htc/widget/HtcAlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v4

    const v5, 0x7f0e0256

    invoke-virtual {v4, v5, v7}, Lcom/htc/widget/HtcAlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v4

    invoke-virtual {v4}, Lcom/htc/widget/HtcAlertDialog$Builder;->create()Lcom/htc/widget/HtcAlertDialog;

    move-result-object v2

    .line 321
    .end local v0           #inflater:Landroid/view/LayoutInflater;
    .end local v1           #message:Landroid/widget/EditText;
    .end local v3           #view:Landroid/view/View;
    :cond_0
    if-nez v2, :cond_1

    .line 322
    invoke-super {p0, p1}, Lcom/htc/preference/HtcPreferenceActivity;->onCreateDialog(I)Landroid/app/Dialog;

    move-result-object v2

    .line 324
    :cond_1
    return-object v2
.end method

.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 2
    .parameter "dialog"

    .prologue
    .line 400
    iget-object v0, p0, Lcom/android/phone/PhonePreference;->mIntlDialingEditNumber:Lcom/android/phone/EditNumberPreference;

    invoke-virtual {v0}, Lcom/android/phone/EditNumberPreference;->getDialog()Landroid/app/Dialog;

    move-result-object v0

    if-ne v0, p1, :cond_0

    .line 401
    iget-object v0, p0, Lcom/android/phone/PhonePreference;->mIntlDialingChkBox:Lcom/htc/preference/HtcCheckBoxPreference;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/phone/PhonePreference;->mIntlDialingChkBox:Lcom/htc/preference/HtcCheckBoxPreference;

    invoke-virtual {v0}, Lcom/htc/preference/HtcCheckBoxPreference;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 402
    iget-object v0, p0, Lcom/android/phone/PhonePreference;->mIntlDialingEditNumber:Lcom/android/phone/EditNumberPreference;

    invoke-virtual {v0}, Lcom/android/phone/EditNumberPreference;->getText()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 403
    iget-object v0, p0, Lcom/android/phone/PhonePreference;->mIntlDialingChkBox:Lcom/htc/preference/HtcCheckBoxPreference;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/htc/preference/HtcCheckBoxPreference;->setChecked(Z)V

    .line 407
    :cond_0
    return-void
.end method

.method protected onPause()V
    .locals 0

    .prologue
    .line 237
    invoke-super {p0}, Lcom/htc/preference/HtcPreferenceActivity;->onPause()V

    .line 239
    return-void
.end method

.method public onPreferenceChange(Lcom/htc/preference/HtcPreference;Ljava/lang/Object;)Z
    .locals 5
    .parameter "preference"
    .parameter "newValue"

    .prologue
    const/4 v1, 0x0

    const/4 v2, 0x1

    .line 381
    invoke-virtual {p0}, Lcom/android/phone/PhonePreference;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 382
    .local v0, cr:Landroid/content/ContentResolver;
    iget-object v3, p0, Lcom/android/phone/PhonePreference;->mIntlDialingChkBox:Lcom/htc/preference/HtcCheckBoxPreference;

    if-ne p1, v3, :cond_1

    .line 383
    iget-object v1, p0, Lcom/android/phone/PhonePreference;->mIntlDialingEditNumber:Lcom/android/phone/EditNumberPreference;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/phone/PhonePreference;->mIntlDialingEditNumber:Lcom/android/phone/EditNumberPreference;

    invoke-virtual {v1}, Lcom/android/phone/EditNumberPreference;->getText()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 384
    iget-object v1, p0, Lcom/android/phone/PhonePreference;->mIntlDialingEditNumber:Lcom/android/phone/EditNumberPreference;

    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Lcom/android/phone/EditNumberPreference;->showDialog(Landroid/os/Bundle;)V

    .line 394
    :cond_0
    :goto_0
    return v2

    .line 388
    :cond_1
    iget-object v3, p0, Lcom/android/phone/PhonePreference;->mPhoneNotificationPreview:Lcom/htc/preference/HtcCheckBoxPreference;

    if-ne p1, v3, :cond_3

    .line 389
    const-string v3, "htc_phone_notification_preview"

    iget-object v4, p0, Lcom/android/phone/PhonePreference;->mPhoneNotificationPreview:Lcom/htc/preference/HtcCheckBoxPreference;

    invoke-virtual {v4}, Lcom/htc/preference/HtcCheckBoxPreference;->isChecked()Z

    move-result v4

    if-nez v4, :cond_2

    move v1, v2

    :cond_2
    invoke-static {v0, v3, v1}, Landroid/provider/Settings$Secure;->putBoolean(Landroid/content/ContentResolver;Ljava/lang/String;Z)Z

    goto :goto_0

    .line 390
    :cond_3
    iget-object v3, p0, Lcom/android/phone/PhonePreference;->mCharmNotification:Lcom/htc/preference/HtcCheckBoxPreference;

    if-ne p1, v3, :cond_0

    .line 391
    const-string v3, "charm_phone_notification"

    iget-object v4, p0, Lcom/android/phone/PhonePreference;->mCharmNotification:Lcom/htc/preference/HtcCheckBoxPreference;

    invoke-virtual {v4}, Lcom/htc/preference/HtcCheckBoxPreference;->isChecked()Z

    move-result v4

    if-nez v4, :cond_4

    move v1, v2

    :cond_4
    invoke-static {v0, v3, v1}, Landroid/provider/Settings$System;->putBoolean(Landroid/content/ContentResolver;Ljava/lang/String;Z)Z

    goto :goto_0
.end method

.method public onPreferenceTreeClick(Lcom/htc/preference/HtcPreferenceScreen;Lcom/htc/preference/HtcPreference;)Z
    .locals 6
    .parameter "preferenceScreen"
    .parameter "preference"

    .prologue
    const/4 v0, 0x1

    const/4 v3, 0x0

    .line 256
    iget-object v4, p0, Lcom/android/phone/PhonePreference;->mCallRejectMessage:Lcom/htc/preference/HtcPreference;

    if-ne p2, v4, :cond_2

    .line 257
    invoke-static {}, Lcom/android/phone/PhonePreference;->isRejectMsgUserEditable()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 258
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    .line 259
    .local v2, textSelectIntent:Landroid/content/Intent;
    const-string v4, "com.android.mms"

    const-string v5, "com.android.mms.ui.QTextActivity"

    invoke-virtual {v2, v4, v5}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 260
    invoke-virtual {p0, v2, v0}, Lcom/android/phone/PhonePreference;->startActivityForResult(Landroid/content/Intent;I)V

    .line 278
    .end local v2           #textSelectIntent:Landroid/content/Intent;
    :cond_0
    :goto_0
    return v3

    .line 262
    :cond_1
    invoke-virtual {p0, v3}, Lcom/android/phone/PhonePreference;->showDialog(I)V

    goto :goto_0

    .line 266
    :cond_2
    iget-object v4, p0, Lcom/android/phone/PhonePreference;->mButtonHomeCountry:Lcom/htc/preference/HtcCheckBoxPreference;

    if-ne p2, v4, :cond_4

    .line 267
    iget-object v4, p0, Lcom/android/phone/PhonePreference;->mButtonHomeCountry:Lcom/htc/preference/HtcCheckBoxPreference;

    invoke-virtual {v4}, Lcom/htc/preference/HtcCheckBoxPreference;->isChecked()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 268
    .local v0, enabled:Z
    :goto_1
    iget-object v4, p0, Lcom/android/phone/PhonePreference;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v4}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "home_country_enabled"

    invoke-static {v4, v5, v0}, Landroid/provider/Settings$System;->putBoolean(Landroid/content/ContentResolver;Ljava/lang/String;Z)Z

    goto :goto_0

    .end local v0           #enabled:Z
    :cond_3
    move v0, v3

    .line 267
    goto :goto_1

    .line 272
    :cond_4
    iget-object v4, p0, Lcom/android/phone/PhonePreference;->mButtonHomeDialing:Lcom/htc/preference/HtcPreference;

    if-ne p2, v4, :cond_0

    .line 273
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 274
    .local v1, intent:Landroid/content/Intent;
    const-string v4, "com.android.htcdialer"

    const-string v5, "com.android.htcdialer.HomeDialingActivity"

    invoke-virtual {v1, v4, v5}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 275
    invoke-virtual {p0, v1}, Lcom/android/phone/PhonePreference;->startActivity(Landroid/content/Intent;)V

    goto :goto_0
.end method

.method protected onPrepareDialog(ILandroid/app/Dialog;)V
    .locals 2
    .parameter "id"
    .parameter "dialog"

    .prologue
    .line 342
    invoke-super {p0, p1, p2}, Lcom/htc/preference/HtcPreferenceActivity;->onPrepareDialog(ILandroid/app/Dialog;)V

    .line 343
    if-nez p1, :cond_0

    .line 344
    const v1, 0x7f08009d

    invoke-virtual {p2, v1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    .line 345
    .local v0, message:Landroid/widget/EditText;
    iget-object v1, p0, Lcom/android/phone/PhonePreference;->mCallRejectMessage:Lcom/htc/preference/HtcPreference;

    invoke-virtual {v1}, Lcom/htc/preference/HtcPreference;->getSummary()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 346
    invoke-virtual {v0}, Landroid/widget/EditText;->length()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setSelection(I)V

    .line 348
    .end local v0           #message:Landroid/widget/EditText;
    :cond_0
    return-void
.end method

.method protected onResume()V
    .locals 8

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 197
    invoke-super {p0}, Lcom/htc/preference/HtcPreferenceActivity;->onResume()V

    .line 200
    invoke-virtual {p0}, Lcom/android/phone/PhonePreference;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 203
    .local v2, cr:Landroid/content/ContentResolver;
    iget-object v6, p0, Lcom/android/phone/PhonePreference;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v6}, Lcom/android/internal/telephony/Phone;->getIccCard()Lcom/android/internal/telephony/IccCard;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/internal/telephony/IccCard;->getState()Lcom/android/internal/telephony/IccCard$State;

    move-result-object v6

    sget-object v7, Lcom/android/internal/telephony/IccCard$State;->ABSENT:Lcom/android/internal/telephony/IccCard$State;

    if-eq v6, v7, :cond_4

    invoke-direct {p0}, Lcom/android/phone/PhonePreference;->isAirplaneModeOn()Z

    move-result v6

    if-nez v6, :cond_4

    move v0, v4

    .line 204
    .local v0, IccEnabled:Z
    :goto_0
    iget-object v6, p0, Lcom/android/phone/PhonePreference;->mButtonHomeCountry:Lcom/htc/preference/HtcCheckBoxPreference;

    if-eqz v6, :cond_0

    .line 205
    invoke-virtual {p0}, Lcom/android/phone/PhonePreference;->getBaseContext()Landroid/content/Context;

    move-result-object v6

    invoke-static {v6}, Lcom/android/phone/util/HomeDialing;->isEnabled(Landroid/content/Context;)Z

    move-result v3

    .line 206
    .local v3, enabled:Z
    iget-object v6, p0, Lcom/android/phone/PhonePreference;->mButtonHomeCountry:Lcom/htc/preference/HtcCheckBoxPreference;

    invoke-virtual {v6, v3}, Lcom/htc/preference/HtcCheckBoxPreference;->setChecked(Z)V

    .line 207
    iget-object v6, p0, Lcom/android/phone/PhonePreference;->mButtonHomeCountry:Lcom/htc/preference/HtcCheckBoxPreference;

    invoke-virtual {v6, v0}, Lcom/htc/preference/HtcCheckBoxPreference;->setEnabled(Z)V

    .line 210
    .end local v3           #enabled:Z
    :cond_0
    iget-object v6, p0, Lcom/android/phone/PhonePreference;->mButtonHomeDialing:Lcom/htc/preference/HtcPreference;

    if-eqz v6, :cond_1

    .line 211
    iget-object v6, p0, Lcom/android/phone/PhonePreference;->mButtonHomeDialing:Lcom/htc/preference/HtcPreference;

    invoke-virtual {v6, v0}, Lcom/htc/preference/HtcPreference;->setEnabled(Z)V

    .line 216
    :cond_1
    iget-object v6, p0, Lcom/android/phone/PhonePreference;->mCharmNotification:Lcom/htc/preference/HtcCheckBoxPreference;

    if-eqz v6, :cond_2

    .line 217
    const-string v6, "charm_phone_notification"

    invoke-static {v2, v6, v5}, Landroid/provider/Settings$System;->getBoolean(Landroid/content/ContentResolver;Ljava/lang/String;Z)Z

    move-result v1

    .line 218
    .local v1, checked:Z
    iget-object v5, p0, Lcom/android/phone/PhonePreference;->mCharmNotification:Lcom/htc/preference/HtcCheckBoxPreference;

    invoke-virtual {v5, v1}, Lcom/htc/preference/HtcCheckBoxPreference;->setChecked(Z)V

    .line 219
    iget-object v5, p0, Lcom/android/phone/PhonePreference;->mCharmNotification:Lcom/htc/preference/HtcCheckBoxPreference;

    invoke-virtual {v5, p0}, Lcom/htc/preference/HtcCheckBoxPreference;->setOnPreferenceChangeListener(Lcom/htc/preference/HtcPreference$OnPreferenceChangeListener;)V

    .line 222
    .end local v1           #checked:Z
    :cond_2
    iget-object v5, p0, Lcom/android/phone/PhonePreference;->mPhoneNotificationPreview:Lcom/htc/preference/HtcCheckBoxPreference;

    if-eqz v5, :cond_3

    .line 225
    const-string v5, "htc_phone_notification_preview"

    invoke-static {v2, v5, v4}, Landroid/provider/Settings$Secure;->getBoolean(Landroid/content/ContentResolver;Ljava/lang/String;Z)Z

    move-result v1

    .line 227
    .restart local v1       #checked:Z
    iget-object v4, p0, Lcom/android/phone/PhonePreference;->mPhoneNotificationPreview:Lcom/htc/preference/HtcCheckBoxPreference;

    invoke-virtual {v4, v1}, Lcom/htc/preference/HtcCheckBoxPreference;->setChecked(Z)V

    .line 228
    iget-object v4, p0, Lcom/android/phone/PhonePreference;->mPhoneNotificationPreview:Lcom/htc/preference/HtcCheckBoxPreference;

    invoke-virtual {v4, p0}, Lcom/htc/preference/HtcCheckBoxPreference;->setOnPreferenceChangeListener(Lcom/htc/preference/HtcPreference$OnPreferenceChangeListener;)V

    .line 232
    .end local v1           #checked:Z
    :cond_3
    invoke-virtual {p0}, Lcom/android/phone/PhonePreference;->onContentChanged()V

    .line 233
    return-void

    .end local v0           #IccEnabled:Z
    :cond_4
    move v0, v5

    .line 203
    goto :goto_0
.end method
