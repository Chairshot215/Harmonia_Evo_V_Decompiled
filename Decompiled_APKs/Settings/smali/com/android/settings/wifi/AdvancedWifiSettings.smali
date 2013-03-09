.class public Lcom/android/settings/wifi/AdvancedWifiSettings;
.super Lcom/android/settings/SettingsPreferenceFragment;
.source "AdvancedWifiSettings.java"

# interfaces
.implements Lcom/htc/preference/HtcPreference$OnPreferenceChangeListener;


# static fields
#the value of this static final field might be set in the static constructor
.field private static final ENABLE_AUTO_DISCONNECT:Z = false

#the value of this static final field might be set in the static constructor
.field private static final ENABLE_LAN_INFO:Z = false

#the value of this static final field might be set in the static constructor
.field private static final ENABLE_WIFI_OFFLOAD:Z = false

.field private static final KEY_ACCESS_CONDITION:Ljava/lang/String; = "access_condition"

.field private static final KEY_AUTO_DISCONNECT:Ljava/lang/String; = "auto_disconnect"

.field private static final KEY_CURRENT_IP_ADDRESS:Ljava/lang/String; = "current_ip_address"

.field private static final KEY_DLNA_AUTO_IP:Ljava/lang/String; = "wifi_dlna_auto_ip"

.field private static final KEY_DLNA_SETTING_TITLE:Ljava/lang/String; = "wifi_dlna_setting_titlebar"

.field private static final KEY_ENABLE_WIFI_WATCHDOG:Ljava/lang/String; = "wifi_enable_watchdog_service"

.field private static final KEY_FREQUENCY_BAND:Ljava/lang/String; = "frequency_band"

.field private static final KEY_LAN_INFO:Ljava/lang/String; = "lan_info"

.field private static final KEY_MAC_ADDRESS:Ljava/lang/String; = "mac_address"

.field private static final KEY_NEVER_AUTO_TURN_ON_WIFI:Ljava/lang/String; = "never_auto_turn_on_wifi"

.field private static final KEY_NOTIFY_ME:Ljava/lang/String; = "notify_me"

.field private static final KEY_NOTIFY_OPEN_NETWORKS:Ljava/lang/String; = "notify_open_networks"

.field private static final KEY_SLEEP_POLICY:Ljava/lang/String; = "sleep_policy"

.field private static final KEY_WIFI_PWR_ACTIVE_MODE:Ljava/lang/String; = "wifi_pwr_active_mode"

.field public static final NEVER_AUTO_TURN_ON:Ljava/lang/String; = "NEVER_AUTO_TURN_ON"

.field private static final POWER_ACT_MODE:Z = true

.field private static final TAG:Ljava/lang/String; = "AdvancedWifiSettings"

.field public static final WIFI_OFFLOAD_PREFERENCE:Ljava/lang/String; = "WIFIOFFLOAD"


# instance fields
.field private mAutoDisconnCheckBox:Lcom/htc/preference/HtcCheckBoxPreference;

.field private mEnableDlnaAutoIp:Z

.field private mFreqBandList:Lcom/htc/preference/HtcListPreference;

.field private mLanInfo:Lcom/htc/preference/HtcPreference;

.field private mNeverAutoTurnOnCheckbox:Lcom/htc/preference/HtcCheckBoxPreference;

.field private mNotifyMeCheckbox:Lcom/htc/preference/HtcCheckBoxPreference;

.field private mPwrActModCheckBox:Lcom/htc/preference/HtcCheckBoxPreference;

.field private mWifiDlnaAutoIpCheckBox:Lcom/htc/preference/HtcCheckBoxPreference;

.field private mWifiManager:Landroid/net/wifi/WifiManager;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 74
    sget-boolean v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->HTC_WIFI_OFFLOAD_flag:Z

    sput-boolean v0, Lcom/android/settings/wifi/AdvancedWifiSettings;->ENABLE_AUTO_DISCONNECT:Z

    .line 75
    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_LANGUAGE_flag:S

    const/4 v3, 0x2

    if-ne v0, v3, :cond_0

    move v0, v1

    :goto_0
    sput-boolean v0, Lcom/android/settings/wifi/AdvancedWifiSettings;->ENABLE_LAN_INFO:Z

    .line 76
    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v3, 0x61

    if-ne v0, v3, :cond_1

    :goto_1
    sput-boolean v1, Lcom/android/settings/wifi/AdvancedWifiSettings;->ENABLE_WIFI_OFFLOAD:Z

    return-void

    :cond_0
    move v0, v2

    .line 75
    goto :goto_0

    :cond_1
    move v1, v2

    .line 76
    goto :goto_1
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 45
    invoke-direct {p0}, Lcom/android/settings/SettingsPreferenceFragment;-><init>()V

    .line 77
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/settings/wifi/AdvancedWifiSettings;->mEnableDlnaAutoIp:Z

    return-void
.end method

.method private initAutoDisConnect()V
    .locals 2

    .prologue
    .line 268
    const-string v1, "auto_disconnect"

    invoke-virtual {p0, v1}, Lcom/android/settings/wifi/AdvancedWifiSettings;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v1

    check-cast v1, Lcom/htc/preference/HtcCheckBoxPreference;

    iput-object v1, p0, Lcom/android/settings/wifi/AdvancedWifiSettings;->mAutoDisconnCheckBox:Lcom/htc/preference/HtcCheckBoxPreference;

    .line 269
    sget-boolean v1, Lcom/android/settings/wifi/AdvancedWifiSettings;->ENABLE_AUTO_DISCONNECT:Z

    if-eqz v1, :cond_1

    .line 271
    iget-object v1, p0, Lcom/android/settings/wifi/AdvancedWifiSettings;->mAutoDisconnCheckBox:Lcom/htc/preference/HtcCheckBoxPreference;

    if-eqz v1, :cond_0

    .line 273
    iget-object v1, p0, Lcom/android/settings/wifi/AdvancedWifiSettings;->mAutoDisconnCheckBox:Lcom/htc/preference/HtcCheckBoxPreference;

    invoke-virtual {v1, p0}, Lcom/htc/preference/HtcCheckBoxPreference;->setOnPreferenceChangeListener(Lcom/htc/preference/HtcPreference$OnPreferenceChangeListener;)V

    .line 284
    :cond_0
    :goto_0
    return-void

    .line 278
    :cond_1
    const-string v1, "parent"

    invoke-virtual {p0, v1}, Lcom/android/settings/wifi/AdvancedWifiSettings;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v0

    check-cast v0, Lcom/htc/preference/HtcPreferenceScreen;

    .line 279
    .local v0, parent:Lcom/htc/preference/HtcPreferenceScreen;
    iget-object v1, p0, Lcom/android/settings/wifi/AdvancedWifiSettings;->mAutoDisconnCheckBox:Lcom/htc/preference/HtcCheckBoxPreference;

    if-eqz v1, :cond_0

    if-eqz v0, :cond_0

    .line 281
    iget-object v1, p0, Lcom/android/settings/wifi/AdvancedWifiSettings;->mAutoDisconnCheckBox:Lcom/htc/preference/HtcCheckBoxPreference;

    invoke-virtual {v0, v1}, Lcom/htc/preference/HtcPreferenceScreen;->removePreference(Lcom/htc/preference/HtcPreference;)Z

    goto :goto_0
