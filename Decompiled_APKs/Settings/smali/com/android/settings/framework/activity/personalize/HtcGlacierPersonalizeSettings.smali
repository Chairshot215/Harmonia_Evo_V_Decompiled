.class public Lcom/android/settings/framework/activity/personalize/HtcGlacierPersonalizeSettings;
.super Lcom/android/settings/framework/app/HtcInternalPreferenceActivity;
.source "HtcGlacierPersonalizeSettings.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 28
    invoke-direct {p0}, Lcom/android/settings/framework/app/HtcInternalPreferenceActivity;-><init>()V

    return-void
.end method

.method private inflate()V
    .locals 6

    .prologue
    const/4 v5, 0x1

    .line 39
    invoke-virtual {p0}, Lcom/android/settings/framework/activity/personalize/HtcGlacierPersonalizeSettings;->getPreferenceManager()Lcom/htc/preference/HtcPreferenceManager;

    move-result-object v0

    .line 42
    .local v0, pm:Lcom/htc/preference/HtcPreferenceManager;
    invoke-virtual {v0, p0}, Lcom/htc/preference/HtcPreferenceManager;->createPreferenceScreen(Landroid/content/Context;)Lcom/htc/preference/HtcPreferenceScreen;

    move-result-object v2

    .line 43
    .local v2, root:Lcom/htc/preference/HtcPreferenceScreen;
    const v3, 0x7f0c0367

    invoke-virtual {v2, v3}, Lcom/htc/preference/HtcPreferenceScreen;->setTitle(I)V

    .line 44
    invoke-virtual {p0, v2}, Lcom/android/settings/framework/activity/personalize/HtcGlacierPersonalizeSettings;->setPreferenceScreen(Lcom/htc/preference/HtcPreferenceScreen;)V

    .line 49
    sget-short v3, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v4, 0x1c

    if-eq v3, v4, :cond_0

    .line 50
    new-instance v1, Lcom/android/settings/framework/preference/personalize/tmo/TmoRosiePagesPreference;

    invoke-direct {v1, p0}, Lcom/android/settings/framework/preference/personalize/tmo/TmoRosiePagesPreference;-><init>(Landroid/content/Context;)V

    .line 51
    .local v1, preference:Lcom/htc/preference/HtcPreference;
    invoke-virtual {v1, v5}, Lcom/htc/preference/HtcPreference;->setIconVisibility(Z)V

    .line 52
    invoke-virtual {v2, v1}, Lcom/htc/preference/HtcPreferenceScreen;->addPreference(Lcom/htc/preference/HtcPreference;)Z

    .line 53
    invoke-virtual {p0, v1}, Lcom/android/settings/framework/activity/personalize/HtcGlacierPersonalizeSettings;->addCallback(Lcom/htc/preference/HtcPreference;)V

    .line 56
    .end local v1           #preference:Lcom/htc/preference/HtcPreference;
    :cond_0
    new-instance v1, Lcom/android/settings/framework/preference/personalize/tmo/TmoThemePreference;

    invoke-direct {v1, p0}, Lcom/android/settings/framework/preference/personalize/tmo/TmoThemePreference;-><init>(Landroid/content/Context;)V

    .line 57
    .restart local v1       #preference:Lcom/htc/preference/HtcPreference;
    invoke-virtual {v1, v5}, Lcom/htc/preference/HtcPreference;->setIconVisibility(Z)V

    .line 58
    invoke-virtual {v2, v1}, Lcom/htc/preference/HtcPreferenceScreen;->addPreference(Lcom/htc/preference/HtcPreference;)Z

    .line 59
    invoke-virtual {p0, v1}, Lcom/android/settings/framework/activity/personalize/HtcGlacierPersonalizeSettings;->addCallback(Lcom/htc/preference/HtcPreference;)V

    .line 63
    new-instance v1, Lcom/htc/preference/HtcPreferenceCategory;

    .end local v1           #preference:Lcom/htc/preference/HtcPreference;
    invoke-direct {v1, p0}, Lcom/htc/preference/HtcPreferenceCategory;-><init>(Landroid/content/Context;)V

    .line 64
    .restart local v1       #preference:Lcom/htc/preference/HtcPreference;
    const v3, 0x7f0c0092

    invoke-virtual {v1, v3}, Lcom/htc/preference/HtcPreferenceCategory;->setTitle(I)V

    .line 66
    invoke-virtual {v2, v1}, Lcom/htc/preference/HtcPreferenceScreen;->addPreference(Lcom/htc/preference/HtcPreference;)Z

    .line 68
    new-instance v1, Lcom/android/settings/framework/preference/personalize/tmo/TmoWallpaperPreference;

    .end local v1           #preference:Lcom/htc/preference/HtcPreference;
    invoke-direct {v1, p0}, Lcom/android/settings/framework/preference/personalize/tmo/TmoWallpaperPreference;-><init>(Landroid/content/Context;)V

    .line 69
    .restart local v1       #preference:Lcom/htc/preference/HtcPreference;
    invoke-virtual {v1, v5}, Lcom/htc/preference/HtcPreference;->setIconVisibility(Z)V

    .line 70
    invoke-virtual {v2, v1}, Lcom/htc/preference/HtcPreferenceScreen;->addPreference(Lcom/htc/preference/HtcPreference;)Z

    .line 71
    invoke-virtual {p0, v1}, Lcom/android/settings/framework/activity/personalize/HtcGlacierPersonalizeSettings;->addCallback(Lcom/htc/preference/HtcPreference;)V

    .line 73
    new-instance v1, Lcom/android/settings/framework/preference/personalize/tmo/TmoLockWallpaperPreference;

    .end local v1           #preference:Lcom/htc/preference/HtcPreference;
    invoke-direct {v1, p0}, Lcom/android/settings/framework/preference/personalize/tmo/TmoLockWallpaperPreference;-><init>(Landroid/content/Context;)V

    .line 74
    .restart local v1       #preference:Lcom/htc/preference/HtcPreference;
    invoke-virtual {v1, v5}, Lcom/htc/preference/HtcPreference;->setIconVisibility(Z)V

    .line 75
    invoke-virtual {v2, v1}, Lcom/htc/preference/HtcPreferenceScreen;->addPreference(Lcom/htc/preference/HtcPreference;)Z

    .line 76
    invoke-virtual {p0, v1}, Lcom/android/settings/framework/activity/personalize/HtcGlacierPersonalizeSettings;->addCallback(Lcom/htc/preference/HtcPreference;)V

    .line 80
    new-instance v1, Lcom/htc/preference/HtcPreferenceCategory;

    .end local v1           #preference:Lcom/htc/preference/HtcPreference;
    invoke-direct {v1, p0}, Lcom/htc/preference/HtcPreferenceCategory;-><init>(Landroid/content/Context;)V

    .line 81
    .restart local v1       #preference:Lcom/htc/preference/HtcPreference;
    const v3, 0x7f0c0094

    invoke-virtual {v1, v3}, Lcom/htc/preference/HtcPreferenceCategory;->setTitle(I)V

    .line 83
    invoke-virtual {v2, v1}, Lcom/htc/preference/HtcPreferenceScreen;->addPreference(Lcom/htc/preference/HtcPreference;)Z

    .line 85
    new-instance v1, Lcom/android/settings/framework/preference/personalize/tmo/TmoRingtonesPreference;

    .end local v1           #preference:Lcom/htc/preference/HtcPreference;
    invoke-direct {v1, p0}, Lcom/android/settings/framework/preference/personalize/tmo/TmoRingtonesPreference;-><init>(Landroid/content/Context;)V

    .line 86
    .restart local v1       #preference:Lcom/htc/preference/HtcPreference;
    invoke-virtual {v2, v1}, Lcom/htc/preference/HtcPreferenceScreen;->addPreference(Lcom/htc/preference/HtcPreference;)Z

    .line 87
    invoke-virtual {v1, v5}, Lcom/htc/preference/HtcPreference;->setIconVisibility(Z)V

    .line 88
    invoke-virtual {p0, v1}, Lcom/android/settings/framework/activity/personalize/HtcGlacierPersonalizeSettings;->addCallback(Lcom/htc/preference/HtcPreference;)V

    .line 90
    new-instance v1, Lcom/android/settings/framework/preference/personalize/tmo/TmoNotificationSoundsPreference;

    .end local v1           #preference:Lcom/htc/preference/HtcPreference;
    invoke-direct {v1, p0}, Lcom/android/settings/framework/preference/personalize/tmo/TmoNotificationSoundsPreference;-><init>(Landroid/content/Context;)V

    .line 91
    .restart local v1       #preference:Lcom/htc/preference/HtcPreference;
    invoke-virtual {v1, v5}, Lcom/htc/preference/HtcPreference;->setIconVisibility(Z)V

    .line 92
    invoke-virtual {v2, v1}, Lcom/htc/preference/HtcPreferenceScreen;->addPreference(Lcom/htc/preference/HtcPreference;)Z

    .line 93
    invoke-virtual {p0, v1}, Lcom/android/settings/framework/activity/personalize/HtcGlacierPersonalizeSettings;->addCallback(Lcom/htc/preference/HtcPreference;)V

    .line 94
    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 0
    .parameter "savedInstanceState"

    .prologue
    .line 33
    invoke-super {p0, p1}, Lcom/android/settings/framework/app/HtcInternalPreferenceActivity;->onCreate(Landroid/os/Bundle;)V

    .line 34
    invoke-direct {p0}, Lcom/android/settings/framework/activity/personalize/HtcGlacierPersonalizeSettings;->inflate()V

    .line 35
    invoke-virtual {p0}, Lcom/android/settings/framework/activity/personalize/HtcGlacierPersonalizeSettings;->requestHandlers()V

    .line 36
    return-void
.end method
