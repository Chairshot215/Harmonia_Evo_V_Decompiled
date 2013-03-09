.class public Lcom/htc/Weather/WeatherSettings;
.super Lcom/htc/preference/HtcPreferenceActivity;
.source "WeatherSettings.java"

# interfaces
.implements Lcom/htc/preference/HtcPreference$OnPreferenceChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/Weather/WeatherSettings$IndexHolder;
    }
.end annotation


# static fields
.field private static final AUTO_SYNC:I = 0x1

.field private static final KEY_AUTOSYNC_ENABLED:Ljava/lang/String; = "auto_sync_enabled"

.field private static final KEY_SYNC_WHEN_OPENED:Ljava/lang/String; = "sync_when_opened"

.field public static final SHARE_PREF_SYNC_WHEN_OPENED:Ljava/lang/String; = "sharepref_sync_when_opened"

.field private static final TAG:Ljava/lang/String; = "WeatherSettings"


# instance fields
.field private mBoolAutoSync:Z

.field private mBoolSoundEnable:Z

.field private mBoolSyncWhenOpen:Z

.field private mBoolWeatherAlertsEnabled:Z

.field private mContext:Landroid/content/Context;

.field private prefAutoSyncEnabled:Lcom/htc/preference/HtcCheckBoxPreference;

.field private prefCheckFrequency:Lcom/htc/preference/HtcListPreference;

.field private prefMonitorMyLocationEnabled:Lcom/htc/preference/HtcCheckBoxPreference;

.field private prefSoundEffectEnabled:Lcom/htc/preference/HtcCheckBoxPreference;

.field private prefSyncWhenOpenedEnabled:Lcom/htc/preference/HtcCheckBoxPreference;

.field private prefTemperatureUnit:Lcom/htc/preference/HtcListPreference;

.field private prefWeatherAlertsEnabled:Lcom/htc/preference/HtcCheckBoxPreference;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 31
    invoke-direct {p0}, Lcom/htc/preference/HtcPreferenceActivity;-><init>()V

    .line 42
    iput-boolean v0, p0, Lcom/htc/Weather/WeatherSettings;->mBoolAutoSync:Z

    .line 43
    iput-boolean v0, p0, Lcom/htc/Weather/WeatherSettings;->mBoolSoundEnable:Z

    .line 44
    iput-boolean v0, p0, Lcom/htc/Weather/WeatherSettings;->mBoolSyncWhenOpen:Z

    .line 45
    iput-boolean v0, p0, Lcom/htc/Weather/WeatherSettings;->mBoolWeatherAlertsEnabled:Z

    .line 56
    return-void
.end method

.method static synthetic access$000(Lcom/htc/Weather/WeatherSettings;)Lcom/htc/preference/HtcCheckBoxPreference;
    .locals 1
    .parameter "x0"

    .prologue
    .line 31
    iget-object v0, p0, Lcom/htc/Weather/WeatherSettings;->prefMonitorMyLocationEnabled:Lcom/htc/preference/HtcCheckBoxPreference;

    return-object v0
.end method

