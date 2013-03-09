.class public final Lcom/android/settings/framework/activity/aboutphone/HtcAboutPhoneIdentity;
.super Lcom/android/settings/framework/app/HtcInternalPreferenceFragment;
.source "HtcAboutPhoneIdentity.java"


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "HtcAboutPhoneIdentity"

.field private static PreferenceOfCdmaMIN:Lcom/htc/preference/HtcPreference;

.field private static PreferenceOfIMSI:Lcom/htc/preference/HtcPreference;

.field private static PreferenceOfLine1Number:Lcom/htc/preference/HtcPreference;

.field private static mDuplicateRootPref:Lcom/htc/preference/HtcPreferenceScreen;


# instance fields
.field private mTelephonyManager:Landroid/telephony/TelephonyManager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 57
    sput-object v0, Lcom/android/settings/framework/activity/aboutphone/HtcAboutPhoneIdentity;->PreferenceOfCdmaMIN:Lcom/htc/preference/HtcPreference;

    .line 58
    sput-object v0, Lcom/android/settings/framework/activity/aboutphone/HtcAboutPhoneIdentity;->PreferenceOfLine1Number:Lcom/htc/preference/HtcPreference;

    .line 59
    sput-object v0, Lcom/android/settings/framework/activity/aboutphone/HtcAboutPhoneIdentity;->PreferenceOfIMSI:Lcom/htc/preference/HtcPreference;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 50
    invoke-direct {p0}, Lcom/android/settings/framework/app/HtcInternalPreferenceFragment;-><init>()V

    .line 79
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings/framework/activity/aboutphone/HtcAboutPhoneIdentity;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    return-void
.end method

