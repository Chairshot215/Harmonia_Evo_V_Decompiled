.class public Lcom/htc/android/worldclock/SettingsActivity;
.super Lcom/htc/preference/HtcPreferenceActivity;
.source "SettingsActivity.java"

# interfaces
.implements Lcom/htc/preference/HtcPreference$OnPreferenceChangeListener;


# static fields
.field public static final ALARM_STREAM_TYPE_BIT:I = 0x10

.field private static final KEY_ALARM_IN_SILENT_MODE:Ljava/lang/String; = "alarm_in_silent_mode"

.field static final KEY_ALARM_SNOOZE:Ljava/lang/String; = "snooze_duration"

.field static final KEY_VOLUME_BEHAVIOR:Ljava/lang/String; = "volume_button_setting"


# instance fields
.field private mAlarmInSilentModePref:Lcom/htc/preference/HtcCheckBoxPreference;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 33
    invoke-direct {p0}, Lcom/htc/preference/HtcPreferenceActivity;-><init>()V

    return-void
.end method

.method private refresh()V
    .locals 7

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 89
    invoke-static {}, Lcom/htc/android/worldclock/htclog/HtcLog;->traceFunc()V

    .line 90
    invoke-virtual {p0}, Lcom/htc/android/worldclock/SettingsActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v5, "mode_ringer_streams_affected"

    invoke-static {v2, v5, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 92
    .local v0, silentModeStreams:I
    iget-object v5, p0, Lcom/htc/android/worldclock/SettingsActivity;->mAlarmInSilentModePref:Lcom/htc/preference/HtcCheckBoxPreference;

    and-int/lit8 v2, v0, 0x10

    if-nez v2, :cond_0

    move v2, v3

    :goto_0
    invoke-virtual {v5, v2}, Lcom/htc/preference/HtcCheckBoxPreference;->setChecked(Z)V

    .line 95
    const-string v2, "Alarm in silent mode is \"%s\", load it from settings, mode_ringer_streams_affected field of system table is: 0x%02X"

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    iget-object v6, p0, Lcom/htc/android/worldclock/SettingsActivity;->mAlarmInSilentModePref:Lcom/htc/preference/HtcCheckBoxPreference;

    invoke-virtual {v6}, Lcom/htc/preference/HtcCheckBoxPreference;->isChecked()Z

    move-result v6

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    aput-object v6, v5, v4

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v5, v3

    invoke-static {v2, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/htc/android/worldclock/htclog/HtcLog;->d(Ljava/lang/String;)V

    .line 98
    const-string v2, "snooze_duration"

    invoke-virtual {p0, v2}, Lcom/htc/android/worldclock/SettingsActivity;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v1

    check-cast v1, Lcom/htc/preference/HtcListPreference;

    .line 99
    .local v1, snooze:Lcom/htc/preference/HtcListPreference;
    invoke-virtual {v1}, Lcom/htc/preference/HtcListPreference;->getEntry()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/htc/preference/HtcListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 100
    invoke-virtual {v1, p0}, Lcom/htc/preference/HtcListPreference;->setOnPreferenceChangeListener(Lcom/htc/preference/HtcPreference$OnPreferenceChangeListener;)V

    .line 101
    return-void

    .end local v1           #snooze:Lcom/htc/preference/HtcListPreference;
    :cond_0
    move v2, v4

    .line 92
    goto :goto_0
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1
    .parameter "savedInstanceState"

    .prologue
    .line 42
    invoke-static {}, Lcom/htc/android/worldclock/htclog/HtcLog;->traceFunc()V

    .line 43
    invoke-super {p0, p1}, Lcom/htc/preference/HtcPreferenceActivity;->onCreate(Landroid/os/Bundle;)V

    .line 44
    const v0, 0x7f050001

    invoke-virtual {p0, v0}, Lcom/htc/android/worldclock/SettingsActivity;->addPreferencesFromResource(I)V

    .line 45
    const-string v0, "alarm_in_silent_mode"

    invoke-virtual {p0, v0}, Lcom/htc/android/worldclock/SettingsActivity;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v0

    check-cast v0, Lcom/htc/preference/HtcCheckBoxPreference;

    iput-object v0, p0, Lcom/htc/android/worldclock/SettingsActivity;->mAlarmInSilentModePref:Lcom/htc/preference/HtcCheckBoxPreference;

    .line 46
    return-void
.end method

.method public onPreferenceChange(Lcom/htc/preference/HtcPreference;Ljava/lang/Object;)Z
    .locals 3
    .parameter "pref"
    .parameter "newValue"

    .prologue
    .line 81
    invoke-static {}, Lcom/htc/android/worldclock/htclog/HtcLog;->traceFunc()V

    move-object v1, p1

    .line 82
    check-cast v1, Lcom/htc/preference/HtcListPreference;

    .line 83
    .local v1, listPref:Lcom/htc/preference/HtcListPreference;
    check-cast p2, Ljava/lang/String;

    .end local p2
    invoke-virtual {v1, p2}, Lcom/htc/preference/HtcListPreference;->findIndexOfValue(Ljava/lang/String;)I

    move-result v0

    .line 84
    .local v0, idx:I
    invoke-virtual {v1}, Lcom/htc/preference/HtcListPreference;->getEntries()[Ljava/lang/CharSequence;

    move-result-object v2

    aget-object v2, v2, v0

    invoke-virtual {v1, v2}, Lcom/htc/preference/HtcListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 85
    const/4 v2, 0x1

    return v2
.end method

.method public onPreferenceTreeClick(Lcom/htc/preference/HtcPreferenceScreen;Lcom/htc/preference/HtcPreference;)Z
    .locals 6
    .parameter "preferenceScreen"
    .parameter "preference"

    .prologue
    const/4 v1, 0x1

    const/4 v5, 0x0

    .line 57
    invoke-static {}, Lcom/htc/android/worldclock/htclog/HtcLog;->traceFunc()V

    .line 58
    iget-object v2, p0, Lcom/htc/android/worldclock/SettingsActivity;->mAlarmInSilentModePref:Lcom/htc/preference/HtcCheckBoxPreference;

    if-ne p2, v2, :cond_1

    .line 59
    invoke-virtual {p0}, Lcom/htc/android/worldclock/SettingsActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "mode_ringer_streams_affected"

    invoke-static {v2, v3, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 62
    .local v0, ringerModeStreamTypes:I
    iget-object v2, p0, Lcom/htc/android/worldclock/SettingsActivity;->mAlarmInSilentModePref:Lcom/htc/preference/HtcCheckBoxPreference;

    invoke-virtual {v2}, Lcom/htc/preference/HtcCheckBoxPreference;->isChecked()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 63
    and-int/lit8 v0, v0, -0x11

    .line 68
    :goto_0
    invoke-virtual {p0}, Lcom/htc/android/worldclock/SettingsActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "mode_ringer_streams_affected"

    invoke-static {v2, v3, v0}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 71
    const-string v2, "Alarm in silent mode is \"%s\", save it to settings, mode_ringer_streams_affected field of system table is: 0x%02X"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    iget-object v4, p0, Lcom/htc/android/worldclock/SettingsActivity;->mAlarmInSilentModePref:Lcom/htc/preference/HtcCheckBoxPreference;

    invoke-virtual {v4}, Lcom/htc/preference/HtcCheckBoxPreference;->isChecked()Z

    move-result v4

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v1

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/htc/android/worldclock/htclog/HtcLog;->d(Ljava/lang/String;)V

    .line 76
    .end local v0           #ringerModeStreamTypes:I
    :goto_1
    return v1

    .line 65
    .restart local v0       #ringerModeStreamTypes:I
    :cond_0
    or-int/lit8 v0, v0, 0x10

    goto :goto_0

    .line 76
    .end local v0           #ringerModeStreamTypes:I
    :cond_1
    invoke-super {p0, p1, p2}, Lcom/htc/preference/HtcPreferenceActivity;->onPreferenceTreeClick(Lcom/htc/preference/HtcPreferenceScreen;Lcom/htc/preference/HtcPreference;)Z

    move-result v1

    goto :goto_1
.end method

.method protected onResume()V
    .locals 0

    .prologue
    .line 50
    invoke-static {}, Lcom/htc/android/worldclock/htclog/HtcLog;->traceFunc()V

    .line 51
    invoke-super {p0}, Lcom/htc/preference/HtcPreferenceActivity;->onResume()V

    .line 52
    invoke-direct {p0}, Lcom/htc/android/worldclock/SettingsActivity;->refresh()V

    .line 53
    return-void
.end method
