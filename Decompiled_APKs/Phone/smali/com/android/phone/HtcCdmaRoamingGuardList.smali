.class public Lcom/android/phone/HtcCdmaRoamingGuardList;
.super Lcom/htc/preference/HtcPreferenceActivity;
.source "HtcCdmaRoamingGuardList.java"

# interfaces
.implements Lcom/htc/preference/HtcPreference$OnPreferenceClickListener;


# static fields
.field private static LOG_TAG:Ljava/lang/String; = null

.field public static final ROAMING_PROVIDER_GSM:Ljava/lang/String; = "gsm"


# instance fields
.field private BUTTON_DOMESTIC_DATA_ROAM_GUARD:Ljava/lang/String;

.field private BUTTON_DOMESTIC_VOICE_ROAM_GUARD:Ljava/lang/String;

.field private BUTTON_GSM_DATA_ROAM_GARD:Ljava/lang/String;

.field private BUTTON_GSM_SMS_ROAM_GUARD:Ljava/lang/String;

.field private BUTTON_GSM_VOICE_ROAM_GARD:Ljava/lang/String;

.field private BUTTON_INTERNATIONAL_DATA_ROAM_GUARD:Ljava/lang/String;

.field private BUTTON_INTERNATIONAL_SMS_ROAM_GUARD:Ljava/lang/String;

.field private BUTTON_INTERNATIONAL_VOICE_ROAM_GUARD:Ljava/lang/String;

.field private DBG:Z

.field private ROAM_TYPE_DOMESTIC:Ljava/lang/String;

.field private ROAM_TYPE_INTERNATIONAL:Ljava/lang/String;

.field private mBtDomesticDataRoamGuard:Lcom/htc/preference/HtcCheckBoxPreference;

.field private mBtDomesticVoiceRoamGuard:Lcom/htc/preference/HtcCheckBoxPreference;

.field private mBtGsmDataRoamGuard:Lcom/htc/preference/HtcCheckBoxPreference;

.field private mBtGsmSmsRoamGuard:Lcom/htc/preference/HtcCheckBoxPreference;

.field private mBtGsmVoiceRoamGuard:Lcom/htc/preference/HtcCheckBoxPreference;

.field private mBtInternationalDataRoamGuard:Lcom/htc/preference/HtcCheckBoxPreference;

.field private mBtInternationalSmsRoamGuard:Lcom/htc/preference/HtcCheckBoxPreference;

.field private mBtInternationalVoiceRoamGuard:Lcom/htc/preference/HtcCheckBoxPreference;

.field private mContentResolver:Landroid/content/ContentResolver;

.field private mPhone:Lcom/android/internal/telephony/Phone;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 41
    const-string v0, "Phone/Settings_HtcCdmaRoamingGuardList"

    sput-object v0, Lcom/android/phone/HtcCdmaRoamingGuardList;->LOG_TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 38
    invoke-direct {p0}, Lcom/htc/preference/HtcPreferenceActivity;-><init>()V

    .line 40
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/phone/HtcCdmaRoamingGuardList;->DBG:Z

    .line 43
    iput-object v1, p0, Lcom/android/phone/HtcCdmaRoamingGuardList;->mPhone:Lcom/android/internal/telephony/Phone;

    .line 45
    iput-object v1, p0, Lcom/android/phone/HtcCdmaRoamingGuardList;->mBtDomesticVoiceRoamGuard:Lcom/htc/preference/HtcCheckBoxPreference;

    .line 46
    iput-object v1, p0, Lcom/android/phone/HtcCdmaRoamingGuardList;->mBtInternationalVoiceRoamGuard:Lcom/htc/preference/HtcCheckBoxPreference;

    .line 47
    iput-object v1, p0, Lcom/android/phone/HtcCdmaRoamingGuardList;->mBtDomesticDataRoamGuard:Lcom/htc/preference/HtcCheckBoxPreference;

    .line 48
    iput-object v1, p0, Lcom/android/phone/HtcCdmaRoamingGuardList;->mBtInternationalDataRoamGuard:Lcom/htc/preference/HtcCheckBoxPreference;

    .line 49
    iput-object v1, p0, Lcom/android/phone/HtcCdmaRoamingGuardList;->mBtInternationalSmsRoamGuard:Lcom/htc/preference/HtcCheckBoxPreference;

    .line 54
    iput-object v1, p0, Lcom/android/phone/HtcCdmaRoamingGuardList;->mBtGsmVoiceRoamGuard:Lcom/htc/preference/HtcCheckBoxPreference;

    .line 55
    iput-object v1, p0, Lcom/android/phone/HtcCdmaRoamingGuardList;->mBtGsmDataRoamGuard:Lcom/htc/preference/HtcCheckBoxPreference;

    .line 56
    iput-object v1, p0, Lcom/android/phone/HtcCdmaRoamingGuardList;->mBtGsmSmsRoamGuard:Lcom/htc/preference/HtcCheckBoxPreference;

    .line 59
    const-string v0, "button_roaming_guard_voice_domestic"

    iput-object v0, p0, Lcom/android/phone/HtcCdmaRoamingGuardList;->BUTTON_DOMESTIC_VOICE_ROAM_GUARD:Ljava/lang/String;

    .line 60
    const-string v0, "button_roaming_guard_data_domestic"

    iput-object v0, p0, Lcom/android/phone/HtcCdmaRoamingGuardList;->BUTTON_DOMESTIC_DATA_ROAM_GUARD:Ljava/lang/String;

    .line 61
    const-string v0, "button_roaming_guard_voice_international"

    iput-object v0, p0, Lcom/android/phone/HtcCdmaRoamingGuardList;->BUTTON_INTERNATIONAL_VOICE_ROAM_GUARD:Ljava/lang/String;

    .line 62
    const-string v0, "button_roaming_guard_data_international"

    iput-object v0, p0, Lcom/android/phone/HtcCdmaRoamingGuardList;->BUTTON_INTERNATIONAL_DATA_ROAM_GUARD:Ljava/lang/String;

    .line 63
    const-string v0, "button_roaming_guard_sms_international"

    iput-object v0, p0, Lcom/android/phone/HtcCdmaRoamingGuardList;->BUTTON_INTERNATIONAL_SMS_ROAM_GUARD:Ljava/lang/String;

    .line 65
    const-string v0, "button_gsm_roaming_guard_voice"

    iput-object v0, p0, Lcom/android/phone/HtcCdmaRoamingGuardList;->BUTTON_GSM_VOICE_ROAM_GARD:Ljava/lang/String;

    .line 66
    const-string v0, "button_gsm_roaming_guard_data"

    iput-object v0, p0, Lcom/android/phone/HtcCdmaRoamingGuardList;->BUTTON_GSM_DATA_ROAM_GARD:Ljava/lang/String;

    .line 67
    const-string v0, "button_roaming_guard_sms"

    iput-object v0, p0, Lcom/android/phone/HtcCdmaRoamingGuardList;->BUTTON_GSM_SMS_ROAM_GUARD:Ljava/lang/String;

    .line 71
    iput-object v1, p0, Lcom/android/phone/HtcCdmaRoamingGuardList;->mContentResolver:Landroid/content/ContentResolver;

    .line 185
    const-string v0, "domestic"

    iput-object v0, p0, Lcom/android/phone/HtcCdmaRoamingGuardList;->ROAM_TYPE_DOMESTIC:Ljava/lang/String;

    .line 186
    const-string v0, "international"

    iput-object v0, p0, Lcom/android/phone/HtcCdmaRoamingGuardList;->ROAM_TYPE_INTERNATIONAL:Ljava/lang/String;

    return-void
