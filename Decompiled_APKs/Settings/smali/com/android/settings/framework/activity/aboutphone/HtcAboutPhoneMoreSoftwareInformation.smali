.class public final Lcom/android/settings/framework/activity/aboutphone/HtcAboutPhoneMoreSoftwareInformation;
.super Lcom/android/settings/framework/app/HtcInternalPreferenceFragment;
.source "HtcAboutPhoneMoreSoftwareInformation.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 37
    invoke-direct {p0}, Lcom/android/settings/framework/app/HtcInternalPreferenceFragment;-><init>()V

    return-void
.end method

.method private doPlugin()V
    .locals 4

    .prologue
    .line 58
    invoke-virtual {p0}, Lcom/android/settings/framework/activity/aboutphone/HtcAboutPhoneMoreSoftwareInformation;->getPreferenceManager()Lcom/htc/preference/HtcPreferenceManager;

    move-result-object v0

    .line 59
    .local v0, pm:Lcom/htc/preference/HtcPreferenceManager;
    invoke-virtual {p0}, Lcom/android/settings/framework/activity/aboutphone/HtcAboutPhoneMoreSoftwareInformation;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/htc/preference/HtcPreferenceManager;->createPreferenceScreen(Landroid/content/Context;)Lcom/htc/preference/HtcPreferenceScreen;

    move-result-object v2

    .line 60
    .local v2, root:Lcom/htc/preference/HtcPreferenceScreen;
    const v3, 0x7f0c0144

    invoke-virtual {v2, v3}, Lcom/htc/preference/HtcPreferenceScreen;->setTitle(I)V

    .line 61
    invoke-virtual {p0, v2}, Lcom/android/settings/framework/activity/aboutphone/HtcAboutPhoneMoreSoftwareInformation;->setPreferenceScreen(Lcom/htc/preference/HtcPreferenceScreen;)V

    .line 64
    new-instance v1, Lcom/android/settings/framework/preference/aboutphone/software/more/HtcKernelVersionPreference;

    invoke-virtual {p0}, Lcom/android/settings/framework/activity/aboutphone/HtcAboutPhoneMoreSoftwareInformation;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v1, v3}, Lcom/android/settings/framework/preference/aboutphone/software/more/HtcKernelVersionPreference;-><init>(Landroid/content/Context;)V

    .line 65
    .local v1, preference:Lcom/htc/preference/HtcPreference;
    invoke-virtual {v2, v1}, Lcom/htc/preference/HtcPreferenceScreen;->addPreference(Lcom/htc/preference/HtcPreference;)Z

    .line 66
    invoke-virtual {p0, v1}, Lcom/android/settings/framework/activity/aboutphone/HtcAboutPhoneMoreSoftwareInformation;->addCallback(Lcom/htc/preference/HtcPreference;)V

    .line 68
    new-instance v1, Lcom/android/settings/framework/preference/aboutphone/software/more/HtcBasebandVersionPreference;

    .end local v1           #preference:Lcom/htc/preference/HtcPreference;
    invoke-virtual {p0}, Lcom/android/settings/framework/activity/aboutphone/HtcAboutPhoneMoreSoftwareInformation;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v1, v3}, Lcom/android/settings/framework/preference/aboutphone/software/more/HtcBasebandVersionPreference;-><init>(Landroid/content/Context;)V

    .line 69
    .restart local v1       #preference:Lcom/htc/preference/HtcPreference;
    invoke-virtual {v2, v1}, Lcom/htc/preference/HtcPreferenceScreen;->addPreference(Lcom/htc/preference/HtcPreference;)Z

    .line 70
    invoke-virtual {p0, v1}, Lcom/android/settings/framework/activity/aboutphone/HtcAboutPhoneMoreSoftwareInformation;->addCallback(Lcom/htc/preference/HtcPreference;)V

    .line 72
    new-instance v1, Lcom/android/settings/framework/preference/aboutphone/software/more/HtcBuildNumberPreference;

    .end local v1           #preference:Lcom/htc/preference/HtcPreference;
    invoke-virtual {p0}, Lcom/android/settings/framework/activity/aboutphone/HtcAboutPhoneMoreSoftwareInformation;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v1, v3}, Lcom/android/settings/framework/preference/aboutphone/software/more/HtcBuildNumberPreference;-><init>(Landroid/content/Context;)V

    .line 73
    .restart local v1       #preference:Lcom/htc/preference/HtcPreference;
    invoke-virtual {v2, v1}, Lcom/htc/preference/HtcPreferenceScreen;->addPreference(Lcom/htc/preference/HtcPreference;)Z

    .line 74
    invoke-virtual {p0, v1}, Lcom/android/settings/framework/activity/aboutphone/HtcAboutPhoneMoreSoftwareInformation;->addCallback(Lcom/htc/preference/HtcPreference;)V

    .line 76
    new-instance v1, Lcom/android/settings/framework/preference/aboutphone/software/more/HtcBrowserVersionPreference;

    .end local v1           #preference:Lcom/htc/preference/HtcPreference;
    invoke-virtual {p0}, Lcom/android/settings/framework/activity/aboutphone/HtcAboutPhoneMoreSoftwareInformation;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v1, v3}, Lcom/android/settings/framework/preference/aboutphone/software/more/HtcBrowserVersionPreference;-><init>(Landroid/content/Context;)V

    .line 77
    .restart local v1       #preference:Lcom/htc/preference/HtcPreference;
    invoke-virtual {v2, v1}, Lcom/htc/preference/HtcPreferenceScreen;->addPreference(Lcom/htc/preference/HtcPreference;)Z

    .line 78
    invoke-virtual {p0, v1}, Lcom/android/settings/framework/activity/aboutphone/HtcAboutPhoneMoreSoftwareInformation;->addCallback(Lcom/htc/preference/HtcPreference;)V

    .line 80
    sget-boolean v3, Lcom/android/settings/HtcFeatureList;->FEATURE_MOVE_CDMA_INFO_INTO_MORE:Z

    if-eqz v3, :cond_0

    .line 82
    new-instance v1, Lcom/android/settings/framework/preference/aboutphone/software/HtcCdmaPriPreference;

    .end local v1           #preference:Lcom/htc/preference/HtcPreference;
    invoke-virtual {p0}, Lcom/android/settings/framework/activity/aboutphone/HtcAboutPhoneMoreSoftwareInformation;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v1, v3}, Lcom/android/settings/framework/preference/aboutphone/software/HtcCdmaPriPreference;-><init>(Landroid/content/Context;)V

    .line 83
    .restart local v1       #preference:Lcom/htc/preference/HtcPreference;
    invoke-virtual {v2, v1}, Lcom/htc/preference/HtcPreferenceScreen;->addPreference(Lcom/htc/preference/HtcPreference;)Z

    .line 84
    invoke-virtual {p0, v1}, Lcom/android/settings/framework/activity/aboutphone/HtcAboutPhoneMoreSoftwareInformation;->addCallback(Lcom/htc/preference/HtcPreference;)V

    .line 86
    new-instance v1, Lcom/android/settings/framework/preference/aboutphone/software/HtcCdmaPrlPreference;

    .end local v1           #preference:Lcom/htc/preference/HtcPreference;
    invoke-virtual {p0}, Lcom/android/settings/framework/activity/aboutphone/HtcAboutPhoneMoreSoftwareInformation;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v1, v3}, Lcom/android/settings/framework/preference/aboutphone/software/HtcCdmaPrlPreference;-><init>(Landroid/content/Context;)V

    .line 87
    .restart local v1       #preference:Lcom/htc/preference/HtcPreference;
    invoke-virtual {v2, v1}, Lcom/htc/preference/HtcPreferenceScreen;->addPreference(Lcom/htc/preference/HtcPreference;)Z

    .line 88
    invoke-virtual {p0, v1}, Lcom/android/settings/framework/activity/aboutphone/HtcAboutPhoneMoreSoftwareInformation;->addCallback(Lcom/htc/preference/HtcPreference;)V

    .line 90
    :cond_0
    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 1
    .parameter "savedInstanceState"

    .prologue
    .line 42
    invoke-super {p0, p1}, Lcom/android/settings/framework/app/HtcInternalPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 44
    :try_start_0
    invoke-direct {p0}, Lcom/android/settings/framework/activity/aboutphone/HtcAboutPhoneMoreSoftwareInformation;->doPlugin()V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 48
    :goto_0
    invoke-virtual {p0}, Lcom/android/settings/framework/activity/aboutphone/HtcAboutPhoneMoreSoftwareInformation;->requestHandlers()V

    .line 49
    return-void

    .line 45
    :catch_0
    move-exception v0

    .line 46
    .local v0, e:Ljava/lang/RuntimeException;
    invoke-virtual {v0}, Ljava/lang/RuntimeException;->printStackTrace()V

    goto :goto_0
.end method
