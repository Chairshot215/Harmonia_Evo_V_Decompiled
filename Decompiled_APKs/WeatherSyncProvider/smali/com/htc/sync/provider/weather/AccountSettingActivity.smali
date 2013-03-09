.class public Lcom/htc/sync/provider/weather/AccountSettingActivity;
.super Lcom/htc/preference/HtcPreferenceActivity;
.source "AccountSettingActivity.java"

# interfaces
.implements Lcom/htc/preference/HtcPreference$OnPreferenceChangeListener;


# static fields
.field private static final LOG_FLAG:Z = false

.field private static final LOG_PREFIX:Ljava/lang/String; = "[AccountSettingActivity] "

.field private static final LOG_TAG:Ljava/lang/String; = "WSP"


# instance fields
.field private prefCheckFrequency:Lcom/htc/preference/HtcListPreference;

.field private prefTemperatureUnit:Lcom/htc/preference/HtcListPreference;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Lcom/htc/preference/HtcPreferenceActivity;-><init>()V

    return-void
.end method

.method private sendNotify(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .parameter "key"
    .parameter "value"

    .prologue
    .line 68
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.htc.sync.provider.weather.SETTINGS_UPDATED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 69
    .local v0, intent:Landroid/content/Intent;
    invoke-virtual {v0, p1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 70
    if-eqz p2, :cond_0

    .line 71
    const-string v1, "settingData"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 73
    :cond_0
    invoke-virtual {p0, v0}, Lcom/htc/sync/provider/weather/AccountSettingActivity;->sendBroadcast(Landroid/content/Intent;)V

    .line 74
    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4
    .parameter "savedInstanceState"

    .prologue
    .line 22
    invoke-super {p0, p1}, Lcom/htc/preference/HtcPreferenceActivity;->onCreate(Landroid/os/Bundle;)V

    .line 23
    const v0, 0x7f030002

    invoke-virtual {p0, v0}, Lcom/htc/sync/provider/weather/AccountSettingActivity;->addPreferencesFromResource(I)V

    .line 24
    const v0, 0x7f050008

    invoke-virtual {p0, v0}, Lcom/htc/sync/provider/weather/AccountSettingActivity;->setTitle(I)V

    .line 26
    const-string v0, "check_frequency"

    invoke-virtual {p0, v0}, Lcom/htc/sync/provider/weather/AccountSettingActivity;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v0

    check-cast v0, Lcom/htc/preference/HtcListPreference;

    iput-object v0, p0, Lcom/htc/sync/provider/weather/AccountSettingActivity;->prefCheckFrequency:Lcom/htc/preference/HtcListPreference;

    .line 27
    iget-object v0, p0, Lcom/htc/sync/provider/weather/AccountSettingActivity;->prefCheckFrequency:Lcom/htc/preference/HtcListPreference;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p0}, Lcom/htc/util/weather/WSPUtility;->getAutoSyncFrequency(Landroid/content/Context;)J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/htc/preference/HtcListPreference;->setValue(Ljava/lang/String;)V

    .line 28
    iget-object v0, p0, Lcom/htc/sync/provider/weather/AccountSettingActivity;->prefCheckFrequency:Lcom/htc/preference/HtcListPreference;

    iget-object v1, p0, Lcom/htc/sync/provider/weather/AccountSettingActivity;->prefCheckFrequency:Lcom/htc/preference/HtcListPreference;

    invoke-virtual {v1}, Lcom/htc/preference/HtcListPreference;->getEntry()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/htc/preference/HtcListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 29
    iget-object v0, p0, Lcom/htc/sync/provider/weather/AccountSettingActivity;->prefCheckFrequency:Lcom/htc/preference/HtcListPreference;

    invoke-virtual {v0, p0}, Lcom/htc/preference/HtcListPreference;->setOnPreferenceChangeListener(Lcom/htc/preference/HtcPreference$OnPreferenceChangeListener;)V

    .line 31
    const-string v0, "temperature_unit"

    invoke-virtual {p0, v0}, Lcom/htc/sync/provider/weather/AccountSettingActivity;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v0

    check-cast v0, Lcom/htc/preference/HtcListPreference;

    iput-object v0, p0, Lcom/htc/sync/provider/weather/AccountSettingActivity;->prefTemperatureUnit:Lcom/htc/preference/HtcListPreference;

    .line 32
    iget-object v0, p0, Lcom/htc/sync/provider/weather/AccountSettingActivity;->prefTemperatureUnit:Lcom/htc/preference/HtcListPreference;

    invoke-static {p0}, Lcom/htc/util/weather/WSPUtility;->getTemperatureUnit(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/htc/preference/HtcListPreference;->setValue(Ljava/lang/String;)V

    .line 33
    iget-object v0, p0, Lcom/htc/sync/provider/weather/AccountSettingActivity;->prefTemperatureUnit:Lcom/htc/preference/HtcListPreference;

    iget-object v1, p0, Lcom/htc/sync/provider/weather/AccountSettingActivity;->prefTemperatureUnit:Lcom/htc/preference/HtcListPreference;

    invoke-virtual {v1}, Lcom/htc/preference/HtcListPreference;->getEntry()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/htc/preference/HtcListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 34
    iget-object v0, p0, Lcom/htc/sync/provider/weather/AccountSettingActivity;->prefTemperatureUnit:Lcom/htc/preference/HtcListPreference;

    invoke-virtual {v0, p0}, Lcom/htc/preference/HtcListPreference;->setOnPreferenceChangeListener(Lcom/htc/preference/HtcPreference$OnPreferenceChangeListener;)V

    .line 35
    return-void
.end method

.method public onPreferenceChange(Lcom/htc/preference/HtcPreference;Ljava/lang/Object;)Z
    .locals 3
    .parameter "preference"
    .parameter "newValue"

    .prologue
    .line 50
    iget-object v1, p0, Lcom/htc/sync/provider/weather/AccountSettingActivity;->prefCheckFrequency:Lcom/htc/preference/HtcListPreference;

    if-ne p1, v1, :cond_1

    move-object v0, p2

    .line 51
    check-cast v0, Ljava/lang/String;

    .line 52
    .local v0, v:Ljava/lang/String;
    iget-object v1, p0, Lcom/htc/sync/provider/weather/AccountSettingActivity;->prefCheckFrequency:Lcom/htc/preference/HtcListPreference;

    invoke-virtual {v1, v0}, Lcom/htc/preference/HtcListPreference;->setValue(Ljava/lang/String;)V

    .line 53
    iget-object v1, p0, Lcom/htc/sync/provider/weather/AccountSettingActivity;->prefCheckFrequency:Lcom/htc/preference/HtcListPreference;

    iget-object v2, p0, Lcom/htc/sync/provider/weather/AccountSettingActivity;->prefCheckFrequency:Lcom/htc/preference/HtcListPreference;

    invoke-virtual {v2}, Lcom/htc/preference/HtcListPreference;->getEntry()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/htc/preference/HtcListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 54
    invoke-virtual {p0}, Lcom/htc/sync/provider/weather/AccountSettingActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "com.htc.sync.provider.weather.setting.autosyncfrequency"

    invoke-static {v1, v2, v0}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 55
    const-string v1, "com.htc.sync.provider.weather.setting.autosyncfrequency"

    const/4 v2, 0x0

    invoke-direct {p0, v1, v2}, Lcom/htc/sync/provider/weather/AccountSettingActivity;->sendNotify(Ljava/lang/String;Ljava/lang/String;)V

    .line 64
    .end local v0           #v:Ljava/lang/String;
    :cond_0
    :goto_0
    const/4 v1, 0x0

    return v1

    .line 56
    :cond_1
    iget-object v1, p0, Lcom/htc/sync/provider/weather/AccountSettingActivity;->prefTemperatureUnit:Lcom/htc/preference/HtcListPreference;

    if-ne p1, v1, :cond_0

    move-object v0, p2

    .line 57
    check-cast v0, Ljava/lang/String;

    .line 58
    .restart local v0       #v:Ljava/lang/String;
    iget-object v1, p0, Lcom/htc/sync/provider/weather/AccountSettingActivity;->prefTemperatureUnit:Lcom/htc/preference/HtcListPreference;

    invoke-virtual {v1, v0}, Lcom/htc/preference/HtcListPreference;->setValue(Ljava/lang/String;)V

    .line 59
    iget-object v1, p0, Lcom/htc/sync/provider/weather/AccountSettingActivity;->prefTemperatureUnit:Lcom/htc/preference/HtcListPreference;

    iget-object v2, p0, Lcom/htc/sync/provider/weather/AccountSettingActivity;->prefTemperatureUnit:Lcom/htc/preference/HtcListPreference;

    invoke-virtual {v2}, Lcom/htc/preference/HtcListPreference;->getEntry()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/htc/preference/HtcListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 60
    invoke-virtual {p0}, Lcom/htc/sync/provider/weather/AccountSettingActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "com.htc.sync.provider.weather.setting.temperatureunit"

    invoke-static {v1, v2, v0}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 61
    const-string v1, "com.htc.sync.provider.weather.setting.temperatureunit"

    invoke-direct {p0, v1, v0}, Lcom/htc/sync/provider/weather/AccountSettingActivity;->sendNotify(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method protected onResume()V
    .locals 4

    .prologue
    .line 39
    invoke-super {p0}, Lcom/htc/preference/HtcPreferenceActivity;->onResume()V

    .line 41
    iget-object v2, p0, Lcom/htc/sync/provider/weather/AccountSettingActivity;->prefTemperatureUnit:Lcom/htc/preference/HtcListPreference;

    invoke-virtual {v2}, Lcom/htc/preference/HtcListPreference;->getValue()Ljava/lang/String;

    move-result-object v1

    .line 42
    .local v1, oldTemperatureUnit:Ljava/lang/String;
    invoke-virtual {p0}, Lcom/htc/sync/provider/weather/AccountSettingActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "com.htc.sync.provider.weather.setting.temperatureunit"

    invoke-static {v2, v3}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 43
    .local v0, newTemperatureUnit:Ljava/lang/String;
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 44
    iget-object v2, p0, Lcom/htc/sync/provider/weather/AccountSettingActivity;->prefTemperatureUnit:Lcom/htc/preference/HtcListPreference;

    invoke-virtual {v2, v0}, Lcom/htc/preference/HtcListPreference;->setValue(Ljava/lang/String;)V

    .line 45
    iget-object v2, p0, Lcom/htc/sync/provider/weather/AccountSettingActivity;->prefTemperatureUnit:Lcom/htc/preference/HtcListPreference;

    iget-object v3, p0, Lcom/htc/sync/provider/weather/AccountSettingActivity;->prefTemperatureUnit:Lcom/htc/preference/HtcListPreference;

    invoke-virtual {v3}, Lcom/htc/preference/HtcListPreference;->getEntry()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/htc/preference/HtcListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 47
    :cond_0
    return-void
.end method
