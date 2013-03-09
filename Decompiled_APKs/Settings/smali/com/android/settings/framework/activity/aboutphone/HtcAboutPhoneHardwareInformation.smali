.class public final Lcom/android/settings/framework/activity/aboutphone/HtcAboutPhoneHardwareInformation;
.super Lcom/android/settings/framework/app/HtcInternalPreferenceFragment;
.source "HtcAboutPhoneHardwareInformation.java"


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "HtcAboutPhoneHardwareInformation"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 45
    invoke-direct {p0}, Lcom/android/settings/framework/app/HtcInternalPreferenceFragment;-><init>()V

    return-void
.end method

.method private doPlugin()V
    .locals 6

    .prologue
    .line 71
    invoke-virtual {p0}, Lcom/android/settings/framework/activity/aboutphone/HtcAboutPhoneHardwareInformation;->getPreferenceManager()Lcom/htc/preference/HtcPreferenceManager;

    move-result-object v2

    .line 72
    .local v2, preferenceManager:Lcom/htc/preference/HtcPreferenceManager;
    invoke-virtual {p0}, Lcom/android/settings/framework/activity/aboutphone/HtcAboutPhoneHardwareInformation;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/htc/preference/HtcPreferenceManager;->createPreferenceScreen(Landroid/content/Context;)Lcom/htc/preference/HtcPreferenceScreen;

    move-result-object v3

    .line 73
    .local v3, root:Lcom/htc/preference/HtcPreferenceScreen;
    const v4, 0x7f0c049a

    invoke-virtual {v3, v4}, Lcom/htc/preference/HtcPreferenceScreen;->setTitle(I)V

    .line 74
    invoke-virtual {p0, v3}, Lcom/android/settings/framework/activity/aboutphone/HtcAboutPhoneHardwareInformation;->setPreferenceScreen(Lcom/htc/preference/HtcPreferenceScreen;)V

    .line 79
    invoke-virtual {v3}, Lcom/htc/preference/HtcPreferenceScreen;->getContext()Landroid/content/Context;

    move-result-object v4

    const-string v5, "phone"

    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    .line 81
    .local v0, nPhone:Landroid/telephony/TelephonyManager;
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getCurrentPhoneType()I

    move-result v4

    const/4 v5, 0x2

    if-eq v4, v5, :cond_0

    sget-boolean v4, Lcom/android/settings/HtcFeatureList;->FEATURE_THIS_IS_WORLD_PHONE:Z

    if-nez v4, :cond_0

    sget-boolean v4, Lcom/android/settings/framework/flag/feature/HtcAboutPhoneFeatureFlags;->supportHardwareVersion:Z

    if-eqz v4, :cond_1

    .line 85
    :cond_0
    const-string v4, "HtcAboutPhoneHardwareInformation"

    const-string v5, "OoO HtcHardwareVersionPreference"

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 87
    new-instance v1, Lcom/android/settings/framework/preference/aboutphone/hardware/HtcHardwareVersionPreference;

    invoke-virtual {p0}, Lcom/android/settings/framework/activity/aboutphone/HtcAboutPhoneHardwareInformation;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-direct {v1, v4}, Lcom/android/settings/framework/preference/aboutphone/hardware/HtcHardwareVersionPreference;-><init>(Landroid/content/Context;)V

    .line 88
    .local v1, preference:Lcom/htc/preference/HtcPreference;
    invoke-virtual {v3, v1}, Lcom/htc/preference/HtcPreferenceScreen;->addPreference(Lcom/htc/preference/HtcPreference;)Z

    .line 89
    invoke-virtual {p0, v1}, Lcom/android/settings/framework/activity/aboutphone/HtcAboutPhoneHardwareInformation;->addCallback(Lcom/htc/preference/HtcPreference;)V

    .line 93
    .end local v1           #preference:Lcom/htc/preference/HtcPreference;
    :cond_1
    invoke-static {}, Lcom/android/settings/framework/flag/feature/HtcAboutPhoneFeatureFlags;->supportProcessorInfo()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 94
    new-instance v1, Lcom/android/settings/framework/preference/aboutphone/hardware/HtcProcessorInfoPreference;

    invoke-virtual {p0}, Lcom/android/settings/framework/activity/aboutphone/HtcAboutPhoneHardwareInformation;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-direct {v1, v4}, Lcom/android/settings/framework/preference/aboutphone/hardware/HtcProcessorInfoPreference;-><init>(Landroid/content/Context;)V

    .line 95
    .restart local v1       #preference:Lcom/htc/preference/HtcPreference;
    invoke-virtual {v3, v1}, Lcom/htc/preference/HtcPreferenceScreen;->addPreference(Lcom/htc/preference/HtcPreference;)Z

    .line 96
    invoke-virtual {p0, v1}, Lcom/android/settings/framework/activity/aboutphone/HtcAboutPhoneHardwareInformation;->addCallback(Lcom/htc/preference/HtcPreference;)V

    .line 99
    .end local v1           #preference:Lcom/htc/preference/HtcPreference;
    :cond_2
    new-instance v1, Lcom/android/settings/framework/preference/aboutphone/hardware/HtcMemoryInfoPreference;

    invoke-virtual {p0}, Lcom/android/settings/framework/activity/aboutphone/HtcAboutPhoneHardwareInformation;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-direct {v1, v4}, Lcom/android/settings/framework/preference/aboutphone/hardware/HtcMemoryInfoPreference;-><init>(Landroid/content/Context;)V

    .line 100
    .restart local v1       #preference:Lcom/htc/preference/HtcPreference;
    invoke-virtual {v3, v1}, Lcom/htc/preference/HtcPreferenceScreen;->addPreference(Lcom/htc/preference/HtcPreference;)Z

    .line 101
    invoke-virtual {p0, v1}, Lcom/android/settings/framework/activity/aboutphone/HtcAboutPhoneHardwareInformation;->addCallback(Lcom/htc/preference/HtcPreference;)V

    .line 103
    new-instance v1, Lcom/android/settings/framework/preference/aboutphone/hardware/HtcDisplayInfoPreference;

    .end local v1           #preference:Lcom/htc/preference/HtcPreference;
    invoke-virtual {p0}, Lcom/android/settings/framework/activity/aboutphone/HtcAboutPhoneHardwareInformation;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-direct {v1, v4}, Lcom/android/settings/framework/preference/aboutphone/hardware/HtcDisplayInfoPreference;-><init>(Landroid/content/Context;)V

    .line 104
    .restart local v1       #preference:Lcom/htc/preference/HtcPreference;
    invoke-virtual {v3, v1}, Lcom/htc/preference/HtcPreferenceScreen;->addPreference(Lcom/htc/preference/HtcPreference;)Z

    .line 105
    invoke-virtual {p0, v1}, Lcom/android/settings/framework/activity/aboutphone/HtcAboutPhoneHardwareInformation;->addCallback(Lcom/htc/preference/HtcPreference;)V

    .line 107
    new-instance v1, Lcom/android/settings/framework/preference/aboutphone/hardware/HtcMainCameraInfoPreference;

    .end local v1           #preference:Lcom/htc/preference/HtcPreference;
    invoke-virtual {p0}, Lcom/android/settings/framework/activity/aboutphone/HtcAboutPhoneHardwareInformation;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-direct {v1, v4}, Lcom/android/settings/framework/preference/aboutphone/hardware/HtcMainCameraInfoPreference;-><init>(Landroid/content/Context;)V

    .line 108
    .restart local v1       #preference:Lcom/htc/preference/HtcPreference;
    invoke-virtual {v3, v1}, Lcom/htc/preference/HtcPreferenceScreen;->addPreference(Lcom/htc/preference/HtcPreference;)Z

    .line 109
    invoke-virtual {p0, v1}, Lcom/android/settings/framework/activity/aboutphone/HtcAboutPhoneHardwareInformation;->addCallback(Lcom/htc/preference/HtcPreference;)V

    .line 111
    invoke-static {}, Lcom/android/settings/framework/flag/feature/HtcAboutPhoneFeatureFlags;->supportFrontCameraInfo()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 112
    new-instance v1, Lcom/android/settings/framework/preference/aboutphone/hardware/HtcFrontCameraInfoPreference;

    .end local v1           #preference:Lcom/htc/preference/HtcPreference;
    invoke-virtual {p0}, Lcom/android/settings/framework/activity/aboutphone/HtcAboutPhoneHardwareInformation;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-direct {v1, v4}, Lcom/android/settings/framework/preference/aboutphone/hardware/HtcFrontCameraInfoPreference;-><init>(Landroid/content/Context;)V

    .line 113
    .restart local v1       #preference:Lcom/htc/preference/HtcPreference;
    invoke-virtual {v3, v1}, Lcom/htc/preference/HtcPreferenceScreen;->addPreference(Lcom/htc/preference/HtcPreference;)Z

    .line 114
    invoke-virtual {p0, v1}, Lcom/android/settings/framework/activity/aboutphone/HtcAboutPhoneHardwareInformation;->addCallback(Lcom/htc/preference/HtcPreference;)V

    .line 116
    :cond_3
    sget-boolean v4, Lcom/android/settings/framework/flag/HtcSkuFlags;->supportWiFi:Z

    if-eqz v4, :cond_4

    .line 117
    new-instance v1, Lcom/android/settings/framework/preference/aboutphone/hardware/HtcWifiInfoPreference;

    .end local v1           #preference:Lcom/htc/preference/HtcPreference;
    invoke-virtual {p0}, Lcom/android/settings/framework/activity/aboutphone/HtcAboutPhoneHardwareInformation;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-direct {v1, v4}, Lcom/android/settings/framework/preference/aboutphone/hardware/HtcWifiInfoPreference;-><init>(Landroid/content/Context;)V

    .line 118
    .restart local v1       #preference:Lcom/htc/preference/HtcPreference;
    invoke-virtual {v3, v1}, Lcom/htc/preference/HtcPreferenceScreen;->addPreference(Lcom/htc/preference/HtcPreference;)Z

    .line 119
    invoke-virtual {p0, v1}, Lcom/android/settings/framework/activity/aboutphone/HtcAboutPhoneHardwareInformation;->addCallback(Lcom/htc/preference/HtcPreference;)V

    .line 121
    new-instance v1, Lcom/android/settings/framework/preference/aboutphone/hardware/HtcWifiMACPreference;

    .end local v1           #preference:Lcom/htc/preference/HtcPreference;
    invoke-virtual {p0}, Lcom/android/settings/framework/activity/aboutphone/HtcAboutPhoneHardwareInformation;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-direct {v1, v4}, Lcom/android/settings/framework/preference/aboutphone/hardware/HtcWifiMACPreference;-><init>(Landroid/content/Context;)V

    .line 122
    .restart local v1       #preference:Lcom/htc/preference/HtcPreference;
    invoke-virtual {v3, v1}, Lcom/htc/preference/HtcPreferenceScreen;->addPreference(Lcom/htc/preference/HtcPreference;)Z

    .line 123
    invoke-virtual {p0, v1}, Lcom/android/settings/framework/activity/aboutphone/HtcAboutPhoneHardwareInformation;->addCallback(Lcom/htc/preference/HtcPreference;)V

    .line 126
    :cond_4
    new-instance v1, Lcom/android/settings/framework/preference/aboutphone/hardware/HtcBluetoothInfoPreference;

    .end local v1           #preference:Lcom/htc/preference/HtcPreference;
    invoke-virtual {p0}, Lcom/android/settings/framework/activity/aboutphone/HtcAboutPhoneHardwareInformation;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-direct {v1, v4}, Lcom/android/settings/framework/preference/aboutphone/hardware/HtcBluetoothInfoPreference;-><init>(Landroid/content/Context;)V

    .line 127
    .restart local v1       #preference:Lcom/htc/preference/HtcPreference;
    invoke-virtual {v3, v1}, Lcom/htc/preference/HtcPreferenceScreen;->addPreference(Lcom/htc/preference/HtcPreference;)Z

    .line 128
    invoke-virtual {p0, v1}, Lcom/android/settings/framework/activity/aboutphone/HtcAboutPhoneHardwareInformation;->addCallback(Lcom/htc/preference/HtcPreference;)V

    .line 130
    new-instance v1, Lcom/android/settings/framework/preference/aboutphone/hardware/HtcBluetoothAddressPreference;

    .end local v1           #preference:Lcom/htc/preference/HtcPreference;
    invoke-virtual {p0}, Lcom/android/settings/framework/activity/aboutphone/HtcAboutPhoneHardwareInformation;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-direct {v1, v4}, Lcom/android/settings/framework/preference/aboutphone/hardware/HtcBluetoothAddressPreference;-><init>(Landroid/content/Context;)V

    .line 131
    .restart local v1       #preference:Lcom/htc/preference/HtcPreference;
    invoke-virtual {v3, v1}, Lcom/htc/preference/HtcPreferenceScreen;->addPreference(Lcom/htc/preference/HtcPreference;)Z

    .line 132
    invoke-virtual {p0, v1}, Lcom/android/settings/framework/activity/aboutphone/HtcAboutPhoneHardwareInformation;->addCallback(Lcom/htc/preference/HtcPreference;)V

    .line 136
    sget-boolean v4, Lcom/android/settings/HtcFeatureList;->FEATURE_WIMAX:Z

    const/4 v5, 0x1

    if-ne v4, v5, :cond_5

    .line 137
    new-instance v1, Lcom/android/settings/framework/preference/aboutphone/hardware/HtcWimaxMACAddressPreference;

    .end local v1           #preference:Lcom/htc/preference/HtcPreference;
    invoke-virtual {p0}, Lcom/android/settings/framework/activity/aboutphone/HtcAboutPhoneHardwareInformation;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-direct {v1, v4}, Lcom/android/settings/framework/preference/aboutphone/hardware/HtcWimaxMACAddressPreference;-><init>(Landroid/content/Context;)V

    .line 138
    .restart local v1       #preference:Lcom/htc/preference/HtcPreference;
    invoke-virtual {v3, v1}, Lcom/htc/preference/HtcPreferenceScreen;->addPreference(Lcom/htc/preference/HtcPreference;)Z

    .line 139
    invoke-virtual {p0, v1}, Lcom/android/settings/framework/activity/aboutphone/HtcAboutPhoneHardwareInformation;->addCallback(Lcom/htc/preference/HtcPreference;)V

    .line 143
    :cond_5
    sget-boolean v4, Lcom/android/settings/framework/flag/HtcProjectFlags;->isI0001:Z

    if-eqz v4, :cond_6

    .line 144
    new-instance v1, Lcom/android/settings/framework/preference/aboutphone/identity/HtcLteIccPreference;

    .end local v1           #preference:Lcom/htc/preference/HtcPreference;
    invoke-virtual {p0}, Lcom/android/settings/framework/activity/aboutphone/HtcAboutPhoneHardwareInformation;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-direct {v1, v4}, Lcom/android/settings/framework/preference/aboutphone/identity/HtcLteIccPreference;-><init>(Landroid/content/Context;)V

    .line 145
    .restart local v1       #preference:Lcom/htc/preference/HtcPreference;
    invoke-virtual {v3, v1}, Lcom/htc/preference/HtcPreferenceScreen;->addPreference(Lcom/htc/preference/HtcPreference;)Z

    .line 146
    invoke-virtual {p0, v1}, Lcom/android/settings/framework/activity/aboutphone/HtcAboutPhoneHardwareInformation;->addCallback(Lcom/htc/preference/HtcPreference;)V

    .line 149
    :cond_6
    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 1
    .parameter "savedInstanceState"

    .prologue
    .line 54
    invoke-super {p0, p1}, Lcom/android/settings/framework/app/HtcInternalPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 57
    :try_start_0
    invoke-direct {p0}, Lcom/android/settings/framework/activity/aboutphone/HtcAboutPhoneHardwareInformation;->doPlugin()V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 61
    :goto_0
    invoke-virtual {p0}, Lcom/android/settings/framework/activity/aboutphone/HtcAboutPhoneHardwareInformation;->requestHandlers()V

    .line 62
    return-void

    .line 58
    :catch_0
    move-exception v0

    .line 59
    .local v0, e:Ljava/lang/RuntimeException;
    invoke-virtual {v0}, Ljava/lang/RuntimeException;->printStackTrace()V

    goto :goto_0
.end method