.end method

.method private initPreferences()V
    .locals 11

    .prologue
    const/4 v8, 0x0

    const/4 v7, 0x1

    .line 221
    const-string v6, "wifi_enable_watchdog_service"

    invoke-virtual {p0, v6}, Lcom/android/settings/wifi/AdvancedWifiSettings;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v5

    check-cast v5, Lcom/htc/preference/HtcCheckBoxPreference;

    .line 223
    .local v5, watchdogEnabled:Lcom/htc/preference/HtcCheckBoxPreference;
    if-eqz v5, :cond_0

    .line 224
    invoke-virtual {p0}, Lcom/android/settings/wifi/AdvancedWifiSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v9, "wifi_watchdog_on"

    invoke-static {v6, v9, v7}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v6

    if-ne v6, v7, :cond_5

    move v6, v7

    :goto_0
    invoke-virtual {v5, v6}, Lcom/htc/preference/HtcCheckBoxPreference;->setChecked(Z)V

    .line 227
    invoke-virtual {p0}, Lcom/android/settings/wifi/AdvancedWifiSettings;->getPreferenceScreen()Lcom/htc/preference/HtcPreferenceScreen;

    move-result-object v6

    invoke-virtual {v6, v5}, Lcom/htc/preference/HtcPreferenceScreen;->removePreference(Lcom/htc/preference/HtcPreference;)Z

    .line 230
    :cond_0
    const-string v6, "sleep_policy"

    invoke-virtual {p0, v6}, Lcom/android/settings/wifi/AdvancedWifiSettings;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v2

    check-cast v2, Lcom/htc/preference/HtcListPreference;

    .line 231
    .local v2, sleepPolicyPref:Lcom/htc/preference/HtcListPreference;
    if-eqz v2, :cond_2

    .line 232
    invoke-virtual {p0}, Lcom/android/settings/wifi/AdvancedWifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v6

    invoke-static {v6}, Lcom/android/settings/Utils;->isWifiOnly(Landroid/content/Context;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 233
    const v6, 0x7f07001b

    invoke-virtual {v2, v6}, Lcom/htc/preference/HtcListPreference;->setEntries(I)V

    .line 235
    :cond_1
    invoke-virtual {v2, p0}, Lcom/htc/preference/HtcListPreference;->setOnPreferenceChangeListener(Lcom/htc/preference/HtcPreference$OnPreferenceChangeListener;)V

    .line 236
    invoke-virtual {p0}, Lcom/android/settings/wifi/AdvancedWifiSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v9, "wifi_sleep_policy"

    const/4 v10, 0x2

    invoke-static {v6, v9, v10}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    .line 239
    .local v4, value:I
    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    .line 240
    .local v3, stringValue:Ljava/lang/String;
    invoke-virtual {v2, v3}, Lcom/htc/preference/HtcListPreference;->setValue(Ljava/lang/String;)V

    .line 241
    invoke-direct {p0, v2, v3}, Lcom/android/settings/wifi/AdvancedWifiSettings;->updateSleepPolicySummary(Lcom/htc/preference/HtcPreference;Ljava/lang/String;)V

    .line 245
    .end local v3           #stringValue:Ljava/lang/String;
    .end local v4           #value:I
    :cond_2
    const-string v6, "notify_open_networks"

    invoke-virtual {p0, v6}, Lcom/android/settings/wifi/AdvancedWifiSettings;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v0

    check-cast v0, Lcom/htc/preference/HtcCheckBoxPreference;

    .line 247
    .local v0, notifyOpenNetworks:Lcom/htc/preference/HtcCheckBoxPreference;
    const-string v6, "notify_me"

    invoke-virtual {p0, v6}, Lcom/android/settings/wifi/AdvancedWifiSettings;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v6

    check-cast v6, Lcom/htc/preference/HtcCheckBoxPreference;

    iput-object v6, p0, Lcom/android/settings/wifi/AdvancedWifiSettings;->mNotifyMeCheckbox:Lcom/htc/preference/HtcCheckBoxPreference;

    .line 248
    const-string v6, "parent"

    invoke-virtual {p0, v6}, Lcom/android/settings/wifi/AdvancedWifiSettings;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v1

    check-cast v1, Lcom/htc/preference/HtcPreferenceScreen;

    .line 249
    .local v1, parent:Lcom/htc/preference/HtcPreferenceScreen;
    sget-boolean v6, Lcom/android/settings/wifi/WifiOffloadManager;->isWifiOffloadSupported:Z

    if-eqz v6, :cond_6

    .line 250
    if-eqz v1, :cond_3

    .line 251
    invoke-virtual {v1, v0}, Lcom/htc/preference/HtcPreferenceScreen;->removePreference(Lcom/htc/preference/HtcPreference;)Z

    .line 253
    :cond_3
    iget-object v6, p0, Lcom/android/settings/wifi/AdvancedWifiSettings;->mNotifyMeCheckbox:Lcom/htc/preference/HtcCheckBoxPreference;

    if-eqz v6, :cond_4

    .line 254
    iget-object v6, p0, Lcom/android/settings/wifi/AdvancedWifiSettings;->mNotifyMeCheckbox:Lcom/htc/preference/HtcCheckBoxPreference;

    invoke-virtual {v6, p0}, Lcom/htc/preference/HtcCheckBoxPreference;->setOnPreferenceChangeListener(Lcom/htc/preference/HtcPreference$OnPreferenceChangeListener;)V

    .line 265
    :cond_4
    :goto_1
    return-void

    .end local v0           #notifyOpenNetworks:Lcom/htc/preference/HtcCheckBoxPreference;
    .end local v1           #parent:Lcom/htc/preference/HtcPreferenceScreen;
    .end local v2           #sleepPolicyPref:Lcom/htc/preference/HtcListPreference;
    :cond_5
    move v6, v8

    .line 224
    goto :goto_0

    .line 256
    .restart local v0       #notifyOpenNetworks:Lcom/htc/preference/HtcCheckBoxPreference;
    .restart local v1       #parent:Lcom/htc/preference/HtcPreferenceScreen;
    .restart local v2       #sleepPolicyPref:Lcom/htc/preference/HtcListPreference;
    :cond_6
    if-eqz v1, :cond_7

    .line 257
    iget-object v6, p0, Lcom/android/settings/wifi/AdvancedWifiSettings;->mNotifyMeCheckbox:Lcom/htc/preference/HtcCheckBoxPreference;

    invoke-virtual {v1, v6}, Lcom/htc/preference/HtcPreferenceScreen;->removePreference(Lcom/htc/preference/HtcPreference;)Z

    .line 259
    :cond_7
    if-eqz v0, :cond_4

    .line 260
    invoke-virtual {p0}, Lcom/android/settings/wifi/AdvancedWifiSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v9, "wifi_networks_available_notification_on"

    invoke-static {v6, v9, v8}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v6

    if-ne v6, v7, :cond_8

    :goto_2
    invoke-virtual {v0, v7}, Lcom/htc/preference/HtcCheckBoxPreference;->setChecked(Z)V

    .line 262
    iget-object v6, p0, Lcom/android/settings/wifi/AdvancedWifiSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v6}, Landroid/net/wifi/WifiManager;->isWifiEnabled()Z

    move-result v6

    invoke-virtual {v0, v6}, Lcom/htc/preference/HtcCheckBoxPreference;->setEnabled(Z)V

    goto :goto_1

    :cond_8
    move v7, v8

    .line 260
    goto :goto_2
