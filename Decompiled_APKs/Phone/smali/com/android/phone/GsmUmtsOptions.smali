.class public Lcom/android/phone/GsmUmtsOptions;
.super Ljava/lang/Object;
.source "GsmUmtsOptions.java"


# static fields
.field private static final BUTTON_APN_EXPAND_KEY:Ljava/lang/String; = "button_apn_key"

.field private static final BUTTON_OPERATOR_SELECTION_EXPAND_KEY:Ljava/lang/String; = "button_carrier_sel_key"

.field private static final BUTTON_PREFERED_GSM_UMTS_NETWORK_MODE:Ljava/lang/String; = "preferred_gsm_umts_network_mode_key"

.field private static final BUTTON_PREFER_2G_KEY:Ljava/lang/String; = "button_prefer_2g_key"

.field private static final LOG_TAG:Ljava/lang/String; = "GsmUmtsOptions"

.field static final preferredNetworkMode:I


# instance fields
.field private mButtonAPNExpand:Lcom/htc/preference/HtcPreferenceScreen;

.field private mButtonOperatorSelectionExpand:Lcom/htc/preference/HtcPreferenceScreen;

.field private mButtonPrefer2g:Lcom/htc/preference/HtcCheckBoxPreference;

.field private mButtonPreferredGsmUmtsNetworkMode:Lcom/htc/preference/HtcListPreference;

.field private mPrefActivity:Lcom/htc/preference/HtcPreferenceActivity;

.field private mPrefScreen:Lcom/htc/preference/HtcPreferenceScreen;


# direct methods
.method public constructor <init>(Lcom/htc/preference/HtcPreferenceActivity;Lcom/htc/preference/HtcPreferenceScreen;)V
    .locals 0
    .parameter "prefActivity"
    .parameter "prefScreen"

    .prologue
    .line 57
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 58
    iput-object p1, p0, Lcom/android/phone/GsmUmtsOptions;->mPrefActivity:Lcom/htc/preference/HtcPreferenceActivity;

    .line 59
    iput-object p2, p0, Lcom/android/phone/GsmUmtsOptions;->mPrefScreen:Lcom/htc/preference/HtcPreferenceScreen;

    .line 60
    invoke-virtual {p0}, Lcom/android/phone/GsmUmtsOptions;->create()V

    .line 61
    return-void
.end method


