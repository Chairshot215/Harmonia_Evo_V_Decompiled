.class public Lcom/android/settings/framework/activity/powersaver/PowersaverSettings;
.super Lcom/android/settings/framework/app/HtcInternalPreferenceActivity;
.source "PowersaverSettings.java"

# interfaces
.implements Lcom/htc/preference/HtcPreference$OnPreferenceChangeListener;


# static fields
.field private static final KEY_TOGGLE_FASTBOOT:Ljava/lang/String; = "enable_fastboot"


# instance fields
.field private final DISABLE_SETTINGS:I

.field private final REVERT_SETTINGS:I

.field private final TAG:Ljava/lang/String;

.field private mEnablePowerEfficiencyPref:Lcom/htc/preference/HtcCheckBoxPreference;

.field private mEnablePowersaverPref:Lcom/htc/preference/HtcCheckBoxPreference;

.field private final mHandler:Landroid/os/Handler;

.field private mNotificationPref:Lcom/htc/preference/HtcCheckBoxPreference;

.field private mPowerSaverSharedpref:Landroid/content/SharedPreferences;

.field private mSetSchedulePref:Lcom/htc/preference/HtcListPreference;

.field private mTogglefastBoot:Lcom/htc/preference/HtcCheckBoxPreference;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 69
    invoke-direct {p0}, Lcom/android/settings/framework/app/HtcInternalPreferenceActivity;-><init>()V

    .line 72
    const-string v0, "PowersaverSettings"

    iput-object v0, p0, Lcom/android/settings/framework/activity/powersaver/PowersaverSettings;->TAG:Ljava/lang/String;

    .line 74
    const/16 v0, 0xfa0

    iput v0, p0, Lcom/android/settings/framework/activity/powersaver/PowersaverSettings;->DISABLE_SETTINGS:I

    .line 75
    const/16 v0, 0xfa1

    iput v0, p0, Lcom/android/settings/framework/activity/powersaver/PowersaverSettings;->REVERT_SETTINGS:I

    .line 438
    new-instance v0, Lcom/android/settings/framework/activity/powersaver/PowersaverSettings$4;

    invoke-direct {v0, p0}, Lcom/android/settings/framework/activity/powersaver/PowersaverSettings$4;-><init>(Lcom/android/settings/framework/activity/powersaver/PowersaverSettings;)V

    iput-object v0, p0, Lcom/android/settings/framework/activity/powersaver/PowersaverSettings;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/framework/activity/powersaver/PowersaverSettings;)Lcom/htc/preference/HtcCheckBoxPreference;
    .locals 1
    .parameter "x0"

    .prologue
    .line 69
    iget-object v0, p0, Lcom/android/settings/framework/activity/powersaver/PowersaverSettings;->mEnablePowerEfficiencyPref:Lcom/htc/preference/HtcCheckBoxPreference;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/settings/framework/activity/powersaver/PowersaverSettings;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 69
    invoke-direct {p0}, Lcom/android/settings/framework/activity/powersaver/PowersaverSettings;->storePowerEfficiencyNormalsettings()V

    return-void
.end method