.end method

.method private refreshWifiInfo()V
    .locals 15

    .prologue
    .line 440
    iget-object v8, p0, Lcom/android/settings/wifi/AdvancedWifiSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v8}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v5

    .line 442
    .local v5, wifiInfo:Landroid/net/wifi/WifiInfo;
    const-string v8, "mac_address"

    invoke-virtual {p0, v8}, Lcom/android/settings/wifi/AdvancedWifiSettings;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v7

    .line 443
    .local v7, wifiMacAddressPref:Lcom/htc/preference/HtcPreference;
    if-nez v5, :cond_5

    const/4 v3, 0x0

    .line 444
    .local v3, macAddress:Ljava/lang/String;
    :goto_0
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_6

    .end local v3           #macAddress:Ljava/lang/String;
    :goto_1
    invoke-virtual {v7, v3}, Lcom/htc/preference/HtcPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 447
    const-string v8, "current_ip_address"

    invoke-virtual {p0, v8}, Lcom/android/settings/wifi/AdvancedWifiSettings;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v6

    .line 448
    .local v6, wifiIpAddressPref:Lcom/htc/preference/HtcPreference;
    const/4 v2, 0x0

    .line 449
    .local v2, ipAddress:Ljava/lang/String;
    if-eqz v5, :cond_1

    .line 450
    invoke-virtual {v5}, Landroid/net/wifi/WifiInfo;->getIpAddress()I

    move-result v8

    int-to-long v0, v8

    .line 451
    .local v0, addr:J
    const-wide/16 v8, 0x0

    cmp-long v8, v0, v8

    if-eqz v8, :cond_1

    .line 453
    const-wide/16 v8, 0x0

    cmp-long v8, v0, v8

    if-gez v8, :cond_0

    const-wide v8, 0x100000000L

    add-long/2addr v0, v8

    .line 454
    :cond_0
    const-string v8, "%d.%d.%d.%d"

    const/4 v9, 0x4

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    const-wide/16 v11, 0xff

    and-long/2addr v11, v0

    invoke-static {v11, v12}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    aput-object v11, v9, v10

    const/4 v10, 0x1

    const/16 v11, 0x8

    shr-long v11, v0, v11

    const-wide/16 v13, 0xff

    and-long/2addr v11, v13

    invoke-static {v11, v12}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    aput-object v11, v9, v10

    const/4 v10, 0x2

    const/16 v11, 0x10

    shr-long v11, v0, v11

    const-wide/16 v13, 0xff

    and-long/2addr v11, v13

    invoke-static {v11, v12}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    aput-object v11, v9, v10

    const/4 v10, 0x3

    const/16 v11, 0x18

    shr-long v11, v0, v11

    const-wide/16 v13, 0xff

    and-long/2addr v11, v13

    invoke-static {v11, v12}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    aput-object v11, v9, v10

    invoke-static {v8, v9}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 458
    .end local v0           #addr:J
    :cond_1
    if-nez v2, :cond_2

    invoke-virtual {p0}, Lcom/android/settings/wifi/AdvancedWifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v8

    const v9, 0x7f0c0a0d

    invoke-virtual {v8, v9}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v2

    .end local v2           #ipAddress:Ljava/lang/String;
    :cond_2
    invoke-virtual {v6, v2}, Lcom/htc/preference/HtcPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 461
    iget-boolean v8, p0, Lcom/android/settings/wifi/AdvancedWifiSettings;->mEnableDlnaAutoIp:Z

    if-eqz v8, :cond_3

    .line 462
    iget-object v8, p0, Lcom/android/settings/wifi/AdvancedWifiSettings;->mWifiDlnaAutoIpCheckBox:Lcom/htc/preference/HtcCheckBoxPreference;

    if-eqz v8, :cond_3

    .line 463
    iget-object v9, p0, Lcom/android/settings/wifi/AdvancedWifiSettings;->mWifiDlnaAutoIpCheckBox:Lcom/htc/preference/HtcCheckBoxPreference;

    invoke-virtual {p0}, Lcom/android/settings/wifi/AdvancedWifiSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    const-string v10, "wifi_auto_ip_on"

    const/4 v11, 0x0

    invoke-static {v8, v10, v11}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v8

    if-eqz v8, :cond_7

    const/4 v8, 0x1

    :goto_2
    invoke-virtual {v9, v8}, Lcom/htc/preference/HtcCheckBoxPreference;->setChecked(Z)V

    .line 468
    :cond_3
    iget-object v8, p0, Lcom/android/settings/wifi/AdvancedWifiSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v8}, Landroid/net/wifi/WifiManager;->isDualBandSupported()Z

    move-result v8

    if-eqz v8, :cond_4

    .line 469
    iget-object v8, p0, Lcom/android/settings/wifi/AdvancedWifiSettings;->mFreqBandList:Lcom/htc/preference/HtcListPreference;

    if-eqz v8, :cond_4

    .line 470
    iget-object v8, p0, Lcom/android/settings/wifi/AdvancedWifiSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v8}, Landroid/net/wifi/WifiManager;->getFrequencyBand()I

    move-result v4

    .line 471
    .local v4, value:I
    const/4 v8, -0x1

    if-eq v4, v8, :cond_8

    .line 472
    iget-object v8, p0, Lcom/android/settings/wifi/AdvancedWifiSettings;->mFreqBandList:Lcom/htc/preference/HtcListPreference;

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Lcom/htc/preference/HtcListPreference;->setValue(Ljava/lang/String;)V

    .line 478
    .end local v4           #value:I
    :cond_4
    :goto_3
    return-void

    .line 443
    .end local v6           #wifiIpAddressPref:Lcom/htc/preference/HtcPreference;
    :cond_5
    invoke-virtual {v5}, Landroid/net/wifi/WifiInfo;->getMacAddress()Ljava/lang/String;

    move-result-object v3

    goto/16 :goto_0

    .line 444
    .restart local v3       #macAddress:Ljava/lang/String;
    :cond_6
    invoke-virtual {p0}, Lcom/android/settings/wifi/AdvancedWifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v8

    const v9, 0x7f0c0a0d

    invoke-virtual {v8, v9}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v3

    goto/16 :goto_1

    .line 463
    .end local v3           #macAddress:Ljava/lang/String;
    .restart local v6       #wifiIpAddressPref:Lcom/htc/preference/HtcPreference;
    :cond_7
    const/4 v8, 0x0

    goto :goto_2

    .line 474
    .restart local v4       #value:I
    :cond_8
    const-string v8, "AdvancedWifiSettings"

    const-string v9, "Failed to fetch frequency band"

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3
.end method