.end method

.method private handleAndVoiceRoamingGuard()V
    .locals 2

    .prologue
    .line 280
    iget-object v0, p0, Lcom/android/phone/HtcCdmaRoamingGuardList;->mContentResolver:Landroid/content/ContentResolver;

    iget-object v1, p0, Lcom/android/phone/HtcCdmaRoamingGuardList;->ROAM_TYPE_DOMESTIC:Ljava/lang/String;

    invoke-static {v0, v1}, Landroid/provider/Settings$Secure;->isVoiceRoamingGuardAllowed(Landroid/content/ContentResolver;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/phone/HtcCdmaRoamingGuardList;->mContentResolver:Landroid/content/ContentResolver;

    iget-object v1, p0, Lcom/android/phone/HtcCdmaRoamingGuardList;->ROAM_TYPE_INTERNATIONAL:Ljava/lang/String;

    invoke-static {v0, v1}, Landroid/provider/Settings$Secure;->isVoiceRoamingGuardAllowed(Landroid/content/ContentResolver;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 282
    :cond_0
    const/4 v0, 0x1

    invoke-static {v0}, Lcom/android/phone/HtcCdmaPhoneApp;->setCdmaCallGuardSetting(Z)V

    .line 286
    :goto_0
    return-void

    .line 284
    :cond_1
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/android/phone/HtcCdmaPhoneApp;->setCdmaCallGuardSetting(Z)V

    goto :goto_0
.end method

.method private restoreUserSettings()V
    .locals 3

    .prologue
    .line 189
    const/4 v0, 0x0

    .line 191
    .local v0, enabled:Z
    iget-object v1, p0, Lcom/android/phone/HtcCdmaRoamingGuardList;->mContentResolver:Landroid/content/ContentResolver;

    iget-object v2, p0, Lcom/android/phone/HtcCdmaRoamingGuardList;->ROAM_TYPE_DOMESTIC:Ljava/lang/String;

    invoke-static {v1, v2}, Landroid/provider/Settings$Secure;->isVoiceRoamingGuardAllowed(Landroid/content/ContentResolver;Ljava/lang/String;)Z

    move-result v0

    .line 193
    iget-object v1, p0, Lcom/android/phone/HtcCdmaRoamingGuardList;->mBtDomesticVoiceRoamGuard:Lcom/htc/preference/HtcCheckBoxPreference;

    if-eqz v1, :cond_0

    .line 194
    iget-object v1, p0, Lcom/android/phone/HtcCdmaRoamingGuardList;->mBtDomesticVoiceRoamGuard:Lcom/htc/preference/HtcCheckBoxPreference;

    invoke-virtual {v1, v0}, Lcom/htc/preference/HtcCheckBoxPreference;->setChecked(Z)V

    .line 196
    :cond_0
    iget-object v1, p0, Lcom/android/phone/HtcCdmaRoamingGuardList;->mContentResolver:Landroid/content/ContentResolver;

    iget-object v2, p0, Lcom/android/phone/HtcCdmaRoamingGuardList;->ROAM_TYPE_DOMESTIC:Ljava/lang/String;

    invoke-static {v1, v2}, Landroid/provider/Settings$Secure;->isDataRoamingGuardAllowed(Landroid/content/ContentResolver;Ljava/lang/String;)Z

    move-result v0

    .line 197
    iget-object v1, p0, Lcom/android/phone/HtcCdmaRoamingGuardList;->mBtDomesticDataRoamGuard:Lcom/htc/preference/HtcCheckBoxPreference;

    invoke-virtual {v1, v0}, Lcom/htc/preference/HtcCheckBoxPreference;->setChecked(Z)V

    .line 201
    iget-object v1, p0, Lcom/android/phone/HtcCdmaRoamingGuardList;->mBtInternationalVoiceRoamGuard:Lcom/htc/preference/HtcCheckBoxPreference;

    if-eqz v1, :cond_1

    .line 202
    iget-object v1, p0, Lcom/android/phone/HtcCdmaRoamingGuardList;->mContentResolver:Landroid/content/ContentResolver;

    iget-object v2, p0, Lcom/android/phone/HtcCdmaRoamingGuardList;->ROAM_TYPE_INTERNATIONAL:Ljava/lang/String;

    invoke-static {v1, v2}, Landroid/provider/Settings$Secure;->isVoiceRoamingGuardAllowed(Landroid/content/ContentResolver;Ljava/lang/String;)Z

    move-result v0

    .line 203
    :cond_1
    iget-object v1, p0, Lcom/android/phone/HtcCdmaRoamingGuardList;->mBtInternationalVoiceRoamGuard:Lcom/htc/preference/HtcCheckBoxPreference;

    invoke-virtual {v1, v0}, Lcom/htc/preference/HtcCheckBoxPreference;->setChecked(Z)V

    .line 205
    iget-object v1, p0, Lcom/android/phone/HtcCdmaRoamingGuardList;->mContentResolver:Landroid/content/ContentResolver;

    iget-object v2, p0, Lcom/android/phone/HtcCdmaRoamingGuardList;->ROAM_TYPE_INTERNATIONAL:Ljava/lang/String;

    invoke-static {v1, v2}, Landroid/provider/Settings$Secure;->isDataRoamingGuardAllowed(Landroid/content/ContentResolver;Ljava/lang/String;)Z

    move-result v0

    .line 206
    iget-object v1, p0, Lcom/android/phone/HtcCdmaRoamingGuardList;->mBtInternationalDataRoamGuard:Lcom/htc/preference/HtcCheckBoxPreference;

    invoke-virtual {v1, v0}, Lcom/htc/preference/HtcCheckBoxPreference;->setChecked(Z)V

    .line 208
    iget-object v1, p0, Lcom/android/phone/HtcCdmaRoamingGuardList;->mContentResolver:Landroid/content/ContentResolver;

    iget-object v2, p0, Lcom/android/phone/HtcCdmaRoamingGuardList;->ROAM_TYPE_INTERNATIONAL:Ljava/lang/String;

    invoke-static {v1, v2}, Landroid/provider/Settings$Secure;->isSmsRoamingGuardAllowed(Landroid/content/ContentResolver;Ljava/lang/String;)Z

    move-result v0

    .line 209
    iget-object v1, p0, Lcom/android/phone/HtcCdmaRoamingGuardList;->mBtInternationalSmsRoamGuard:Lcom/htc/preference/HtcCheckBoxPreference;

    invoke-virtual {v1, v0}, Lcom/htc/preference/HtcCheckBoxPreference;->setChecked(Z)V

    .line 215
    iget-object v1, p0, Lcom/android/phone/HtcCdmaRoamingGuardList;->mContentResolver:Landroid/content/ContentResolver;

    const-string v2, "gsm"

    invoke-static {v1, v2}, Landroid/provider/Settings$Secure;->isVoiceRoamingGuardAllowed(Landroid/content/ContentResolver;Ljava/lang/String;)Z

    move-result v0

    .line 216
    iget-object v1, p0, Lcom/android/phone/HtcCdmaRoamingGuardList;->mBtGsmVoiceRoamGuard:Lcom/htc/preference/HtcCheckBoxPreference;

    if-eqz v1, :cond_2

    .line 217
    iget-object v1, p0, Lcom/android/phone/HtcCdmaRoamingGuardList;->mBtGsmVoiceRoamGuard:Lcom/htc/preference/HtcCheckBoxPreference;

    invoke-virtual {v1, v0}, Lcom/htc/preference/HtcCheckBoxPreference;->setChecked(Z)V

    .line 219
    :cond_2
    iget-object v1, p0, Lcom/android/phone/HtcCdmaRoamingGuardList;->mContentResolver:Landroid/content/ContentResolver;

    const-string v2, "gsm"

    invoke-static {v1, v2}, Landroid/provider/Settings$Secure;->isDataRoamingGuardAllowed(Landroid/content/ContentResolver;Ljava/lang/String;)Z

    move-result v0

    .line 220
    iget-object v1, p0, Lcom/android/phone/HtcCdmaRoamingGuardList;->mBtGsmDataRoamGuard:Lcom/htc/preference/HtcCheckBoxPreference;

    if-eqz v1, :cond_3

    .line 221
    iget-object v1, p0, Lcom/android/phone/HtcCdmaRoamingGuardList;->mBtGsmDataRoamGuard:Lcom/htc/preference/HtcCheckBoxPreference;

    invoke-virtual {v1, v0}, Lcom/htc/preference/HtcCheckBoxPreference;->setChecked(Z)V

    .line 223
    :cond_3
    iget-object v1, p0, Lcom/android/phone/HtcCdmaRoamingGuardList;->mContentResolver:Landroid/content/ContentResolver;

    const-string v2, "gsm"

    invoke-static {v1, v2}, Landroid/provider/Settings$Secure;->isSmsRoamingGuardAllowed(Landroid/content/ContentResolver;Ljava/lang/String;)Z

    move-result v0

    .line 224
    iget-object v1, p0, Lcom/android/phone/HtcCdmaRoamingGuardList;->mBtGsmSmsRoamGuard:Lcom/htc/preference/HtcCheckBoxPreference;

    if-eqz v1, :cond_4

    .line 225
    iget-object v1, p0, Lcom/android/phone/HtcCdmaRoamingGuardList;->mBtGsmSmsRoamGuard:Lcom/htc/preference/HtcCheckBoxPreference;

    invoke-virtual {v1, v0}, Lcom/htc/preference/HtcCheckBoxPreference;->setChecked(Z)V

    .line 229
    :cond_4
    return-void
.end method

.method private updateButtonEnabledState()V
    .locals 5

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 76
    const/4 v0, 0x0

    .line 77
    .local v0, blocked:Z
    iget-object v1, p0, Lcom/android/phone/HtcCdmaRoamingGuardList;->mContentResolver:Landroid/content/ContentResolver;

    iget-object v4, p0, Lcom/android/phone/HtcCdmaRoamingGuardList;->ROAM_TYPE_DOMESTIC:Ljava/lang/String;

    invoke-static {v1, v4}, Landroid/provider/Settings$Secure;->isVoiceRoamingBlocked(Landroid/content/ContentResolver;Ljava/lang/String;)Z

    move-result v0

    .line 79
    iget-object v1, p0, Lcom/android/phone/HtcCdmaRoamingGuardList;->mBtDomesticVoiceRoamGuard:Lcom/htc/preference/HtcCheckBoxPreference;

    if-eqz v1, :cond_0

    .line 80
    iget-object v4, p0, Lcom/android/phone/HtcCdmaRoamingGuardList;->mBtDomesticVoiceRoamGuard:Lcom/htc/preference/HtcCheckBoxPreference;

    if-nez v0, :cond_2

    move v1, v2

    :goto_0
    invoke-virtual {v4, v1}, Lcom/htc/preference/HtcCheckBoxPreference;->setEnabled(Z)V

    .line 82
    :cond_0
    iget-object v1, p0, Lcom/android/phone/HtcCdmaRoamingGuardList;->mBtInternationalVoiceRoamGuard:Lcom/htc/preference/HtcCheckBoxPreference;

    if-eqz v1, :cond_1

    .line 83
    iget-object v1, p0, Lcom/android/phone/HtcCdmaRoamingGuardList;->mContentResolver:Landroid/content/ContentResolver;

    iget-object v4, p0, Lcom/android/phone/HtcCdmaRoamingGuardList;->ROAM_TYPE_INTERNATIONAL:Ljava/lang/String;

    invoke-static {v1, v4}, Landroid/provider/Settings$Secure;->isVoiceRoamingBlocked(Landroid/content/ContentResolver;Ljava/lang/String;)Z

    move-result v0

    .line 84
    :cond_1
    iget-object v4, p0, Lcom/android/phone/HtcCdmaRoamingGuardList;->mBtInternationalVoiceRoamGuard:Lcom/htc/preference/HtcCheckBoxPreference;

    if-nez v0, :cond_3

    move v1, v2

    :goto_1
    invoke-virtual {v4, v1}, Lcom/htc/preference/HtcCheckBoxPreference;->setEnabled(Z)V

    .line 86
    iget-object v1, p0, Lcom/android/phone/HtcCdmaRoamingGuardList;->mContentResolver:Landroid/content/ContentResolver;

    iget-object v4, p0, Lcom/android/phone/HtcCdmaRoamingGuardList;->ROAM_TYPE_DOMESTIC:Ljava/lang/String;

    invoke-static {v1, v4}, Landroid/provider/Settings$Secure;->isDataRoamingBlocked(Landroid/content/ContentResolver;Ljava/lang/String;)Z

    move-result v0

    .line 87
    iget-object v4, p0, Lcom/android/phone/HtcCdmaRoamingGuardList;->mBtDomesticDataRoamGuard:Lcom/htc/preference/HtcCheckBoxPreference;

    if-nez v0, :cond_4

    move v1, v2

    :goto_2
    invoke-virtual {v4, v1}, Lcom/htc/preference/HtcCheckBoxPreference;->setEnabled(Z)V

    .line 89
    iget-object v1, p0, Lcom/android/phone/HtcCdmaRoamingGuardList;->mContentResolver:Landroid/content/ContentResolver;

    iget-object v4, p0, Lcom/android/phone/HtcCdmaRoamingGuardList;->ROAM_TYPE_INTERNATIONAL:Ljava/lang/String;

    invoke-static {v1, v4}, Landroid/provider/Settings$Secure;->isDataRoamingBlocked(Landroid/content/ContentResolver;Ljava/lang/String;)Z

    move-result v0

    .line 90
    iget-object v1, p0, Lcom/android/phone/HtcCdmaRoamingGuardList;->mBtInternationalDataRoamGuard:Lcom/htc/preference/HtcCheckBoxPreference;

    if-nez v0, :cond_5

    :goto_3
    invoke-virtual {v1, v2}, Lcom/htc/preference/HtcCheckBoxPreference;->setEnabled(Z)V

    .line 92
    return-void

    :cond_2
    move v1, v3

    .line 80
    goto :goto_0

    :cond_3
    move v1, v3

    .line 84
    goto :goto_1

    :cond_4
    move v1, v3

    .line 87
    goto :goto_2

    :cond_5
    move v2, v3

    .line 90
    goto :goto_3
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 6
    .parameter "icicle"

    .prologue
    const/4 v5, 0x1

    .line 96
    invoke-super {p0, p1}, Lcom/htc/preference/HtcPreferenceActivity;->onCreate(Landroid/os/Bundle;)V

    .line 98
    const v2, 0x7f050016

    invoke-virtual {p0, v2}, Lcom/android/phone/HtcCdmaRoamingGuardList;->addPreferencesFromResource(I)V

    .line 99
    invoke-virtual {p0}, Lcom/android/phone/HtcCdmaRoamingGuardList;->getPreferenceScreen()Lcom/htc/preference/HtcPreferenceScreen;

    move-result-object v1

    .line 101
    .local v1, prefSet:Lcom/htc/preference/HtcPreferenceScreen;
    invoke-virtual {p0}, Lcom/android/phone/HtcCdmaRoamingGuardList;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    iput-object v2, p0, Lcom/android/phone/HtcCdmaRoamingGuardList;->mContentResolver:Landroid/content/ContentResolver;

    .line 102
    iget-object v2, p0, Lcom/android/phone/HtcCdmaRoamingGuardList;->BUTTON_DOMESTIC_VOICE_ROAM_GUARD:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/htc/preference/HtcPreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v2

    check-cast v2, Lcom/htc/preference/HtcCheckBoxPreference;

    iput-object v2, p0, Lcom/android/phone/HtcCdmaRoamingGuardList;->mBtDomesticVoiceRoamGuard:Lcom/htc/preference/HtcCheckBoxPreference;

    .line 103
    iget-object v2, p0, Lcom/android/phone/HtcCdmaRoamingGuardList;->BUTTON_DOMESTIC_DATA_ROAM_GUARD:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/htc/preference/HtcPreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v2

    check-cast v2, Lcom/htc/preference/HtcCheckBoxPreference;

    iput-object v2, p0, Lcom/android/phone/HtcCdmaRoamingGuardList;->mBtDomesticDataRoamGuard:Lcom/htc/preference/HtcCheckBoxPreference;

    .line 104
    iget-object v2, p0, Lcom/android/phone/HtcCdmaRoamingGuardList;->BUTTON_INTERNATIONAL_VOICE_ROAM_GUARD:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/htc/preference/HtcPreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v2

    check-cast v2, Lcom/htc/preference/HtcCheckBoxPreference;

    iput-object v2, p0, Lcom/android/phone/HtcCdmaRoamingGuardList;->mBtInternationalVoiceRoamGuard:Lcom/htc/preference/HtcCheckBoxPreference;

    .line 105
    iget-object v2, p0, Lcom/android/phone/HtcCdmaRoamingGuardList;->BUTTON_INTERNATIONAL_DATA_ROAM_GUARD:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/htc/preference/HtcPreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v2

    check-cast v2, Lcom/htc/preference/HtcCheckBoxPreference;

    iput-object v2, p0, Lcom/android/phone/HtcCdmaRoamingGuardList;->mBtInternationalDataRoamGuard:Lcom/htc/preference/HtcCheckBoxPreference;

    .line 106
    iget-object v2, p0, Lcom/android/phone/HtcCdmaRoamingGuardList;->BUTTON_INTERNATIONAL_SMS_ROAM_GUARD:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/htc/preference/HtcPreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v2

    check-cast v2, Lcom/htc/preference/HtcCheckBoxPreference;

    iput-object v2, p0, Lcom/android/phone/HtcCdmaRoamingGuardList;->mBtInternationalSmsRoamGuard:Lcom/htc/preference/HtcCheckBoxPreference;

    .line 110
    iget-object v2, p0, Lcom/android/phone/HtcCdmaRoamingGuardList;->BUTTON_GSM_VOICE_ROAM_GARD:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/htc/preference/HtcPreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v2

    check-cast v2, Lcom/htc/preference/HtcCheckBoxPreference;

    iput-object v2, p0, Lcom/android/phone/HtcCdmaRoamingGuardList;->mBtGsmVoiceRoamGuard:Lcom/htc/preference/HtcCheckBoxPreference;

    .line 111
    iget-object v2, p0, Lcom/android/phone/HtcCdmaRoamingGuardList;->BUTTON_GSM_DATA_ROAM_GARD:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/htc/preference/HtcPreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v2

    check-cast v2, Lcom/htc/preference/HtcCheckBoxPreference;

    iput-object v2, p0, Lcom/android/phone/HtcCdmaRoamingGuardList;->mBtGsmDataRoamGuard:Lcom/htc/preference/HtcCheckBoxPreference;

    .line 112
    iget-object v2, p0, Lcom/android/phone/HtcCdmaRoamingGuardList;->BUTTON_GSM_SMS_ROAM_GUARD:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/htc/preference/HtcPreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v2

    check-cast v2, Lcom/htc/preference/HtcCheckBoxPreference;

    iput-object v2, p0, Lcom/android/phone/HtcCdmaRoamingGuardList;->mBtGsmSmsRoamGuard:Lcom/htc/preference/HtcCheckBoxPreference;

    .line 113
    sget-boolean v2, Lcom/android/phone/HtcFeatureList;->FEATURE_THIS_IS_WORLD_PHONE:Z

    if-eq v2, v5, :cond_7

    .line 114
    iget-object v2, p0, Lcom/android/phone/HtcCdmaRoamingGuardList;->mBtGsmVoiceRoamGuard:Lcom/htc/preference/HtcCheckBoxPreference;

    if-eqz v2, :cond_0

    .line 115
    sget-object v2, Lcom/android/phone/HtcCdmaRoamingGuardList;->LOG_TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "OoO remove BUTTON_GSM_VOICE_ROAM_GARD ("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/phone/HtcCdmaRoamingGuardList;->mBtGsmVoiceRoamGuard:Lcom/htc/preference/HtcCheckBoxPreference;

    invoke-virtual {v1, v4}, Lcom/htc/preference/HtcPreferenceScreen;->removePreference(Lcom/htc/preference/HtcPreference;)Z

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 119
    :cond_0
    iget-object v2, p0, Lcom/android/phone/HtcCdmaRoamingGuardList;->mBtGsmDataRoamGuard:Lcom/htc/preference/HtcCheckBoxPreference;

    if-eqz v2, :cond_1

    .line 120
    sget-object v2, Lcom/android/phone/HtcCdmaRoamingGuardList;->LOG_TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "OoO remove BUTTON_GSM_DATA_ROAM_GARD ("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/phone/HtcCdmaRoamingGuardList;->mBtGsmDataRoamGuard:Lcom/htc/preference/HtcCheckBoxPreference;

    invoke-virtual {v1, v4}, Lcom/htc/preference/HtcPreferenceScreen;->removePreference(Lcom/htc/preference/HtcPreference;)Z

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 124
    :cond_1
    iget-object v2, p0, Lcom/android/phone/HtcCdmaRoamingGuardList;->mBtGsmSmsRoamGuard:Lcom/htc/preference/HtcCheckBoxPreference;

    if-eqz v2, :cond_2

    .line 125
    sget-object v2, Lcom/android/phone/HtcCdmaRoamingGuardList;->LOG_TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "OoO remove BUTTON_GSM_SMS_ROAM_GUARD ("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/phone/HtcCdmaRoamingGuardList;->mBtGsmSmsRoamGuard:Lcom/htc/preference/HtcCheckBoxPreference;

    invoke-virtual {v1, v4}, Lcom/htc/preference/HtcPreferenceScreen;->removePreference(Lcom/htc/preference/HtcPreference;)Z

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 141
    :cond_2
    :goto_0
    invoke-virtual {p0}, Lcom/android/phone/HtcCdmaRoamingGuardList;->getPreferenceScreen()Lcom/htc/preference/HtcPreferenceScreen;

    move-result-object v0

    .line 142
    .local v0, prefScreen:Lcom/htc/preference/HtcPreferenceScreen;
    sget-boolean v2, Lcom/android/phone/HtcFeatureList;->FEATURE_SUPPORT_VOICE_CALL_SERVICE:Z

    if-eq v2, v5, :cond_4

    .line 143
    iget-object v2, p0, Lcom/android/phone/HtcCdmaRoamingGuardList;->mBtDomesticVoiceRoamGuard:Lcom/htc/preference/HtcCheckBoxPreference;

    if-eqz v2, :cond_3

    .line 144
    sget-object v2, Lcom/android/phone/HtcCdmaRoamingGuardList;->LOG_TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "OoO remove BUTTON_DOMESTIC_VOICE_ROAM_GUARD ("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/phone/HtcCdmaRoamingGuardList;->mBtDomesticVoiceRoamGuard:Lcom/htc/preference/HtcCheckBoxPreference;

    invoke-virtual {v0, v4}, Lcom/htc/preference/HtcPreferenceScreen;->removePreference(Lcom/htc/preference/HtcPreference;)Z

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 148
    :cond_3
    iget-object v2, p0, Lcom/android/phone/HtcCdmaRoamingGuardList;->mBtInternationalVoiceRoamGuard:Lcom/htc/preference/HtcCheckBoxPreference;

    if-eqz v2, :cond_4

    .line 149
    sget-object v2, Lcom/android/phone/HtcCdmaRoamingGuardList;->LOG_TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "OoO remove BUTTON_INTERNATIONAL_VOICE_ROAM_GUARD ("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/phone/HtcCdmaRoamingGuardList;->mBtInternationalVoiceRoamGuard:Lcom/htc/preference/HtcCheckBoxPreference;

    invoke-virtual {v0, v4}, Lcom/htc/preference/HtcPreferenceScreen;->removePreference(Lcom/htc/preference/HtcPreference;)Z

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 154
    :cond_4
    iget-object v2, p0, Lcom/android/phone/HtcCdmaRoamingGuardList;->mBtDomesticVoiceRoamGuard:Lcom/htc/preference/HtcCheckBoxPreference;

    if-eqz v2, :cond_5

    .line 155
    iget-object v2, p0, Lcom/android/phone/HtcCdmaRoamingGuardList;->mBtDomesticVoiceRoamGuard:Lcom/htc/preference/HtcCheckBoxPreference;

    invoke-virtual {v2, p0}, Lcom/htc/preference/HtcCheckBoxPreference;->setOnPreferenceClickListener(Lcom/htc/preference/HtcPreference$OnPreferenceClickListener;)V

    .line 157
    :cond_5
    iget-object v2, p0, Lcom/android/phone/HtcCdmaRoamingGuardList;->mBtDomesticDataRoamGuard:Lcom/htc/preference/HtcCheckBoxPreference;

    invoke-virtual {v2, p0}, Lcom/htc/preference/HtcCheckBoxPreference;->setOnPreferenceClickListener(Lcom/htc/preference/HtcPreference$OnPreferenceClickListener;)V

    .line 159
    iget-object v2, p0, Lcom/android/phone/HtcCdmaRoamingGuardList;->mBtInternationalVoiceRoamGuard:Lcom/htc/preference/HtcCheckBoxPreference;

    if-eqz v2, :cond_6

    .line 160
    iget-object v2, p0, Lcom/android/phone/HtcCdmaRoamingGuardList;->mBtInternationalVoiceRoamGuard:Lcom/htc/preference/HtcCheckBoxPreference;

    invoke-virtual {v2, p0}, Lcom/htc/preference/HtcCheckBoxPreference;->setOnPreferenceClickListener(Lcom/htc/preference/HtcPreference$OnPreferenceClickListener;)V

    .line 162
    :cond_6
    iget-object v2, p0, Lcom/android/phone/HtcCdmaRoamingGuardList;->mBtInternationalDataRoamGuard:Lcom/htc/preference/HtcCheckBoxPreference;

    invoke-virtual {v2, p0}, Lcom/htc/preference/HtcCheckBoxPreference;->setOnPreferenceClickListener(Lcom/htc/preference/HtcPreference$OnPreferenceClickListener;)V

    .line 163
    iget-object v2, p0, Lcom/android/phone/HtcCdmaRoamingGuardList;->mBtInternationalSmsRoamGuard:Lcom/htc/preference/HtcCheckBoxPreference;

    invoke-virtual {v2, p0}, Lcom/htc/preference/HtcCheckBoxPreference;->setOnPreferenceClickListener(Lcom/htc/preference/HtcPreference$OnPreferenceClickListener;)V

    .line 164
    return-void

    .line 129
    .end local v0           #prefScreen:Lcom/htc/preference/HtcPreferenceScreen;
    :cond_7
    iget-object v2, p0, Lcom/android/phone/HtcCdmaRoamingGuardList;->mBtGsmVoiceRoamGuard:Lcom/htc/preference/HtcCheckBoxPreference;

    if-eqz v2, :cond_8

    .line 130
    iget-object v2, p0, Lcom/android/phone/HtcCdmaRoamingGuardList;->mBtGsmVoiceRoamGuard:Lcom/htc/preference/HtcCheckBoxPreference;

    invoke-virtual {v2, p0}, Lcom/htc/preference/HtcCheckBoxPreference;->setOnPreferenceClickListener(Lcom/htc/preference/HtcPreference$OnPreferenceClickListener;)V

    .line 131
    :cond_8
    iget-object v2, p0, Lcom/android/phone/HtcCdmaRoamingGuardList;->mBtGsmDataRoamGuard:Lcom/htc/preference/HtcCheckBoxPreference;

    if-eqz v2, :cond_9

    .line 132
    iget-object v2, p0, Lcom/android/phone/HtcCdmaRoamingGuardList;->mBtGsmDataRoamGuard:Lcom/htc/preference/HtcCheckBoxPreference;

    invoke-virtual {v2, p0}, Lcom/htc/preference/HtcCheckBoxPreference;->setOnPreferenceClickListener(Lcom/htc/preference/HtcPreference$OnPreferenceClickListener;)V

    .line 133
    :cond_9
    iget-object v2, p0, Lcom/android/phone/HtcCdmaRoamingGuardList;->mBtGsmSmsRoamGuard:Lcom/htc/preference/HtcCheckBoxPreference;

    if-eqz v2, :cond_2

    .line 134
    iget-object v2, p0, Lcom/android/phone/HtcCdmaRoamingGuardList;->mBtGsmSmsRoamGuard:Lcom/htc/preference/HtcCheckBoxPreference;

    invoke-virtual {v2, p0}, Lcom/htc/preference/HtcCheckBoxPreference;->setOnPreferenceClickListener(Lcom/htc/preference/HtcPreference$OnPreferenceClickListener;)V

    goto/16 :goto_0
.end method

.method protected onDestroy()V
    .locals 0

    .prologue
    .line 182
    invoke-super {p0}, Lcom/htc/preference/HtcPreferenceActivity;->onDestroy()V

    .line 183
    return-void
.end method

.method protected onPause()V
    .locals 0

    .prologue
    .line 177
    invoke-super {p0}, Lcom/htc/preference/HtcPreferenceActivity;->onPause()V

    .line 178
    return-void
.end method

.method public onPreferenceClick(Lcom/htc/preference/HtcPreference;)Z
    .locals 4
    .parameter "preference"

    .prologue
    const/4 v0, 0x1

    .line 235
    iget-object v1, p0, Lcom/android/phone/HtcCdmaRoamingGuardList;->mBtDomesticVoiceRoamGuard:Lcom/htc/preference/HtcCheckBoxPreference;

    if-ne v1, p1, :cond_0

    .line 236
    iget-object v1, p0, Lcom/android/phone/HtcCdmaRoamingGuardList;->mContentResolver:Landroid/content/ContentResolver;

    iget-object v2, p0, Lcom/android/phone/HtcCdmaRoamingGuardList;->ROAM_TYPE_DOMESTIC:Ljava/lang/String;

    iget-object v3, p0, Lcom/android/phone/HtcCdmaRoamingGuardList;->mBtDomesticVoiceRoamGuard:Lcom/htc/preference/HtcCheckBoxPreference;

    invoke-virtual {v3}, Lcom/htc/preference/HtcCheckBoxPreference;->isChecked()Z

    move-result v3

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$Secure;->setVoiceRoamingGuardAllowed(Landroid/content/ContentResolver;Ljava/lang/String;Z)V

    .line 237
    invoke-direct {p0}, Lcom/android/phone/HtcCdmaRoamingGuardList;->handleAndVoiceRoamingGuard()V

    .line 273
    :goto_0
    return v0

    .line 240
    :cond_0
    iget-object v1, p0, Lcom/android/phone/HtcCdmaRoamingGuardList;->mBtDomesticDataRoamGuard:Lcom/htc/preference/HtcCheckBoxPreference;

    if-ne v1, p1, :cond_1

    .line 241
    iget-object v1, p0, Lcom/android/phone/HtcCdmaRoamingGuardList;->mContentResolver:Landroid/content/ContentResolver;

    iget-object v2, p0, Lcom/android/phone/HtcCdmaRoamingGuardList;->ROAM_TYPE_DOMESTIC:Ljava/lang/String;

    iget-object v3, p0, Lcom/android/phone/HtcCdmaRoamingGuardList;->mBtDomesticDataRoamGuard:Lcom/htc/preference/HtcCheckBoxPreference;

    invoke-virtual {v3}, Lcom/htc/preference/HtcCheckBoxPreference;->isChecked()Z

    move-result v3

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$Secure;->setDataRoamingGuardAllowed(Landroid/content/ContentResolver;Ljava/lang/String;Z)V

    goto :goto_0

    .line 246
    :cond_1
    iget-object v1, p0, Lcom/android/phone/HtcCdmaRoamingGuardList;->mBtInternationalVoiceRoamGuard:Lcom/htc/preference/HtcCheckBoxPreference;

    if-ne v1, p1, :cond_2

    .line 247
    iget-object v1, p0, Lcom/android/phone/HtcCdmaRoamingGuardList;->mContentResolver:Landroid/content/ContentResolver;

    iget-object v2, p0, Lcom/android/phone/HtcCdmaRoamingGuardList;->ROAM_TYPE_INTERNATIONAL:Ljava/lang/String;

    iget-object v3, p0, Lcom/android/phone/HtcCdmaRoamingGuardList;->mBtInternationalVoiceRoamGuard:Lcom/htc/preference/HtcCheckBoxPreference;

    invoke-virtual {v3}, Lcom/htc/preference/HtcCheckBoxPreference;->isChecked()Z

    move-result v3

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$Secure;->setVoiceRoamingGuardAllowed(Landroid/content/ContentResolver;Ljava/lang/String;Z)V

    .line 248
    invoke-direct {p0}, Lcom/android/phone/HtcCdmaRoamingGuardList;->handleAndVoiceRoamingGuard()V

    goto :goto_0

    .line 252
    :cond_2
    iget-object v1, p0, Lcom/android/phone/HtcCdmaRoamingGuardList;->mBtInternationalDataRoamGuard:Lcom/htc/preference/HtcCheckBoxPreference;

    if-ne v1, p1, :cond_3

    .line 253
    iget-object v1, p0, Lcom/android/phone/HtcCdmaRoamingGuardList;->mContentResolver:Landroid/content/ContentResolver;

    iget-object v2, p0, Lcom/android/phone/HtcCdmaRoamingGuardList;->ROAM_TYPE_INTERNATIONAL:Ljava/lang/String;

    iget-object v3, p0, Lcom/android/phone/HtcCdmaRoamingGuardList;->mBtInternationalDataRoamGuard:Lcom/htc/preference/HtcCheckBoxPreference;

    invoke-virtual {v3}, Lcom/htc/preference/HtcCheckBoxPreference;->isChecked()Z

    move-result v3

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$Secure;->setDataRoamingGuardAllowed(Landroid/content/ContentResolver;Ljava/lang/String;Z)V

    goto :goto_0

    .line 255
    :cond_3
    iget-object v1, p0, Lcom/android/phone/HtcCdmaRoamingGuardList;->mBtInternationalSmsRoamGuard:Lcom/htc/preference/HtcCheckBoxPreference;

    if-ne v1, p1, :cond_4

    .line 256
    iget-object v1, p0, Lcom/android/phone/HtcCdmaRoamingGuardList;->mContentResolver:Landroid/content/ContentResolver;

    iget-object v2, p0, Lcom/android/phone/HtcCdmaRoamingGuardList;->ROAM_TYPE_INTERNATIONAL:Ljava/lang/String;

    iget-object v3, p0, Lcom/android/phone/HtcCdmaRoamingGuardList;->mBtInternationalSmsRoamGuard:Lcom/htc/preference/HtcCheckBoxPreference;

    invoke-virtual {v3}, Lcom/htc/preference/HtcCheckBoxPreference;->isChecked()Z

    move-result v3

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$Secure;->setSmsRoamingGuardAllowed(Landroid/content/ContentResolver;Ljava/lang/String;Z)V

    goto :goto_0

    .line 260
    :cond_4
    iget-object v1, p0, Lcom/android/phone/HtcCdmaRoamingGuardList;->mBtGsmVoiceRoamGuard:Lcom/htc/preference/HtcCheckBoxPreference;

    if-ne v1, p1, :cond_5

    .line 261
    iget-object v1, p0, Lcom/android/phone/HtcCdmaRoamingGuardList;->mContentResolver:Landroid/content/ContentResolver;

    const-string v2, "gsm"

    iget-object v3, p0, Lcom/android/phone/HtcCdmaRoamingGuardList;->mBtGsmVoiceRoamGuard:Lcom/htc/preference/HtcCheckBoxPreference;

    invoke-virtual {v3}, Lcom/htc/preference/HtcCheckBoxPreference;->isChecked()Z

    move-result v3

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$Secure;->setVoiceRoamingGuardAllowed(Landroid/content/ContentResolver;Ljava/lang/String;Z)V

    goto :goto_0

    .line 263
    :cond_5
    iget-object v1, p0, Lcom/android/phone/HtcCdmaRoamingGuardList;->mBtGsmDataRoamGuard:Lcom/htc/preference/HtcCheckBoxPreference;

    if-ne v1, p1, :cond_6

    .line 264
    iget-object v1, p0, Lcom/android/phone/HtcCdmaRoamingGuardList;->mContentResolver:Landroid/content/ContentResolver;

    const-string v2, "gsm"

    iget-object v3, p0, Lcom/android/phone/HtcCdmaRoamingGuardList;->mBtGsmDataRoamGuard:Lcom/htc/preference/HtcCheckBoxPreference;

    invoke-virtual {v3}, Lcom/htc/preference/HtcCheckBoxPreference;->isChecked()Z

    move-result v3

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$Secure;->setDataRoamingGuardAllowed(Landroid/content/ContentResolver;Ljava/lang/String;Z)V

    goto :goto_0

    .line 266
    :cond_6
    iget-object v1, p0, Lcom/android/phone/HtcCdmaRoamingGuardList;->mBtGsmSmsRoamGuard:Lcom/htc/preference/HtcCheckBoxPreference;

    if-ne v1, p1, :cond_7

    .line 267
    iget-object v1, p0, Lcom/android/phone/HtcCdmaRoamingGuardList;->mContentResolver:Landroid/content/ContentResolver;

    const-string v2, "gsm"

    iget-object v3, p0, Lcom/android/phone/HtcCdmaRoamingGuardList;->mBtGsmSmsRoamGuard:Lcom/htc/preference/HtcCheckBoxPreference;

    invoke-virtual {v3}, Lcom/htc/preference/HtcCheckBoxPreference;->isChecked()Z

    move-result v3

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$Secure;->setSmsRoamingGuardAllowed(Landroid/content/ContentResolver;Ljava/lang/String;Z)V

    goto/16 :goto_0

    .line 273
    :cond_7
    const/4 v0, 0x0

    goto/16 :goto_0
.end method

.method protected onResume()V
    .locals 0

    .prologue
    .line 168
    invoke-super {p0}, Lcom/htc/preference/HtcPreferenceActivity;->onResume()V

    .line 170
    invoke-direct {p0}, Lcom/android/phone/HtcCdmaRoamingGuardList;->restoreUserSettings()V

    .line 172
    invoke-direct {p0}, Lcom/android/phone/HtcCdmaRoamingGuardList;->updateButtonEnabledState()V

    .line 173
    return-void
.end method