.method static synthetic access$100(Lcom/htc/Weather/WeatherSettings;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 31
    iget-boolean v0, p0, Lcom/htc/Weather/WeatherSettings;->mBoolAutoSync:Z

    return v0
.end method

.method static synthetic access$102(Lcom/htc/Weather/WeatherSettings;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 31
    iput-boolean p1, p0, Lcom/htc/Weather/WeatherSettings;->mBoolAutoSync:Z

    return p1
.end method

.method static synthetic access$200(Lcom/htc/Weather/WeatherSettings;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 31
    iget-object v0, p0, Lcom/htc/Weather/WeatherSettings;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$300(Lcom/htc/Weather/WeatherSettings;)Lcom/htc/preference/HtcCheckBoxPreference;
    .locals 1
    .parameter "x0"

    .prologue
    .line 31
    iget-object v0, p0, Lcom/htc/Weather/WeatherSettings;->prefAutoSyncEnabled:Lcom/htc/preference/HtcCheckBoxPreference;

    return-object v0
.end method

.method static synthetic access$400(Lcom/htc/Weather/WeatherSettings;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 31
    invoke-direct {p0}, Lcom/htc/Weather/WeatherSettings;->checkSyncControl()V

    return-void
.end method

.method private checkSyncControl()V
    .locals 2

    .prologue
    .line 323
    iget-object v0, p0, Lcom/htc/Weather/WeatherSettings;->prefCheckFrequency:Lcom/htc/preference/HtcListPreference;

    if-eqz v0, :cond_0

    .line 324
    iget-object v0, p0, Lcom/htc/Weather/WeatherSettings;->prefCheckFrequency:Lcom/htc/preference/HtcListPreference;

    iget-boolean v1, p0, Lcom/htc/Weather/WeatherSettings;->mBoolAutoSync:Z

    invoke-virtual {v0, v1}, Lcom/htc/preference/HtcListPreference;->setEnabled(Z)V

    .line 325
    :cond_0
    return-void
.end method

.method private isDataBackgroundSyncEnabled()Z
    .locals 2

    .prologue
    .line 285
    const-string v1, "connectivity"

    invoke-virtual {p0, v1}, Lcom/htc/Weather/WeatherSettings;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 286
    .local v0, connManager:Landroid/net/ConnectivityManager;
    invoke-direct {p0}, Lcom/htc/Weather/WeatherSettings;->isMasterSyncAutomatically()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getBackgroundDataSetting()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private isMasterSyncAutomatically()Z
    .locals 1

    .prologue
    .line 281
    invoke-virtual {p0}, Lcom/htc/Weather/WeatherSettings;->getContentResolver()Landroid/content/ContentResolver;

    invoke-static {}, Landroid/content/ContentResolver;->getMasterSyncAutomatically()Z

    move-result v0

    return v0
.end method

.method private onCreatePreferences()V
    .locals 10

    .prologue
    const/4 v6, 0x1

    const/4 v7, 0x0

    .line 81
    const/high16 v5, 0x7f05

    invoke-virtual {p0, v5}, Lcom/htc/Weather/WeatherSettings;->addPreferencesFromResource(I)V

    .line 84
    invoke-direct {p0}, Lcom/htc/Weather/WeatherSettings;->isDataBackgroundSyncEnabled()Z

    move-result v0

    .line 85
    .local v0, bBackgroundSyncEnabled:Z
    invoke-virtual {p0}, Lcom/htc/Weather/WeatherSettings;->getPreferenceScreen()Lcom/htc/preference/HtcPreferenceScreen;

    move-result-object v3

    .line 88
    .local v3, preferenceScreen:Lcom/htc/preference/HtcPreferenceScreen;
    const-string v5, "sync_when_opened"

    invoke-virtual {v3, v5}, Lcom/htc/preference/HtcPreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v5

    check-cast v5, Lcom/htc/preference/HtcCheckBoxPreference;

    iput-object v5, p0, Lcom/htc/Weather/WeatherSettings;->prefSyncWhenOpenedEnabled:Lcom/htc/preference/HtcCheckBoxPreference;

    .line 89
    iget-object v5, p0, Lcom/htc/Weather/WeatherSettings;->prefSyncWhenOpenedEnabled:Lcom/htc/preference/HtcCheckBoxPreference;

    if-eqz v5, :cond_0

    .line 91
    iget-object v5, p0, Lcom/htc/Weather/WeatherSettings;->mContext:Landroid/content/Context;

    const-string v8, "com.htc.sync.provider.weather"

    invoke-static {v5, v8}, Lcom/htc/opensense/sync/SyncSettingUtil;->isRefreshWhenOpen(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v5

    iput-boolean v5, p0, Lcom/htc/Weather/WeatherSettings;->mBoolSyncWhenOpen:Z

    .line 92
    iget-object v5, p0, Lcom/htc/Weather/WeatherSettings;->prefSyncWhenOpenedEnabled:Lcom/htc/preference/HtcCheckBoxPreference;

    iget-boolean v8, p0, Lcom/htc/Weather/WeatherSettings;->mBoolSyncWhenOpen:Z

    invoke-virtual {v5, v8}, Lcom/htc/preference/HtcCheckBoxPreference;->setChecked(Z)V

    .line 93
    iget-object v5, p0, Lcom/htc/Weather/WeatherSettings;->prefSyncWhenOpenedEnabled:Lcom/htc/preference/HtcCheckBoxPreference;

    invoke-virtual {v5, p0}, Lcom/htc/preference/HtcCheckBoxPreference;->setOnPreferenceChangeListener(Lcom/htc/preference/HtcPreference$OnPreferenceChangeListener;)V

    .line 98
    :cond_0
    iget-object v5, p0, Lcom/htc/Weather/WeatherSettings;->mContext:Landroid/content/Context;

    invoke-static {v5}, Lcom/htc/util/weather/WSPPUtility;->isSyncAutomatically(Landroid/content/Context;)Z

    move-result v5

    iput-boolean v5, p0, Lcom/htc/Weather/WeatherSettings;->mBoolAutoSync:Z

    .line 99
    const-string v5, "auto_sync_enabled"

    invoke-virtual {v3, v5}, Lcom/htc/preference/HtcPreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v5

    check-cast v5, Lcom/htc/preference/HtcCheckBoxPreference;

    iput-object v5, p0, Lcom/htc/Weather/WeatherSettings;->prefAutoSyncEnabled:Lcom/htc/preference/HtcCheckBoxPreference;

    .line 100
    iget-object v5, p0, Lcom/htc/Weather/WeatherSettings;->prefAutoSyncEnabled:Lcom/htc/preference/HtcCheckBoxPreference;

    if-eqz v5, :cond_1

    .line 101
    iget-object v5, p0, Lcom/htc/Weather/WeatherSettings;->prefAutoSyncEnabled:Lcom/htc/preference/HtcCheckBoxPreference;

    iget-boolean v8, p0, Lcom/htc/Weather/WeatherSettings;->mBoolAutoSync:Z

    invoke-virtual {v5, v8}, Lcom/htc/preference/HtcCheckBoxPreference;->setChecked(Z)V

    .line 102
    iget-boolean v5, p0, Lcom/htc/Weather/WeatherSettings;->mBoolAutoSync:Z

    if-eqz v5, :cond_7

    const v4, 0x7f0a0042

    .line 103
    .local v4, summaryId:I
    :goto_0
    iget-object v5, p0, Lcom/htc/Weather/WeatherSettings;->prefAutoSyncEnabled:Lcom/htc/preference/HtcCheckBoxPreference;

    invoke-virtual {v5, v4}, Lcom/htc/preference/HtcCheckBoxPreference;->setSummary(I)V

    .line 104
    iget-object v5, p0, Lcom/htc/Weather/WeatherSettings;->prefAutoSyncEnabled:Lcom/htc/preference/HtcCheckBoxPreference;

    invoke-virtual {v5, p0}, Lcom/htc/preference/HtcCheckBoxPreference;->setOnPreferenceChangeListener(Lcom/htc/preference/HtcPreference$OnPreferenceChangeListener;)V

    .line 105
    iget-object v5, p0, Lcom/htc/Weather/WeatherSettings;->prefAutoSyncEnabled:Lcom/htc/preference/HtcCheckBoxPreference;

    invoke-virtual {v5, v0}, Lcom/htc/preference/HtcCheckBoxPreference;->setEnabled(Z)V

    .line 109
    .end local v4           #summaryId:I
    :cond_1
    const-string v5, "check_frequency"

    invoke-virtual {p0, v5}, Lcom/htc/Weather/WeatherSettings;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v5

    check-cast v5, Lcom/htc/preference/HtcListPreference;

    iput-object v5, p0, Lcom/htc/Weather/WeatherSettings;->prefCheckFrequency:Lcom/htc/preference/HtcListPreference;

    .line 110
    iget-object v5, p0, Lcom/htc/Weather/WeatherSettings;->prefCheckFrequency:Lcom/htc/preference/HtcListPreference;

    if-eqz v5, :cond_2

    .line 111
    iget-object v5, p0, Lcom/htc/Weather/WeatherSettings;->prefCheckFrequency:Lcom/htc/preference/HtcListPreference;

    invoke-virtual {p0}, Lcom/htc/Weather/WeatherSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    const-string v9, "com.htc.sync.provider.weather.setting.autosyncfrequency"

    invoke-static {v8, v9}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v8}, Lcom/htc/preference/HtcListPreference;->setValue(Ljava/lang/String;)V

    .line 112
    iget-object v5, p0, Lcom/htc/Weather/WeatherSettings;->prefCheckFrequency:Lcom/htc/preference/HtcListPreference;

    iget-object v8, p0, Lcom/htc/Weather/WeatherSettings;->prefCheckFrequency:Lcom/htc/preference/HtcListPreference;

    invoke-virtual {v8}, Lcom/htc/preference/HtcListPreference;->getEntry()Ljava/lang/CharSequence;

    move-result-object v8

    invoke-virtual {v5, v8}, Lcom/htc/preference/HtcListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 113
    iget-object v5, p0, Lcom/htc/Weather/WeatherSettings;->prefCheckFrequency:Lcom/htc/preference/HtcListPreference;

    invoke-virtual {v5, p0}, Lcom/htc/preference/HtcListPreference;->setOnPreferenceChangeListener(Lcom/htc/preference/HtcPreference$OnPreferenceChangeListener;)V

    .line 114
    iget-object v8, p0, Lcom/htc/Weather/WeatherSettings;->prefCheckFrequency:Lcom/htc/preference/HtcListPreference;

    iget-boolean v5, p0, Lcom/htc/Weather/WeatherSettings;->mBoolAutoSync:Z

    if-eqz v5, :cond_8

    if-eqz v0, :cond_8

    move v5, v6

    :goto_1
    invoke-virtual {v8, v5}, Lcom/htc/preference/HtcListPreference;->setEnabled(Z)V

    .line 118
    :cond_2
    const-string v5, "temperature_unit"

    invoke-virtual {p0, v5}, Lcom/htc/Weather/WeatherSettings;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v5

    check-cast v5, Lcom/htc/preference/HtcListPreference;

    iput-object v5, p0, Lcom/htc/Weather/WeatherSettings;->prefTemperatureUnit:Lcom/htc/preference/HtcListPreference;

    .line 119
    iget-object v5, p0, Lcom/htc/Weather/WeatherSettings;->prefTemperatureUnit:Lcom/htc/preference/HtcListPreference;

    if-eqz v5, :cond_3

    .line 120
    iget-object v5, p0, Lcom/htc/Weather/WeatherSettings;->prefTemperatureUnit:Lcom/htc/preference/HtcListPreference;

    invoke-virtual {p0}, Lcom/htc/Weather/WeatherSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    const-string v9, "com.htc.sync.provider.weather.setting.temperatureunit"

    invoke-static {v8, v9}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v8}, Lcom/htc/preference/HtcListPreference;->setValue(Ljava/lang/String;)V

    .line 121
    iget-object v5, p0, Lcom/htc/Weather/WeatherSettings;->prefTemperatureUnit:Lcom/htc/preference/HtcListPreference;

    iget-object v8, p0, Lcom/htc/Weather/WeatherSettings;->prefTemperatureUnit:Lcom/htc/preference/HtcListPreference;

    invoke-virtual {v8}, Lcom/htc/preference/HtcListPreference;->getEntry()Ljava/lang/CharSequence;

    move-result-object v8

    invoke-virtual {v5, v8}, Lcom/htc/preference/HtcListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 122
    iget-object v5, p0, Lcom/htc/Weather/WeatherSettings;->prefTemperatureUnit:Lcom/htc/preference/HtcListPreference;

    invoke-virtual {v5, p0}, Lcom/htc/preference/HtcListPreference;->setOnPreferenceChangeListener(Lcom/htc/preference/HtcPreference$OnPreferenceChangeListener;)V

    .line 126
    :cond_3
    const-string v5, "sound_effects_enabled"

    invoke-virtual {p0, v5}, Lcom/htc/Weather/WeatherSettings;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v5

    check-cast v5, Lcom/htc/preference/HtcCheckBoxPreference;

    iput-object v5, p0, Lcom/htc/Weather/WeatherSettings;->prefSoundEffectEnabled:Lcom/htc/preference/HtcCheckBoxPreference;

    .line 127
    iget-object v5, p0, Lcom/htc/Weather/WeatherSettings;->prefSoundEffectEnabled:Lcom/htc/preference/HtcCheckBoxPreference;

    if-eqz v5, :cond_4

    .line 130
    :try_start_0
    iget-object v5, p0, Lcom/htc/Weather/WeatherSettings;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    sget-object v8, Lcom/htc/Weather/SoundEffect;->SETTING_KEY_SYNC_SOUND:Ljava/lang/String;

    invoke-static {v5, v8}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I

    move-result v5

    if-nez v5, :cond_9

    move v5, v7

    :goto_2
    iput-boolean v5, p0, Lcom/htc/Weather/WeatherSettings;->mBoolSoundEnable:Z
    :try_end_0
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 137
    :goto_3
    iget-object v5, p0, Lcom/htc/Weather/WeatherSettings;->prefSoundEffectEnabled:Lcom/htc/preference/HtcCheckBoxPreference;

    iget-boolean v8, p0, Lcom/htc/Weather/WeatherSettings;->mBoolSoundEnable:Z

    invoke-virtual {v5, v8}, Lcom/htc/preference/HtcCheckBoxPreference;->setChecked(Z)V

    .line 138
    iget-object v5, p0, Lcom/htc/Weather/WeatherSettings;->prefSoundEffectEnabled:Lcom/htc/preference/HtcCheckBoxPreference;

    invoke-virtual {v5, p0}, Lcom/htc/preference/HtcCheckBoxPreference;->setOnPreferenceChangeListener(Lcom/htc/preference/HtcPreference$OnPreferenceChangeListener;)V

    .line 142
    :cond_4
    const-string v5, "monitor_my_location_enabled"

    invoke-virtual {p0, v5}, Lcom/htc/Weather/WeatherSettings;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v5

    check-cast v5, Lcom/htc/preference/HtcCheckBoxPreference;

    iput-object v5, p0, Lcom/htc/Weather/WeatherSettings;->prefMonitorMyLocationEnabled:Lcom/htc/preference/HtcCheckBoxPreference;

    .line 143
    iget-object v5, p0, Lcom/htc/Weather/WeatherSettings;->prefMonitorMyLocationEnabled:Lcom/htc/preference/HtcCheckBoxPreference;

    if-eqz v5, :cond_5

    .line 144
    const/4 v2, 0x0

    .line 147
    .local v2, enabled:Z
    :try_start_1
    invoke-virtual {p0}, Lcom/htc/Weather/WeatherSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v8, "monitor_my_location_enabled"

    invoke-static {v5, v8}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I
    :try_end_1
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    move-result v5

    if-nez v5, :cond_a

    move v2, v7

    .line 152
    :goto_4
    iget-object v5, p0, Lcom/htc/Weather/WeatherSettings;->prefMonitorMyLocationEnabled:Lcom/htc/preference/HtcCheckBoxPreference;

    invoke-virtual {v5, v2}, Lcom/htc/preference/HtcCheckBoxPreference;->setChecked(Z)V

    .line 153
    iget-object v5, p0, Lcom/htc/Weather/WeatherSettings;->prefMonitorMyLocationEnabled:Lcom/htc/preference/HtcCheckBoxPreference;

    invoke-virtual {v5, p0}, Lcom/htc/preference/HtcCheckBoxPreference;->setOnPreferenceChangeListener(Lcom/htc/preference/HtcPreference$OnPreferenceChangeListener;)V

    .line 157
    .end local v2           #enabled:Z
    :cond_5
    const-string v5, "weather_alerts_enabled"

    invoke-virtual {p0, v5}, Lcom/htc/Weather/WeatherSettings;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v5

    check-cast v5, Lcom/htc/preference/HtcCheckBoxPreference;

    iput-object v5, p0, Lcom/htc/Weather/WeatherSettings;->prefWeatherAlertsEnabled:Lcom/htc/preference/HtcCheckBoxPreference;

    .line 158
    iget-object v5, p0, Lcom/htc/Weather/WeatherSettings;->prefWeatherAlertsEnabled:Lcom/htc/preference/HtcCheckBoxPreference;

    if-eqz v5, :cond_6

    .line 159
    invoke-virtual {p0}, Lcom/htc/Weather/WeatherSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v8, "com.htc.weather_alerts_enabled"

    invoke-static {v5, v8, v7}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v5

    if-ne v5, v6, :cond_b

    :goto_5
    iput-boolean v6, p0, Lcom/htc/Weather/WeatherSettings;->mBoolWeatherAlertsEnabled:Z

    .line 160
    iget-object v5, p0, Lcom/htc/Weather/WeatherSettings;->prefWeatherAlertsEnabled:Lcom/htc/preference/HtcCheckBoxPreference;

    iget-boolean v6, p0, Lcom/htc/Weather/WeatherSettings;->mBoolWeatherAlertsEnabled:Z

    invoke-virtual {v5, v6}, Lcom/htc/preference/HtcCheckBoxPreference;->setChecked(Z)V

    .line 161
    iget-object v5, p0, Lcom/htc/Weather/WeatherSettings;->prefWeatherAlertsEnabled:Lcom/htc/preference/HtcCheckBoxPreference;

    invoke-virtual {v5, p0}, Lcom/htc/preference/HtcCheckBoxPreference;->setOnPreferenceChangeListener(Lcom/htc/preference/HtcPreference$OnPreferenceChangeListener;)V

    .line 163
    :cond_6
    return-void

    .line 102
    :cond_7
    const v4, 0x7f0a0040

    goto/16 :goto_0

    :cond_8
    move v5, v7

    .line 114
    goto/16 :goto_1

    :cond_9
    move v5, v6

    .line 130
    goto :goto_2

    .line 133
    :catch_0
    move-exception v1

    .line 134
    .local v1, e:Landroid/provider/Settings$SettingNotFoundException;
    iput-boolean v7, p0, Lcom/htc/Weather/WeatherSettings;->mBoolSoundEnable:Z

    .line 135
    const-string v5, "WeatherSettings"

    const-string v8, "no sound setting"

    invoke-static {v5, v8}, Lcom/htc/Weather/util/LOG;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3

    .end local v1           #e:Landroid/provider/Settings$SettingNotFoundException;
    .restart local v2       #enabled:Z
    :cond_a
    move v2, v6

    .line 147
    goto :goto_4

    .line 149
    :catch_1
    move-exception v1

    .line 150
    .restart local v1       #e:Landroid/provider/Settings$SettingNotFoundException;
    const-string v5, "WeatherSettings"

    const-string v8, "no sound setting"

    invoke-static {v5, v8}, Lcom/htc/Weather/util/LOG;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_4

    .end local v1           #e:Landroid/provider/Settings$SettingNotFoundException;
    .end local v2           #enabled:Z
    :cond_b
    move v6, v7

    .line 159
    goto :goto_5
.end method

.method private sendNotify(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .parameter "key"
    .parameter "value"

    .prologue
    .line 401
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.htc.sync.provider.weather.SETTINGS_UPDATED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 402
    .local v0, intent:Landroid/content/Intent;
    invoke-virtual {v0, p1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 403
    if-eqz p2, :cond_0

    .line 404
    const-string v1, "settingData"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 406
    :cond_0
    invoke-virtual {p0, v0}, Lcom/htc/Weather/WeatherSettings;->sendBroadcast(Landroid/content/Intent;)V

    .line 407
    return-void
.end method

.method private sendNotify(Ljava/lang/String;Z)V
    .locals 2
    .parameter "key"
    .parameter "value"

    .prologue
    .line 410
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.htc.sync.provider.weather.SETTINGS_UPDATED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 411
    .local v0, intent:Landroid/content/Intent;
    invoke-virtual {v0, p1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 412
    const-string v1, "settingData"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 414
    invoke-virtual {p0, v0}, Lcom/htc/Weather/WeatherSettings;->sendBroadcast(Landroid/content/Intent;)V

    .line 415
    return-void
.end method

.method private setScreenOrientation()V
    .locals 1

    .prologue
    .line 418
    sget v0, Lcom/htc/Weather/util/WeatherUtil;->orientation:I

    sparse-switch v0, :sswitch_data_0

    .line 426
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/htc/Weather/WeatherSettings;->setRequestedOrientation(I)V

    .line 429
    :goto_0
    return-void

    .line 420
    :sswitch_0
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/htc/Weather/WeatherSettings;->setRequestedOrientation(I)V

    goto :goto_0

    .line 423
    :sswitch_1
    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Lcom/htc/Weather/WeatherSettings;->setRequestedOrientation(I)V

    goto :goto_0

    .line 418
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x8 -> :sswitch_1
    .end sparse-switch
.end method

.method private showExtraFeeWarningDlg(I)V
    .locals 4
    .parameter "type"

    .prologue
    .line 330
    new-instance v0, Lcom/htc/widget/HtcAlertDialog$Builder;

    invoke-direct {v0, p0}, Lcom/htc/widget/HtcAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 331
    .local v0, builder:Lcom/htc/widget/HtcAlertDialog$Builder;
    const v2, 0x1080027

    invoke-virtual {v0, v2}, Lcom/htc/widget/HtcAlertDialog$Builder;->setIcon(I)Lcom/htc/widget/HtcAlertDialog$Builder;

    .line 335
    sget-short v2, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v3, 0x98

    if-eq v2, v3, :cond_0

    sget-short v2, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v3, 0x92

    if-eq v2, v3, :cond_0

    sget-short v2, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v3, 0x3c

    if-ne v2, v3, :cond_1

    .line 338
    :cond_0
    const v2, 0x7f0a003b

    invoke-virtual {p0, v2}, Lcom/htc/Weather/WeatherSettings;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/htc/widget/HtcAlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Lcom/htc/widget/HtcAlertDialog$Builder;

    .line 339
    const v2, 0x7f0a003c

    invoke-virtual {v0, v2}, Lcom/htc/widget/HtcAlertDialog$Builder;->setMessage(I)Lcom/htc/widget/HtcAlertDialog$Builder;

    .line 348
    :goto_0
    const v2, 0x7f0a0017

    invoke-virtual {p0, v2}, Lcom/htc/Weather/WeatherSettings;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/htc/Weather/WeatherSettings$3;

    invoke-direct {v3, p0, p1}, Lcom/htc/Weather/WeatherSettings$3;-><init>(Lcom/htc/Weather/WeatherSettings;I)V

    invoke-virtual {v0, v2, v3}, Lcom/htc/widget/HtcAlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    .line 364
    const v2, 0x7f0a0018

    invoke-virtual {p0, v2}, Lcom/htc/Weather/WeatherSettings;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/htc/Weather/WeatherSettings$4;

    invoke-direct {v3, p0, p1}, Lcom/htc/Weather/WeatherSettings$4;-><init>(Lcom/htc/Weather/WeatherSettings;I)V

    invoke-virtual {v0, v2, v3}, Lcom/htc/widget/HtcAlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    .line 380
    invoke-virtual {v0}, Lcom/htc/widget/HtcAlertDialog$Builder;->create()Lcom/htc/widget/HtcAlertDialog;

    move-result-object v1

    .line 381
    .local v1, dlg:Landroid/app/Dialog;
    invoke-virtual {v1}, Lcom/htc/widget/HtcAlertDialog;->show()V

    .line 382
    return-void

    .line 341
    .end local v1           #dlg:Landroid/app/Dialog;
    :cond_1
    const v2, 0x7f0a0037

    invoke-virtual {p0, v2}, Lcom/htc/Weather/WeatherSettings;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/htc/widget/HtcAlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Lcom/htc/widget/HtcAlertDialog$Builder;

    .line 342
    const v2, 0x7f0a0038

    invoke-virtual {v0, v2}, Lcom/htc/widget/HtcAlertDialog$Builder;->setMessage(I)Lcom/htc/widget/HtcAlertDialog$Builder;

    goto :goto_0
.end method


# virtual methods
.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0
    .parameter "newConfig"

    .prologue
    .line 387
    invoke-super {p0, p1}, Lcom/htc/preference/HtcPreferenceActivity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 388
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1
    .parameter "savedInstanceState"

    .prologue
    .line 72
    invoke-super {p0, p1}, Lcom/htc/preference/HtcPreferenceActivity;->onCreate(Landroid/os/Bundle;)V

    .line 73
    invoke-virtual {p0}, Lcom/htc/Weather/WeatherSettings;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/Weather/WeatherSettings;->mContext:Landroid/content/Context;

    .line 75
    invoke-direct {p0}, Lcom/htc/Weather/WeatherSettings;->setScreenOrientation()V

    .line 76
    const v0, 0x7f0a003d

    invoke-virtual {p0, v0}, Lcom/htc/Weather/WeatherSettings;->setTitle(I)V

    .line 77
    invoke-direct {p0}, Lcom/htc/Weather/WeatherSettings;->onCreatePreferences()V

    .line 78
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1
    .parameter "arg0"
    .parameter "arg1"

    .prologue
    .line 392
    invoke-super {p0, p1, p2}, Lcom/htc/preference/HtcPreferenceActivity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method

.method protected onPause()V
    .locals 0

    .prologue
    .line 319
    invoke-super {p0}, Lcom/htc/preference/HtcPreferenceActivity;->onPause()V

    .line 320
    return-void
.end method

.method public onPreferenceChange(Lcom/htc/preference/HtcPreference;Ljava/lang/Object;)Z
    .locals 11
    .parameter "preference"
    .parameter "newValue"

    .prologue
    const/4 v8, 0x0

    const/4 v7, 0x1

    .line 168
    iget-object v6, p0, Lcom/htc/Weather/WeatherSettings;->prefTemperatureUnit:Lcom/htc/preference/HtcListPreference;

    if-ne p1, v6, :cond_0

    move-object v5, p2

    .line 169
    check-cast v5, Ljava/lang/String;

    .line 170
    .local v5, v:Ljava/lang/String;
    iget-object v6, p0, Lcom/htc/Weather/WeatherSettings;->prefTemperatureUnit:Lcom/htc/preference/HtcListPreference;

    invoke-virtual {v6, v5}, Lcom/htc/preference/HtcListPreference;->setValue(Ljava/lang/String;)V

    .line 171
    iget-object v6, p0, Lcom/htc/Weather/WeatherSettings;->prefTemperatureUnit:Lcom/htc/preference/HtcListPreference;

    iget-object v9, p0, Lcom/htc/Weather/WeatherSettings;->prefTemperatureUnit:Lcom/htc/preference/HtcListPreference;

    invoke-virtual {v9}, Lcom/htc/preference/HtcListPreference;->getEntry()Ljava/lang/CharSequence;

    move-result-object v9

    invoke-virtual {v6, v9}, Lcom/htc/preference/HtcListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 172
    invoke-virtual {p0}, Lcom/htc/Weather/WeatherSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v9, "com.htc.sync.provider.weather.setting.temperatureunit"

    invoke-static {v6, v9, v5}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 173
    const-string v6, "com.htc.sync.provider.weather.setting.temperatureunit"

    invoke-direct {p0, v6, v5}, Lcom/htc/Weather/WeatherSettings;->sendNotify(Ljava/lang/String;Ljava/lang/String;)V

    .line 177
    .end local v5           #v:Ljava/lang/String;
    :cond_0
    iget-object v6, p0, Lcom/htc/Weather/WeatherSettings;->prefAutoSyncEnabled:Lcom/htc/preference/HtcCheckBoxPreference;

    if-ne p1, v6, :cond_1

    move-object v6, p2

    .line 178
    check-cast v6, Ljava/lang/Boolean;

    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    iput-boolean v6, p0, Lcom/htc/Weather/WeatherSettings;->mBoolAutoSync:Z

    .line 179
    iget-boolean v6, p0, Lcom/htc/Weather/WeatherSettings;->mBoolAutoSync:Z

    if-eqz v6, :cond_4

    .line 180
    sget-short v6, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v9, 0x3a

    if-eq v6, v9, :cond_3

    .line 181
    invoke-direct {p0, v7}, Lcom/htc/Weather/WeatherSettings;->showExtraFeeWarningDlg(I)V

    .line 192
    :goto_0
    iget-boolean v6, p0, Lcom/htc/Weather/WeatherSettings;->mBoolAutoSync:Z

    if-eqz v6, :cond_5

    const v4, 0x7f0a0042

    .line 193
    .local v4, summaryId:I
    :goto_1
    iget-object v6, p0, Lcom/htc/Weather/WeatherSettings;->prefAutoSyncEnabled:Lcom/htc/preference/HtcCheckBoxPreference;

    invoke-virtual {v6, v4}, Lcom/htc/preference/HtcCheckBoxPreference;->setSummary(I)V

    .line 199
    .end local v4           #summaryId:I
    :cond_1
    iget-object v6, p0, Lcom/htc/Weather/WeatherSettings;->prefCheckFrequency:Lcom/htc/preference/HtcListPreference;

    if-ne p1, v6, :cond_2

    move-object v5, p2

    .line 200
    check-cast v5, Ljava/lang/String;

    .line 201
    .restart local v5       #v:Ljava/lang/String;
    iget-object v6, p0, Lcom/htc/Weather/WeatherSettings;->prefCheckFrequency:Lcom/htc/preference/HtcListPreference;

    invoke-virtual {v6, v5}, Lcom/htc/preference/HtcListPreference;->setValue(Ljava/lang/String;)V

    .line 202
    iget-object v6, p0, Lcom/htc/Weather/WeatherSettings;->prefCheckFrequency:Lcom/htc/preference/HtcListPreference;

    iget-object v9, p0, Lcom/htc/Weather/WeatherSettings;->prefCheckFrequency:Lcom/htc/preference/HtcListPreference;

    invoke-virtual {v9}, Lcom/htc/preference/HtcListPreference;->getEntry()Ljava/lang/CharSequence;

    move-result-object v9

    invoke-virtual {v6, v9}, Lcom/htc/preference/HtcListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 203
    invoke-virtual {p0}, Lcom/htc/Weather/WeatherSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v9, "com.htc.sync.provider.weather.setting.autosyncfrequency"

    invoke-static {v6, v9, v5}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 204
    const-string v6, "com.htc.sync.provider.weather.setting.autosyncfrequency"

    const/4 v9, 0x0

    invoke-direct {p0, v6, v9}, Lcom/htc/Weather/WeatherSettings;->sendNotify(Ljava/lang/String;Ljava/lang/String;)V

    .line 207
    :try_start_0
    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    div-int/lit16 v3, v6, 0x3e8

    .line 208
    .local v3, sec:I
    const-string v6, "com.htc.sync.provider.weather"

    invoke-static {p0, v6, v3}, Lcom/htc/opensense/sync/SyncSettingUtil;->setUpdateIntervalSecs(Landroid/content/Context;Ljava/lang/String;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 215
    .end local v3           #sec:I
    .end local v5           #v:Ljava/lang/String;
    :cond_2
    :goto_2
    iget-object v6, p0, Lcom/htc/Weather/WeatherSettings;->prefSoundEffectEnabled:Lcom/htc/preference/HtcCheckBoxPreference;

    if-ne p1, v6, :cond_8

    .line 216
    check-cast p2, Ljava/lang/Boolean;

    .end local p2
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    iput-boolean v6, p0, Lcom/htc/Weather/WeatherSettings;->mBoolSoundEnable:Z

    .line 218
    iget-object v6, p0, Lcom/htc/Weather/WeatherSettings;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    sget-object v10, Lcom/htc/Weather/SoundEffect;->SETTING_KEY_SYNC_SOUND:Ljava/lang/String;

    iget-boolean v6, p0, Lcom/htc/Weather/WeatherSettings;->mBoolSoundEnable:Z

    if-eqz v6, :cond_6

    move v6, v7

    :goto_3
    invoke-static {v9, v10, v6}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 219
    const-string v8, "com.htc.sync.provider.weather.setting.soundeffect"

    iget-boolean v6, p0, Lcom/htc/Weather/WeatherSettings;->mBoolSoundEnable:Z

    if-eqz v6, :cond_7

    const-string v6, "true"

    :goto_4
    invoke-direct {p0, v8, v6}, Lcom/htc/Weather/WeatherSettings;->sendNotify(Ljava/lang/String;Ljava/lang/String;)V

    .line 276
    :goto_5
    return v7

    .line 183
    .restart local p2
    :cond_3
    iget-object v6, p0, Lcom/htc/Weather/WeatherSettings;->mContext:Landroid/content/Context;

    iget-boolean v9, p0, Lcom/htc/Weather/WeatherSettings;->mBoolAutoSync:Z

    invoke-static {v6, v9}, Lcom/htc/util/weather/WSPPUtility;->setSyncAutomatically(Landroid/content/Context;Z)V

    .line 184
    iget-object v6, p0, Lcom/htc/Weather/WeatherSettings;->prefAutoSyncEnabled:Lcom/htc/preference/HtcCheckBoxPreference;

    iget-boolean v9, p0, Lcom/htc/Weather/WeatherSettings;->mBoolAutoSync:Z

    invoke-virtual {v6, v9}, Lcom/htc/preference/HtcCheckBoxPreference;->setChecked(Z)V

    .line 185
    invoke-direct {p0}, Lcom/htc/Weather/WeatherSettings;->checkSyncControl()V

    goto :goto_0

    .line 188
    :cond_4
    iget-object v6, p0, Lcom/htc/Weather/WeatherSettings;->mContext:Landroid/content/Context;

    iget-boolean v9, p0, Lcom/htc/Weather/WeatherSettings;->mBoolAutoSync:Z

    invoke-static {v6, v9}, Lcom/htc/util/weather/WSPPUtility;->setSyncAutomatically(Landroid/content/Context;Z)V

    .line 189
    iget-object v6, p0, Lcom/htc/Weather/WeatherSettings;->prefAutoSyncEnabled:Lcom/htc/preference/HtcCheckBoxPreference;

    iget-boolean v9, p0, Lcom/htc/Weather/WeatherSettings;->mBoolAutoSync:Z

    invoke-virtual {v6, v9}, Lcom/htc/preference/HtcCheckBoxPreference;->setChecked(Z)V

    .line 190
    invoke-direct {p0}, Lcom/htc/Weather/WeatherSettings;->checkSyncControl()V

    goto/16 :goto_0

    .line 192
    :cond_5
    const v4, 0x7f0a0040

    goto/16 :goto_1

    .line 209
    .restart local v5       #v:Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 210
    .local v1, e:Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_2

    .end local v1           #e:Ljava/lang/Exception;
    .end local v5           #v:Ljava/lang/String;
    .end local p2
    :cond_6
    move v6, v8

    .line 218
    goto :goto_3

    .line 219
    :cond_7
    const-string v6, "false"

    goto :goto_4

    .line 224
    .restart local p2
    :cond_8
    iget-object v6, p0, Lcom/htc/Weather/WeatherSettings;->prefSyncWhenOpenedEnabled:Lcom/htc/preference/HtcCheckBoxPreference;

    if-ne p1, v6, :cond_a

    .line 225
    const-string v6, "WeatherSettings"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "preference == prefSyncWhenOpenedEnabled newValue="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v6, v9}, Lcom/htc/Weather/util/LOG;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 226
    check-cast p2, Ljava/lang/Boolean;

    .end local p2
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    iput-boolean v6, p0, Lcom/htc/Weather/WeatherSettings;->mBoolSyncWhenOpen:Z

    .line 228
    const-string v6, "com.htc.sync.provider.weather"

    iget-boolean v9, p0, Lcom/htc/Weather/WeatherSettings;->mBoolSyncWhenOpen:Z

    if-eqz v9, :cond_9

    move v8, v7

    :cond_9
    invoke-static {p0, v6, v8}, Lcom/htc/opensense/sync/SyncSettingUtil;->setRefreshWhenOpen(Landroid/content/Context;Ljava/lang/String;Z)V

    goto :goto_5

    .line 233
    .restart local p2
    :cond_a
    iget-object v6, p0, Lcom/htc/Weather/WeatherSettings;->prefMonitorMyLocationEnabled:Lcom/htc/preference/HtcCheckBoxPreference;

    if-ne p1, v6, :cond_b

    move-object v6, p2

    .line 234
    check-cast v6, Ljava/lang/Boolean;

    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    .line 235
    .local v2, enabled:Z
    if-eqz v2, :cond_d

    .line 236
    new-instance v0, Lcom/htc/widget/HtcAlertDialog$Builder;

    invoke-direct {v0, p0}, Lcom/htc/widget/HtcAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 237
    .local v0, builder:Lcom/htc/widget/HtcAlertDialog$Builder;
    const v6, 0x1080027

    invoke-virtual {v0, v6}, Lcom/htc/widget/HtcAlertDialog$Builder;->setIcon(I)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v6

    const v9, 0x7f0a0037

    invoke-virtual {v6, v9}, Lcom/htc/widget/HtcAlertDialog$Builder;->setTitle(I)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v6

    const v9, 0x7f0a0038

    invoke-virtual {v6, v9}, Lcom/htc/widget/HtcAlertDialog$Builder;->setMessage(I)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v6

    const v9, 0x7f0a0018

    new-instance v10, Lcom/htc/Weather/WeatherSettings$2;

    invoke-direct {v10, p0}, Lcom/htc/Weather/WeatherSettings$2;-><init>(Lcom/htc/Weather/WeatherSettings;)V

    invoke-virtual {v6, v9, v10}, Lcom/htc/widget/HtcAlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v6

    const v9, 0x7f0a0017

    new-instance v10, Lcom/htc/Weather/WeatherSettings$1;

    invoke-direct {v10, p0}, Lcom/htc/Weather/WeatherSettings$1;-><init>(Lcom/htc/Weather/WeatherSettings;)V

    invoke-virtual {v6, v9, v10}, Lcom/htc/widget/HtcAlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v6

    invoke-virtual {v6}, Lcom/htc/widget/HtcAlertDialog$Builder;->create()Lcom/htc/widget/HtcAlertDialog;

    move-result-object v6

    invoke-virtual {v6}, Lcom/htc/widget/HtcAlertDialog;->show()V

    .line 268
    .end local v0           #builder:Lcom/htc/widget/HtcAlertDialog$Builder;
    .end local v2           #enabled:Z
    :cond_b
    :goto_6
    iget-object v6, p0, Lcom/htc/Weather/WeatherSettings;->prefWeatherAlertsEnabled:Lcom/htc/preference/HtcCheckBoxPreference;

    if-ne p1, v6, :cond_f

    .line 269
    check-cast p2, Ljava/lang/Boolean;

    .end local p2
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    iput-boolean v6, p0, Lcom/htc/Weather/WeatherSettings;->mBoolWeatherAlertsEnabled:Z

    .line 271
    iget-object v6, p0, Lcom/htc/Weather/WeatherSettings;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    const-string v10, "com.htc.weather_alerts_enabled"

    iget-boolean v6, p0, Lcom/htc/Weather/WeatherSettings;->mBoolWeatherAlertsEnabled:Z

    if-eqz v6, :cond_e

    move v6, v7

    :goto_7
    invoke-static {v9, v10, v6}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 273
    const-string v6, "com.htc.weather_alerts_enabled"

    iget-boolean v9, p0, Lcom/htc/Weather/WeatherSettings;->mBoolWeatherAlertsEnabled:Z

    if-eqz v9, :cond_c

    move v8, v7

    :cond_c
    invoke-direct {p0, v6, v8}, Lcom/htc/Weather/WeatherSettings;->sendNotify(Ljava/lang/String;Z)V

    goto/16 :goto_5

    .line 261
    .restart local v2       #enabled:Z
    .restart local p2
    :cond_d
    invoke-virtual {p0}, Lcom/htc/Weather/WeatherSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v9, "monitor_my_location_enabled"

    invoke-static {v6, v9, v8}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 262
    iget-object v6, p0, Lcom/htc/Weather/WeatherSettings;->prefMonitorMyLocationEnabled:Lcom/htc/preference/HtcCheckBoxPreference;

    invoke-virtual {v6, v8}, Lcom/htc/preference/HtcCheckBoxPreference;->setChecked(Z)V

    .line 263
    new-instance v6, Landroid/content/Intent;

    const-string v9, "com.htc.app.autosetting.stop.phonestatemonitor"

    invoke-direct {v6, v9}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v6}, Lcom/htc/Weather/WeatherSettings;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_6

    .end local v2           #enabled:Z
    .end local p2
    :cond_e
    move v6, v8

    .line 271
    goto :goto_7

    .restart local p2
    :cond_f
    move v7, v8

    .line 276
    goto/16 :goto_5
.end method

.method protected onResume()V
    .locals 4

    .prologue
    .line 293
    invoke-super {p0}, Lcom/htc/preference/HtcPreferenceActivity;->onResume()V

    .line 295
    invoke-direct {p0}, Lcom/htc/Weather/WeatherSettings;->setScreenOrientation()V

    .line 297
    invoke-direct {p0}, Lcom/htc/Weather/WeatherSettings;->isDataBackgroundSyncEnabled()Z

    move-result v0

    .line 298
    .local v0, bBackgroundSyncEnabled:Z
    iget-object v1, p0, Lcom/htc/Weather/WeatherSettings;->prefAutoSyncEnabled:Lcom/htc/preference/HtcCheckBoxPreference;

    if-eqz v1, :cond_0

    .line 299
    iget-object v1, p0, Lcom/htc/Weather/WeatherSettings;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/htc/util/weather/WSPPUtility;->isSyncAutomatically(Landroid/content/Context;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/htc/Weather/WeatherSettings;->mBoolAutoSync:Z

    .line 300
    iget-object v1, p0, Lcom/htc/Weather/WeatherSettings;->prefAutoSyncEnabled:Lcom/htc/preference/HtcCheckBoxPreference;

    iget-boolean v2, p0, Lcom/htc/Weather/WeatherSettings;->mBoolAutoSync:Z

    invoke-virtual {v1, v2}, Lcom/htc/preference/HtcCheckBoxPreference;->setChecked(Z)V

    .line 301
    iget-object v2, p0, Lcom/htc/Weather/WeatherSettings;->prefAutoSyncEnabled:Lcom/htc/preference/HtcCheckBoxPreference;

    iget-boolean v1, p0, Lcom/htc/Weather/WeatherSettings;->mBoolAutoSync:Z

    if-eqz v1, :cond_3

    const v1, 0x7f0a0042

    :goto_0
    invoke-virtual {v2, v1}, Lcom/htc/preference/HtcCheckBoxPreference;->setSummary(I)V

    .line 302
    iget-object v1, p0, Lcom/htc/Weather/WeatherSettings;->prefAutoSyncEnabled:Lcom/htc/preference/HtcCheckBoxPreference;

    invoke-virtual {v1, v0}, Lcom/htc/preference/HtcCheckBoxPreference;->setEnabled(Z)V

    .line 304
    :cond_0
    iget-object v1, p0, Lcom/htc/Weather/WeatherSettings;->prefTemperatureUnit:Lcom/htc/preference/HtcListPreference;

    if-eqz v1, :cond_1

    .line 305
    const-string v1, "temperature_unit"

    invoke-virtual {p0, v1}, Lcom/htc/Weather/WeatherSettings;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v1

    check-cast v1, Lcom/htc/preference/HtcListPreference;

    iput-object v1, p0, Lcom/htc/Weather/WeatherSettings;->prefTemperatureUnit:Lcom/htc/preference/HtcListPreference;

    .line 306
    iget-object v1, p0, Lcom/htc/Weather/WeatherSettings;->prefTemperatureUnit:Lcom/htc/preference/HtcListPreference;

    invoke-virtual {p0}, Lcom/htc/Weather/WeatherSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "com.htc.sync.provider.weather.setting.temperatureunit"

    invoke-static {v2, v3}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/htc/preference/HtcListPreference;->setValue(Ljava/lang/String;)V

    .line 307
    iget-object v1, p0, Lcom/htc/Weather/WeatherSettings;->prefTemperatureUnit:Lcom/htc/preference/HtcListPreference;

    iget-object v2, p0, Lcom/htc/Weather/WeatherSettings;->prefTemperatureUnit:Lcom/htc/preference/HtcListPreference;

    invoke-virtual {v2}, Lcom/htc/preference/HtcListPreference;->getEntry()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/htc/preference/HtcListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 309
    :cond_1
    iget-object v1, p0, Lcom/htc/Weather/WeatherSettings;->prefCheckFrequency:Lcom/htc/preference/HtcListPreference;

    if-eqz v1, :cond_2

    .line 310
    const-string v1, "check_frequency"

    invoke-virtual {p0, v1}, Lcom/htc/Weather/WeatherSettings;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v1

    check-cast v1, Lcom/htc/preference/HtcListPreference;

    iput-object v1, p0, Lcom/htc/Weather/WeatherSettings;->prefCheckFrequency:Lcom/htc/preference/HtcListPreference;

    .line 311
    iget-object v1, p0, Lcom/htc/Weather/WeatherSettings;->prefCheckFrequency:Lcom/htc/preference/HtcListPreference;

    invoke-virtual {p0}, Lcom/htc/Weather/WeatherSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "com.htc.sync.provider.weather.setting.autosyncfrequency"

    invoke-static {v2, v3}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/htc/preference/HtcListPreference;->setValue(Ljava/lang/String;)V

    .line 312
    iget-object v1, p0, Lcom/htc/Weather/WeatherSettings;->prefCheckFrequency:Lcom/htc/preference/HtcListPreference;

    iget-object v2, p0, Lcom/htc/Weather/WeatherSettings;->prefCheckFrequency:Lcom/htc/preference/HtcListPreference;

    invoke-virtual {v2}, Lcom/htc/preference/HtcListPreference;->getEntry()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/htc/preference/HtcListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 313
    iget-object v2, p0, Lcom/htc/Weather/WeatherSettings;->prefCheckFrequency:Lcom/htc/preference/HtcListPreference;

    iget-boolean v1, p0, Lcom/htc/Weather/WeatherSettings;->mBoolAutoSync:Z

    if-eqz v1, :cond_4

    if-eqz v0, :cond_4

    const/4 v1, 0x1

    :goto_1
    invoke-virtual {v2, v1}, Lcom/htc/preference/HtcListPreference;->setEnabled(Z)V

    .line 315
    :cond_2
    return-void

    .line 301
    :cond_3
    const v1, 0x7f0a0040

    goto :goto_0

    .line 313
    :cond_4
    const/4 v1, 0x0

    goto :goto_1
.end method

.method protected onUserLeaveHint()V
    .locals 0

    .prologue
    .line 397
    invoke-super {p0}, Lcom/htc/preference/HtcPreferenceActivity;->onUserLeaveHint()V

    .line 398
    return-void
.end method