.method private updateSettingsProvider()V
    .locals 4

    .prologue
    .line 432
    sget-boolean v1, Lcom/android/settings/wifi/AdvancedWifiSettings;->ENABLE_WIFI_OFFLOAD:Z

    if-eqz v1, :cond_0

    .line 433
    invoke-virtual {p0}, Lcom/android/settings/wifi/AdvancedWifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const-string v2, "WIFIOFFLOAD"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/app/Activity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 435
    .local v0, editor:Landroid/content/SharedPreferences$Editor;
    const-string v1, "NEVER_AUTO_TURN_ON"

    iget-object v2, p0, Lcom/android/settings/wifi/AdvancedWifiSettings;->mNeverAutoTurnOnCheckbox:Lcom/htc/preference/HtcCheckBoxPreference;

    invoke-virtual {v2}, Lcom/htc/preference/HtcCheckBoxPreference;->isChecked()Z

    move-result v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 437
    .end local v0           #editor:Landroid/content/SharedPreferences$Editor;
    :cond_0
    return-void
.end method

.method private updateSleepPolicySummary(Lcom/htc/preference/HtcPreference;Ljava/lang/String;)V
    .locals 7
    .parameter "sleepPolicyPref"
    .parameter "value"

    .prologue
    .line 294
    if-eqz p2, :cond_2

    .line 295
    invoke-virtual {p0}, Lcom/android/settings/wifi/AdvancedWifiSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f07001c

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v3

    .line 296
    .local v3, values:[Ljava/lang/String;
    invoke-virtual {p0}, Lcom/android/settings/wifi/AdvancedWifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-static {v4}, Lcom/android/settings/Utils;->isWifiOnly(Landroid/content/Context;)Z

    move-result v4

    if-eqz v4, :cond_0

    const v2, 0x7f07001b

    .line 298
    .local v2, summaryArrayResId:I
    :goto_0
    invoke-virtual {p0}, Lcom/android/settings/wifi/AdvancedWifiSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4, v2}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    .line 299
    .local v1, summaries:[Ljava/lang/String;
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    array-length v4, v3

    if-ge v0, v4, :cond_2

    .line 300
    aget-object v4, v3, v0

    invoke-virtual {p2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 301
    array-length v4, v1

    if-ge v0, v4, :cond_1

    .line 302
    aget-object v4, v1, v0

    invoke-virtual {p1, v4}, Lcom/htc/preference/HtcPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 311
    .end local v0           #i:I
    .end local v1           #summaries:[Ljava/lang/String;
    .end local v2           #summaryArrayResId:I
    .end local v3           #values:[Ljava/lang/String;
    :goto_2
    return-void

    .line 296
    .restart local v3       #values:[Ljava/lang/String;
    :cond_0
    const v2, 0x7f07001a

    goto :goto_0

    .line 299
    .restart local v0       #i:I
    .restart local v1       #summaries:[Ljava/lang/String;
    .restart local v2       #summaryArrayResId:I
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 309
    .end local v0           #i:I
    .end local v1           #summaries:[Ljava/lang/String;
    .end local v2           #summaryArrayResId:I
    .end local v3           #values:[Ljava/lang/String;
    :cond_2
    const-string v4, ""

    invoke-virtual {p1, v4}, Lcom/htc/preference/HtcPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 310
    const-string v4, "AdvancedWifiSettings"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Invalid sleep policy value: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2
.end method

.method private updateUi()V
    .locals 8

    .prologue
    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 396
    invoke-virtual {p0}, Lcom/android/settings/wifi/AdvancedWifiSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 401
    .local v0, contentResolver:Landroid/content/ContentResolver;
    iget-object v7, p0, Lcom/android/settings/wifi/AdvancedWifiSettings;->mPwrActModCheckBox:Lcom/htc/preference/HtcCheckBoxPreference;

    const-string v4, "wifi_pwr_active_mode"

    invoke-static {v0, v4, v6}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    if-eqz v4, :cond_4

    move v4, v5

    :goto_0
    invoke-virtual {v7, v4}, Lcom/htc/preference/HtcCheckBoxPreference;->setChecked(Z)V

    .line 405
    sget-boolean v4, Lcom/android/settings/wifi/AdvancedWifiSettings;->ENABLE_AUTO_DISCONNECT:Z

    if-eqz v4, :cond_0

    .line 407
    iget-object v4, p0, Lcom/android/settings/wifi/AdvancedWifiSettings;->mAutoDisconnCheckBox:Lcom/htc/preference/HtcCheckBoxPreference;

    iget-object v7, p0, Lcom/android/settings/wifi/AdvancedWifiSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v7}, Landroid/net/wifi/WifiManager;->getWifiOffloadEnabled()Z

    move-result v7

    invoke-virtual {v4, v7}, Lcom/htc/preference/HtcCheckBoxPreference;->setChecked(Z)V

    .line 410
    :cond_0
    sget-boolean v4, Lcom/android/settings/wifi/WifiOffloadManager;->isWifiOffloadSupported:Z

    if-eqz v4, :cond_1

    .line 411
    invoke-virtual {p0}, Lcom/android/settings/wifi/AdvancedWifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-static {v4}, Lcom/android/settings/wifi/WifiOffloadManager;->getInstance(Landroid/content/Context;)Lcom/android/settings/wifi/WifiOffloadManager;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/settings/wifi/WifiOffloadManager;->isNeverAutoTurnOn()Z

    move-result v1

    .line 412
    .local v1, neverAutoTurnOn:Z
    iget-object v4, p0, Lcom/android/settings/wifi/AdvancedWifiSettings;->mNeverAutoTurnOnCheckbox:Lcom/htc/preference/HtcCheckBoxPreference;

    invoke-virtual {v4, v1}, Lcom/htc/preference/HtcCheckBoxPreference;->setChecked(Z)V

    .line 415
    .end local v1           #neverAutoTurnOn:Z
    :cond_1
    sget-boolean v4, Lcom/android/settings/wifi/WifiOffloadManager;->isWifiOffloadSupported:Z

    if-eqz v4, :cond_2

    .line 416
    invoke-virtual {p0}, Lcom/android/settings/wifi/AdvancedWifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-static {v4}, Lcom/android/settings/wifi/WifiOffloadManager;->getInstance(Landroid/content/Context;)Lcom/android/settings/wifi/WifiOffloadManager;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/settings/wifi/WifiOffloadManager;->isNotifyOn()Z

    move-result v2

    .line 417
    .local v2, notify:Z
    iget-object v4, p0, Lcom/android/settings/wifi/AdvancedWifiSettings;->mNotifyMeCheckbox:Lcom/htc/preference/HtcCheckBoxPreference;

    if-eqz v4, :cond_2

    .line 418
    iget-object v4, p0, Lcom/android/settings/wifi/AdvancedWifiSettings;->mNotifyMeCheckbox:Lcom/htc/preference/HtcCheckBoxPreference;

    invoke-virtual {v4, v2}, Lcom/htc/preference/HtcCheckBoxPreference;->setChecked(Z)V

    .line 422
    .end local v2           #notify:Z
    :cond_2
    const-string v4, "notify_open_networks"

    invoke-virtual {p0, v4}, Lcom/android/settings/wifi/AdvancedWifiSettings;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v3

    check-cast v3, Lcom/htc/preference/HtcCheckBoxPreference;

    .line 424
    .local v3, notifyOpenNetworks:Lcom/htc/preference/HtcCheckBoxPreference;
    if-eqz v3, :cond_3

    .line 425
    invoke-virtual {p0}, Lcom/android/settings/wifi/AdvancedWifiSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v7, "wifi_networks_available_notification_on"

    invoke-static {v4, v7, v6}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    if-ne v4, v5, :cond_5

    :goto_1
    invoke-virtual {v3, v5}, Lcom/htc/preference/HtcCheckBoxPreference;->setChecked(Z)V

    .line 427
    iget-object v4, p0, Lcom/android/settings/wifi/AdvancedWifiSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v4}, Landroid/net/wifi/WifiManager;->isWifiEnabled()Z

    move-result v4

    invoke-virtual {v3, v4}, Lcom/htc/preference/HtcCheckBoxPreference;->setEnabled(Z)V

    .line 429
    :cond_3
    return-void

    .end local v3           #notifyOpenNetworks:Lcom/htc/preference/HtcCheckBoxPreference;
    :cond_4
    move v4, v6

    .line 401
    goto :goto_0

    .restart local v3       #notifyOpenNetworks:Lcom/htc/preference/HtcCheckBoxPreference;
    :cond_5
    move v5, v6

    .line 425
    goto :goto_1
