.class public abstract Lcom/android/settings/framework/activity/application/HtcAbsApplicationSettings;
.super Lcom/android/settings/framework/app/HtcInternalPreferenceFragment;
.source "HtcAbsApplicationSettings.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 24
    invoke-direct {p0}, Lcom/android/settings/framework/app/HtcInternalPreferenceFragment;-><init>()V

    return-void
.end method


# virtual methods
.method protected getPositiveButtonResIdOfWarnAppInstallation(I)I
    .locals 1
    .parameter "resId"

    .prologue
    .line 67
    sget-boolean v0, Lcom/android/settings/framework/flag/HtcProjectFlags;->isA0003:Z

    if-eqz v0, :cond_0

    .line 68
    const p1, 0x7f0c001c

    .line 70
    .end local p1
    :cond_0
    return p1
.end method

.method protected pluginExtraComponents(Lcom/android/settings/framework/app/HtcInternalPreferenceFragment;)V
    .locals 4
    .parameter "fragment"

    .prologue
    .line 32
    invoke-virtual {p1}, Lcom/android/settings/framework/app/HtcInternalPreferenceFragment;->getPreferenceScreen()Lcom/htc/preference/HtcPreferenceScreen;

    move-result-object v2

    .line 34
    .local v2, root:Lcom/htc/preference/HtcPreferenceScreen;
    invoke-virtual {p1}, Lcom/android/settings/framework/app/HtcInternalPreferenceFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 37
    .local v0, context:Landroid/content/Context;
    invoke-static {v0}, Lcom/android/settings/framework/flag/feature/HtcPowerSaverFeatureFlags;->supportPowerSaverSettings(Landroid/content/Context;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 38
    new-instance v1, Lcom/android/settings/framework/preference/powersaver/HtcFastBootPreference;

    invoke-direct {v1, v0}, Lcom/android/settings/framework/preference/powersaver/HtcFastBootPreference;-><init>(Landroid/content/Context;)V

    .line 39
    .local v1, preference:Lcom/htc/preference/HtcPreference;
    invoke-virtual {v2, v1}, Lcom/htc/preference/HtcPreferenceScreen;->addPreference(Lcom/htc/preference/HtcPreference;)Z

    .line 40
    invoke-virtual {p1, v1}, Lcom/android/settings/framework/app/HtcInternalPreferenceFragment;->addCallback(Lcom/htc/preference/HtcPreference;)V

    .line 44
    .end local v1           #preference:Lcom/htc/preference/HtcPreference;
    :cond_0
    invoke-static {}, Lcom/android/settings/framework/flag/feature/HtcApplicationsFeatureFlags;->supportAutomaticStartup()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 45
    new-instance v1, Lcom/android/settings/framework/preference/application/HtcAutomaticStartupPreference;

    invoke-direct {v1, v0}, Lcom/android/settings/framework/preference/application/HtcAutomaticStartupPreference;-><init>(Landroid/content/Context;)V

    .line 46
    .restart local v1       #preference:Lcom/htc/preference/HtcPreference;
    invoke-virtual {v2, v1}, Lcom/htc/preference/HtcPreferenceScreen;->addPreference(Lcom/htc/preference/HtcPreference;)Z

    .line 50
    .end local v1           #preference:Lcom/htc/preference/HtcPreference;
    :cond_1
    invoke-static {}, Lcom/android/settings/framework/flag/feature/HtcApplicationsFeatureFlags;->supportNotification()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 51
    new-instance v1, Lcom/android/settings/framework/preference/application/HtcNotificationListPreference;

    invoke-direct {v1, v0}, Lcom/android/settings/framework/preference/application/HtcNotificationListPreference;-><init>(Landroid/content/Context;)V

    .line 52
    .restart local v1       #preference:Lcom/htc/preference/HtcPreference;
    invoke-virtual {v2, v1}, Lcom/htc/preference/HtcPreferenceScreen;->addPreference(Lcom/htc/preference/HtcPreference;)Z

    .line 54
    .end local v1           #preference:Lcom/htc/preference/HtcPreference;
    :cond_2
    return-void
.end method
