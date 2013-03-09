.class public Lcom/android/settings/PowerSaverSettings;
.super Lcom/htc/preference/HtcPreferenceFragment;
.source "PowerSaverSettings.java"


# instance fields
.field private TAG:Ljava/lang/String;

.field private mBackgrounfDataPref:Lcom/htc/preference/HtcCheckBoxPreference;

.field private mBluetoothPref:Lcom/htc/preference/HtcCheckBoxPreference;

.field private mHapticFeedbackPref:Lcom/htc/preference/HtcCheckBoxPreference;

.field private mOnscreenAnimationPref:Lcom/htc/preference/HtcCheckBoxPreference;

.field private mPowerSaverSharedpref:Landroid/content/SharedPreferences;

.field private mScreenBrSettingPref:Lcom/htc/preference/HtcSeekBarPreference;

.field private mScreenBrightnessPref:Lcom/htc/preference/HtcCheckBoxPreference;

.field private mScreenTimeoutPref:Lcom/htc/preference/HtcCheckBoxPreference;

.field private mScreenTimeoutSettingPref:Lcom/android/settings/framework/activity/powersaver/PowersaverScreenTimeoutPreference;

.field private mWifiPref:Lcom/htc/preference/HtcCheckBoxPreference;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 21
    invoke-direct {p0}, Lcom/htc/preference/HtcPreferenceFragment;-><init>()V

    .line 23
    const-string v0, "PowerSaverSettings"

    iput-object v0, p0, Lcom/android/settings/PowerSaverSettings;->TAG:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 12
    .parameter "savedInstanceState"

    .prologue
    const/4 v11, 0x0

    const/4 v10, 0x1

    .line 41
    invoke-super {p0, p1}, Lcom/htc/preference/HtcPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 42
    iget-object v6, p0, Lcom/android/settings/PowerSaverSettings;->TAG:Ljava/lang/String;

    const-string v7, "[PSaver]onCreate"

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 44
    invoke-virtual {p0}, Lcom/android/settings/PowerSaverSettings;->getActivity()Landroid/app/Activity;

    move-result-object v6

    invoke-virtual {v6}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    .line 46
    .local v4, resolver:Landroid/content/ContentResolver;
    const v6, 0x7f050028

    invoke-virtual {p0, v6}, Lcom/android/settings/PowerSaverSettings;->addPreferencesFromResource(I)V

    .line 47
    invoke-virtual {p0}, Lcom/android/settings/PowerSaverSettings;->getActivity()Landroid/app/Activity;

    move-result-object v6

    const-string v7, "powersaver_shared"

    invoke-virtual {v6, v7, v11}, Landroid/app/Activity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v6

    iput-object v6, p0, Lcom/android/settings/PowerSaverSettings;->mPowerSaverSharedpref:Landroid/content/SharedPreferences;

    .line 50
    const-string v6, "powersaver_backgrounddata"

    invoke-virtual {p0, v6}, Lcom/android/settings/PowerSaverSettings;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v6

    check-cast v6, Lcom/htc/preference/HtcCheckBoxPreference;

    iput-object v6, p0, Lcom/android/settings/PowerSaverSettings;->mBackgrounfDataPref:Lcom/htc/preference/HtcCheckBoxPreference;

    .line 51
    invoke-static {}, Lcom/android/settings/framework/flag/HtcSkuFlags;->hasSimCardSlot()Z

    move-result v6

    if-nez v6, :cond_0

    .line 53
    invoke-virtual {p0}, Lcom/android/settings/PowerSaverSettings;->getPreferenceScreen()Lcom/htc/preference/HtcPreferenceScreen;

    move-result-object v3

    .line 54
    .local v3, preferenceScreen:Lcom/htc/preference/HtcPreferenceScreen;
    iget-object v6, p0, Lcom/android/settings/PowerSaverSettings;->mBackgrounfDataPref:Lcom/htc/preference/HtcCheckBoxPreference;

    invoke-virtual {v3, v6}, Lcom/htc/preference/HtcPreferenceScreen;->removePreference(Lcom/htc/preference/HtcPreference;)Z

    .line 62
    .end local v3           #preferenceScreen:Lcom/htc/preference/HtcPreferenceScreen;
    :goto_0
    const-string v6, "powersaver_wifi"

    invoke-virtual {p0, v6}, Lcom/android/settings/PowerSaverSettings;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v6

    check-cast v6, Lcom/htc/preference/HtcCheckBoxPreference;

    iput-object v6, p0, Lcom/android/settings/PowerSaverSettings;->mWifiPref:Lcom/htc/preference/HtcCheckBoxPreference;

    .line 63
    iget-object v6, p0, Lcom/android/settings/PowerSaverSettings;->mWifiPref:Lcom/htc/preference/HtcCheckBoxPreference;

    iget-object v7, p0, Lcom/android/settings/PowerSaverSettings;->mPowerSaverSharedpref:Landroid/content/SharedPreferences;

    const-string v8, "powersaver_wifi"

    invoke-interface {v7, v8, v10}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v7

    invoke-virtual {v6, v7}, Lcom/htc/preference/HtcCheckBoxPreference;->setChecked(Z)V

    .line 66
    const-string v6, "powersaver_bluetooth"

    invoke-virtual {p0, v6}, Lcom/android/settings/PowerSaverSettings;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v6

    check-cast v6, Lcom/htc/preference/HtcCheckBoxPreference;

    iput-object v6, p0, Lcom/android/settings/PowerSaverSettings;->mBluetoothPref:Lcom/htc/preference/HtcCheckBoxPreference;

    .line 67
    iget-object v6, p0, Lcom/android/settings/PowerSaverSettings;->mBluetoothPref:Lcom/htc/preference/HtcCheckBoxPreference;

    iget-object v7, p0, Lcom/android/settings/PowerSaverSettings;->mPowerSaverSharedpref:Landroid/content/SharedPreferences;

    const-string v8, "powersaver_bluetooth"

    invoke-interface {v7, v8, v10}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v7

    invoke-virtual {v6, v7}, Lcom/htc/preference/HtcCheckBoxPreference;->setChecked(Z)V

    .line 70
    const-string v6, "powersaver_screen_brightness"

    invoke-virtual {p0, v6}, Lcom/android/settings/PowerSaverSettings;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v6

    check-cast v6, Lcom/htc/preference/HtcCheckBoxPreference;

    iput-object v6, p0, Lcom/android/settings/PowerSaverSettings;->mScreenBrightnessPref:Lcom/htc/preference/HtcCheckBoxPreference;

    .line 71
    iget-object v6, p0, Lcom/android/settings/PowerSaverSettings;->mScreenBrightnessPref:Lcom/htc/preference/HtcCheckBoxPreference;

    iget-object v7, p0, Lcom/android/settings/PowerSaverSettings;->mPowerSaverSharedpref:Landroid/content/SharedPreferences;

    const-string v8, "powersaver_screen_brightness"

    invoke-interface {v7, v8, v10}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v7

    invoke-virtual {v6, v7}, Lcom/htc/preference/HtcCheckBoxPreference;->setChecked(Z)V

    .line 74
    const-string v6, "powersaver_screen_brightness_settings"

    invoke-virtual {p0, v6}, Lcom/android/settings/PowerSaverSettings;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v6

    check-cast v6, Lcom/htc/preference/HtcSeekBarPreference;

    iput-object v6, p0, Lcom/android/settings/PowerSaverSettings;->mScreenBrSettingPref:Lcom/htc/preference/HtcSeekBarPreference;

    .line 76
    iget-object v6, p0, Lcom/android/settings/PowerSaverSettings;->mPowerSaverSharedpref:Landroid/content/SharedPreferences;

    const-string v7, "powersaver_screen_brightness_settings"

    const/16 v8, 0x66

    invoke-interface {v6, v7, v8}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    .line 77
    .local v1, CurrentBrightness:I
    iget-object v6, p0, Lcom/android/settings/PowerSaverSettings;->mPowerSaverSharedpref:Landroid/content/SharedPreferences;

    const-string v7, "powersaver_screen_brightness_settings_auto"

    invoke-interface {v6, v7, v11}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 78
    .local v0, CurrentAuto:I
    if-nez v0, :cond_1

    .line 79
    mul-int/lit8 v6, v1, 0x64

    div-int/lit16 v5, v6, 0xff

    .line 80
    .local v5, value:I
    iget-object v6, p0, Lcom/android/settings/PowerSaverSettings;->mScreenBrSettingPref:Lcom/htc/preference/HtcSeekBarPreference;

    const v7, 0x7f0c059d

    invoke-virtual {p0, v7}, Lcom/android/settings/PowerSaverSettings;->getString(I)Ljava/lang/String;

    move-result-object v7

    new-array v8, v10, [Ljava/lang/Object;

    invoke-static {v5}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v9

    aput-object v9, v8, v11

    invoke-static {v7, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/htc/preference/HtcSeekBarPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 86
    .end local v5           #value:I
    :goto_1
    const-string v6, "powersaver_screen_timeout_settings"

    invoke-virtual {p0, v6}, Lcom/android/settings/PowerSaverSettings;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v6

    check-cast v6, Lcom/android/settings/framework/activity/powersaver/PowersaverScreenTimeoutPreference;

    iput-object v6, p0, Lcom/android/settings/PowerSaverSettings;->mScreenTimeoutSettingPref:Lcom/android/settings/framework/activity/powersaver/PowersaverScreenTimeoutPreference;

    .line 87
    iget-object v6, p0, Lcom/android/settings/PowerSaverSettings;->mPowerSaverSharedpref:Landroid/content/SharedPreferences;

    const-string v7, "powersaver_screen_timeout_settings"

    const/16 v8, 0x7530

    invoke-interface {v6, v7, v8}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v2

    .line 90
    .local v2, nTimeoutValue:I
    iget-object v6, p0, Lcom/android/settings/PowerSaverSettings;->mScreenTimeoutSettingPref:Lcom/android/settings/framework/activity/powersaver/PowersaverScreenTimeoutPreference;

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/android/settings/framework/activity/powersaver/PowersaverScreenTimeoutPreference;->setValue(Ljava/lang/String;)V

    .line 92
    iget-object v6, p0, Lcom/android/settings/PowerSaverSettings;->mScreenTimeoutSettingPref:Lcom/android/settings/framework/activity/powersaver/PowersaverScreenTimeoutPreference;

    const v7, 0x7f0c05a1

    invoke-virtual {p0, v7}, Lcom/android/settings/PowerSaverSettings;->getString(I)Ljava/lang/String;

    move-result-object v7

    new-array v8, v10, [Ljava/lang/Object;

    iget-object v9, p0, Lcom/android/settings/PowerSaverSettings;->mScreenTimeoutSettingPref:Lcom/android/settings/framework/activity/powersaver/PowersaverScreenTimeoutPreference;

    invoke-virtual {v9, v2}, Lcom/android/settings/framework/activity/powersaver/PowersaverScreenTimeoutPreference;->getEntryText(I)Ljava/lang/String;

    move-result-object v9

    aput-object v9, v8, v11

    invoke-static {v7, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/android/settings/framework/activity/powersaver/PowersaverScreenTimeoutPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 97
    const-string v6, "powersaver_screen_timeout"

    invoke-virtual {p0, v6}, Lcom/android/settings/PowerSaverSettings;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v6

    check-cast v6, Lcom/htc/preference/HtcCheckBoxPreference;

    iput-object v6, p0, Lcom/android/settings/PowerSaverSettings;->mScreenTimeoutPref:Lcom/htc/preference/HtcCheckBoxPreference;

    .line 98
    iget-object v6, p0, Lcom/android/settings/PowerSaverSettings;->mScreenTimeoutPref:Lcom/htc/preference/HtcCheckBoxPreference;

    iget-object v7, p0, Lcom/android/settings/PowerSaverSettings;->mPowerSaverSharedpref:Landroid/content/SharedPreferences;

    const-string v8, "powersaver_screen_timeout"

    invoke-interface {v7, v8, v10}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v7

    invoke-virtual {v6, v7}, Lcom/htc/preference/HtcCheckBoxPreference;->setChecked(Z)V

    .line 102
    const-string v6, "powersaver_onscreen_animation"

    invoke-virtual {p0, v6}, Lcom/android/settings/PowerSaverSettings;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v6

    check-cast v6, Lcom/htc/preference/HtcCheckBoxPreference;

    iput-object v6, p0, Lcom/android/settings/PowerSaverSettings;->mOnscreenAnimationPref:Lcom/htc/preference/HtcCheckBoxPreference;

    .line 103
    iget-object v6, p0, Lcom/android/settings/PowerSaverSettings;->mOnscreenAnimationPref:Lcom/htc/preference/HtcCheckBoxPreference;

    iget-object v7, p0, Lcom/android/settings/PowerSaverSettings;->mPowerSaverSharedpref:Landroid/content/SharedPreferences;

    const-string v8, "powersaver_onscreen_animation"

    invoke-interface {v7, v8, v10}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v7

    invoke-virtual {v6, v7}, Lcom/htc/preference/HtcCheckBoxPreference;->setChecked(Z)V

    .line 106
    const-string v6, "powersaver_haptic_feedback"

    invoke-virtual {p0, v6}, Lcom/android/settings/PowerSaverSettings;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v6

    check-cast v6, Lcom/htc/preference/HtcCheckBoxPreference;

    iput-object v6, p0, Lcom/android/settings/PowerSaverSettings;->mHapticFeedbackPref:Lcom/htc/preference/HtcCheckBoxPreference;

    .line 107
    iget-object v6, p0, Lcom/android/settings/PowerSaverSettings;->mHapticFeedbackPref:Lcom/htc/preference/HtcCheckBoxPreference;

    iget-object v7, p0, Lcom/android/settings/PowerSaverSettings;->mPowerSaverSharedpref:Landroid/content/SharedPreferences;

    const-string v8, "powersaver_haptic_feedback"

    invoke-interface {v7, v8, v10}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v7

    invoke-virtual {v6, v7}, Lcom/htc/preference/HtcCheckBoxPreference;->setChecked(Z)V

    .line 109
    return-void

    .line 58
    .end local v0           #CurrentAuto:I
    .end local v1           #CurrentBrightness:I
    .end local v2           #nTimeoutValue:I
    :cond_0
    iget-object v6, p0, Lcom/android/settings/PowerSaverSettings;->mBackgrounfDataPref:Lcom/htc/preference/HtcCheckBoxPreference;

    iget-object v7, p0, Lcom/android/settings/PowerSaverSettings;->mPowerSaverSharedpref:Landroid/content/SharedPreferences;

    const-string v8, "powersaver_backgrounddata"

    invoke-interface {v7, v8, v10}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v7

    invoke-virtual {v6, v7}, Lcom/htc/preference/HtcCheckBoxPreference;->setChecked(Z)V

    goto/16 :goto_0

    .line 82
    .restart local v0       #CurrentAuto:I
    .restart local v1       #CurrentBrightness:I
    :cond_1
    iget-object v6, p0, Lcom/android/settings/PowerSaverSettings;->mScreenBrSettingPref:Lcom/htc/preference/HtcSeekBarPreference;

    const v7, 0x7f0c059e

    invoke-virtual {v6, v7}, Lcom/htc/preference/HtcSeekBarPreference;->setSummary(I)V

    goto/16 :goto_1
.end method

.method public onPreferenceTreeClick(Lcom/htc/preference/HtcPreferenceScreen;Lcom/htc/preference/HtcPreference;)Z
    .locals 3
    .parameter "preferenceScreen"
    .parameter "preference"

    .prologue
    .line 113
    iget-object v0, p0, Lcom/android/settings/PowerSaverSettings;->mBackgrounfDataPref:Lcom/htc/preference/HtcCheckBoxPreference;

    if-ne p2, v0, :cond_1

    .line 115
    invoke-static {}, Lcom/android/settings/framework/flag/HtcSkuFlags;->hasSimCardSlot()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 117
    iget-object v0, p0, Lcom/android/settings/PowerSaverSettings;->mPowerSaverSharedpref:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "powersaver_backgrounddata"

    iget-object v2, p0, Lcom/android/settings/PowerSaverSettings;->mBackgrounfDataPref:Lcom/htc/preference/HtcCheckBoxPreference;

    invoke-virtual {v2}, Lcom/htc/preference/HtcCheckBoxPreference;->isChecked()Z

    move-result v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 144
    :cond_0
    :goto_0
    invoke-super {p0, p1, p2}, Lcom/htc/preference/HtcPreferenceFragment;->onPreferenceTreeClick(Lcom/htc/preference/HtcPreferenceScreen;Lcom/htc/preference/HtcPreference;)Z

    move-result v0

    return v0

    .line 120
    :cond_1
    iget-object v0, p0, Lcom/android/settings/PowerSaverSettings;->mWifiPref:Lcom/htc/preference/HtcCheckBoxPreference;

    if-ne p2, v0, :cond_2

    .line 122
    iget-object v0, p0, Lcom/android/settings/PowerSaverSettings;->mPowerSaverSharedpref:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "powersaver_wifi"

    iget-object v2, p0, Lcom/android/settings/PowerSaverSettings;->mWifiPref:Lcom/htc/preference/HtcCheckBoxPreference;

    invoke-virtual {v2}, Lcom/htc/preference/HtcCheckBoxPreference;->isChecked()Z

    move-result v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto :goto_0

    .line 124
    :cond_2
    iget-object v0, p0, Lcom/android/settings/PowerSaverSettings;->mBluetoothPref:Lcom/htc/preference/HtcCheckBoxPreference;

    if-ne p2, v0, :cond_3

    .line 126
    iget-object v0, p0, Lcom/android/settings/PowerSaverSettings;->mPowerSaverSharedpref:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "powersaver_bluetooth"

    iget-object v2, p0, Lcom/android/settings/PowerSaverSettings;->mBluetoothPref:Lcom/htc/preference/HtcCheckBoxPreference;

    invoke-virtual {v2}, Lcom/htc/preference/HtcCheckBoxPreference;->isChecked()Z

    move-result v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto :goto_0

    .line 128
    :cond_3
    iget-object v0, p0, Lcom/android/settings/PowerSaverSettings;->mScreenBrightnessPref:Lcom/htc/preference/HtcCheckBoxPreference;

    if-ne p2, v0, :cond_4

    .line 130
    iget-object v0, p0, Lcom/android/settings/PowerSaverSettings;->mPowerSaverSharedpref:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "powersaver_screen_brightness"

    iget-object v2, p0, Lcom/android/settings/PowerSaverSettings;->mScreenBrightnessPref:Lcom/htc/preference/HtcCheckBoxPreference;

    invoke-virtual {v2}, Lcom/htc/preference/HtcCheckBoxPreference;->isChecked()Z

    move-result v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto :goto_0

    .line 132
    :cond_4
    iget-object v0, p0, Lcom/android/settings/PowerSaverSettings;->mScreenTimeoutPref:Lcom/htc/preference/HtcCheckBoxPreference;

    if-ne p2, v0, :cond_5

    .line 134
    iget-object v0, p0, Lcom/android/settings/PowerSaverSettings;->mPowerSaverSharedpref:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "powersaver_screen_timeout"

    iget-object v2, p0, Lcom/android/settings/PowerSaverSettings;->mScreenTimeoutPref:Lcom/htc/preference/HtcCheckBoxPreference;

    invoke-virtual {v2}, Lcom/htc/preference/HtcCheckBoxPreference;->isChecked()Z

    move-result v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto :goto_0

    .line 136
    :cond_5
    iget-object v0, p0, Lcom/android/settings/PowerSaverSettings;->mOnscreenAnimationPref:Lcom/htc/preference/HtcCheckBoxPreference;

    if-ne p2, v0, :cond_6

    .line 138
    iget-object v0, p0, Lcom/android/settings/PowerSaverSettings;->mPowerSaverSharedpref:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "powersaver_onscreen_animation"

    iget-object v2, p0, Lcom/android/settings/PowerSaverSettings;->mOnscreenAnimationPref:Lcom/htc/preference/HtcCheckBoxPreference;

    invoke-virtual {v2}, Lcom/htc/preference/HtcCheckBoxPreference;->isChecked()Z

    move-result v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto/16 :goto_0

    .line 140
    :cond_6
    iget-object v0, p0, Lcom/android/settings/PowerSaverSettings;->mHapticFeedbackPref:Lcom/htc/preference/HtcCheckBoxPreference;

    if-ne p2, v0, :cond_0

    .line 142
    iget-object v0, p0, Lcom/android/settings/PowerSaverSettings;->mPowerSaverSharedpref:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "powersaver_haptic_feedback"

    iget-object v2, p0, Lcom/android/settings/PowerSaverSettings;->mHapticFeedbackPref:Lcom/htc/preference/HtcCheckBoxPreference;

    invoke-virtual {v2}, Lcom/htc/preference/HtcCheckBoxPreference;->isChecked()Z

    move-result v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto/16 :goto_0
.end method