.end method


# virtual methods
.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 8
    .parameter "savedInstanceState"

    .prologue
    .line 92
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 93
    const-string v5, "wifi"

    invoke-virtual {p0, v5}, Lcom/android/settings/wifi/AdvancedWifiSettings;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/net/wifi/WifiManager;

    iput-object v5, p0, Lcom/android/settings/wifi/AdvancedWifiSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    .line 95
    const-string v5, "parent"

    invoke-virtual {p0, v5}, Lcom/android/settings/wifi/AdvancedWifiSettings;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v1

    check-cast v1, Lcom/htc/preference/HtcPreferenceScreen;

    .line 97
    .local v1, parent:Lcom/htc/preference/HtcPreferenceScreen;
    sget-boolean v5, Lcom/android/settings/wifi/CustomUtil;->ENABLE_C_PLUS_W:Z

    if-nez v5, :cond_0

    .line 98
    const-string v5, "cw_account_info"

    invoke-virtual {p0, v5}, Lcom/android/settings/wifi/AdvancedWifiSettings;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v3

    .line 99
    .local v3, target:Lcom/htc/preference/HtcPreference;
    if-eqz v3, :cond_0

    if-eqz v1, :cond_0

    invoke-virtual {v1, v3}, Lcom/htc/preference/HtcPreferenceScreen;->removePreference(Lcom/htc/preference/HtcPreference;)Z

    .line 102
    .end local v3           #target:Lcom/htc/preference/HtcPreference;
    :cond_0
    const-string v5, "never_auto_turn_on_wifi"

    invoke-virtual {p0, v5}, Lcom/android/settings/wifi/AdvancedWifiSettings;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v5

    check-cast v5, Lcom/htc/preference/HtcCheckBoxPreference;

    iput-object v5, p0, Lcom/android/settings/wifi/AdvancedWifiSettings;->mNeverAutoTurnOnCheckbox:Lcom/htc/preference/HtcCheckBoxPreference;

    .line 103
    sget-boolean v5, Lcom/android/settings/wifi/WifiOffloadManager;->isWifiOffloadSupported:Z

    if-nez v5, :cond_7

    .line 105
    iget-object v5, p0, Lcom/android/settings/wifi/AdvancedWifiSettings;->mNeverAutoTurnOnCheckbox:Lcom/htc/preference/HtcCheckBoxPreference;

    if-eqz v5, :cond_1

    if-eqz v1, :cond_1

    .line 106
    iget-object v5, p0, Lcom/android/settings/wifi/AdvancedWifiSettings;->mNeverAutoTurnOnCheckbox:Lcom/htc/preference/HtcCheckBoxPreference;

    invoke-virtual {v1, v5}, Lcom/htc/preference/HtcPreferenceScreen;->removePreference(Lcom/htc/preference/HtcPreference;)Z

    .line 114
    :cond_1
    :goto_0
    sget-short v5, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v6, 0x63

    if-ne v5, v6, :cond_8

    sget-short v5, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    const/16 v6, 0xd8

    if-ne v5, v6, :cond_8

    .line 117
    const/4 v5, 0x0

    iput-boolean v5, p0, Lcom/android/settings/wifi/AdvancedWifiSettings;->mEnableDlnaAutoIp:Z

    .line 122
    :goto_1
    const-string v5, "wifi_pwr_active_mode"

    invoke-virtual {p0, v5}, Lcom/android/settings/wifi/AdvancedWifiSettings;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v5

    check-cast v5, Lcom/htc/preference/HtcCheckBoxPreference;

    iput-object v5, p0, Lcom/android/settings/wifi/AdvancedWifiSettings;->mPwrActModCheckBox:Lcom/htc/preference/HtcCheckBoxPreference;

    .line 125
    iget-object v5, p0, Lcom/android/settings/wifi/AdvancedWifiSettings;->mPwrActModCheckBox:Lcom/htc/preference/HtcCheckBoxPreference;

    if-eqz v5, :cond_2

    .line 127
    iget-object v5, p0, Lcom/android/settings/wifi/AdvancedWifiSettings;->mPwrActModCheckBox:Lcom/htc/preference/HtcCheckBoxPreference;

    invoke-virtual {v5, p0}, Lcom/htc/preference/HtcCheckBoxPreference;->setOnPreferenceChangeListener(Lcom/htc/preference/HtcPreference$OnPreferenceChangeListener;)V

    .line 140
    :cond_2
    invoke-direct {p0}, Lcom/android/settings/wifi/AdvancedWifiSettings;->initAutoDisConnect()V

    .line 142
    sget-boolean v5, Lcom/android/settings/wifi/AdvancedWifiSettings;->ENABLE_LAN_INFO:Z

    if-nez v5, :cond_3

    .line 144
    const-string v5, "lan_info"

    invoke-virtual {p0, v5}, Lcom/android/settings/wifi/AdvancedWifiSettings;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v3

    .line 146
    .restart local v3       #target:Lcom/htc/preference/HtcPreference;
    if-eqz v3, :cond_3

    if-eqz v1, :cond_3

    .line 148
    invoke-virtual {v1, v3}, Lcom/htc/preference/HtcPreferenceScreen;->removePreference(Lcom/htc/preference/HtcPreference;)Z

    .line 152
    .end local v3           #target:Lcom/htc/preference/HtcPreference;
    :cond_3
    iget-boolean v5, p0, Lcom/android/settings/wifi/AdvancedWifiSettings;->mEnableDlnaAutoIp:Z

    if-eqz v5, :cond_9

    .line 154
    const-string v5, "wifi_dlna_auto_ip"

    invoke-virtual {p0, v5}, Lcom/android/settings/wifi/AdvancedWifiSettings;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v5

    check-cast v5, Lcom/htc/preference/HtcCheckBoxPreference;

    iput-object v5, p0, Lcom/android/settings/wifi/AdvancedWifiSettings;->mWifiDlnaAutoIpCheckBox:Lcom/htc/preference/HtcCheckBoxPreference;

    .line 155
    iget-object v5, p0, Lcom/android/settings/wifi/AdvancedWifiSettings;->mWifiDlnaAutoIpCheckBox:Lcom/htc/preference/HtcCheckBoxPreference;

    if-eqz v5, :cond_4

    .line 157
    iget-object v5, p0, Lcom/android/settings/wifi/AdvancedWifiSettings;->mWifiDlnaAutoIpCheckBox:Lcom/htc/preference/HtcCheckBoxPreference;

    invoke-virtual {v5, p0}, Lcom/htc/preference/HtcCheckBoxPreference;->setOnPreferenceChangeListener(Lcom/htc/preference/HtcPreference$OnPreferenceChangeListener;)V

    .line 174
    :cond_4
    :goto_2
    const-string v5, "frequency_band"

    invoke-virtual {p0, v5}, Lcom/android/settings/wifi/AdvancedWifiSettings;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v5

    check-cast v5, Lcom/htc/preference/HtcListPreference;

    iput-object v5, p0, Lcom/android/settings/wifi/AdvancedWifiSettings;->mFreqBandList:Lcom/htc/preference/HtcListPreference;

    .line 176
    iget-object v5, p0, Lcom/android/settings/wifi/AdvancedWifiSettings;->mFreqBandList:Lcom/htc/preference/HtcListPreference;

    if-eqz v5, :cond_5

    .line 177
    iget-object v5, p0, Lcom/android/settings/wifi/AdvancedWifiSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v5}, Landroid/net/wifi/WifiManager;->isDualBandSupported()Z

    move-result v5

    if-eqz v5, :cond_c

    .line 178
    iget-object v5, p0, Lcom/android/settings/wifi/AdvancedWifiSettings;->mFreqBandList:Lcom/htc/preference/HtcListPreference;

    invoke-virtual {v5, p0}, Lcom/htc/preference/HtcListPreference;->setOnPreferenceChangeListener(Lcom/htc/preference/HtcPreference$OnPreferenceChangeListener;)V

    .line 179
    iget-object v5, p0, Lcom/android/settings/wifi/AdvancedWifiSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v5}, Landroid/net/wifi/WifiManager;->getFrequencyBand()I

    move-result v4

    .line 180
    .local v4, value:I
    const/4 v5, -0x1

    if-eq v4, v5, :cond_b

    .line 181
    iget-object v5, p0, Lcom/android/settings/wifi/AdvancedWifiSettings;->mFreqBandList:Lcom/htc/preference/HtcListPreference;

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/htc/preference/HtcListPreference;->setValue(Ljava/lang/String;)V

    .line 193
    .end local v4           #value:I
    :cond_5
    :goto_3
    const-string v5, "access_condition"

    invoke-virtual {p0, v5}, Lcom/android/settings/wifi/AdvancedWifiSettings;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v2

    check-cast v2, Lcom/htc/preference/HtcListPreference;

    .line 194
    .local v2, pref:Lcom/htc/preference/HtcListPreference;
    sget-boolean v5, Lcom/android/settings/wifi/CustomUtil;->ENABLE_ACCESS_CONDITION:Z

    if-nez v5, :cond_d

    .line 195
    if-eqz v1, :cond_6

    if-eqz v2, :cond_6

    .line 196
    invoke-virtual {v1, v2}, Lcom/htc/preference/HtcPreferenceScreen;->removePreference(Lcom/htc/preference/HtcPreference;)Z

    .line 209
    :cond_6
    :goto_4
    invoke-direct {p0}, Lcom/android/settings/wifi/AdvancedWifiSettings;->initPreferences()V

    .line 210
    return-void

    .line 109
    .end local v2           #pref:Lcom/htc/preference/HtcListPreference;
    :cond_7
    iget-object v5, p0, Lcom/android/settings/wifi/AdvancedWifiSettings;->mNeverAutoTurnOnCheckbox:Lcom/htc/preference/HtcCheckBoxPreference;

    if-eqz v5, :cond_1

    .line 110
    iget-object v5, p0, Lcom/android/settings/wifi/AdvancedWifiSettings;->mNeverAutoTurnOnCheckbox:Lcom/htc/preference/HtcCheckBoxPreference;

    invoke-virtual {v5, p0}, Lcom/htc/preference/HtcCheckBoxPreference;->setOnPreferenceChangeListener(Lcom/htc/preference/HtcPreference$OnPreferenceChangeListener;)V

    goto/16 :goto_0

    .line 119
    :cond_8
    const/4 v5, 0x1

    iput-boolean v5, p0, Lcom/android/settings/wifi/AdvancedWifiSettings;->mEnableDlnaAutoIp:Z

    goto/16 :goto_1

    .line 160
    :cond_9
    const-string v5, "wifi_dlna_setting_titlebar"

    invoke-virtual {p0, v5}, Lcom/android/settings/wifi/AdvancedWifiSettings;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v3

    check-cast v3, Lcom/htc/preference/HtcPreferenceCategory;

    .line 162
    .local v3, target:Lcom/htc/preference/HtcPreferenceCategory;
    if-eqz v3, :cond_a

    if-eqz v1, :cond_a

    .line 164
    invoke-virtual {v1, v3}, Lcom/htc/preference/HtcPreferenceScreen;->removePreference(Lcom/htc/preference/HtcPreference;)Z

    .line 166
    :cond_a
    const-string v5, "wifi_dlna_auto_ip"

    invoke-virtual {p0, v5}, Lcom/android/settings/wifi/AdvancedWifiSettings;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v0

    check-cast v0, Lcom/htc/preference/HtcCheckBoxPreference;

    .line 168
    .local v0, dlnaCheckBox:Lcom/htc/preference/HtcCheckBoxPreference;
    if-eqz v0, :cond_4

    if-eqz v1, :cond_4

    .line 170
    invoke-virtual {v1, v0}, Lcom/htc/preference/HtcPreferenceScreen;->removePreference(Lcom/htc/preference/HtcPreference;)Z

    goto :goto_2

    .line 183
    .end local v0           #dlnaCheckBox:Lcom/htc/preference/HtcCheckBoxPreference;
    .end local v3           #target:Lcom/htc/preference/HtcPreferenceCategory;
    .restart local v4       #value:I
    :cond_b
    const-string v5, "AdvancedWifiSettings"

    const-string v6, "Failed to fetch frequency band"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    .line 186
    .end local v4           #value:I
    :cond_c
    if-eqz v1, :cond_5

    .line 187
    iget-object v5, p0, Lcom/android/settings/wifi/AdvancedWifiSettings;->mFreqBandList:Lcom/htc/preference/HtcListPreference;

    invoke-virtual {v1, v5}, Lcom/htc/preference/HtcPreferenceScreen;->removePreference(Lcom/htc/preference/HtcPreference;)Z

    goto :goto_3

    .line 199
    .restart local v2       #pref:Lcom/htc/preference/HtcListPreference;
    :cond_d
    if-eqz v2, :cond_6

    .line 200
    invoke-virtual {v2, p0}, Lcom/htc/preference/HtcListPreference;->setOnPreferenceChangeListener(Lcom/htc/preference/HtcPreference$OnPreferenceChangeListener;)V

    .line 202
    iget-object v5, p0, Lcom/android/settings/wifi/AdvancedWifiSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v5}, Landroid/net/wifi/WifiManager;->getConnectionPolicyEnabled()Z

    move-result v4

    .line 203
    .local v4, value:Z
    const-string v5, "AdvancedWifiSettings"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, " value = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-static {v4}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 204
    invoke-static {v4}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Lcom/htc/preference/HtcListPreference;->setValue(Ljava/lang/String;)V

    .line 205
    invoke-virtual {v2}, Lcom/htc/preference/HtcListPreference;->getEntry()Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {v2, v5}, Lcom/htc/preference/HtcListPreference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_4
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1
    .parameter "savedInstanceState"

    .prologue
    .line 86
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 87
    const v0, 0x7f050048

    invoke-virtual {p0, v0}, Lcom/android/settings/wifi/AdvancedWifiSettings;->addPreferencesFromResource(I)V

    .line 88
    return-void
