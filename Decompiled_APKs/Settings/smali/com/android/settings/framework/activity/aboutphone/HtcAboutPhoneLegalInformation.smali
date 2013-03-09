.class public final Lcom/android/settings/framework/activity/aboutphone/HtcAboutPhoneLegalInformation;
.super Lcom/android/settings/framework/app/HtcInternalPreferenceFragment;
.source "HtcAboutPhoneLegalInformation.java"


# static fields
.field private static final TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 38
    const-class v0, Lcom/android/settings/framework/activity/aboutphone/HtcAboutPhoneLegalInformation;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/settings/framework/activity/aboutphone/HtcAboutPhoneLegalInformation;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 35
    invoke-direct {p0}, Lcom/android/settings/framework/app/HtcInternalPreferenceFragment;-><init>()V

    return-void
.end method

.method private doPlugin()V
    .locals 4

    .prologue
    .line 58
    invoke-virtual {p0}, Lcom/android/settings/framework/activity/aboutphone/HtcAboutPhoneLegalInformation;->getPreferenceManager()Lcom/htc/preference/HtcPreferenceManager;

    move-result-object v1

    .line 59
    .local v1, preferenceManager:Lcom/htc/preference/HtcPreferenceManager;
    invoke-virtual {p0}, Lcom/android/settings/framework/activity/aboutphone/HtcAboutPhoneLegalInformation;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/htc/preference/HtcPreferenceManager;->createPreferenceScreen(Landroid/content/Context;)Lcom/htc/preference/HtcPreferenceScreen;

    move-result-object v2

    .line 60
    .local v2, root:Lcom/htc/preference/HtcPreferenceScreen;
    const v3, 0x7f0c04a0

    invoke-virtual {v2, v3}, Lcom/htc/preference/HtcPreferenceScreen;->setTitle(I)V

    .line 61
    invoke-virtual {p0, v2}, Lcom/android/settings/framework/activity/aboutphone/HtcAboutPhoneLegalInformation;->setPreferenceScreen(Lcom/htc/preference/HtcPreferenceScreen;)V

    .line 67
    new-instance v0, Lcom/android/settings/framework/preference/aboutphone/legal/HtcLegalInformation;

    invoke-virtual {p0}, Lcom/android/settings/framework/activity/aboutphone/HtcAboutPhoneLegalInformation;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v0, v3}, Lcom/android/settings/framework/preference/aboutphone/legal/HtcLegalInformation;-><init>(Landroid/content/Context;)V

    .line 68
    .local v0, preference:Lcom/htc/preference/HtcPreference;
    invoke-virtual {p0, v0}, Lcom/android/settings/framework/activity/aboutphone/HtcAboutPhoneLegalInformation;->addCallback(Lcom/htc/preference/HtcPreference;)V

    .line 69
    invoke-virtual {v2, v0}, Lcom/htc/preference/HtcPreferenceScreen;->addPreference(Lcom/htc/preference/HtcPreference;)Z

    .line 72
    invoke-static {}, Lcom/android/settings/framework/flag/feature/HtcAboutPhoneFeatureFlags;->supportOperatorLegalInformation()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 73
    new-instance v0, Lcom/android/settings/framework/preference/aboutphone/legal/OperatorLegalInformation;

    .end local v0           #preference:Lcom/htc/preference/HtcPreference;
    invoke-virtual {p0}, Lcom/android/settings/framework/activity/aboutphone/HtcAboutPhoneLegalInformation;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v0, v3}, Lcom/android/settings/framework/preference/aboutphone/legal/OperatorLegalInformation;-><init>(Landroid/content/Context;)V

    .line 74
    .restart local v0       #preference:Lcom/htc/preference/HtcPreference;
    invoke-virtual {p0, v0}, Lcom/android/settings/framework/activity/aboutphone/HtcAboutPhoneLegalInformation;->addCallback(Lcom/htc/preference/HtcPreference;)V

    .line 75
    invoke-virtual {v2, v0}, Lcom/htc/preference/HtcPreferenceScreen;->addPreference(Lcom/htc/preference/HtcPreference;)Z

    .line 78
    :cond_0
    sget-boolean v3, Lcom/android/settings/framework/flag/HtcProjectFlags;->isV0008:Z

    if-eqz v3, :cond_4

    .line 79
    new-instance v0, Lcom/android/settings/framework/preference/aboutphone/legal/HtcVirginMobileLegalInformation;

    .end local v0           #preference:Lcom/htc/preference/HtcPreference;
    invoke-virtual {p0}, Lcom/android/settings/framework/activity/aboutphone/HtcAboutPhoneLegalInformation;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v0, v3}, Lcom/android/settings/framework/preference/aboutphone/legal/HtcVirginMobileLegalInformation;-><init>(Landroid/content/Context;)V

    .line 80
    .restart local v0       #preference:Lcom/htc/preference/HtcPreference;
    invoke-virtual {p0, v0}, Lcom/android/settings/framework/activity/aboutphone/HtcAboutPhoneLegalInformation;->addCallback(Lcom/htc/preference/HtcPreference;)V

    .line 81
    invoke-virtual {v2, v0}, Lcom/htc/preference/HtcPreferenceScreen;->addPreference(Lcom/htc/preference/HtcPreference;)Z

    .line 90
    :cond_1
    :goto_0
    invoke-static {}, Lcom/android/settings/framework/flag/feature/HtcAboutPhoneFeatureFlags;->supportGoogleLegalInformation()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 91
    new-instance v0, Lcom/android/settings/framework/preference/aboutphone/legal/GoogleLegalInformation;

    .end local v0           #preference:Lcom/htc/preference/HtcPreference;
    invoke-virtual {p0}, Lcom/android/settings/framework/activity/aboutphone/HtcAboutPhoneLegalInformation;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v0, v3}, Lcom/android/settings/framework/preference/aboutphone/legal/GoogleLegalInformation;-><init>(Landroid/content/Context;)V

    .line 92
    .restart local v0       #preference:Lcom/htc/preference/HtcPreference;
    invoke-virtual {p0, v0}, Lcom/android/settings/framework/activity/aboutphone/HtcAboutPhoneLegalInformation;->addCallback(Lcom/htc/preference/HtcPreference;)V

    .line 93
    invoke-virtual {v2, v0}, Lcom/htc/preference/HtcPreferenceScreen;->addPreference(Lcom/htc/preference/HtcPreference;)Z

    .line 97
    :cond_2
    new-instance v0, Lcom/android/settings/framework/preference/aboutphone/legal/AndroidOpenSourceLicenses;

    .end local v0           #preference:Lcom/htc/preference/HtcPreference;
    invoke-virtual {p0}, Lcom/android/settings/framework/activity/aboutphone/HtcAboutPhoneLegalInformation;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v0, v3}, Lcom/android/settings/framework/preference/aboutphone/legal/AndroidOpenSourceLicenses;-><init>(Landroid/content/Context;)V

    .line 98
    .restart local v0       #preference:Lcom/htc/preference/HtcPreference;
    invoke-virtual {p0, v0}, Lcom/android/settings/framework/activity/aboutphone/HtcAboutPhoneLegalInformation;->addCallback(Lcom/htc/preference/HtcPreference;)V

    .line 99
    invoke-virtual {v2, v0}, Lcom/htc/preference/HtcPreferenceScreen;->addPreference(Lcom/htc/preference/HtcPreference;)Z

    .line 103
    invoke-static {}, Lcom/android/settings/framework/flag/feature/HtcAboutPhoneFeatureFlags;->supportTelecElectricLegalInformation()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 104
    new-instance v0, Lcom/android/settings/framework/preference/aboutphone/legal/SmbTelecElectricLegalInformation;

    .end local v0           #preference:Lcom/htc/preference/HtcPreference;
    invoke-virtual {p0}, Lcom/android/settings/framework/activity/aboutphone/HtcAboutPhoneLegalInformation;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v0, v3}, Lcom/android/settings/framework/preference/aboutphone/legal/SmbTelecElectricLegalInformation;-><init>(Landroid/content/Context;)V

    .line 105
    .restart local v0       #preference:Lcom/htc/preference/HtcPreference;
    invoke-virtual {p0, v0}, Lcom/android/settings/framework/activity/aboutphone/HtcAboutPhoneLegalInformation;->addCallback(Lcom/htc/preference/HtcPreference;)V

    .line 106
    invoke-virtual {v2, v0}, Lcom/htc/preference/HtcPreferenceScreen;->addPreference(Lcom/htc/preference/HtcPreference;)Z

    .line 109
    :cond_3
    invoke-virtual {p0}, Lcom/android/settings/framework/activity/aboutphone/HtcAboutPhoneLegalInformation;->requestHandlers()V

    .line 110
    return-void

    .line 83
    :cond_4
    sget-boolean v3, Lcom/android/settings/framework/flag/HtcProjectFlags;->isB0005:Z

    if-eqz v3, :cond_1

    .line 84
    new-instance v0, Lcom/android/settings/framework/preference/aboutphone/legal/HtcBoostMobileLegalInformation;

    .end local v0           #preference:Lcom/htc/preference/HtcPreference;
    invoke-virtual {p0}, Lcom/android/settings/framework/activity/aboutphone/HtcAboutPhoneLegalInformation;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v0, v3}, Lcom/android/settings/framework/preference/aboutphone/legal/HtcBoostMobileLegalInformation;-><init>(Landroid/content/Context;)V

    .line 85
    .restart local v0       #preference:Lcom/htc/preference/HtcPreference;
    invoke-virtual {p0, v0}, Lcom/android/settings/framework/activity/aboutphone/HtcAboutPhoneLegalInformation;->addCallback(Lcom/htc/preference/HtcPreference;)V

    .line 86
    invoke-virtual {v2, v0}, Lcom/htc/preference/HtcPreferenceScreen;->addPreference(Lcom/htc/preference/HtcPreference;)Z

    goto :goto_0
.end method


# virtual methods
.method public onCreateInBackground(Landroid/os/Bundle;)V
    .locals 3
    .parameter "savedInstanceState"

    .prologue
    .line 44
    :try_start_0
    invoke-direct {p0}, Lcom/android/settings/framework/activity/aboutphone/HtcAboutPhoneLegalInformation;->doPlugin()V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 49
    :goto_0
    return-void

    .line 45
    :catch_0
    move-exception v0

    .line 46
    .local v0, e:Ljava/lang/RuntimeException;
    invoke-virtual {v0}, Ljava/lang/RuntimeException;->printStackTrace()V

    .line 47
    sget-object v1, Lcom/android/settings/framework/activity/aboutphone/HtcAboutPhoneLegalInformation;->TAG:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/RuntimeException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method