.method private doPlugin()V
    .locals 7

    .prologue
    const/4 v6, 0x2

    const/4 v5, 0x1

    .line 97
    invoke-virtual {p0}, Lcom/android/settings/framework/activity/aboutphone/HtcAboutPhoneIdentity;->getPreferenceManager()Lcom/htc/preference/HtcPreferenceManager;

    move-result-object v1

    .line 98
    .local v1, preferenceManager:Lcom/htc/preference/HtcPreferenceManager;
    invoke-virtual {p0}, Lcom/android/settings/framework/activity/aboutphone/HtcAboutPhoneIdentity;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/htc/preference/HtcPreferenceManager;->createPreferenceScreen(Landroid/content/Context;)Lcom/htc/preference/HtcPreferenceScreen;

    move-result-object v2

    .line 99
    .local v2, root:Lcom/htc/preference/HtcPreferenceScreen;
    const v3, 0x7f0c0493

    invoke-virtual {v2, v3}, Lcom/htc/preference/HtcPreferenceScreen;->setTitle(I)V

    .line 100
    invoke-virtual {p0, v2}, Lcom/android/settings/framework/activity/aboutphone/HtcAboutPhoneIdentity;->setPreferenceScreen(Lcom/htc/preference/HtcPreferenceScreen;)V

    .line 103
    invoke-static {}, Lcom/android/settings/framework/flag/HtcSkuFlags;->getTabletSenseVersion()F

    move-result v3

    const/high16 v4, 0x3fc0

    cmpl-float v3, v3, v4

    if-ltz v3, :cond_0

    .line 104
    new-instance v0, Lcom/android/settings/framework/preference/aboutphone/identity/HtcDeviceNamePreference;

    invoke-virtual {p0}, Lcom/android/settings/framework/activity/aboutphone/HtcAboutPhoneIdentity;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v0, v3}, Lcom/android/settings/framework/preference/aboutphone/identity/HtcDeviceNamePreference;-><init>(Landroid/content/Context;)V

    .line 105
    .local v0, preference:Lcom/htc/preference/HtcPreference;
    invoke-virtual {v2, v0}, Lcom/htc/preference/HtcPreferenceScreen;->addPreference(Lcom/htc/preference/HtcPreference;)Z

    .line 106
    invoke-virtual {p0, v0}, Lcom/android/settings/framework/activity/aboutphone/HtcAboutPhoneIdentity;->addCallback(Lcom/htc/preference/HtcPreference;)V

    .line 109
    .end local v0           #preference:Lcom/htc/preference/HtcPreference;
    :cond_0
    new-instance v0, Lcom/android/settings/framework/preference/aboutphone/identity/HtcModelNumberPreference;

    invoke-virtual {p0}, Lcom/android/settings/framework/activity/aboutphone/HtcAboutPhoneIdentity;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v0, v3}, Lcom/android/settings/framework/preference/aboutphone/identity/HtcModelNumberPreference;-><init>(Landroid/content/Context;)V

    .line 110
    .restart local v0       #preference:Lcom/htc/preference/HtcPreference;
    invoke-virtual {v2, v0}, Lcom/htc/preference/HtcPreferenceScreen;->addPreference(Lcom/htc/preference/HtcPreference;)Z

    .line 111
    invoke-virtual {p0, v0}, Lcom/android/settings/framework/activity/aboutphone/HtcAboutPhoneIdentity;->addCallback(Lcom/htc/preference/HtcPreference;)V

    .line 131
    invoke-virtual {p0}, Lcom/android/settings/framework/activity/aboutphone/HtcAboutPhoneIdentity;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/android/settings/framework/flag/feature/HtcAboutPhoneFeatureFlags;->supportIMEI(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 132
    sget-boolean v3, Lcom/android/settings/HtcFeatureList;->FEATURE_THIS_IS_WORLD_PHONE:Z

    if-eq v3, v5, :cond_1

    sget-boolean v3, Lcom/android/settings/HtcFeatureList;->FEATURE_SUPPORT_IMEI_WITHOUT_WORLDPHONE:Z

    if-ne v3, v5, :cond_b

    .line 140
    :cond_1
    const-string v3, "HtcAboutPhoneIdentity"

    const-string v4, "OoO get CDMA IMEI Info."

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 141
    new-instance v0, Lcom/android/settings/framework/preference/aboutphone/identity/HtcCdmaImeiPreference;

    .end local v0           #preference:Lcom/htc/preference/HtcPreference;
    invoke-virtual {p0}, Lcom/android/settings/framework/activity/aboutphone/HtcAboutPhoneIdentity;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v0, v3}, Lcom/android/settings/framework/preference/aboutphone/identity/HtcCdmaImeiPreference;-><init>(Landroid/content/Context;)V

    .line 142
    .restart local v0       #preference:Lcom/htc/preference/HtcPreference;
    invoke-virtual {v2, v0}, Lcom/htc/preference/HtcPreferenceScreen;->addPreference(Lcom/htc/preference/HtcPreference;)Z

    .line 143
    invoke-virtual {p0, v0}, Lcom/android/settings/framework/activity/aboutphone/HtcAboutPhoneIdentity;->addCallback(Lcom/htc/preference/HtcPreference;)V

    .line 145
    new-instance v0, Lcom/android/settings/framework/preference/aboutphone/identity/HtcCdmaImeiSvPreference;

    .end local v0           #preference:Lcom/htc/preference/HtcPreference;
    invoke-virtual {p0}, Lcom/android/settings/framework/activity/aboutphone/HtcAboutPhoneIdentity;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v0, v3}, Lcom/android/settings/framework/preference/aboutphone/identity/HtcCdmaImeiSvPreference;-><init>(Landroid/content/Context;)V

    .line 146
    .restart local v0       #preference:Lcom/htc/preference/HtcPreference;
    invoke-virtual {v2, v0}, Lcom/htc/preference/HtcPreferenceScreen;->addPreference(Lcom/htc/preference/HtcPreference;)Z

    .line 147
    invoke-virtual {p0, v0}, Lcom/android/settings/framework/activity/aboutphone/HtcAboutPhoneIdentity;->addCallback(Lcom/htc/preference/HtcPreference;)V

    .line 162
    :cond_2
    :goto_0
    sput-object v2, Lcom/android/settings/framework/activity/aboutphone/HtcAboutPhoneIdentity;->mDuplicateRootPref:Lcom/htc/preference/HtcPreferenceScreen;

    .line 166
    new-instance v0, Lcom/android/settings/framework/preference/aboutphone/identity/HtcDeviceSerialNumberPreference;

    .end local v0           #preference:Lcom/htc/preference/HtcPreference;
    invoke-virtual {p0}, Lcom/android/settings/framework/activity/aboutphone/HtcAboutPhoneIdentity;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v0, v3}, Lcom/android/settings/framework/preference/aboutphone/identity/HtcDeviceSerialNumberPreference;-><init>(Landroid/content/Context;)V

    .line 167
    .restart local v0       #preference:Lcom/htc/preference/HtcPreference;
    invoke-virtual {v2, v0}, Lcom/htc/preference/HtcPreferenceScreen;->addPreference(Lcom/htc/preference/HtcPreference;)Z

    .line 168
    invoke-virtual {p0, v0}, Lcom/android/settings/framework/activity/aboutphone/HtcAboutPhoneIdentity;->addCallback(Lcom/htc/preference/HtcPreference;)V

    .line 171
    sget-boolean v3, Lcom/android/settings/HtcFeatureList;->FEATURE_THIS_IS_WORLD_PHONE:Z

    if-eq v3, v5, :cond_3

    sget-short v3, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v4, 0x61

    if-eq v3, v4, :cond_3

    sget-short v3, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v4, 0xad

    if-ne v3, v4, :cond_4

    .line 174
    :cond_3
    invoke-static {p0, v2}, Lcom/android/settings/framework/activity/aboutphone/HtcAboutPhonePluginManager;->pluginSimCardId(Lcom/android/settings/framework/app/HtcInternalPreferenceFragment;Lcom/htc/preference/HtcPreferenceGroup;)Lcom/htc/preference/HtcPreference;

    .line 183
    :cond_4
    sget-boolean v3, Lcom/android/settings/HtcFeatureList;->FEATURE_SUPPORT_MEID:Z

    if-eqz v3, :cond_5

    iget-object v3, p0, Lcom/android/settings/framework/activity/aboutphone/HtcAboutPhoneIdentity;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v3}, Landroid/telephony/TelephonyManager;->getCurrentPhoneType()I

    move-result v3

    if-eq v3, v6, :cond_6

    :cond_5
    sget-boolean v3, Lcom/android/settings/HtcFeatureList;->FEATURE_THIS_IS_WORLD_PHONE:Z

    if-ne v3, v5, :cond_7

    .line 191
    :cond_6
    new-instance v0, Lcom/android/settings/framework/preference/aboutphone/identity/HtcMeidPreference;

    .end local v0           #preference:Lcom/htc/preference/HtcPreference;
    invoke-virtual {p0}, Lcom/android/settings/framework/activity/aboutphone/HtcAboutPhoneIdentity;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v0, v3}, Lcom/android/settings/framework/preference/aboutphone/identity/HtcMeidPreference;-><init>(Landroid/content/Context;)V

    .line 192
    .restart local v0       #preference:Lcom/htc/preference/HtcPreference;
    invoke-virtual {v2, v0}, Lcom/htc/preference/HtcPreferenceScreen;->addPreference(Lcom/htc/preference/HtcPreference;)Z

    .line 193
    invoke-virtual {p0, v0}, Lcom/android/settings/framework/activity/aboutphone/HtcAboutPhoneIdentity;->addCallback(Lcom/htc/preference/HtcPreference;)V

    .line 198
    :cond_7
    sget-boolean v3, Lcom/android/settings/HtcFeatureList;->FEATURE_SUPPORT_DEC_MEID:Z

    if-eqz v3, :cond_8

    .line 202
    new-instance v0, Lcom/android/settings/framework/preference/aboutphone/identity/HtcDecMeidPreference;

    .end local v0           #preference:Lcom/htc/preference/HtcPreference;
    invoke-virtual {p0}, Lcom/android/settings/framework/activity/aboutphone/HtcAboutPhoneIdentity;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v0, v3}, Lcom/android/settings/framework/preference/aboutphone/identity/HtcDecMeidPreference;-><init>(Landroid/content/Context;)V

    .line 203
    .restart local v0       #preference:Lcom/htc/preference/HtcPreference;
    invoke-virtual {v2, v0}, Lcom/htc/preference/HtcPreferenceScreen;->addPreference(Lcom/htc/preference/HtcPreference;)Z

    .line 204
    invoke-virtual {p0, v0}, Lcom/android/settings/framework/activity/aboutphone/HtcAboutPhoneIdentity;->addCallback(Lcom/htc/preference/HtcPreference;)V

    .line 207
    :cond_8
    sget-boolean v3, Lcom/android/settings/HtcFeatureList;->FEATURE_CDMA_SETTING_MOBILE_NETOWKR_4G_SP:Z

    if-ne v3, v5, :cond_9

    .line 208
    const-string v3, "HtcAboutPhoneIdentity"

    const-string v4, "plug-in Cdma Nai preference"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 210
    new-instance v0, Lcom/android/settings/framework/preference/aboutphone/identity/HtcCdmaNaiPreference;

    .end local v0           #preference:Lcom/htc/preference/HtcPreference;
    invoke-virtual {p0}, Lcom/android/settings/framework/activity/aboutphone/HtcAboutPhoneIdentity;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v0, v3}, Lcom/android/settings/framework/preference/aboutphone/identity/HtcCdmaNaiPreference;-><init>(Landroid/content/Context;)V

    .line 211
    .restart local v0       #preference:Lcom/htc/preference/HtcPreference;
    invoke-virtual {v2, v0}, Lcom/htc/preference/HtcPreferenceScreen;->addPreference(Lcom/htc/preference/HtcPreference;)Z

    .line 212
    invoke-virtual {p0, v0}, Lcom/android/settings/framework/activity/aboutphone/HtcAboutPhoneIdentity;->addCallback(Lcom/htc/preference/HtcPreference;)V

    .line 216
    :cond_9
    iget-object v3, p0, Lcom/android/settings/framework/activity/aboutphone/HtcAboutPhoneIdentity;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v3}, Landroid/telephony/TelephonyManager;->getCurrentPhoneType()I

    move-result v3

    if-ne v3, v6, :cond_a

    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->getDefaultPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v3

    invoke-interface {v3}, Lcom/android/internal/telephony/Phone;->getLteOnCdmaMode()I

    move-result v3

    if-ne v3, v5, :cond_a

    .line 218
    new-instance v0, Lcom/android/settings/framework/preference/aboutphone/identity/HtcLteIccPreference;

    .end local v0           #preference:Lcom/htc/preference/HtcPreference;
    invoke-virtual {p0}, Lcom/android/settings/framework/activity/aboutphone/HtcAboutPhoneIdentity;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v0, v3}, Lcom/android/settings/framework/preference/aboutphone/identity/HtcLteIccPreference;-><init>(Landroid/content/Context;)V

    .line 219
    .restart local v0       #preference:Lcom/htc/preference/HtcPreference;
    invoke-virtual {v2, v0}, Lcom/htc/preference/HtcPreferenceScreen;->addPreference(Lcom/htc/preference/HtcPreference;)Z

    .line 220
    invoke-virtual {p0, v0}, Lcom/android/settings/framework/activity/aboutphone/HtcAboutPhoneIdentity;->addCallback(Lcom/htc/preference/HtcPreference;)V

    .line 223
    :cond_a
    return-void

    .line 150
    :cond_b
    iget-object v3, p0, Lcom/android/settings/framework/activity/aboutphone/HtcAboutPhoneIdentity;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v3}, Landroid/telephony/TelephonyManager;->getPhoneType()I

    move-result v3

    if-eq v3, v6, :cond_2

    .line 151
    const-string v3, "HtcAboutPhoneIdentity"

    const-string v4, "OoO get GSM IMEI Info."

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 152
    new-instance v0, Lcom/android/settings/framework/preference/aboutphone/identity/HtcImeiPreference;

    .end local v0           #preference:Lcom/htc/preference/HtcPreference;
    invoke-virtual {p0}, Lcom/android/settings/framework/activity/aboutphone/HtcAboutPhoneIdentity;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v0, v3}, Lcom/android/settings/framework/preference/aboutphone/identity/HtcImeiPreference;-><init>(Landroid/content/Context;)V

    .line 153
    .restart local v0       #preference:Lcom/htc/preference/HtcPreference;
    invoke-virtual {v2, v0}, Lcom/htc/preference/HtcPreferenceScreen;->addPreference(Lcom/htc/preference/HtcPreference;)Z

    .line 154
    invoke-virtual {p0, v0}, Lcom/android/settings/framework/activity/aboutphone/HtcAboutPhoneIdentity;->addCallback(Lcom/htc/preference/HtcPreference;)V

    .line 156
    new-instance v0, Lcom/android/settings/framework/preference/aboutphone/identity/HtcImeiSvPreference;

    .end local v0           #preference:Lcom/htc/preference/HtcPreference;
    invoke-virtual {p0}, Lcom/android/settings/framework/activity/aboutphone/HtcAboutPhoneIdentity;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v0, v3}, Lcom/android/settings/framework/preference/aboutphone/identity/HtcImeiSvPreference;-><init>(Landroid/content/Context;)V

    .line 157
    .restart local v0       #preference:Lcom/htc/preference/HtcPreference;
    invoke-virtual {v2, v0}, Lcom/htc/preference/HtcPreferenceScreen;->addPreference(Lcom/htc/preference/HtcPreference;)Z

    .line 158
    invoke-virtual {p0, v0}, Lcom/android/settings/framework/activity/aboutphone/HtcAboutPhoneIdentity;->addCallback(Lcom/htc/preference/HtcPreference;)V

    goto/16 :goto_0
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .parameter "savedInstanceState"

    .prologue
    .line 63
    invoke-super {p0, p1}, Lcom/android/settings/framework/app/HtcInternalPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 67
    const-string v1, "phone"

    invoke-virtual {p0, v1}, Lcom/android/settings/framework/activity/aboutphone/HtcAboutPhoneIdentity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/TelephonyManager;

    iput-object v1, p0, Lcom/android/settings/framework/activity/aboutphone/HtcAboutPhoneIdentity;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    .line 71
    :try_start_0
    invoke-direct {p0}, Lcom/android/settings/framework/activity/aboutphone/HtcAboutPhoneIdentity;->doPlugin()V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 75
    :goto_0
    invoke-virtual {p0}, Lcom/android/settings/framework/activity/aboutphone/HtcAboutPhoneIdentity;->requestHandlers()V

    .line 76
    return-void

    .line 72
    :catch_0
    move-exception v0

    .line 73
    .local v0, e:Ljava/lang/RuntimeException;
    invoke-virtual {v0}, Ljava/lang/RuntimeException;->printStackTrace()V

    goto :goto_0