.end method

.method public onDestroyView()V
    .locals 0

    .prologue
    .line 288
    invoke-direct {p0}, Lcom/android/settings/wifi/AdvancedWifiSettings;->updateSettingsProvider()V

    .line 290
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onDestroyView()V

    .line 291
    return-void
.end method

.method public onPreferenceChange(Lcom/htc/preference/HtcPreference;Ljava/lang/Object;)Z
    .locals 14
    .parameter "preference"
    .parameter "newValue"

    .prologue
    const/4 v10, 0x1

    const/4 v11, 0x0

    .line 333
    invoke-virtual {p1}, Lcom/htc/preference/HtcPreference;->getKey()Ljava/lang/String;

    move-result-object v3

    .line 335
    .local v3, key:Ljava/lang/String;
    const-string v9, "frequency_band"

    invoke-virtual {v9, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_2

    .line 337
    :try_start_0
    iget-object v9, p0, Lcom/android/settings/wifi/AdvancedWifiSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    check-cast p2, Ljava/lang/String;

    .end local p2
    invoke-static/range {p2 .. p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v12

    const/4 v13, 0x1

    invoke-virtual {v9, v12, v13}, Landroid/net/wifi/WifiManager;->setFrequencyBand(IZ)V
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    move v11, v10

    .line 392
    :cond_1
    :goto_1
    return v11

    .line 338
    :catch_0
    move-exception v1

    .line 339
    .local v1, e:Ljava/lang/NumberFormatException;
    invoke-virtual {p0}, Lcom/android/settings/wifi/AdvancedWifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v9

    const v10, 0x7f0c0957

    invoke-static {v9, v10, v11}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v9

    invoke-virtual {v9}, Landroid/widget/Toast;->show()V

    goto :goto_1

    .line 343
    .end local v1           #e:Ljava/lang/NumberFormatException;
    .restart local p2
    :cond_2
    const-string v9, "sleep_policy"

    invoke-virtual {v9, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_3

    .line 345
    :try_start_1
    move-object/from16 v0, p2

    check-cast v0, Ljava/lang/String;

    move-object v7, v0

    .line 346
    .local v7, stringValue:Ljava/lang/String;
    invoke-virtual {p0}, Lcom/android/settings/wifi/AdvancedWifiSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    const-string v12, "wifi_sleep_policy"

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v13

    invoke-static {v9, v12, v13}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 348
    invoke-direct {p0, p1, v7}, Lcom/android/settings/wifi/AdvancedWifiSettings;->updateSleepPolicySummary(Lcom/htc/preference/HtcPreference;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 349
    .end local v7           #stringValue:Ljava/lang/String;
    :catch_1
    move-exception v1

    .line 350
    .restart local v1       #e:Ljava/lang/NumberFormatException;
    invoke-virtual {p0}, Lcom/android/settings/wifi/AdvancedWifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v9

    const v10, 0x7f0c0915

    invoke-static {v9, v10, v11}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v9

    invoke-virtual {v9}, Landroid/widget/Toast;->show()V

    goto :goto_1

    .line 354
    .end local v1           #e:Ljava/lang/NumberFormatException;
    :cond_3
    const-string v9, "wifi_pwr_active_mode"

    invoke-virtual {v3, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_4

    .line 355
    check-cast p2, Ljava/lang/Boolean;

    .end local p2
    invoke-virtual/range {p2 .. p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v8

    .line 356
    .local v8, value:Z
    iget-object v9, p0, Lcom/android/settings/wifi/AdvancedWifiSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v9, v8}, Landroid/net/wifi/WifiManager;->enablePowerActiveMode(Z)Z

    goto :goto_0

    .line 358
    .end local v8           #value:Z
    .restart local p2
    :cond_4
    sget-boolean v9, Lcom/android/settings/wifi/AdvancedWifiSettings;->ENABLE_AUTO_DISCONNECT:Z

    if-eqz v9, :cond_5

    const-string v9, "auto_disconnect"

    invoke-virtual {v3, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_5

    .line 359
    check-cast p2, Ljava/lang/Boolean;

    .end local p2
    invoke-virtual/range {p2 .. p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v8

    .line 360
    .restart local v8       #value:Z
    iget-object v9, p0, Lcom/android/settings/wifi/AdvancedWifiSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v9, v8}, Landroid/net/wifi/WifiManager;->setWifiOffloadEnabled(Z)Z

    goto :goto_0

    .line 362
    .end local v8           #value:Z
    .restart local p2
    :cond_5
    iget-boolean v9, p0, Lcom/android/settings/wifi/AdvancedWifiSettings;->mEnableDlnaAutoIp:Z

    if-eqz v9, :cond_7

    const-string v9, "wifi_dlna_auto_ip"

    invoke-virtual {v3, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_7

    .line 363
    check-cast p2, Ljava/lang/Boolean;

    .end local p2
    invoke-virtual/range {p2 .. p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v8

    .line 365
    .restart local v8       #value:Z
    iget-object v9, p0, Lcom/android/settings/wifi/AdvancedWifiSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    if-eqz v9, :cond_0

    iget-object v12, p0, Lcom/android/settings/wifi/AdvancedWifiSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    if-eqz v8, :cond_6

    move v9, v10

    :goto_2
    invoke-virtual {v12, v9}, Landroid/net/wifi/WifiManager;->enableAutoIP(I)Z

    goto/16 :goto_0

    :cond_6
    move v9, v11

    goto :goto_2

    .line 366
    .end local v8           #value:Z
    .restart local p2
    :cond_7
    const-string v9, "never_auto_turn_on_wifi"

    invoke-virtual {v9, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_8

    .line 367
    check-cast p2, Ljava/lang/Boolean;

    .end local p2
    invoke-virtual/range {p2 .. p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    .line 368
    .local v5, neverAutoTurnOn:Z
    invoke-virtual {p0}, Lcom/android/settings/wifi/AdvancedWifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v9

    invoke-static {v9}, Lcom/android/settings/wifi/WifiOffloadManager;->getInstance(Landroid/content/Context;)Lcom/android/settings/wifi/WifiOffloadManager;

    move-result-object v9

    invoke-virtual {v9, v5}, Lcom/android/settings/wifi/WifiOffloadManager;->persistNeverAutoTurnOn(Z)V

    .line 369
    iget-object v9, p0, Lcom/android/settings/wifi/AdvancedWifiSettings;->mNeverAutoTurnOnCheckbox:Lcom/htc/preference/HtcCheckBoxPreference;

    invoke-virtual {v9, v5}, Lcom/htc/preference/HtcCheckBoxPreference;->setChecked(Z)V

    goto/16 :goto_0

    .line 371
    .end local v5           #neverAutoTurnOn:Z
    .restart local p2
    :cond_8
    const-string v9, "notify_me"

    invoke-virtual {v9, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_9

    .line 372
    check-cast p2, Ljava/lang/Boolean;

    .end local p2
    invoke-virtual/range {p2 .. p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    .line 373
    .local v6, notify:Z
    invoke-virtual {p0}, Lcom/android/settings/wifi/AdvancedWifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v9

    invoke-static {v9}, Lcom/android/settings/wifi/WifiOffloadManager;->getInstance(Landroid/content/Context;)Lcom/android/settings/wifi/WifiOffloadManager;

    move-result-object v9

    invoke-virtual {v9, v6}, Lcom/android/settings/wifi/WifiOffloadManager;->persistNotifyOn(Z)V

    .line 374
    if-eqz v6, :cond_0

    .line 375
    invoke-virtual {p0}, Lcom/android/settings/wifi/AdvancedWifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v9

    invoke-static {v9}, Lcom/android/settings/wifi/WifiOffloadManager;->getInstance(Landroid/content/Context;)Lcom/android/settings/wifi/WifiOffloadManager;

    move-result-object v9

    const-wide/16 v11, 0x0

    invoke-virtual {v9, v11, v12}, Lcom/android/settings/wifi/WifiOffloadManager;->persistWifiOffloadPauseTime(J)V

    goto/16 :goto_0

    .line 377
    .end local v6           #notify:Z
    .restart local p2
    :cond_9
    const-string v9, "access_condition"

    invoke-virtual {v3, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_0

    move-object/from16 v9, p2

    .line 378
    check-cast v9, Ljava/lang/String;

    invoke-static {v9}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v8

    .line 379
    .restart local v8       #value:Z
    const-string v9, "AdvancedWifiSettings"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, " newValue = "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v9, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 381
    iget-object v9, p0, Lcom/android/settings/wifi/AdvancedWifiSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v9, v8}, Landroid/net/wifi/WifiManager;->setConnectionPolicyEnabled(Z)Z

    move-result v9

    if-eqz v9, :cond_1

    move-object v4, p1

    .line 382
    check-cast v4, Lcom/htc/preference/HtcListPreference;

    .line 383
    .local v4, listPref:Lcom/htc/preference/HtcListPreference;
    check-cast p2, Ljava/lang/String;

    .end local p2
    move-object/from16 v0, p2

    invoke-virtual {v4, v0}, Lcom/htc/preference/HtcListPreference;->findIndexOfValue(Ljava/lang/String;)I

    move-result v2

    .line 384
    .local v2, index:I
    const/4 v9, -0x1

    if-eq v2, v9, :cond_0

    .line 385
    invoke-virtual {v4}, Lcom/htc/preference/HtcListPreference;->getEntries()[Ljava/lang/CharSequence;

    move-result-object v9

    aget-object v9, v9, v2

    invoke-virtual {v4, v9}, Lcom/htc/preference/HtcListPreference;->setSummary(Ljava/lang/CharSequence;)V

    goto/16 :goto_0
.end method

.method public onPreferenceTreeClick(Lcom/htc/preference/HtcPreferenceScreen;Lcom/htc/preference/HtcPreference;)Z
    .locals 6
    .parameter "screen"
    .parameter "preference"

    .prologue
    const/4 v1, 0x0

    const/4 v2, 0x1

    .line 315
    invoke-virtual {p2}, Lcom/htc/preference/HtcPreference;->getKey()Ljava/lang/String;

    move-result-object v0

    .line 317
    .local v0, key:Ljava/lang/String;
    const-string v3, "notify_open_networks"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 318
    invoke-virtual {p0}, Lcom/android/settings/wifi/AdvancedWifiSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "wifi_networks_available_notification_on"

    check-cast p2, Lcom/htc/preference/HtcCheckBoxPreference;

    .end local p2
    invoke-virtual {p2}, Lcom/htc/preference/HtcCheckBoxPreference;->isChecked()Z

    move-result v5

    if-eqz v5, :cond_0

    move v1, v2

    :cond_0
    invoke-static {v3, v4, v1}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 328
    :goto_0
    return v2

    .line 321
    .restart local p2
    :cond_1
    const-string v3, "wifi_enable_watchdog_service"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 322
    invoke-virtual {p0}, Lcom/android/settings/wifi/AdvancedWifiSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "wifi_watchdog_on"

    check-cast p2, Lcom/htc/preference/HtcCheckBoxPreference;

    .end local p2
    invoke-virtual {p2}, Lcom/htc/preference/HtcCheckBoxPreference;->isChecked()Z

    move-result v5

    if-eqz v5, :cond_2

    move v1, v2

    :cond_2
    invoke-static {v3, v4, v1}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_0

    .line 326
    .restart local p2
    :cond_3
    invoke-super {p0, p1, p2}, Lcom/android/settings/SettingsPreferenceFragment;->onPreferenceTreeClick(Lcom/htc/preference/HtcPreferenceScreen;Lcom/htc/preference/HtcPreference;)Z

    move-result v2

    goto :goto_0
.end method

.method public onResume()V
    .locals 0

    .prologue
    .line 214
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onResume()V

    .line 215
    invoke-direct {p0}, Lcom/android/settings/wifi/AdvancedWifiSettings;->updateUi()V

    .line 216
    invoke-direct {p0}, Lcom/android/settings/wifi/AdvancedWifiSettings;->refreshWifiInfo()V

    .line 217
    return-void
.end method
