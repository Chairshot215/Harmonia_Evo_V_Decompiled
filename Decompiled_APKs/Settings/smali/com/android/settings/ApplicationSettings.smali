.class public Lcom/android/settings/ApplicationSettings;
.super Lcom/android/settings/framework/activity/application/HtcAbsApplicationSettings;
.source "ApplicationSettings.java"


# static fields
.field private static final APP_INSTALL_AUTO:I = 0x0

.field private static final APP_INSTALL_AUTO_ID:Ljava/lang/String; = "auto"

.field private static final APP_INSTALL_DEVICE:I = 0x1

.field private static final APP_INSTALL_DEVICE_ID:Ljava/lang/String; = "device"

.field private static final APP_INSTALL_SDCARD:I = 0x2

.field private static final APP_INSTALL_SDCARD_ID:Ljava/lang/String; = "sdcard"

.field private static final KEY_APP_INSTALL_LOCATION:Ljava/lang/String; = "app_install_location"

.field private static final KEY_TOGGLE_ADVANCED_SETTINGS:Ljava/lang/String; = "toggle_advanced_settings"


# instance fields
.field private mInstallLocation:Lcom/htc/preference/HtcListPreference;

.field private mToggleAdvancedSettings:Lcom/htc/preference/HtcCheckBoxPreference;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 34
    invoke-direct {p0}, Lcom/android/settings/framework/activity/application/HtcAbsApplicationSettings;-><init>()V

    return-void
.end method

.method private getAppInstallLocation()Ljava/lang/String;
    .locals 4

    .prologue
    .line 145
    invoke-virtual {p0}, Lcom/android/settings/ApplicationSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "default_install_location"

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 147
    .local v0, selectedLocation:I
    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 148
    const-string v1, "device"

    .line 155
    :goto_0
    return-object v1

    .line 149
    :cond_0
    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    .line 150
    const-string v1, "sdcard"

    goto :goto_0

    .line 151
    :cond_1
    if-nez v0, :cond_2

    .line 152
    const-string v1, "auto"

    goto :goto_0

    .line 155
    :cond_2
    const-string v1, "auto"

    goto :goto_0
.end method

.method private isAdvancedSettingsEnabled()Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 129
    invoke-virtual {p0}, Lcom/android/settings/ApplicationSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "advanced_settings"

    invoke-static {v1, v2, v0}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-lez v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method private setAdvancedSettingsEnabled(Z)V
    .locals 4
    .parameter "enabled"

    .prologue
    .line 135
    if-eqz p1, :cond_0

    const/4 v1, 0x1

    .line 137
    .local v1, value:I
    :goto_0
    invoke-virtual {p0}, Lcom/android/settings/ApplicationSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "advanced_settings"

    invoke-static {v2, v3, v1}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 139
    new-instance v0, Landroid/content/Intent;

    const-string v2, "android.intent.action.ADVANCED_SETTINGS"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 140
    .local v0, intent:Landroid/content/Intent;
    const-string v2, "state"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 141
    invoke-virtual {p0}, Lcom/android/settings/ApplicationSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/app/Activity;->sendBroadcast(Landroid/content/Intent;)V

    .line 142
    return-void

    .line 135
    .end local v0           #intent:Landroid/content/Intent;
    .end local v1           #value:I
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method