.method static synthetic access$200(Lcom/android/settings/framework/activity/powersaver/PowersaverSettings;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 69
    invoke-direct {p0}, Lcom/android/settings/framework/activity/powersaver/PowersaverSettings;->setBrightness()V

    return-void
.end method

.method static synthetic access$300(Lcom/android/settings/framework/activity/powersaver/PowersaverSettings;)Lcom/htc/preference/HtcCheckBoxPreference;
    .locals 1
    .parameter "x0"

    .prologue
    .line 69
    iget-object v0, p0, Lcom/android/settings/framework/activity/powersaver/PowersaverSettings;->mEnablePowersaverPref:Lcom/htc/preference/HtcCheckBoxPreference;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/settings/framework/activity/powersaver/PowersaverSettings;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 69
    iget-object v0, p0, Lcom/android/settings/framework/activity/powersaver/PowersaverSettings;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method private isfastBootAllowed()Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 427
    invoke-virtual {p0}, Lcom/android/settings/framework/activity/powersaver/PowersaverSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "enable_fastboot"

    invoke-static {v1, v2, v0}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-lez v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method private pluginExtraComponents_sleepMode()V
    .locals 4

    .prologue
    .line 150
    invoke-virtual {p0}, Lcom/android/settings/framework/activity/powersaver/PowersaverSettings;->getPreferenceScreen()Lcom/htc/preference/HtcPreferenceScreen;

    move-result-object v1

    .line 153
    .local v1, root:Lcom/htc/preference/HtcPreferenceScreen;
    invoke-static {}, Lcom/android/settings/framework/flag/HtcDeviceFlags$Info;->isTabletDevice()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 156
    new-instance v0, Lcom/htc/preference/HtcPreferenceCategory;

    invoke-direct {v0, p0}, Lcom/htc/preference/HtcPreferenceCategory;-><init>(Landroid/content/Context;)V

    .line 157
    .local v0, preference:Lcom/htc/preference/HtcPreference;
    const v3, 0x7f0c00e6

    invoke-virtual {v0, v3}, Lcom/htc/preference/HtcPreferenceCategory;->setTitle(I)V

    .line 158
    invoke-virtual {v1, v0}, Lcom/htc/preference/HtcPreferenceScreen;->addPreference(Lcom/htc/preference/HtcPreference;)Z

    .line 160
    new-instance v0, Lcom/android/settings/framework/preference/powersaver/HtcWirelessSleepModePreference;

    .end local v0           #preference:Lcom/htc/preference/HtcPreference;
    invoke-direct {v0, p0}, Lcom/android/settings/framework/preference/powersaver/HtcWirelessSleepModePreference;-><init>(Landroid/content/Context;)V

    .restart local v0       #preference:Lcom/htc/preference/HtcPreference;
    move-object v2, v0

    .line 161
    .local v2, sleepMode:Lcom/htc/preference/HtcPreference;
    invoke-virtual {v1, v0}, Lcom/htc/preference/HtcPreferenceScreen;->addPreference(Lcom/htc/preference/HtcPreference;)Z

    .line 162
    invoke-virtual {p0, v0}, Lcom/android/settings/framework/activity/powersaver/PowersaverSettings;->addCallback(Lcom/htc/preference/HtcPreference;)V

    .line 164
    new-instance v0, Lcom/android/settings/framework/preference/powersaver/HtcWirelessSleepModeStartPreference;

    .end local v0           #preference:Lcom/htc/preference/HtcPreference;
    invoke-direct {v0, p0}, Lcom/android/settings/framework/preference/powersaver/HtcWirelessSleepModeStartPreference;-><init>(Landroid/content/Context;)V

    .line 165
    .restart local v0       #preference:Lcom/htc/preference/HtcPreference;
    invoke-virtual {v1, v0}, Lcom/htc/preference/HtcPreferenceScreen;->addPreference(Lcom/htc/preference/HtcPreference;)Z

    .line 166
    invoke-virtual {p0, v0}, Lcom/android/settings/framework/activity/powersaver/PowersaverSettings;->addCallback(Lcom/htc/preference/HtcPreference;)V

    .line 168
    new-instance v0, Lcom/android/settings/framework/preference/powersaver/HtcWirelessSleepModeEndPreference;

    .end local v0           #preference:Lcom/htc/preference/HtcPreference;
    invoke-direct {v0, p0}, Lcom/android/settings/framework/preference/powersaver/HtcWirelessSleepModeEndPreference;-><init>(Landroid/content/Context;)V

    .line 169
    .restart local v0       #preference:Lcom/htc/preference/HtcPreference;
    invoke-virtual {v1, v0}, Lcom/htc/preference/HtcPreferenceScreen;->addPreference(Lcom/htc/preference/HtcPreference;)Z

    .line 170
    invoke-virtual {p0, v0}, Lcom/android/settings/framework/activity/powersaver/PowersaverSettings;->addCallback(Lcom/htc/preference/HtcPreference;)V

    .line 172
    .end local v0           #preference:Lcom/htc/preference/HtcPreference;
    .end local v2           #sleepMode:Lcom/htc/preference/HtcPreference;
    :cond_0
    return-void
.end method

.method private setBrightness()V
    .locals 3

    .prologue
    .line 363
    const-string v0, "PowersaverSettings"

    const-string v1, "setBrightness()"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 365
    invoke-virtual {p0}, Lcom/android/settings/framework/activity/powersaver/PowersaverSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v1, 0x0

    const/16 v2, 0x7f

    invoke-static {v0, v1, v2}, Lcom/android/settings/framework/activity/powersaver/Powersaver;->setSysBrightness(Landroid/content/ContentResolver;II)V

    .line 366
    return-void
.end method

.method private setfastBootAllowed(Z)V
    .locals 3
    .parameter "enabled"

    .prologue
    .line 433
    invoke-virtual {p0}, Lcom/android/settings/framework/activity/powersaver/PowersaverSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "enable_fastboot"

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v1, v2, v0}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 436
    return-void

    .line 433
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private storePowerEfficiencyNormalsettings()V
    .locals 6

    .prologue
    const/16 v5, 0x66

    const/4 v4, 0x0

    .line 370
    const-string v0, "PowersaverSettings"

    const-string v1, "storePowerEfficiencyNormalsettings()"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 372
    iget-object v0, p0, Lcom/android/settings/framework/activity/powersaver/PowersaverSettings;->mPowerSaverSharedpref:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "powersaver_screen_brightness_settings_mode"

    invoke-virtual {p0}, Lcom/android/settings/framework/activity/powersaver/PowersaverSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "screen_brightness_mode"

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 378
    iget-object v0, p0, Lcom/android/settings/framework/activity/powersaver/PowersaverSettings;->mPowerSaverSharedpref:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "powersaver_screen_brightness_settings"

    invoke-virtual {p0}, Lcom/android/settings/framework/activity/powersaver/PowersaverSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "screen_brightness"

    invoke-static {v2, v3, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 384
    iget-object v0, p0, Lcom/android/settings/framework/activity/powersaver/PowersaverSettings;->mPowerSaverSharedpref:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "power_efficiency_sleep_policy"

    invoke-virtual {p0}, Lcom/android/settings/framework/activity/powersaver/PowersaverSettings;->get_WIFI_SLEEP_POLICY()I

    move-result v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 388
    iget-object v0, p0, Lcom/android/settings/framework/activity/powersaver/PowersaverSettings;->mPowerSaverSharedpref:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "power_efficiency_always_on"

    invoke-virtual {p0}, Lcom/android/settings/framework/activity/powersaver/PowersaverSettings;->get_POWER_SAVE_3G()I

    move-result v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 392
    iget-object v0, p0, Lcom/android/settings/framework/activity/powersaver/PowersaverSettings;->mPowerSaverSharedpref:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "power_efficiency_auto_sync"

    invoke-virtual {p0}, Lcom/android/settings/framework/activity/powersaver/PowersaverSettings;->getAutoSync()Z

    move-result v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 397
    const-string v0, "PowersaverSettings"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "KEY_SCREEN_BRIGHTNESS_SETTINGS_MODE = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/settings/framework/activity/powersaver/PowersaverSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "screen_brightness_mode"

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 399
    const-string v0, "PowersaverSettings"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "KEY_SCREEN_BRIGHTNESS_SETTINGS      = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/settings/framework/activity/powersaver/PowersaverSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "screen_brightness"

    invoke-static {v2, v3, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 401
    return-void
.end method

.method private updateLayout()V
    .locals 4

    .prologue
    .line 423
    iget-object v0, p0, Lcom/android/settings/framework/activity/powersaver/PowersaverSettings;->mNotificationPref:Lcom/htc/preference/HtcCheckBoxPreference;

    iget-object v1, p0, Lcom/android/settings/framework/activity/powersaver/PowersaverSettings;->mPowerSaverSharedpref:Landroid/content/SharedPreferences;

    const-string v2, "powersaver_notification"

    const/4 v3, 0x1

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/htc/preference/HtcCheckBoxPreference;->setChecked(Z)V

    .line 424
    return-void
.end method


# virtual methods
.method public GetBackgroundDataSetting()I
    .locals 5

    .prologue
    .line 352
    const/4 v1, 0x0

    .line 354
    .local v1, nRet:I
    const-string v2, "connectivity"

    invoke-virtual {p0, v2}, Lcom/android/settings/framework/activity/powersaver/PowersaverSettings;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 355
    .local v0, CM:Landroid/net/ConnectivityManager;
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getBackgroundDataSetting()Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v1, 0x1

    .line 357
    :goto_0
    const-string v2, "PowersaverSettings"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "GetCurrentSetting: nRet = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 358
    return v1

    .line 355
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getAutoSync()Z
    .locals 1

    .prologue
    .line 333
    invoke-virtual {p0}, Lcom/android/settings/framework/activity/powersaver/PowersaverSettings;->getContentResolver()Landroid/content/ContentResolver;

    invoke-static {}, Landroid/content/ContentResolver;->getMasterSyncAutomatically()Z

    move-result v0

    return v0
.end method

.method public get_POWER_SAVE_3G()I
    .locals 3

    .prologue
    .line 321
    invoke-virtual {p0}, Lcom/android/settings/framework/activity/powersaver/PowersaverSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "3g_power_save"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public get_WIFI_SLEEP_POLICY()I
    .locals 3

    .prologue
    .line 309
    invoke-virtual {p0}, Lcom/android/settings/framework/activity/powersaver/PowersaverSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "wifi_sleep_policy"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 5
    .parameter "icicle"

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 89
    invoke-super {p0, p1}, Lcom/android/settings/framework/app/HtcInternalPreferenceActivity;->onCreate(Landroid/os/Bundle;)V

    .line 90
    const-string v1, "PowersaverSettings"

    const-string v4, "[PSaver]onCreate"

    invoke-static {v1, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 91
    invoke-virtual {p0}, Lcom/android/settings/framework/activity/powersaver/PowersaverSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 94
    .local v0, resolver:Landroid/content/ContentResolver;
    sget-short v1, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v4, 0xa9

    if-eq v1, v4, :cond_2

    sget-short v1, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v4, 0xaa

    if-eq v1, v4, :cond_2

    sget-short v1, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v4, 0x28

    if-eq v1, v4, :cond_2

    sget-short v1, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v4, 0x21

    if-eq v1, v4, :cond_2

    sget-short v1, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v4, 0x22

    if-eq v1, v4, :cond_2

    .line 100
    const v1, 0x7f050024

    invoke-virtual {p0, v1}, Lcom/android/settings/framework/activity/powersaver/PowersaverSettings;->addPreferencesFromResource(I)V

    .line 108
    :goto_0
    const-string v1, "powersaver_shared"

    const/4 v4, 0x7

    invoke-virtual {p0, v1, v4}, Lcom/android/settings/framework/activity/powersaver/PowersaverSettings;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/framework/activity/powersaver/PowersaverSettings;->mPowerSaverSharedpref:Landroid/content/SharedPreferences;

    .line 111
    const-string v1, "powersaver_enable"

    invoke-virtual {p0, v1}, Lcom/android/settings/framework/activity/powersaver/PowersaverSettings;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v1

    check-cast v1, Lcom/htc/preference/HtcCheckBoxPreference;

    iput-object v1, p0, Lcom/android/settings/framework/activity/powersaver/PowersaverSettings;->mEnablePowersaverPref:Lcom/htc/preference/HtcCheckBoxPreference;

    .line 112
    iget-object v4, p0, Lcom/android/settings/framework/activity/powersaver/PowersaverSettings;->mEnablePowersaverPref:Lcom/htc/preference/HtcCheckBoxPreference;

    invoke-static {v0}, Lcom/android/settings/framework/activity/powersaver/Powersaver;->getEnable(Landroid/content/ContentResolver;)I

    move-result v1

    if-ne v1, v2, :cond_3

    move v1, v2

    :goto_1
    invoke-virtual {v4, v1}, Lcom/htc/preference/HtcCheckBoxPreference;->setChecked(Z)V

    .line 115
    const-string v1, "enable_power_efficiency"

    invoke-virtual {p0, v1}, Lcom/android/settings/framework/activity/powersaver/PowersaverSettings;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v1

    check-cast v1, Lcom/htc/preference/HtcCheckBoxPreference;

    iput-object v1, p0, Lcom/android/settings/framework/activity/powersaver/PowersaverSettings;->mEnablePowerEfficiencyPref:Lcom/htc/preference/HtcCheckBoxPreference;

    .line 117
    sget-object v1, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_Sense_Version:Ljava/lang/String;

    const-string v4, "2.1"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    sget-object v1, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_Sense_Version:Ljava/lang/String;

    const-string v4, "2.0"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    sget-object v1, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_Sense_Version:Ljava/lang/String;

    const-string v4, "1.6"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 119
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/framework/activity/powersaver/PowersaverSettings;->getPreferenceScreen()Lcom/htc/preference/HtcPreferenceScreen;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/framework/activity/powersaver/PowersaverSettings;->mEnablePowerEfficiencyPref:Lcom/htc/preference/HtcCheckBoxPreference;

    invoke-virtual {v1, v2}, Lcom/htc/preference/HtcPreferenceScreen;->removePreference(Lcom/htc/preference/HtcPreference;)Z

    .line 128
    :goto_2
    const-string v1, "powersaver_set_schedule"

    invoke-virtual {p0, v1}, Lcom/android/settings/framework/activity/powersaver/PowersaverSettings;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v1

    check-cast v1, Lcom/htc/preference/HtcListPreference;

    iput-object v1, p0, Lcom/android/settings/framework/activity/powersaver/PowersaverSettings;->mSetSchedulePref:Lcom/htc/preference/HtcListPreference;

    .line 130
    iget-object v1, p0, Lcom/android/settings/framework/activity/powersaver/PowersaverSettings;->mSetSchedulePref:Lcom/htc/preference/HtcListPreference;

    invoke-virtual {v1, p0}, Lcom/htc/preference/HtcListPreference;->setOnPreferenceChangeListener(Lcom/htc/preference/HtcPreference$OnPreferenceChangeListener;)V

    .line 131
    iget-object v1, p0, Lcom/android/settings/framework/activity/powersaver/PowersaverSettings;->mSetSchedulePref:Lcom/htc/preference/HtcListPreference;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {v0}, Lcom/android/settings/framework/activity/powersaver/Powersaver;->getSchedule(Landroid/content/ContentResolver;)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/htc/preference/HtcListPreference;->setValue(Ljava/lang/String;)V

    .line 133
    iget-object v1, p0, Lcom/android/settings/framework/activity/powersaver/PowersaverSettings;->mSetSchedulePref:Lcom/htc/preference/HtcListPreference;

    iget-object v2, p0, Lcom/android/settings/framework/activity/powersaver/PowersaverSettings;->mSetSchedulePref:Lcom/htc/preference/HtcListPreference;

    invoke-virtual {v2}, Lcom/htc/preference/HtcListPreference;->getEntry()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/htc/preference/HtcListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 139
    const-string v1, "enable_fastboot"

    invoke-virtual {p0, v1}, Lcom/android/settings/framework/activity/powersaver/PowersaverSettings;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v1

    check-cast v1, Lcom/htc/preference/HtcCheckBoxPreference;

    iput-object v1, p0, Lcom/android/settings/framework/activity/powersaver/PowersaverSettings;->mTogglefastBoot:Lcom/htc/preference/HtcCheckBoxPreference;

    .line 140
    iget-object v1, p0, Lcom/android/settings/framework/activity/powersaver/PowersaverSettings;->mTogglefastBoot:Lcom/htc/preference/HtcCheckBoxPreference;

    if-eqz v1, :cond_1

    .line 142
    iget-object v1, p0, Lcom/android/settings/framework/activity/powersaver/PowersaverSettings;->mTogglefastBoot:Lcom/htc/preference/HtcCheckBoxPreference;

    invoke-direct {p0}, Lcom/android/settings/framework/activity/powersaver/PowersaverSettings;->isfastBootAllowed()Z

    move-result v2

    invoke-virtual {v1, v2}, Lcom/htc/preference/HtcCheckBoxPreference;->setChecked(Z)V

    .line 145
    :cond_1
    invoke-direct {p0}, Lcom/android/settings/framework/activity/powersaver/PowersaverSettings;->pluginExtraComponents_sleepMode()V

    .line 146
    invoke-virtual {p0}, Lcom/android/settings/framework/activity/powersaver/PowersaverSettings;->requestHandlers()V

    .line 147
    return-void

    .line 104
    :cond_2
    const v1, 0x7f050023

    invoke-virtual {p0, v1}, Lcom/android/settings/framework/activity/powersaver/PowersaverSettings;->addPreferencesFromResource(I)V

    .line 105
    const-string v1, "powersaver_notification"

    invoke-virtual {p0, v1}, Lcom/android/settings/framework/activity/powersaver/PowersaverSettings;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v1

    check-cast v1, Lcom/htc/preference/HtcCheckBoxPreference;

    iput-object v1, p0, Lcom/android/settings/framework/activity/powersaver/PowersaverSettings;->mNotificationPref:Lcom/htc/preference/HtcCheckBoxPreference;

    goto/16 :goto_0

    :cond_3
    move v1, v3

    .line 112
    goto/16 :goto_1

    .line 123
    :cond_4
    iget-object v1, p0, Lcom/android/settings/framework/activity/powersaver/PowersaverSettings;->mEnablePowerEfficiencyPref:Lcom/htc/preference/HtcCheckBoxPreference;

    invoke-static {v0}, Lcom/android/settings/framework/activity/powersaver/Powersaver;->getPowerEfficiencyEnable(Landroid/content/ContentResolver;)I

    move-result v4

    if-ne v4, v2, :cond_5

    :goto_3
    invoke-virtual {v1, v2}, Lcom/htc/preference/HtcCheckBoxPreference;->setChecked(Z)V

    .line 124
    iget-object v1, p0, Lcom/android/settings/framework/activity/powersaver/PowersaverSettings;->mEnablePowerEfficiencyPref:Lcom/htc/preference/HtcCheckBoxPreference;

    invoke-virtual {v1, p0}, Lcom/htc/preference/HtcCheckBoxPreference;->setOnPreferenceChangeListener(Lcom/htc/preference/HtcPreference$OnPreferenceChangeListener;)V

    goto :goto_2

    :cond_5
    move v2, v3

    .line 123
    goto :goto_3
.end method

.method public onPreferenceChange(Lcom/htc/preference/HtcPreference;Ljava/lang/Object;)Z
    .locals 4
    .parameter "preference"
    .parameter "objValue"

    .prologue
    .line 409
    invoke-virtual {p1}, Lcom/htc/preference/HtcPreference;->getKey()Ljava/lang/String;

    move-result-object v0

    .line 411
    .local v0, key:Ljava/lang/String;
    const-string v2, "powersaver_set_schedule"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    move-object v2, p2

    .line 413
    check-cast v2, Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 414
    .local v1, value:I
    invoke-virtual {p0}, Lcom/android/settings/framework/activity/powersaver/PowersaverSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    invoke-static {v2, v1}, Lcom/android/settings/framework/activity/powersaver/Powersaver;->setSchedule(Landroid/content/ContentResolver;I)V

    .line 415
    iget-object v2, p0, Lcom/android/settings/framework/activity/powersaver/PowersaverSettings;->mSetSchedulePref:Lcom/htc/preference/HtcListPreference;

    check-cast p2, Ljava/lang/String;

    .end local p2
    invoke-virtual {v2, p2}, Lcom/htc/preference/HtcListPreference;->setValue(Ljava/lang/String;)V

    .line 416
    iget-object v2, p0, Lcom/android/settings/framework/activity/powersaver/PowersaverSettings;->mSetSchedulePref:Lcom/htc/preference/HtcListPreference;

    iget-object v3, p0, Lcom/android/settings/framework/activity/powersaver/PowersaverSettings;->mSetSchedulePref:Lcom/htc/preference/HtcListPreference;

    invoke-virtual {v3}, Lcom/htc/preference/HtcListPreference;->getEntry()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/htc/preference/HtcListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 419
    .end local v1           #value:I
    :cond_0
    const/4 v2, 0x1

    return v2
.end method

.method public onPreferenceTreeClick(Lcom/htc/preference/HtcPreferenceScreen;Lcom/htc/preference/HtcPreference;)Z
    .locals 10
    .parameter "preferenceScreen"
    .parameter "preference"

    .prologue
    const/4 v9, 0x0

    .line 192
    iget-object v6, p0, Lcom/android/settings/framework/activity/powersaver/PowersaverSettings;->mEnablePowersaverPref:Lcom/htc/preference/HtcCheckBoxPreference;

    if-ne p2, v6, :cond_2

    .line 194
    iget-object v6, p0, Lcom/android/settings/framework/activity/powersaver/PowersaverSettings;->mEnablePowersaverPref:Lcom/htc/preference/HtcCheckBoxPreference;

    invoke-virtual {v6}, Lcom/htc/preference/HtcCheckBoxPreference;->isChecked()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 196
    invoke-virtual {p0}, Lcom/android/settings/framework/activity/powersaver/PowersaverSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const/4 v7, 0x1

    invoke-static {v6, v7}, Lcom/android/settings/framework/activity/powersaver/Powersaver;->setEnable(Landroid/content/ContentResolver;I)V

    .line 304
    :cond_0
    :goto_0
    invoke-super {p0, p1, p2}, Lcom/android/settings/framework/app/HtcInternalPreferenceActivity;->onPreferenceTreeClick(Lcom/htc/preference/HtcPreferenceScreen;Lcom/htc/preference/HtcPreference;)Z

    move-result v6

    return v6

    .line 200
    :cond_1
    invoke-virtual {p0}, Lcom/android/settings/framework/activity/powersaver/PowersaverSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    invoke-static {v6, v9}, Lcom/android/settings/framework/activity/powersaver/Powersaver;->setEnable(Landroid/content/ContentResolver;I)V

    .line 201
    iget-object v6, p0, Lcom/android/settings/framework/activity/powersaver/PowersaverSettings;->mHandler:Landroid/os/Handler;

    const/16 v7, 0xfa0

    invoke-virtual {v6, v7}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 204
    const-string v6, "notification"

    invoke-virtual {p0, v6}, Lcom/android/settings/framework/activity/powersaver/PowersaverSettings;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/app/NotificationManager;

    .line 205
    .local v5, notificationManager:Landroid/app/NotificationManager;
    const-string v6, "Powersaver"

    invoke-virtual {v5, v6, v9}, Landroid/app/NotificationManager;->cancel(Ljava/lang/String;I)V

    .line 207
    invoke-virtual {p0}, Lcom/android/settings/framework/activity/powersaver/PowersaverSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    invoke-static {v6}, Lcom/android/settings/framework/activity/powersaver/Powersaver;->getStatus(Landroid/content/ContentResolver;)I

    move-result v6

    const/16 v7, 0x1f41

    if-ne v6, v7, :cond_0

    .line 211
    :try_start_0
    new-instance v0, Landroid/content/Intent;

    const-class v6, Lcom/android/settings/framework/activity/powersaver/BacktoNormalActivity;

    invoke-direct {v0, p0, v6}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 212
    .local v0, PowersaverIntent:Landroid/content/Intent;
    const/high16 v6, 0x1000

    invoke-virtual {v0, v6}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 213
    invoke-virtual {p0, v0}, Lcom/android/settings/framework/activity/powersaver/PowersaverSettings;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 215
    .end local v0           #PowersaverIntent:Landroid/content/Intent;
    :catch_0
    move-exception v1

    .line 217
    .local v1, activityException:Landroid/content/ActivityNotFoundException;
    const-string v6, "PowersaverSettings"

    const-string v7, "[Psaver]BacktoNormalActivity Call failed"

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 222
    .end local v1           #activityException:Landroid/content/ActivityNotFoundException;
    .end local v5           #notificationManager:Landroid/app/NotificationManager;
    :cond_2
    iget-object v6, p0, Lcom/android/settings/framework/activity/powersaver/PowersaverSettings;->mNotificationPref:Lcom/htc/preference/HtcCheckBoxPreference;

    if-ne p2, v6, :cond_3

    .line 224
    iget-object v6, p0, Lcom/android/settings/framework/activity/powersaver/PowersaverSettings;->mPowerSaverSharedpref:Landroid/content/SharedPreferences;

    invoke-interface {v6}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v6

    const-string v7, "powersaver_notification"

    iget-object v8, p0, Lcom/android/settings/framework/activity/powersaver/PowersaverSettings;->mNotificationPref:Lcom/htc/preference/HtcCheckBoxPreference;

    invoke-virtual {v8}, Lcom/htc/preference/HtcCheckBoxPreference;->isChecked()Z

    move-result v8

    invoke-interface {v6, v7, v8}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v6

    invoke-interface {v6}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto :goto_0

    .line 226
    :cond_3
    iget-object v6, p0, Lcom/android/settings/framework/activity/powersaver/PowersaverSettings;->mTogglefastBoot:Lcom/htc/preference/HtcCheckBoxPreference;

    if-ne p2, v6, :cond_4

    .line 228
    iget-object v6, p0, Lcom/android/settings/framework/activity/powersaver/PowersaverSettings;->mTogglefastBoot:Lcom/htc/preference/HtcCheckBoxPreference;

    invoke-virtual {v6}, Lcom/htc/preference/HtcCheckBoxPreference;->isChecked()Z

    move-result v2

    .line 229
    .local v2, fastBootON:Z
    invoke-direct {p0, v2}, Lcom/android/settings/framework/activity/powersaver/PowersaverSettings;->setfastBootAllowed(Z)V

    goto :goto_0

    .line 231
    .end local v2           #fastBootON:Z
    :cond_4
    iget-object v6, p0, Lcom/android/settings/framework/activity/powersaver/PowersaverSettings;->mEnablePowerEfficiencyPref:Lcom/htc/preference/HtcCheckBoxPreference;

    if-ne p2, v6, :cond_0

    .line 233
    iget-object v6, p0, Lcom/android/settings/framework/activity/powersaver/PowersaverSettings;->mEnablePowerEfficiencyPref:Lcom/htc/preference/HtcCheckBoxPreference;

    invoke-virtual {v6}, Lcom/htc/preference/HtcCheckBoxPreference;->isChecked()Z

    move-result v6

    if-eqz v6, :cond_5

    .line 235
    new-instance v6, Lcom/htc/widget/HtcAlertDialog$Builder;

    invoke-direct {v6, p0}, Lcom/htc/widget/HtcAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v7, 0x7f0c05ae

    invoke-virtual {v6, v7}, Lcom/htc/widget/HtcAlertDialog$Builder;->setTitle(I)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v6

    const v7, 0x7f0c05af

    invoke-virtual {v6, v7}, Lcom/htc/widget/HtcAlertDialog$Builder;->setMessage(I)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v6

    new-instance v7, Lcom/android/settings/framework/activity/powersaver/PowersaverSettings$3;

    invoke-direct {v7, p0}, Lcom/android/settings/framework/activity/powersaver/PowersaverSettings$3;-><init>(Lcom/android/settings/framework/activity/powersaver/PowersaverSettings;)V

    invoke-virtual {v6, v7}, Lcom/htc/widget/HtcAlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v6

    const v7, 0x7f0c001e

    new-instance v8, Lcom/android/settings/framework/activity/powersaver/PowersaverSettings$2;

    invoke-direct {v8, p0}, Lcom/android/settings/framework/activity/powersaver/PowersaverSettings$2;-><init>(Lcom/android/settings/framework/activity/powersaver/PowersaverSettings;)V

    invoke-virtual {v6, v7, v8}, Lcom/htc/widget/HtcAlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v6

    const v7, 0x7f0c001f

    new-instance v8, Lcom/android/settings/framework/activity/powersaver/PowersaverSettings$1;

    invoke-direct {v8, p0}, Lcom/android/settings/framework/activity/powersaver/PowersaverSettings$1;-><init>(Lcom/android/settings/framework/activity/powersaver/PowersaverSettings;)V

    invoke-virtual {v6, v7, v8}, Lcom/htc/widget/HtcAlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v6

    invoke-virtual {v6}, Lcom/htc/widget/HtcAlertDialog$Builder;->show()Lcom/htc/widget/HtcAlertDialog;

    goto/16 :goto_0

    .line 277
    :cond_5
    invoke-virtual {p0}, Lcom/android/settings/framework/activity/powersaver/PowersaverSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    invoke-static {v6, v9}, Lcom/android/settings/framework/activity/powersaver/Powersaver;->setPowerEfficiencyEnable(Landroid/content/ContentResolver;I)V

    .line 278
    iget-object v6, p0, Lcom/android/settings/framework/activity/powersaver/PowersaverSettings;->mEnablePowerEfficiencyPref:Lcom/htc/preference/HtcCheckBoxPreference;

    invoke-virtual {v6, v9}, Lcom/htc/preference/HtcCheckBoxPreference;->setChecked(Z)V

    .line 280
    iget-object v6, p0, Lcom/android/settings/framework/activity/powersaver/PowersaverSettings;->mPowerSaverSharedpref:Landroid/content/SharedPreferences;

    const-string v7, "powersaver_screen_brightness_settings_mode"

    invoke-interface {v6, v7, v9}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v4

    .line 284
    .local v4, iMode:I
    iget-object v6, p0, Lcom/android/settings/framework/activity/powersaver/PowersaverSettings;->mPowerSaverSharedpref:Landroid/content/SharedPreferences;

    const-string v7, "powersaver_screen_brightness_settings"

    const/16 v8, 0x66

    invoke-interface {v6, v7, v8}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v3

    .line 288
    .local v3, iBrightness:I
    const-string v6, "PowersaverSettings"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "iMode ="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 289
    const-string v6, "PowersaverSettings"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "iBrightness ="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 290
    invoke-virtual {p0}, Lcom/android/settings/framework/activity/powersaver/PowersaverSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    invoke-static {v6, v4, v3}, Lcom/android/settings/framework/activity/powersaver/Powersaver;->setSysBrightness(Landroid/content/ContentResolver;II)V

    .line 292
    iget-object v6, p0, Lcom/android/settings/framework/activity/powersaver/PowersaverSettings;->mPowerSaverSharedpref:Landroid/content/SharedPreferences;

    const-string v7, "power_efficiency_sleep_policy"

    invoke-interface {v6, v7, v9}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v6

    invoke-virtual {p0, v6}, Lcom/android/settings/framework/activity/powersaver/PowersaverSettings;->set_WIFI_SLEEP_POLICY(I)V

    .line 295
    iget-object v6, p0, Lcom/android/settings/framework/activity/powersaver/PowersaverSettings;->mPowerSaverSharedpref:Landroid/content/SharedPreferences;

    const-string v7, "power_efficiency_always_on"

    invoke-interface {v6, v7, v9}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v6

    invoke-virtual {p0, v6}, Lcom/android/settings/framework/activity/powersaver/PowersaverSettings;->set_POWER_SAVE_3G(I)V

    .line 298
    iget-object v6, p0, Lcom/android/settings/framework/activity/powersaver/PowersaverSettings;->mPowerSaverSharedpref:Landroid/content/SharedPreferences;

    const-string v7, "power_efficiency_auto_sync"

    invoke-interface {v6, v7, v9}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v6

    invoke-virtual {p0, v6}, Lcom/android/settings/framework/activity/powersaver/PowersaverSettings;->setAutoSync(Z)V

    goto/16 :goto_0
.end method

.method protected onResume()V
    .locals 2

    .prologue
    .line 177
    invoke-super {p0}, Lcom/android/settings/framework/app/HtcInternalPreferenceActivity;->onResume()V

    .line 179
    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v1, 0xa9

    if-eq v0, v1, :cond_0

    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v1, 0xaa

    if-eq v0, v1, :cond_0

    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v1, 0x28

    if-eq v0, v1, :cond_0

    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v1, 0x21

    if-eq v0, v1, :cond_0

    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v1, 0x22

    if-ne v0, v1, :cond_1

    .line 185
    :cond_0
    invoke-direct {p0}, Lcom/android/settings/framework/activity/powersaver/PowersaverSettings;->updateLayout()V

    .line 187
    :cond_1
    return-void
.end method

.method public setAutoSync(Z)V
    .locals 2
    .parameter "bEnable"

    .prologue
    .line 339
    invoke-virtual {p0}, Lcom/android/settings/framework/activity/powersaver/PowersaverSettings;->GetBackgroundDataSetting()I

    move-result v0

    .line 340
    .local v0, nBackgroundDataSetting:I
    invoke-virtual {p0}, Lcom/android/settings/framework/activity/powersaver/PowersaverSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 342
    const/4 v1, 0x1

    if-ne v1, v0, :cond_0

    .line 344
    invoke-virtual {p0}, Lcom/android/settings/framework/activity/powersaver/PowersaverSettings;->getContentResolver()Landroid/content/ContentResolver;

    invoke-static {p1}, Landroid/content/ContentResolver;->setMasterSyncAutomatically(Z)V

    .line 348
    :cond_0
    return-void
.end method

.method public set_POWER_SAVE_3G(I)V
    .locals 2
    .parameter "iValue"

    .prologue
    .line 327
    invoke-virtual {p0}, Lcom/android/settings/framework/activity/powersaver/PowersaverSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "3g_power_save"

    invoke-static {v0, v1, p1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 329
    return-void
.end method

.method public set_WIFI_SLEEP_POLICY(I)V
    .locals 2
    .parameter "iValue"

    .prologue
    .line 315
    invoke-virtual {p0}, Lcom/android/settings/framework/activity/powersaver/PowersaverSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "wifi_sleep_policy"

    invoke-static {v0, v1, p1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 317
    return-void
.end method
