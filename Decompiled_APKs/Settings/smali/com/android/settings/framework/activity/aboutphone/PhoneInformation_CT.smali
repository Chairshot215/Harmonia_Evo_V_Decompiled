.class public final Lcom/android/settings/framework/activity/aboutphone/PhoneInformation_CT;
.super Lcom/android/settings/framework/app/HtcInternalPreferenceProxy;
.source "PhoneInformation_CT.java"


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "PhoneInformation_CT"


# instance fields
.field private mPhone:Lcom/android/internal/telephony/Phone;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 14
    invoke-direct {p0}, Lcom/android/settings/framework/app/HtcInternalPreferenceProxy;-><init>()V

    .line 18
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings/framework/activity/aboutphone/PhoneInformation_CT;->mPhone:Lcom/android/internal/telephony/Phone;

    return-void
.end method

.method private doPlugin()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 43
    invoke-virtual {p0}, Lcom/android/settings/framework/activity/aboutphone/PhoneInformation_CT;->getPreferenceManager()Lcom/htc/preference/HtcPreferenceManager;

    move-result-object v0

    .line 44
    .local v0, preferenceManager:Lcom/htc/preference/HtcPreferenceManager;
    invoke-virtual {p0}, Lcom/android/settings/framework/activity/aboutphone/PhoneInformation_CT;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/htc/preference/HtcPreferenceManager;->createPreferenceScreen(Landroid/content/Context;)Lcom/htc/preference/HtcPreferenceScreen;

    move-result-object v1

    .line 45
    .local v1, root:Lcom/htc/preference/HtcPreferenceScreen;
    const v2, 0x7f0c0493

    invoke-virtual {v1, v2}, Lcom/htc/preference/HtcPreferenceScreen;->setTitle(I)V

    .line 46
    invoke-virtual {p0, v1}, Lcom/android/settings/framework/activity/aboutphone/PhoneInformation_CT;->setPreferenceScreen(Lcom/htc/preference/HtcPreferenceScreen;)V

    .line 49
    invoke-static {p0, v1}, Lcom/android/settings/framework/activity/aboutphone/HtcAboutPhonePluginManager;->pluginModelNumber(Lcom/android/settings/framework/app/HtcInternalPreferenceProxy;Lcom/htc/preference/HtcPreferenceGroup;)Lcom/htc/preference/HtcPreference;

    .line 50
    invoke-static {p0, v1}, Lcom/android/settings/framework/activity/aboutphone/HtcAboutPhonePluginManager;->pluginHardwareVersion(Lcom/android/settings/framework/app/HtcInternalPreferenceProxy;Lcom/htc/preference/HtcPreferenceGroup;)Lcom/htc/preference/HtcPreference;

    .line 52
    iget-object v2, p0, Lcom/android/settings/framework/activity/aboutphone/PhoneInformation_CT;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v2}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v2

    if-eq v2, v3, :cond_0

    sget-boolean v2, Lcom/android/settings/HtcFeatureList;->FEATURE_THIS_IS_WORLD_PHONE:Z

    if-eq v2, v3, :cond_0

    sget-boolean v2, Lcom/android/settings/HtcFeatureList;->FEATURE_SUPPORT_IMEI_WITHOUT_WORLDPHONE:Z

    if-ne v2, v3, :cond_2

    .line 58
    :cond_0
    sget-boolean v2, Lcom/android/settings/HtcFeatureList;->FEATURE_THIS_IS_WORLD_PHONE:Z

    if-eq v2, v3, :cond_1

    sget-boolean v2, Lcom/android/settings/HtcFeatureList;->FEATURE_SUPPORT_IMEI_WITHOUT_WORLDPHONE:Z

    if-ne v2, v3, :cond_6

    .line 60
    :cond_1
    iget-object v2, p0, Lcom/android/settings/framework/activity/aboutphone/PhoneInformation_CT;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-static {p0, v1, v2}, Lcom/android/settings/framework/activity/aboutphone/HtcAboutPhonePluginManager;->pluginIMEI_OF_WORLDPHONE(Lcom/android/settings/framework/app/HtcInternalPreferenceProxy;Lcom/htc/preference/HtcPreferenceGroup;Lcom/android/internal/telephony/Phone;)Lcom/htc/preference/HtcPreference;

    .line 61
    iget-object v2, p0, Lcom/android/settings/framework/activity/aboutphone/PhoneInformation_CT;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-static {p0, v1, v2}, Lcom/android/settings/framework/activity/aboutphone/HtcAboutPhonePluginManager;->pluginIMEI_SV_OF_WORLDPHONE(Lcom/android/settings/framework/app/HtcInternalPreferenceProxy;Lcom/htc/preference/HtcPreferenceGroup;Lcom/android/internal/telephony/Phone;)Lcom/htc/preference/HtcPreference;

    .line 69
    :cond_2
    :goto_0
    iget-object v2, p0, Lcom/android/settings/framework/activity/aboutphone/PhoneInformation_CT;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v2}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v2

    const/4 v3, 0x2

    if-eq v2, v3, :cond_3

    sget-boolean v2, Lcom/android/settings/HtcFeatureList;->FEATURE_THIS_IS_WORLD_PHONE:Z

    if-eqz v2, :cond_4

    .line 71
    :cond_3
    iget-object v2, p0, Lcom/android/settings/framework/activity/aboutphone/PhoneInformation_CT;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-static {p0, v1, v2}, Lcom/android/settings/framework/activity/aboutphone/HtcAboutPhonePluginManager;->pluginMEID(Lcom/android/settings/framework/app/HtcInternalPreferenceProxy;Lcom/htc/preference/HtcPreferenceGroup;Lcom/android/internal/telephony/Phone;)Lcom/htc/preference/HtcPreference;

    .line 74
    :cond_4
    invoke-static {p0, v1}, Lcom/android/settings/framework/activity/aboutphone/HtcAboutPhonePluginManager;->pluginBasebandVersion(Lcom/android/settings/framework/app/HtcInternalPreferenceProxy;Lcom/htc/preference/HtcPreferenceGroup;)Lcom/htc/preference/HtcPreference;

    .line 75
    iget-object v2, p0, Lcom/android/settings/framework/activity/aboutphone/PhoneInformation_CT;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-static {p0, v1, v2}, Lcom/android/settings/framework/activity/aboutphone/HtcAboutPhonePluginManager;->pluginCdmaPrlVersion(Lcom/android/settings/framework/app/HtcInternalPreferenceProxy;Lcom/htc/preference/HtcPreferenceGroup;Lcom/android/internal/telephony/Phone;)Lcom/htc/preference/HtcPreference;

    .line 76
    invoke-static {p0, v1}, Lcom/android/settings/framework/activity/aboutphone/HtcAboutPhonePluginManager;->pluginFirmwareVersion(Lcom/android/settings/framework/app/HtcInternalPreferenceProxy;Lcom/htc/preference/HtcPreferenceGroup;)Lcom/htc/preference/HtcPreference;

    .line 79
    invoke-static {p0, v1}, Lcom/android/settings/framework/activity/aboutphone/HtcAboutPhonePluginManager;->pluginROMVersion(Lcom/android/settings/framework/app/HtcInternalPreferenceProxy;Lcom/htc/preference/HtcPreferenceGroup;)Lcom/htc/preference/HtcPreference;

    .line 81
    invoke-static {p0, v1}, Lcom/android/settings/framework/activity/aboutphone/HtcAboutPhonePluginManager;->pluginPhoneNumber(Lcom/android/settings/framework/app/HtcInternalPreferenceProxy;Lcom/htc/preference/HtcPreferenceGroup;)Lcom/htc/preference/HtcPreference;

    .line 82
    invoke-static {p0, v1}, Lcom/android/settings/framework/activity/aboutphone/HtcAboutPhonePluginManager;->pluginIMSI(Lcom/android/settings/framework/app/HtcInternalPreferenceProxy;Lcom/htc/preference/HtcPreferenceGroup;)Lcom/htc/preference/HtcPreference;

    .line 83
    sget-short v2, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    const/16 v3, 0xd8

    if-ne v2, v3, :cond_5

    .line 85
    iget-object v2, p0, Lcom/android/settings/framework/activity/aboutphone/PhoneInformation_CT;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-static {p0, v1, v2}, Lcom/android/settings/framework/activity/aboutphone/HtcAboutPhonePluginManager;->pluginSimCardId(Lcom/android/settings/framework/app/HtcInternalPreferenceProxy;Lcom/htc/preference/HtcPreferenceGroup;Lcom/android/internal/telephony/Phone;)Lcom/htc/preference/HtcPreference;

    .line 87
    :cond_5
    return-void

    .line 63
    :cond_6
    invoke-static {p0, v1}, Lcom/android/settings/framework/activity/aboutphone/HtcAboutPhonePluginManager;->pluginIMEI(Lcom/android/settings/framework/app/HtcInternalPreferenceProxy;Lcom/htc/preference/HtcPreferenceGroup;)Lcom/htc/preference/HtcPreference;

    .line 64
    invoke-static {p0, v1}, Lcom/android/settings/framework/activity/aboutphone/HtcAboutPhonePluginManager;->pluginIMEI_SV(Lcom/android/settings/framework/app/HtcInternalPreferenceProxy;Lcom/htc/preference/HtcPreferenceGroup;)Lcom/htc/preference/HtcPreference;

    goto :goto_0
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 3
    .parameter "savedInstanceState"

    .prologue
    .line 22
    invoke-super {p0, p1}, Lcom/android/settings/framework/app/HtcInternalPreferenceProxy;->onCreate(Landroid/os/Bundle;)V

    .line 24
    const-string v1, "PhoneInformation_CT"

    const-string v2, "onCreate"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 26
    iget-object v1, p0, Lcom/android/settings/framework/activity/aboutphone/PhoneInformation_CT;->mPhone:Lcom/android/internal/telephony/Phone;

    if-nez v1, :cond_0

    .line 27
    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->getDefaultPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/framework/activity/aboutphone/PhoneInformation_CT;->mPhone:Lcom/android/internal/telephony/Phone;

    .line 31
    :cond_0
    :try_start_0
    invoke-direct {p0}, Lcom/android/settings/framework/activity/aboutphone/PhoneInformation_CT;->doPlugin()V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 35
    :goto_0
    return-void

    .line 32
    :catch_0
    move-exception v0

    .line 33
    .local v0, e:Ljava/lang/RuntimeException;
    invoke-virtual {v0}, Ljava/lang/RuntimeException;->printStackTrace()V

    goto :goto_0
.end method