# virtual methods
.method protected handleUpdateAppInstallLocation(Ljava/lang/String;)V
    .locals 3
    .parameter "value"

    .prologue
    const/4 v2, 0x0

    .line 101
    const-string v0, "device"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 102
    invoke-virtual {p0}, Lcom/android/settings/ApplicationSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "default_install_location"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 115
    :goto_0
    iget-object v0, p0, Lcom/android/settings/ApplicationSettings;->mInstallLocation:Lcom/htc/preference/HtcListPreference;

    invoke-virtual {v0, p1}, Lcom/htc/preference/HtcListPreference;->setValue(Ljava/lang/String;)V

    .line 116
    return-void

    .line 104
    :cond_0
    const-string v0, "sdcard"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 105
    invoke-virtual {p0}, Lcom/android/settings/ApplicationSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "default_install_location"

    const/4 v2, 0x2

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_0

    .line 107
    :cond_1
    const-string v0, "auto"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 108
    invoke-virtual {p0}, Lcom/android/settings/ApplicationSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "default_install_location"

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_0

    .line 112
    :cond_2
    invoke-virtual {p0}, Lcom/android/settings/ApplicationSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "default_install_location"

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3
    .parameter "icicle"

    .prologue
    const/4 v0, 0x0

    .line 54
    invoke-super {p0, p1}, Lcom/android/settings/framework/activity/application/HtcAbsApplicationSettings;->onCreate(Landroid/os/Bundle;)V

    .line 56
    const v1, 0x7f050005

    invoke-virtual {p0, v1}, Lcom/android/settings/ApplicationSettings;->addPreferencesFromResource(I)V

    .line 58
    const-string v1, "toggle_advanced_settings"

    invoke-virtual {p0, v1}, Lcom/android/settings/ApplicationSettings;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v1

    check-cast v1, Lcom/htc/preference/HtcCheckBoxPreference;

    iput-object v1, p0, Lcom/android/settings/ApplicationSettings;->mToggleAdvancedSettings:Lcom/htc/preference/HtcCheckBoxPreference;

    .line 60
    iget-object v1, p0, Lcom/android/settings/ApplicationSettings;->mToggleAdvancedSettings:Lcom/htc/preference/HtcCheckBoxPreference;

    invoke-direct {p0}, Lcom/android/settings/ApplicationSettings;->isAdvancedSettingsEnabled()Z

    move-result v2

    invoke-virtual {v1, v2}, Lcom/htc/preference/HtcCheckBoxPreference;->setChecked(Z)V

    .line 61
    invoke-virtual {p0}, Lcom/android/settings/ApplicationSettings;->getPreferenceScreen()Lcom/htc/preference/HtcPreferenceScreen;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/ApplicationSettings;->mToggleAdvancedSettings:Lcom/htc/preference/HtcCheckBoxPreference;

    invoke-virtual {v1, v2}, Lcom/htc/preference/HtcPreferenceScreen;->removePreference(Lcom/htc/preference/HtcPreference;)Z

    .line 70
    invoke-virtual {p0}, Lcom/android/settings/ApplicationSettings;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/android/settings/framework/flag/feature/HtcApplicationsFeatureFlags;->getUnknownSourcesVisibility(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 72
    invoke-virtual {p0}, Lcom/android/settings/ApplicationSettings;->getPreferenceScreen()Lcom/htc/preference/HtcPreferenceScreen;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/ApplicationSettings;->mToggleAdvancedSettings:Lcom/htc/preference/HtcCheckBoxPreference;

    invoke-virtual {v1, v2}, Lcom/htc/preference/HtcPreferenceScreen;->removePreference(Lcom/htc/preference/HtcPreference;)Z

    .line 73
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/settings/ApplicationSettings;->mToggleAdvancedSettings:Lcom/htc/preference/HtcCheckBoxPreference;

    .line 77
    :cond_0
    const-string v1, "app_install_location"

    invoke-virtual {p0, v1}, Lcom/android/settings/ApplicationSettings;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v1

    check-cast v1, Lcom/htc/preference/HtcListPreference;

    iput-object v1, p0, Lcom/android/settings/ApplicationSettings;->mInstallLocation:Lcom/htc/preference/HtcListPreference;

    .line 79
    invoke-virtual {p0}, Lcom/android/settings/ApplicationSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "set_install_location"

    invoke-static {v1, v2, v0}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-eqz v1, :cond_1

    const/4 v0, 0x1

    .line 81
    .local v0, userSetInstLocation:Z
    :cond_1
    if-nez v0, :cond_2

    .line 82
    invoke-virtual {p0}, Lcom/android/settings/ApplicationSettings;->getPreferenceScreen()Lcom/htc/preference/HtcPreferenceScreen;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/ApplicationSettings;->mInstallLocation:Lcom/htc/preference/HtcListPreference;

    invoke-virtual {v1, v2}, Lcom/htc/preference/HtcPreferenceScreen;->removePreference(Lcom/htc/preference/HtcPreference;)Z

    .line 95
    :goto_0
    invoke-virtual {p0, p0}, Lcom/android/settings/ApplicationSettings;->pluginExtraComponents(Lcom/android/settings/framework/app/HtcInternalPreferenceFragment;)V

    .line 96
    invoke-virtual {p0}, Lcom/android/settings/ApplicationSettings;->requestHandlers()V

    .line 98
    return-void

    .line 84
    :cond_2
    iget-object v1, p0, Lcom/android/settings/ApplicationSettings;->mInstallLocation:Lcom/htc/preference/HtcListPreference;

    invoke-direct {p0}, Lcom/android/settings/ApplicationSettings;->getAppInstallLocation()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/htc/preference/HtcListPreference;->setValue(Ljava/lang/String;)V

    .line 85
    iget-object v1, p0, Lcom/android/settings/ApplicationSettings;->mInstallLocation:Lcom/htc/preference/HtcListPreference;

    new-instance v2, Lcom/android/settings/ApplicationSettings$1;

    invoke-direct {v2, p0}, Lcom/android/settings/ApplicationSettings$1;-><init>(Lcom/android/settings/ApplicationSettings;)V

    invoke-virtual {v1, v2}, Lcom/htc/preference/HtcListPreference;->setOnPreferenceChangeListener(Lcom/htc/preference/HtcPreference$OnPreferenceChangeListener;)V

    goto :goto_0
.end method

.method public onPreferenceTreeClick(Lcom/htc/preference/HtcPreferenceScreen;Lcom/htc/preference/HtcPreference;)Z
    .locals 2
    .parameter "preferenceScreen"
    .parameter "preference"

    .prologue
    .line 120
    iget-object v1, p0, Lcom/android/settings/ApplicationSettings;->mToggleAdvancedSettings:Lcom/htc/preference/HtcCheckBoxPreference;

    if-ne p2, v1, :cond_0

    .line 121
    iget-object v1, p0, Lcom/android/settings/ApplicationSettings;->mToggleAdvancedSettings:Lcom/htc/preference/HtcCheckBoxPreference;

    invoke-virtual {v1}, Lcom/htc/preference/HtcCheckBoxPreference;->isChecked()Z

    move-result v0

    .line 122
    .local v0, value:Z
    invoke-direct {p0, v0}, Lcom/android/settings/ApplicationSettings;->setAdvancedSettingsEnabled(Z)V

    .line 125
    .end local v0           #value:Z
    :cond_0
    invoke-super {p0, p1, p2}, Lcom/android/settings/framework/activity/application/HtcAbsApplicationSettings;->onPreferenceTreeClick(Lcom/htc/preference/HtcPreferenceScreen;Lcom/htc/preference/HtcPreference;)Z

    move-result v1

    return v1
.end method
