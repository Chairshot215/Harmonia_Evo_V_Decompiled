.class public final Lcom/android/settings/framework/activity/aboutphone/HtcAboutPhoneBattery;
.super Lcom/android/settings/framework/app/HtcInternalPreferenceFragment;
.source "HtcAboutPhoneBattery.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 31
    invoke-direct {p0}, Lcom/android/settings/framework/app/HtcInternalPreferenceFragment;-><init>()V

    return-void
.end method

.method private doPlugin()V
    .locals 4

    .prologue
    .line 53
    invoke-virtual {p0}, Lcom/android/settings/framework/activity/aboutphone/HtcAboutPhoneBattery;->getPreferenceManager()Lcom/htc/preference/HtcPreferenceManager;

    move-result-object v1

    .line 54
    .local v1, preferenceManager:Lcom/htc/preference/HtcPreferenceManager;
    invoke-virtual {p0}, Lcom/android/settings/framework/activity/aboutphone/HtcAboutPhoneBattery;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/htc/preference/HtcPreferenceManager;->createPreferenceScreen(Landroid/content/Context;)Lcom/htc/preference/HtcPreferenceScreen;

    move-result-object v2

    .line 55
    .local v2, root:Lcom/htc/preference/HtcPreferenceScreen;
    const v3, 0x7f0c0498

    invoke-virtual {v2, v3}, Lcom/htc/preference/HtcPreferenceScreen;->setTitle(I)V

    .line 56
    invoke-virtual {p0, v2}, Lcom/android/settings/framework/activity/aboutphone/HtcAboutPhoneBattery;->setPreferenceScreen(Lcom/htc/preference/HtcPreferenceScreen;)V

    .line 78
    new-instance v0, Lcom/android/settings/framework/preference/aboutphone/battery/HtcUpTimePreference;

    invoke-virtual {p0}, Lcom/android/settings/framework/activity/aboutphone/HtcAboutPhoneBattery;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v0, v3}, Lcom/android/settings/framework/preference/aboutphone/battery/HtcUpTimePreference;-><init>(Landroid/content/Context;)V

    .line 79
    .local v0, preference:Lcom/htc/preference/HtcPreference;
    invoke-virtual {v2, v0}, Lcom/htc/preference/HtcPreferenceScreen;->addPreference(Lcom/htc/preference/HtcPreference;)Z

    .line 80
    invoke-virtual {p0, v0}, Lcom/android/settings/framework/activity/aboutphone/HtcAboutPhoneBattery;->addCallback(Lcom/htc/preference/HtcPreference;)V

    .line 82
    new-instance v0, Lcom/android/settings/framework/preference/aboutphone/battery/HtcAwakeTimePreference;

    .end local v0           #preference:Lcom/htc/preference/HtcPreference;
    invoke-virtual {p0}, Lcom/android/settings/framework/activity/aboutphone/HtcAboutPhoneBattery;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v0, v3}, Lcom/android/settings/framework/preference/aboutphone/battery/HtcAwakeTimePreference;-><init>(Landroid/content/Context;)V

    .line 83
    .restart local v0       #preference:Lcom/htc/preference/HtcPreference;
    invoke-virtual {v2, v0}, Lcom/htc/preference/HtcPreferenceScreen;->addPreference(Lcom/htc/preference/HtcPreference;)Z

    .line 84
    invoke-virtual {p0, v0}, Lcom/android/settings/framework/activity/aboutphone/HtcAboutPhoneBattery;->addCallback(Lcom/htc/preference/HtcPreference;)V

    .line 85
    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 1
    .parameter "savedInstanceState"

    .prologue
    .line 36
    invoke-super {p0, p1}, Lcom/android/settings/framework/app/HtcInternalPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 39
    :try_start_0
    invoke-direct {p0}, Lcom/android/settings/framework/activity/aboutphone/HtcAboutPhoneBattery;->doPlugin()V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 43
    :goto_0
    invoke-virtual {p0}, Lcom/android/settings/framework/activity/aboutphone/HtcAboutPhoneBattery;->requestHandlers()V

    .line 44
    return-void

    .line 40
    :catch_0
    move-exception v0

    .line 41
    .local v0, e:Ljava/lang/RuntimeException;
    invoke-virtual {v0}, Ljava/lang/RuntimeException;->printStackTrace()V

    goto :goto_0
.end method