# virtual methods
.method protected create()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x0

    .line 64
    iget-object v2, p0, Lcom/android/phone/GsmUmtsOptions;->mPrefActivity:Lcom/htc/preference/HtcPreferenceActivity;

    const v3, 0x7f05000f

    invoke-virtual {v2, v3}, Lcom/htc/preference/HtcPreferenceActivity;->addPreferencesFromResource(I)V

    .line 66
    iget-object v2, p0, Lcom/android/phone/GsmUmtsOptions;->mPrefScreen:Lcom/htc/preference/HtcPreferenceScreen;

    const-string v3, "button_apn_key"

    invoke-virtual {v2, v3}, Lcom/htc/preference/HtcPreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v2

    check-cast v2, Lcom/htc/preference/HtcPreferenceScreen;

    iput-object v2, p0, Lcom/android/phone/GsmUmtsOptions;->mButtonAPNExpand:Lcom/htc/preference/HtcPreferenceScreen;

    .line 67
    iget-object v2, p0, Lcom/android/phone/GsmUmtsOptions;->mPrefScreen:Lcom/htc/preference/HtcPreferenceScreen;

    const-string v3, "button_carrier_sel_key"

    invoke-virtual {v2, v3}, Lcom/htc/preference/HtcPreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v2

    check-cast v2, Lcom/htc/preference/HtcPreferenceScreen;

    iput-object v2, p0, Lcom/android/phone/GsmUmtsOptions;->mButtonOperatorSelectionExpand:Lcom/htc/preference/HtcPreferenceScreen;

    .line 70
    iget-object v2, p0, Lcom/android/phone/GsmUmtsOptions;->mPrefScreen:Lcom/htc/preference/HtcPreferenceScreen;

    const-string v3, "preferred_gsm_umts_network_mode_key"

    invoke-virtual {v2, v3}, Lcom/htc/preference/HtcPreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v2

    check-cast v2, Lcom/htc/preference/HtcListPreference;

    iput-object v2, p0, Lcom/android/phone/GsmUmtsOptions;->mButtonPreferredGsmUmtsNetworkMode:Lcom/htc/preference/HtcListPreference;

    .line 73
    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->getDefaultPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v2

    const/4 v3, 0x1

    if-eq v2, v3, :cond_0

    .line 74
    const-string v2, "Not a GSM phone"

    invoke-virtual {p0, v2}, Lcom/android/phone/GsmUmtsOptions;->log(Ljava/lang/String;)V

    .line 75
    iget-object v2, p0, Lcom/android/phone/GsmUmtsOptions;->mButtonAPNExpand:Lcom/htc/preference/HtcPreferenceScreen;

    invoke-virtual {v2, v4}, Lcom/htc/preference/HtcPreferenceScreen;->setEnabled(Z)V

    .line 76
    iget-object v2, p0, Lcom/android/phone/GsmUmtsOptions;->mButtonOperatorSelectionExpand:Lcom/htc/preference/HtcPreferenceScreen;

    invoke-virtual {v2, v4}, Lcom/htc/preference/HtcPreferenceScreen;->setEnabled(Z)V

    .line 78
    iget-object v2, p0, Lcom/android/phone/GsmUmtsOptions;->mButtonPreferredGsmUmtsNetworkMode:Lcom/htc/preference/HtcListPreference;

    invoke-virtual {v2, v4}, Lcom/htc/preference/HtcListPreference;->setEnabled(Z)V

    .line 81
    :cond_0
    invoke-static {}, Lcom/android/internal/telephony/HtcBuildUtils;->GENERIC_WPHONE_CONFIG()Z

    move-result v2

    if-nez v2, :cond_1

    invoke-static {}, Lcom/android/internal/telephony/HtcBuildUtils;->enableRUIMCard()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 82
    :cond_1
    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->getDefaultPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v0

    .line 83
    .local v0, mPhone:Lcom/android/internal/telephony/Phone;
    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "preferred_network_mode"

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    .line 86
    .local v1, settingsNetworkMode:I
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onCreate: settingsNetworkMode = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/phone/GsmUmtsOptions;->log(Ljava/lang/String;)V

    .line 87
    iget-object v2, p0, Lcom/android/phone/GsmUmtsOptions;->mButtonPreferredGsmUmtsNetworkMode:Lcom/htc/preference/HtcListPreference;

    if-eqz v2, :cond_2

    .line 88
    iget-object v2, p0, Lcom/android/phone/GsmUmtsOptions;->mPrefScreen:Lcom/htc/preference/HtcPreferenceScreen;

    iget-object v3, p0, Lcom/android/phone/GsmUmtsOptions;->mButtonPreferredGsmUmtsNetworkMode:Lcom/htc/preference/HtcListPreference;

    invoke-virtual {v2, v3}, Lcom/htc/preference/HtcPreferenceScreen;->removePreference(Lcom/htc/preference/HtcPreference;)Z

    .line 89
    iput-object v5, p0, Lcom/android/phone/GsmUmtsOptions;->mButtonPreferredGsmUmtsNetworkMode:Lcom/htc/preference/HtcListPreference;

    .line 92
    :cond_2
    const/4 v2, 0x4

    if-lt v1, v2, :cond_3

    const/16 v2, 0x9

    if-eq v1, v2, :cond_3

    const/16 v2, 0xb

    if-eq v1, v2, :cond_3

    .line 93
    iget-object v2, p0, Lcom/android/phone/GsmUmtsOptions;->mButtonOperatorSelectionExpand:Lcom/htc/preference/HtcPreferenceScreen;

    invoke-virtual {v2, v4}, Lcom/htc/preference/HtcPreferenceScreen;->setEnabled(Z)V

    .line 98
    .end local v0           #mPhone:Lcom/android/internal/telephony/Phone;
    .end local v1           #settingsNetworkMode:I
    :cond_3
    sget-boolean v2, Lcom/android/phone/HtcFeatureList;->FEATURE_THIS_IS_WORLD_PHONE:Z

    if-nez v2, :cond_6

    sget-boolean v2, Lcom/android/phone/HtcFeatureList;->FEATURE_EHRPD_SUPPORT:Z

    if-nez v2, :cond_4

    sget-boolean v2, Lcom/android/phone/HtcFeatureList;->FEATURE_CDMA_AND_LTE_SUPPORT:Z

    if-eqz v2, :cond_6

    .line 101
    :cond_4
    iget-object v2, p0, Lcom/android/phone/GsmUmtsOptions;->mButtonOperatorSelectionExpand:Lcom/htc/preference/HtcPreferenceScreen;

    if-eqz v2, :cond_5

    .line 102
    iget-object v2, p0, Lcom/android/phone/GsmUmtsOptions;->mPrefScreen:Lcom/htc/preference/HtcPreferenceScreen;

    iget-object v3, p0, Lcom/android/phone/GsmUmtsOptions;->mButtonOperatorSelectionExpand:Lcom/htc/preference/HtcPreferenceScreen;

    invoke-virtual {v2, v3}, Lcom/htc/preference/HtcPreferenceScreen;->removePreference(Lcom/htc/preference/HtcPreference;)Z

    .line 103
    iput-object v5, p0, Lcom/android/phone/GsmUmtsOptions;->mButtonOperatorSelectionExpand:Lcom/htc/preference/HtcPreferenceScreen;

    .line 105
    :cond_5
    iget-object v2, p0, Lcom/android/phone/GsmUmtsOptions;->mButtonPreferredGsmUmtsNetworkMode:Lcom/htc/preference/HtcListPreference;

    if-eqz v2, :cond_6

    .line 106
    iget-object v2, p0, Lcom/android/phone/GsmUmtsOptions;->mPrefScreen:Lcom/htc/preference/HtcPreferenceScreen;

    iget-object v3, p0, Lcom/android/phone/GsmUmtsOptions;->mButtonPreferredGsmUmtsNetworkMode:Lcom/htc/preference/HtcListPreference;

    invoke-virtual {v2, v3}, Lcom/htc/preference/HtcPreferenceScreen;->removePreference(Lcom/htc/preference/HtcPreference;)Z

    .line 107
    iput-object v5, p0, Lcom/android/phone/GsmUmtsOptions;->mButtonPreferredGsmUmtsNetworkMode:Lcom/htc/preference/HtcListPreference;

    .line 111
    :cond_6
    return-void
.end method

.method protected log(Ljava/lang/String;)V
    .locals 1
    .parameter "s"

    .prologue
    .line 123
    const-string v0, "GsmUmtsOptions"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 124
    return-void
.end method

.method public preferenceTreeClick(Lcom/htc/preference/HtcPreference;)Z
    .locals 2
    .parameter "preference"

    .prologue
    .line 114
    invoke-virtual {p1}, Lcom/htc/preference/HtcPreference;->getKey()Ljava/lang/String;

    move-result-object v0

    const-string v1, "button_prefer_2g_key"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 115
    const-string v0, "preferenceTreeClick: return true"

    invoke-virtual {p0, v0}, Lcom/android/phone/GsmUmtsOptions;->log(Ljava/lang/String;)V

    .line 116
    const/4 v0, 0x1

    .line 119
    :goto_0
    return v0

    .line 118
    :cond_0
    const-string v0, "preferenceTreeClick: return false"

    invoke-virtual {p0, v0}, Lcom/android/phone/GsmUmtsOptions;->log(Ljava/lang/String;)V

    .line 119
    const/4 v0, 0x0

    goto :goto_0
.end method