.end method

.method public onResume()V
    .locals 2

    .prologue
    .line 229
    invoke-super {p0}, Lcom/android/settings/framework/app/HtcInternalPreferenceFragment;->onResume()V

    .line 230
    const-string v0, "HtcAboutPhoneIdentity"

    const-string v1, "OoO into OnResume"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 232
    sget-object v0, Lcom/android/settings/framework/activity/aboutphone/HtcAboutPhoneIdentity;->PreferenceOfLine1Number:Lcom/htc/preference/HtcPreference;

    if-eqz v0, :cond_0

    .line 233
    sget-object v0, Lcom/android/settings/framework/activity/aboutphone/HtcAboutPhoneIdentity;->mDuplicateRootPref:Lcom/htc/preference/HtcPreferenceScreen;

    sget-object v1, Lcom/android/settings/framework/activity/aboutphone/HtcAboutPhoneIdentity;->PreferenceOfLine1Number:Lcom/htc/preference/HtcPreference;

    invoke-virtual {v0, v1}, Lcom/htc/preference/HtcPreferenceScreen;->removePreference(Lcom/htc/preference/HtcPreference;)Z

    .line 236
    :cond_0
    invoke-static {}, Lcom/android/settings/framework/flag/feature/HtcAboutPhoneFeatureFlags;->supportPhoneNumber()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 237
    sget-object v0, Lcom/android/settings/framework/activity/aboutphone/HtcAboutPhoneIdentity;->mDuplicateRootPref:Lcom/htc/preference/HtcPreferenceScreen;

    invoke-static {p0, v0}, Lcom/android/settings/framework/activity/aboutphone/HtcAboutPhonePluginManager;->pluginPhoneNumber(Lcom/android/settings/framework/app/HtcInternalPreferenceFragment;Lcom/htc/preference/HtcPreferenceGroup;)Lcom/htc/preference/HtcPreference;

    move-result-object v0

    sput-object v0, Lcom/android/settings/framework/activity/aboutphone/HtcAboutPhoneIdentity;->PreferenceOfLine1Number:Lcom/htc/preference/HtcPreference;

    .line 244
    :cond_1
    sget-object v0, Lcom/android/settings/framework/activity/aboutphone/HtcAboutPhoneIdentity;->PreferenceOfIMSI:Lcom/htc/preference/HtcPreference;

    if-eqz v0, :cond_2

    .line 245
    sget-object v0, Lcom/android/settings/framework/activity/aboutphone/HtcAboutPhoneIdentity;->mDuplicateRootPref:Lcom/htc/preference/HtcPreferenceScreen;

    sget-object v1, Lcom/android/settings/framework/activity/aboutphone/HtcAboutPhoneIdentity;->PreferenceOfIMSI:Lcom/htc/preference/HtcPreference;

    invoke-virtual {v0, v1}, Lcom/htc/preference/HtcPreferenceScreen;->removePreference(Lcom/htc/preference/HtcPreference;)Z

    .line 248
    :cond_2
    invoke-virtual {p0}, Lcom/android/settings/framework/activity/aboutphone/HtcAboutPhoneIdentity;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/settings/framework/flag/feature/HtcAboutPhoneFeatureFlags;->supportIMSI(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 249
    sget-object v0, Lcom/android/settings/framework/activity/aboutphone/HtcAboutPhoneIdentity;->mDuplicateRootPref:Lcom/htc/preference/HtcPreferenceScreen;

    invoke-static {p0, v0}, Lcom/android/settings/framework/activity/aboutphone/HtcAboutPhonePluginManager;->pluginIMSI(Lcom/android/settings/framework/app/HtcInternalPreferenceFragment;Lcom/htc/preference/HtcPreferenceGroup;)Lcom/htc/preference/HtcPreference;

    move-result-object v0

    sput-object v0, Lcom/android/settings/framework/activity/aboutphone/HtcAboutPhoneIdentity;->PreferenceOfIMSI:Lcom/htc/preference/HtcPreference;

    .line 256
    :cond_3
    sget-boolean v0, Lcom/android/settings/HtcFeatureList;->FEATURE_CDMA_SETTING_MOBILE_NETOWKR_4G_SP:Z

    const/4 v1, 0x1

    if-ne v0, v1, :cond_4

    .line 260
    :cond_4
    return-void
.end method
