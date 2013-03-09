.class public Lcom/android/settings/framework/activity/powersaver/SmartSynServiceReceiver;
.super Landroid/content/BroadcastReceiver;
.source "SmartSynServiceReceiver.java"


# static fields
.field private static ASATTEST:Landroid/app/PendingIntent; = null

.field private static ASOPTEST:Landroid/app/PendingIntent; = null

.field public static final HTCPREF_SMARTSYNC_ENABLE:Ljava/lang/String; = "sleep_mode_mode"

.field private static final HTC_DEBUG:Z = false

#the value of this static final field might be set in the static constructor
.field private static final IS_ORANGE_UK:Z = false

.field public static final KEY_DATA_CONNECTION_35:Ljava/lang/String; = "powersaver_dataconnection"

.field public static final KEY_ENABLE_POWERSAVER:Ljava/lang/String; = "powersaver_enable"

.field private static SmartSynServiceRunning:Z

.field private static UpdateGoldenTable:Landroid/app/PendingIntent;


# instance fields
.field private ALARM_FRAMEWORK_BROADCAST_ACTION_QUICKBOOT_POWEROFF:Ljava/lang/String;

.field private ALARM_FRAMEWORK_BROADCAST_ACTION_SCREEN_OFF:Ljava/lang/String;

.field private ALARM_FRAMEWORK_BROADCAST_ACTION_SCREEN_ON:Ljava/lang/String;

.field private AP_REQUEST_POWER_SLEEP_MODE_START:Ljava/lang/String;

.field private AP_REQUEST_POWER_SLEEP_MODE_STOP:Ljava/lang/String;

.field private DEFAULT_SLEEP_MODE:I

.field private POWERSAVERMODE_TURN_OFF_MOBILE:Ljava/lang/String;

.field private POWERSAVERMODE_TURN_OFF_MOBILE_RETRY:Ljava/lang/String;

.field private POWERSAVERMODE_TURN_OFF_WIFI:Ljava/lang/String;

.field private POWERSAVERMODE_TURN_OFF_WIFI_RETRY:Ljava/lang/String;

.field private POWERSAVERMODE_TURN_ON_MOBILE:Ljava/lang/String;

.field private POWERSAVERMODE_TURN_ON_WIFI:Ljava/lang/String;

.field private SMARTSYNC_BROADCAST_SMARTSYNCSERVICE_QUICKBOOT_POWERON:Ljava/lang/String;

.field private SMARTSYNC_BROADCAST_SMARTSYNCSERVICE_START:Ljava/lang/String;

.field private SMARTSYNC_SERVICE_BROADCAST_QUICKBOOT_POWEROFF:Ljava/lang/String;

.field private SMARTSYNC_SERVICE_BROADCAST_SCREEN_OFF:Ljava/lang/String;

.field private SMARTSYNC_SERVICE_BROADCAST_SCREEN_OFF_TIME:Ljava/lang/String;

.field private SMARTSYNC_SERVICE_BROADCAST_SCREEN_ON:Ljava/lang/String;

.field private SMARTSYNC_SERVICE_BROADCAST_SERVICE_RUNNING:Ljava/lang/String;

.field private SMARTSYNC_SERVICE_BROADCAST_SERVICE_STOPING:Ljava/lang/String;

.field private SMARTSYNC_SERVICE_BROADCAST_UPDATE_GOLDEN_TABLE:Ljava/lang/String;

.field private TAG:Ljava/lang/String;

.field private mNewPower35:Z

.field private mPowerSaverSharedpref:Landroid/content/SharedPreferences;

.field private mSmartSyncSharedpref:Landroid/content/SharedPreferences;

.field private mWiFiManager:Landroid/net/wifi/WifiManager;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v0, 0x0

    const/4 v3, 0x0

    .line 29
    sput-boolean v0, Lcom/android/settings/framework/activity/powersaver/SmartSynServiceReceiver;->SmartSynServiceRunning:Z

    .line 33
    sput-object v3, Lcom/android/settings/framework/activity/powersaver/SmartSynServiceReceiver;->UpdateGoldenTable:Landroid/app/PendingIntent;

    .line 52
    sget-short v1, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v2, 0x7e

    if-ne v1, v2, :cond_0

    sget-short v1, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    const/16 v2, 0x71

    if-ne v1, v2, :cond_0

    sget-short v1, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_LANGUAGE_flag:S

    const/16 v2, 0x8

    if-ne v1, v2, :cond_0

    const/4 v0, 0x1

    :cond_0
    sput-boolean v0, Lcom/android/settings/framework/activity/powersaver/SmartSynServiceReceiver;->IS_ORANGE_UK:Z

    .line 71
    sput-object v3, Lcom/android/settings/framework/activity/powersaver/SmartSynServiceReceiver;->ASOPTEST:Landroid/app/PendingIntent;

    .line 72
    sput-object v3, Lcom/android/settings/framework/activity/powersaver/SmartSynServiceReceiver;->ASATTEST:Landroid/app/PendingIntent;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 26
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 27
    const-string v0, "SmartSynServiceReceiver"

    iput-object v0, p0, Lcom/android/settings/framework/activity/powersaver/SmartSynServiceReceiver;->TAG:Ljava/lang/String;

    .line 35
    const-string v0, "SMARTSYNC_SERVICE_BROADCAST_SERVICE_RUNNING"

    iput-object v0, p0, Lcom/android/settings/framework/activity/powersaver/SmartSynServiceReceiver;->SMARTSYNC_SERVICE_BROADCAST_SERVICE_RUNNING:Ljava/lang/String;

    .line 36
    const-string v0, "SMARTSYNC_SERVICE_BROADCAST_SERVICE_STOPING"

    iput-object v0, p0, Lcom/android/settings/framework/activity/powersaver/SmartSynServiceReceiver;->SMARTSYNC_SERVICE_BROADCAST_SERVICE_STOPING:Ljava/lang/String;

    .line 37
    const-string v0, "SMARTSYNC_BROADCAST_SMARTSYNCSERVICE_QUICKBOOT_POWERON"

    iput-object v0, p0, Lcom/android/settings/framework/activity/powersaver/SmartSynServiceReceiver;->SMARTSYNC_BROADCAST_SMARTSYNCSERVICE_QUICKBOOT_POWERON:Ljava/lang/String;

    .line 38
    const-string v0, "SMARTSYNC_SERVICE_BROADCAST_UPDATE_GOLDEN_TABLE"

    iput-object v0, p0, Lcom/android/settings/framework/activity/powersaver/SmartSynServiceReceiver;->SMARTSYNC_SERVICE_BROADCAST_UPDATE_GOLDEN_TABLE:Ljava/lang/String;

    .line 39
    const-string v0, "SMARTSYNC_BROADCAST_SMARTSYNCSERVICE_START"

    iput-object v0, p0, Lcom/android/settings/framework/activity/powersaver/SmartSynServiceReceiver;->SMARTSYNC_BROADCAST_SMARTSYNCSERVICE_START:Ljava/lang/String;

    .line 41
    const-string v0, "ALARM_FRAMEWORK_BROADCAST_ACTION_SCREEN_OFF"

    iput-object v0, p0, Lcom/android/settings/framework/activity/powersaver/SmartSynServiceReceiver;->ALARM_FRAMEWORK_BROADCAST_ACTION_SCREEN_OFF:Ljava/lang/String;

    .line 42
    const-string v0, "ALARM_FRAMEWORK_BROADCAST_ACTION_SCREEN_ON"

    iput-object v0, p0, Lcom/android/settings/framework/activity/powersaver/SmartSynServiceReceiver;->ALARM_FRAMEWORK_BROADCAST_ACTION_SCREEN_ON:Ljava/lang/String;

    .line 43
    const-string v0, "SMARTSYNC_SERVICE_BROADCAST_SCREEN_ON"

    iput-object v0, p0, Lcom/android/settings/framework/activity/powersaver/SmartSynServiceReceiver;->SMARTSYNC_SERVICE_BROADCAST_SCREEN_ON:Ljava/lang/String;

    .line 44
    const-string v0, "SMARTSYNC_SERVICE_BROADCAST_SCREEN_OFF"

    iput-object v0, p0, Lcom/android/settings/framework/activity/powersaver/SmartSynServiceReceiver;->SMARTSYNC_SERVICE_BROADCAST_SCREEN_OFF:Ljava/lang/String;

    .line 45
    const-string v0, "ALARM_FRAMEWORK_BROADCAST_ACTION_QUICKBOOT_POWEROFF"

    iput-object v0, p0, Lcom/android/settings/framework/activity/powersaver/SmartSynServiceReceiver;->ALARM_FRAMEWORK_BROADCAST_ACTION_QUICKBOOT_POWEROFF:Ljava/lang/String;

    .line 46
    const-string v0, "SMARTSYNC_SERVICE_BROADCAST_QUICKBOOT_POWEROFF"

    iput-object v0, p0, Lcom/android/settings/framework/activity/powersaver/SmartSynServiceReceiver;->SMARTSYNC_SERVICE_BROADCAST_QUICKBOOT_POWEROFF:Ljava/lang/String;

    .line 48
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings/framework/activity/powersaver/SmartSynServiceReceiver;->mSmartSyncSharedpref:Landroid/content/SharedPreferences;

    .line 56
    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v2, 0x3e

    if-eq v0, v2, :cond_0

    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v2, 0xad

    if-eq v0, v2, :cond_0

    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v2, 0x8a

    if-eq v0, v2, :cond_0

    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v2, 0xf

    if-eq v0, v2, :cond_0

    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v2, 0x7b

    if-eq v0, v2, :cond_0

    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v2, 0x88

    if-eq v0, v2, :cond_0

    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v2, 0x89

    if-eq v0, v2, :cond_0

    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v2, 0x9e

    if-eq v0, v2, :cond_0

    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v2, 0x2a

    if-eq v0, v2, :cond_0

    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v2, 0x7d

    if-ne v0, v2, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lcom/android/settings/framework/activity/powersaver/SmartSynServiceReceiver;->mNewPower35:Z

    .line 67
    iput v1, p0, Lcom/android/settings/framework/activity/powersaver/SmartSynServiceReceiver;->DEFAULT_SLEEP_MODE:I

    .line 69
    const-string v0, "AP_REQUEST_POWER_SLEEP_MODE_STOP"

    iput-object v0, p0, Lcom/android/settings/framework/activity/powersaver/SmartSynServiceReceiver;->AP_REQUEST_POWER_SLEEP_MODE_STOP:Ljava/lang/String;

    .line 70
    const-string v0, "AP_REQUEST_POWER_SLEEP_MODE_START"

    iput-object v0, p0, Lcom/android/settings/framework/activity/powersaver/SmartSynServiceReceiver;->AP_REQUEST_POWER_SLEEP_MODE_START:Ljava/lang/String;

    .line 73
    const-string v0, "POWERSAVERMODE_TURN_OFF_WIFI"

    iput-object v0, p0, Lcom/android/settings/framework/activity/powersaver/SmartSynServiceReceiver;->POWERSAVERMODE_TURN_OFF_WIFI:Ljava/lang/String;

    .line 74
    const-string v0, "POWERSAVERMODE_TURN_OFF_MOBILE"

    iput-object v0, p0, Lcom/android/settings/framework/activity/powersaver/SmartSynServiceReceiver;->POWERSAVERMODE_TURN_OFF_MOBILE:Ljava/lang/String;

    .line 75
    const-string v0, "POWERSAVERMODE_TURN_ON_WIFI"

    iput-object v0, p0, Lcom/android/settings/framework/activity/powersaver/SmartSynServiceReceiver;->POWERSAVERMODE_TURN_ON_WIFI:Ljava/lang/String;

    .line 76
    const-string v0, "POWERSAVERMODE_TURN_ON_MOBILE"

    iput-object v0, p0, Lcom/android/settings/framework/activity/powersaver/SmartSynServiceReceiver;->POWERSAVERMODE_TURN_ON_MOBILE:Ljava/lang/String;

    .line 78
    const-string v0, "POWERSAVERMODE_TURN_OFF_WIFI_RETRY"

    iput-object v0, p0, Lcom/android/settings/framework/activity/powersaver/SmartSynServiceReceiver;->POWERSAVERMODE_TURN_OFF_WIFI_RETRY:Ljava/lang/String;

    .line 79
    const-string v0, "POWERSAVERMODE_TURN_OFF_MOBILE_RETRY"

    iput-object v0, p0, Lcom/android/settings/framework/activity/powersaver/SmartSynServiceReceiver;->POWERSAVERMODE_TURN_OFF_MOBILE_RETRY:Ljava/lang/String;

    .line 80
    const-string v0, "SMARTSYNC_SERVICE_BROADCAST_SCREEN_OFF_TIME"

    iput-object v0, p0, Lcom/android/settings/framework/activity/powersaver/SmartSynServiceReceiver;->SMARTSYNC_SERVICE_BROADCAST_SCREEN_OFF_TIME:Ljava/lang/String;

    return-void

    :cond_1
    move v0, v1

    .line 56
    goto :goto_0
.end method

.method private CheckRollBack(Landroid/content/Context;)V
    .locals 11
    .parameter "context"

    .prologue
    const/4 v10, 0x0

    const/4 v9, 0x1

    .line 402
    const-string v7, "SMARTSYNC_SHARED"

    invoke-virtual {p1, v7, v10}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v7

    iput-object v7, p0, Lcom/android/settings/framework/activity/powersaver/SmartSynServiceReceiver;->mSmartSyncSharedpref:Landroid/content/SharedPreferences;

    .line 403
    iget-object v7, p0, Lcom/android/settings/framework/activity/powersaver/SmartSynServiceReceiver;->mSmartSyncSharedpref:Landroid/content/SharedPreferences;

    const-string v8, "PREF_ENTER_POWER_SLEEP_STATES"

    invoke-interface {v7, v8, v10}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    .line 404
    .local v2, Sleep_Mode_States:Z
    if-ne v2, v9, :cond_2

    .line 407
    iget-object v7, p0, Lcom/android/settings/framework/activity/powersaver/SmartSynServiceReceiver;->mSmartSyncSharedpref:Landroid/content/SharedPreferences;

    const-string v8, "PREF_MOBILE_STATES"

    invoke-interface {v7, v8, v9}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    .line 410
    .local v1, Mobile_States:Z
    iget-object v7, p0, Lcom/android/settings/framework/activity/powersaver/SmartSynServiceReceiver;->mSmartSyncSharedpref:Landroid/content/SharedPreferences;

    const-string v8, "PREF_WIFI_STATES"

    invoke-interface {v7, v8, v9}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    .line 413
    .local v3, Wifi_States:Z
    iget-object v7, p0, Lcom/android/settings/framework/activity/powersaver/SmartSynServiceReceiver;->mSmartSyncSharedpref:Landroid/content/SharedPreferences;

    const-string v8, "PREF_AUTO_SYNC_STATES"

    invoke-interface {v7, v8, v9}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 420
    .local v0, Auto_Sync_States:Z
    const-string v7, "wifi"

    invoke-virtual {p1, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/net/wifi/WifiManager;

    iput-object v7, p0, Lcom/android/settings/framework/activity/powersaver/SmartSynServiceReceiver;->mWiFiManager:Landroid/net/wifi/WifiManager;

    .line 421
    iget-object v7, p0, Lcom/android/settings/framework/activity/powersaver/SmartSynServiceReceiver;->mWiFiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v7}, Landroid/net/wifi/WifiManager;->isWifiEnabled()Z

    move-result v6

    .line 422
    .local v6, mWifiState:Z
    if-eq v6, v3, :cond_0

    .line 426
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    const-string v8, "smartsync_turn_off_wifi"

    invoke-static {v7, v8, v9}, Lcom/htc/wrap/android/provider/HtcWrapSettings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v7

    if-ne v7, v9, :cond_0

    .line 427
    iget-object v7, p0, Lcom/android/settings/framework/activity/powersaver/SmartSynServiceReceiver;->mWiFiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v7, v3}, Landroid/net/wifi/WifiManager;->setWifiEnabled(Z)Z

    .line 435
    :cond_0
    const-string v7, "connectivity"

    invoke-virtual {p1, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/net/ConnectivityManager;

    .line 436
    .local v4, mConnetManager:Landroid/net/ConnectivityManager;
    invoke-virtual {v4}, Landroid/net/ConnectivityManager;->getMobileDataEnabled()Z

    move-result v5

    .line 437
    .local v5, mMobileStates:Z
    if-eq v5, v1, :cond_1

    .line 439
    invoke-virtual {v4, v1}, Landroid/net/ConnectivityManager;->setMobileDataEnabled(Z)V

    .line 456
    :cond_1
    iget-object v7, p0, Lcom/android/settings/framework/activity/powersaver/SmartSynServiceReceiver;->mSmartSyncSharedpref:Landroid/content/SharedPreferences;

    invoke-interface {v7}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v7

    const-string v8, "PREF_ENTER_POWER_SLEEP_STATES"

    invoke-interface {v7, v8, v10}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v7

    invoke-interface {v7}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 460
    .end local v0           #Auto_Sync_States:Z
    .end local v1           #Mobile_States:Z
    .end local v3           #Wifi_States:Z
    .end local v4           #mConnetManager:Landroid/net/ConnectivityManager;
    .end local v5           #mMobileStates:Z
    .end local v6           #mWifiState:Z
    :cond_2
    return-void
.end method

.method static calculateAlarm(II)Ljava/util/Calendar;
    .locals 9
    .parameter "hour"
    .parameter "minute"

    .prologue
    const/16 v8, 0xc

    const/16 v7, 0xb

    const/4 v6, 0x0

    .line 509
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 510
    .local v0, c:Ljava/util/Calendar;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-virtual {v0, v4, v5}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 512
    invoke-virtual {v0, v7}, Ljava/util/Calendar;->get(I)I

    move-result v1

    .line 513
    .local v1, nowHour:I
    invoke-virtual {v0, v8}, Ljava/util/Calendar;->get(I)I

    move-result v2

    .line 515
    .local v2, nowMinute:I
    const/4 v4, 0x7

    invoke-virtual {v0, v4}, Ljava/util/Calendar;->get(I)I

    move-result v3

    .line 518
    .local v3, nowdayofweek:I
    if-lt p0, v1, :cond_0

    if-ne p0, v1, :cond_1

    if-gt p1, v2, :cond_1

    .line 520
    :cond_0
    const/4 v4, 0x6

    const/4 v5, 0x1

    invoke-virtual {v0, v4, v5}, Ljava/util/Calendar;->add(II)V

    .line 523
    :cond_1
    invoke-virtual {v0, v7, p0}, Ljava/util/Calendar;->set(II)V

    .line 524
    invoke-virtual {v0, v8, p1}, Ljava/util/Calendar;->set(II)V

    .line 525
    const/16 v4, 0xd

    invoke-virtual {v0, v4, v6}, Ljava/util/Calendar;->set(II)V

    .line 526
    const/16 v4, 0xe

    invoke-virtual {v0, v4, v6}, Ljava/util/Calendar;->set(II)V

    .line 528
    return-object v0
.end method

.method private startAllDaySleepMode(Landroid/content/Context;)V
    .locals 6
    .parameter "context"

    .prologue
    const/4 v5, 0x1

    .line 377
    iget-object v2, p0, Lcom/android/settings/framework/activity/powersaver/SmartSynServiceReceiver;->mSmartSyncSharedpref:Landroid/content/SharedPreferences;

    const-string v3, "PREF_POWER_SLEEP_MODE"

    const/4 v4, 0x0

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    sput-boolean v2, Lcom/android/settings/framework/activity/powersaver/SmartSynServiceReceiver;->SmartSynServiceRunning:Z

    .line 378
    sget-boolean v2, Lcom/android/settings/framework/activity/powersaver/SmartSynServiceReceiver;->SmartSynServiceRunning:Z

    if-nez v2, :cond_0

    .line 380
    invoke-direct {p0, p1}, Lcom/android/settings/framework/activity/powersaver/SmartSynServiceReceiver;->startService(Landroid/content/Context;)V

    .line 381
    iget-object v2, p0, Lcom/android/settings/framework/activity/powersaver/SmartSynServiceReceiver;->mSmartSyncSharedpref:Landroid/content/SharedPreferences;

    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    const-string v3, "PREF_POWER_SLEEP_MODE"

    invoke-interface {v2, v3, v5}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 387
    :cond_0
    iget-object v2, p0, Lcom/android/settings/framework/activity/powersaver/SmartSynServiceReceiver;->mSmartSyncSharedpref:Landroid/content/SharedPreferences;

    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    const-string v3, "PREF_NEW_POWER_SAVER_MODE_ENABLE"

    invoke-interface {v2, v3, v5}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 388
    iget-object v2, p0, Lcom/android/settings/framework/activity/powersaver/SmartSynServiceReceiver;->TAG:Ljava/lang/String;

    const-string v3, "PREF_NEW_POWER_SAVER_MODE_ENABLE enable"

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 390
    const-string v2, "power"

    invoke-virtual {p1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/PowerManager;

    .line 391
    .local v1, pm:Landroid/os/PowerManager;
    invoke-virtual {v1}, Landroid/os/PowerManager;->isScreenOn()Z

    move-result v2

    if-nez v2, :cond_1

    .line 393
    new-instance v0, Landroid/content/Intent;

    iget-object v2, p0, Lcom/android/settings/framework/activity/powersaver/SmartSynServiceReceiver;->ALARM_FRAMEWORK_BROADCAST_ACTION_SCREEN_OFF:Ljava/lang/String;

    const/4 v3, 0x0

    const-class v4, Lcom/android/settings/framework/activity/powersaver/SmartSynServiceReceiver;

    invoke-direct {v0, v2, v3, p1, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;Landroid/content/Context;Ljava/lang/Class;)V

    .line 396
    .local v0, intent_power_saver_mode_enable:Landroid/content/Intent;
    invoke-virtual {p1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 397
    iget-object v2, p0, Lcom/android/settings/framework/activity/powersaver/SmartSynServiceReceiver;->TAG:Ljava/lang/String;

    const-string v3, "POWER SAVER MODE SMARTSYNC_SERVICE_BROADCAST_SERVICE_RUNNING"

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 399
    .end local v0           #intent_power_saver_mode_enable:Landroid/content/Intent;
    :cond_1
    return-void
.end method

.method private startService(Landroid/content/Context;)V
    .locals 4
    .parameter "context"

    .prologue
    .line 464
    invoke-virtual {p0, p1}, Lcom/android/settings/framework/activity/powersaver/SmartSynServiceReceiver;->SmartSyncUpdateGoldenTable(Landroid/content/Context;)V

    .line 465
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/android/settings/framework/activity/powersaver/SmartSynServiceReceiver;->SMARTSYNC_BROADCAST_SMARTSYNCSERVICE_START:Ljava/lang/String;

    const/4 v2, 0x0

    const-class v3, Lcom/android/settings/framework/activity/powersaver/SmartSyncScreenOnOffTimeReceiver;

    invoke-direct {v0, v1, v2, p1, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;Landroid/content/Context;Ljava/lang/Class;)V

    .line 468
    .local v0, intent_service_start:Landroid/content/Intent;
    invoke-virtual {p1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 469
    invoke-virtual {p0, p1}, Lcom/android/settings/framework/activity/powersaver/SmartSynServiceReceiver;->TestForASOP(Landroid/content/Context;)V

    .line 470
    invoke-virtual {p0, p1}, Lcom/android/settings/framework/activity/powersaver/SmartSynServiceReceiver;->TestForASAT(Landroid/content/Context;)V

    .line 471
    return-void
.end method

.method private stopService(Landroid/content/Context;)V
    .locals 0
    .parameter "context"

    .prologue
    .line 476
    invoke-virtual {p0, p1}, Lcom/android/settings/framework/activity/powersaver/SmartSynServiceReceiver;->SmartSyncCancelUpdateAlarm(Landroid/content/Context;)V

    .line 478
    return-void
.end method


# virtual methods
.method public SmartSyncCancelUpdateAlarm(Landroid/content/Context;)V
    .locals 2
    .parameter "context"

    .prologue
    .line 498
    const-string v1, "alarm"

    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    .line 501
    .local v0, alarmManager:Landroid/app/AlarmManager;
    sget-object v1, Lcom/android/settings/framework/activity/powersaver/SmartSynServiceReceiver;->UpdateGoldenTable:Landroid/app/PendingIntent;

    invoke-virtual {v0, v1}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    .line 503
    return-void
.end method

.method public SmartSyncUpdateGoldenTable(Landroid/content/Context;)V
    .locals 9
    .parameter "context"

    .prologue
    const/4 v1, 0x0

    .line 481
    const-wide/16 v2, 0x0

    .line 482
    .local v2, UpdateTime:J
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v7

    .line 483
    .local v7, c:Ljava/util/Calendar;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-virtual {v7, v4, v5}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 485
    invoke-static {v1, v1}, Lcom/android/settings/framework/activity/powersaver/SmartSynServiceReceiver;->calculateAlarm(II)Ljava/util/Calendar;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v2

    .line 487
    const-string v4, "alarm"

    invoke-virtual {p1, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    .line 488
    .local v0, alarmManager:Landroid/app/AlarmManager;
    new-instance v8, Landroid/content/Intent;

    iget-object v4, p0, Lcom/android/settings/framework/activity/powersaver/SmartSynServiceReceiver;->SMARTSYNC_SERVICE_BROADCAST_UPDATE_GOLDEN_TABLE:Ljava/lang/String;

    const/4 v5, 0x0

    const-class v6, Lcom/android/settings/framework/activity/powersaver/SmartSyncScreenOnOffTimeReceiver;

    invoke-direct {v8, v4, v5, p1, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;Landroid/content/Context;Ljava/lang/Class;)V

    .line 490
    .local v8, intent_time:Landroid/content/Intent;
    invoke-static {p1, v1, v8, v1}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v4

    sput-object v4, Lcom/android/settings/framework/activity/powersaver/SmartSynServiceReceiver;->UpdateGoldenTable:Landroid/app/PendingIntent;

    .line 492
    const-wide/32 v4, 0x5265c00

    sget-object v6, Lcom/android/settings/framework/activity/powersaver/SmartSynServiceReceiver;->UpdateGoldenTable:Landroid/app/PendingIntent;

    invoke-virtual/range {v0 .. v6}, Landroid/app/AlarmManager;->setRepeating(IJJLandroid/app/PendingIntent;)V

    .line 494
    return-void
.end method

.method public TestForASAT(Landroid/content/Context;)V
    .locals 9
    .parameter "context"

    .prologue
    const/4 v1, 0x0

    .line 549
    const-wide/16 v2, 0x0

    .line 550
    .local v2, UpdateTime:J
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v7

    .line 551
    .local v7, c:Ljava/util/Calendar;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-virtual {v7, v4, v5}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 553
    const/16 v4, 0x8

    const/16 v5, 0xe

    invoke-static {v4, v5}, Lcom/android/settings/framework/activity/powersaver/SmartSynServiceReceiver;->calculateAlarm(II)Ljava/util/Calendar;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v2

    .line 555
    const-string v4, "alarm"

    invoke-virtual {p1, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    .line 556
    .local v0, alarmManager:Landroid/app/AlarmManager;
    new-instance v8, Landroid/content/Intent;

    iget-object v4, p0, Lcom/android/settings/framework/activity/powersaver/SmartSynServiceReceiver;->AP_REQUEST_POWER_SLEEP_MODE_START:Ljava/lang/String;

    const/4 v5, 0x0

    const-class v6, Lcom/android/settings/framework/activity/powersaver/SmartSyncDataLinkTurnOffReceiver;

    invoke-direct {v8, v4, v5, p1, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;Landroid/content/Context;Ljava/lang/Class;)V

    .line 558
    .local v8, intent_time:Landroid/content/Intent;
    invoke-static {p1, v1, v8, v1}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v4

    sput-object v4, Lcom/android/settings/framework/activity/powersaver/SmartSynServiceReceiver;->ASATTEST:Landroid/app/PendingIntent;

    .line 560
    const-wide/32 v4, 0x5265c00

    sget-object v6, Lcom/android/settings/framework/activity/powersaver/SmartSynServiceReceiver;->ASATTEST:Landroid/app/PendingIntent;

    invoke-virtual/range {v0 .. v6}, Landroid/app/AlarmManager;->setRepeating(IJJLandroid/app/PendingIntent;)V

    .line 562
    return-void
.end method

.method public TestForASOP(Landroid/content/Context;)V
    .locals 9
    .parameter "context"

    .prologue
    const/4 v1, 0x0

    .line 533
    const-wide/16 v2, 0x0

    .line 534
    .local v2, UpdateTime:J
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v7

    .line 535
    .local v7, c:Ljava/util/Calendar;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-virtual {v7, v4, v5}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 537
    const/16 v4, 0x8

    const/16 v5, 0xc

    invoke-static {v4, v5}, Lcom/android/settings/framework/activity/powersaver/SmartSynServiceReceiver;->calculateAlarm(II)Ljava/util/Calendar;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v2

    .line 539
    const-string v4, "alarm"

    invoke-virtual {p1, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    .line 540
    .local v0, alarmManager:Landroid/app/AlarmManager;
    new-instance v8, Landroid/content/Intent;

    iget-object v4, p0, Lcom/android/settings/framework/activity/powersaver/SmartSynServiceReceiver;->AP_REQUEST_POWER_SLEEP_MODE_STOP:Ljava/lang/String;

    const/4 v5, 0x0

    const-class v6, Lcom/android/settings/framework/activity/powersaver/SmartSyncDataLinkTurnOffReceiver;

    invoke-direct {v8, v4, v5, p1, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;Landroid/content/Context;Ljava/lang/Class;)V

    .line 542
    .local v8, intent_time:Landroid/content/Intent;
    invoke-static {p1, v1, v8, v1}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v4

    sput-object v4, Lcom/android/settings/framework/activity/powersaver/SmartSynServiceReceiver;->ASOPTEST:Landroid/app/PendingIntent;

    .line 544
    const-wide/32 v4, 0x5265c00

    sget-object v6, Lcom/android/settings/framework/activity/powersaver/SmartSynServiceReceiver;->ASOPTEST:Landroid/app/PendingIntent;

    invoke-virtual/range {v0 .. v6}, Landroid/app/AlarmManager;->setRepeating(IJJLandroid/app/PendingIntent;)V

    .line 546
    return-void
.end method

.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 37
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 85
    const-string v34, "SMARTSYNC_SHARED"

    const/16 v35, 0x0

    move-object/from16 v0, p1

    move-object/from16 v1, v34

    move/from16 v2, v35

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v34

    move-object/from16 v0, v34

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/framework/activity/powersaver/SmartSynServiceReceiver;->mSmartSyncSharedpref:Landroid/content/SharedPreferences;

    .line 87
    if-eqz p2, :cond_1

    .line 88
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v6

    .line 94
    .local v6, action:Ljava/lang/String;
    const-string v34, "android.intent.action.BOOT_COMPLETED"

    move-object/from16 v0, v34

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v34

    if-eqz v34, :cond_2

    .line 96
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    .line 100
    .local v9, cr:Landroid/content/ContentResolver;
    const/4 v8, 0x0

    .line 101
    .local v8, bAutoEnalbe:I
    const-string v34, "SMARTSYNC_NIGHT_ENABLE"

    const/16 v35, 0x0

    move-object/from16 v0, v34

    move/from16 v1, v35

    invoke-static {v9, v0, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v8

    .line 109
    const/4 v5, 0x0

    .line 112
    .local v5, PREF_POWER_SLEEP_MODE:Z
    const/16 v34, 0x2

    move/from16 v0, v34

    if-ge v8, v0, :cond_0

    .line 114
    invoke-direct/range {p0 .. p1}, Lcom/android/settings/framework/activity/powersaver/SmartSynServiceReceiver;->CheckRollBack(Landroid/content/Context;)V

    .line 115
    invoke-direct/range {p0 .. p1}, Lcom/android/settings/framework/activity/powersaver/SmartSynServiceReceiver;->startService(Landroid/content/Context;)V

    .line 118
    const/4 v5, 0x1

    .line 122
    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/framework/activity/powersaver/SmartSynServiceReceiver;->mSmartSyncSharedpref:Landroid/content/SharedPreferences;

    move-object/from16 v34, v0

    invoke-interface/range {v34 .. v34}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v34

    invoke-interface/range {v34 .. v34}, Landroid/content/SharedPreferences$Editor;->clear()Landroid/content/SharedPreferences$Editor;

    move-result-object v34

    invoke-interface/range {v34 .. v34}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 127
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/framework/activity/powersaver/SmartSynServiceReceiver;->mSmartSyncSharedpref:Landroid/content/SharedPreferences;

    move-object/from16 v34, v0

    invoke-interface/range {v34 .. v34}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v34

    const-string v35, "PREF_POWER_SLEEP_MODE"

    move-object/from16 v0, v34

    move-object/from16 v1, v35

    invoke-interface {v0, v1, v5}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v34

    invoke-interface/range {v34 .. v34}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 129
    const-string v34, "sys.psaver.dconn"

    const/16 v35, 0x0

    invoke-static/range {v34 .. v35}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v34

    if-eqz v34, :cond_1

    .line 130
    invoke-direct/range {p0 .. p1}, Lcom/android/settings/framework/activity/powersaver/SmartSynServiceReceiver;->startAllDaySleepMode(Landroid/content/Context;)V

    .line 373
    .end local v5           #PREF_POWER_SLEEP_MODE:Z
    .end local v6           #action:Ljava/lang/String;
    .end local v8           #bAutoEnalbe:I
    .end local v9           #cr:Landroid/content/ContentResolver;
    :cond_1
    :goto_0
    return-void

    .line 133
    .restart local v6       #action:Ljava/lang/String;
    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/framework/activity/powersaver/SmartSynServiceReceiver;->ALARM_FRAMEWORK_BROADCAST_ACTION_SCREEN_ON:Ljava/lang/String;

    move-object/from16 v34, v0

    move-object/from16 v0, v34

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v34

    if-eqz v34, :cond_3

    .line 135
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/framework/activity/powersaver/SmartSynServiceReceiver;->mSmartSyncSharedpref:Landroid/content/SharedPreferences;

    move-object/from16 v34, v0

    const-string v35, "PREF_POWER_SLEEP_MODE"

    const/16 v36, 0x0

    invoke-interface/range {v34 .. v36}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v34

    sput-boolean v34, Lcom/android/settings/framework/activity/powersaver/SmartSynServiceReceiver;->SmartSynServiceRunning:Z

    .line 140
    sget-boolean v34, Lcom/android/settings/framework/activity/powersaver/SmartSynServiceReceiver;->SmartSynServiceRunning:Z

    const/16 v35, 0x1

    move/from16 v0, v34

    move/from16 v1, v35

    if-ne v0, v1, :cond_1

    .line 146
    new-instance v20, Landroid/content/Intent;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/framework/activity/powersaver/SmartSynServiceReceiver;->SMARTSYNC_SERVICE_BROADCAST_SCREEN_ON:Ljava/lang/String;

    move-object/from16 v34, v0

    const/16 v35, 0x0

    const-class v36, Lcom/android/settings/framework/activity/powersaver/SmartSyncScreenOnOffTimeReceiver;

    move-object/from16 v0, v20

    move-object/from16 v1, v34

    move-object/from16 v2, v35

    move-object/from16 v3, p1

    move-object/from16 v4, v36

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;Landroid/content/Context;Ljava/lang/Class;)V

    .line 149
    .local v20, intent_screen_on_to_ScreenOnOffTime:Landroid/content/Intent;
    move-object/from16 v0, p1

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 151
    new-instance v18, Landroid/content/Intent;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/framework/activity/powersaver/SmartSynServiceReceiver;->SMARTSYNC_SERVICE_BROADCAST_SCREEN_ON:Ljava/lang/String;

    move-object/from16 v34, v0

    const/16 v35, 0x0

    const-class v36, Lcom/android/settings/framework/activity/powersaver/SmartSyncDataLinkTurnOffReceiver;

    move-object/from16 v0, v18

    move-object/from16 v1, v34

    move-object/from16 v2, v35

    move-object/from16 v3, p1

    move-object/from16 v4, v36

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;Landroid/content/Context;Ljava/lang/Class;)V

    .line 154
    .local v18, intent_screen_on_to_DataLinkTurnOff:Landroid/content/Intent;
    move-object/from16 v0, p1

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 156
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/framework/activity/powersaver/SmartSynServiceReceiver;->mSmartSyncSharedpref:Landroid/content/SharedPreferences;

    move-object/from16 v34, v0

    const-string v35, "PREF_NEW_POWER_SAVER_MODE_ENABLE"

    const/16 v36, 0x0

    invoke-interface/range {v34 .. v36}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v25

    .line 158
    .local v25, mNewPowerSaverMode:Z
    const/16 v34, 0x1

    move/from16 v0, v25

    move/from16 v1, v34

    if-ne v0, v1, :cond_1

    .line 160
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/framework/activity/powersaver/SmartSynServiceReceiver;->TAG:Ljava/lang/String;

    move-object/from16 v34, v0

    const-string v35, "ACTION_SCREEN_ON intent_screen_on_to_PowerSaverMode"

    invoke-static/range {v34 .. v35}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 161
    new-instance v19, Landroid/content/Intent;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/framework/activity/powersaver/SmartSynServiceReceiver;->SMARTSYNC_SERVICE_BROADCAST_SCREEN_ON:Ljava/lang/String;

    move-object/from16 v34, v0

    const/16 v35, 0x0

    const-class v36, Lcom/android/settings/framework/activity/powersaver/PowerSaverModeReceiver;

    move-object/from16 v0, v19

    move-object/from16 v1, v34

    move-object/from16 v2, v35

    move-object/from16 v3, p1

    move-object/from16 v4, v36

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;Landroid/content/Context;Ljava/lang/Class;)V

    .line 164
    .local v19, intent_screen_on_to_PowerSaverMode:Landroid/content/Intent;
    move-object/from16 v0, p1

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 171
    .end local v18           #intent_screen_on_to_DataLinkTurnOff:Landroid/content/Intent;
    .end local v19           #intent_screen_on_to_PowerSaverMode:Landroid/content/Intent;
    .end local v20           #intent_screen_on_to_ScreenOnOffTime:Landroid/content/Intent;
    .end local v25           #mNewPowerSaverMode:Z
    :cond_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/framework/activity/powersaver/SmartSynServiceReceiver;->ALARM_FRAMEWORK_BROADCAST_ACTION_SCREEN_OFF:Ljava/lang/String;

    move-object/from16 v34, v0

    move-object/from16 v0, v34

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v34

    if-eqz v34, :cond_4

    .line 176
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/framework/activity/powersaver/SmartSynServiceReceiver;->mSmartSyncSharedpref:Landroid/content/SharedPreferences;

    move-object/from16 v34, v0

    const-string v35, "PREF_POWER_SLEEP_MODE"

    const/16 v36, 0x0

    invoke-interface/range {v34 .. v36}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v34

    sput-boolean v34, Lcom/android/settings/framework/activity/powersaver/SmartSynServiceReceiver;->SmartSynServiceRunning:Z

    .line 179
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/framework/activity/powersaver/SmartSynServiceReceiver;->TAG:Ljava/lang/String;

    move-object/from16 v34, v0

    new-instance v35, Ljava/lang/StringBuilder;

    invoke-direct/range {v35 .. v35}, Ljava/lang/StringBuilder;-><init>()V

    const-string v36, "ACTION_SCREEN_OFF SmartSynServiceRunning="

    invoke-virtual/range {v35 .. v36}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v35

    sget-boolean v36, Lcom/android/settings/framework/activity/powersaver/SmartSynServiceReceiver;->SmartSynServiceRunning:Z

    invoke-virtual/range {v35 .. v36}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v35

    invoke-virtual/range {v35 .. v35}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v35

    invoke-static/range {v34 .. v35}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 181
    sget-boolean v34, Lcom/android/settings/framework/activity/powersaver/SmartSynServiceReceiver;->SmartSynServiceRunning:Z

    const/16 v35, 0x1

    move/from16 v0, v34

    move/from16 v1, v35

    if-ne v0, v1, :cond_1

    .line 184
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/framework/activity/powersaver/SmartSynServiceReceiver;->TAG:Ljava/lang/String;

    move-object/from16 v34, v0

    const-string v35, "ACTION_SCREEN_OFF"

    invoke-static/range {v34 .. v35}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 186
    new-instance v17, Landroid/content/Intent;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/framework/activity/powersaver/SmartSynServiceReceiver;->SMARTSYNC_SERVICE_BROADCAST_SCREEN_OFF:Ljava/lang/String;

    move-object/from16 v34, v0

    const/16 v35, 0x0

    const-class v36, Lcom/android/settings/framework/activity/powersaver/SmartSyncScreenOnOffTimeReceiver;

    move-object/from16 v0, v17

    move-object/from16 v1, v34

    move-object/from16 v2, v35

    move-object/from16 v3, p1

    move-object/from16 v4, v36

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;Landroid/content/Context;Ljava/lang/Class;)V

    .line 189
    .local v17, intent_screen_off_to_ScreenOnOffTime:Landroid/content/Intent;
    move-object/from16 v0, p1

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 191
    new-instance v15, Landroid/content/Intent;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/framework/activity/powersaver/SmartSynServiceReceiver;->SMARTSYNC_SERVICE_BROADCAST_SCREEN_OFF:Ljava/lang/String;

    move-object/from16 v34, v0

    const/16 v35, 0x0

    const-class v36, Lcom/android/settings/framework/activity/powersaver/SmartSyncDataLinkTurnOffReceiver;

    move-object/from16 v0, v34

    move-object/from16 v1, v35

    move-object/from16 v2, p1

    move-object/from16 v3, v36

    invoke-direct {v15, v0, v1, v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;Landroid/content/Context;Ljava/lang/Class;)V

    .line 194
    .local v15, intent_screen_off_to_DataLinkTurnOff:Landroid/content/Intent;
    move-object/from16 v0, p1

    invoke-virtual {v0, v15}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 196
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/framework/activity/powersaver/SmartSynServiceReceiver;->mSmartSyncSharedpref:Landroid/content/SharedPreferences;

    move-object/from16 v34, v0

    const-string v35, "PREF_NEW_POWER_SAVER_MODE_ENABLE"

    const/16 v36, 0x0

    invoke-interface/range {v34 .. v36}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v25

    .line 197
    .restart local v25       #mNewPowerSaverMode:Z
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/framework/activity/powersaver/SmartSynServiceReceiver;->TAG:Ljava/lang/String;

    move-object/from16 v34, v0

    new-instance v35, Ljava/lang/StringBuilder;

    invoke-direct/range {v35 .. v35}, Ljava/lang/StringBuilder;-><init>()V

    const-string v36, "ACTION_SCREEN_OFF"

    invoke-virtual/range {v35 .. v36}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v35

    move-object/from16 v0, v35

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v35

    invoke-virtual/range {v35 .. v35}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v35

    invoke-static/range {v34 .. v35}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 198
    const/16 v34, 0x1

    move/from16 v0, v25

    move/from16 v1, v34

    if-ne v0, v1, :cond_1

    .line 200
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/framework/activity/powersaver/SmartSynServiceReceiver;->TAG:Ljava/lang/String;

    move-object/from16 v34, v0

    const-string v35, "ACTION_SCREEN_OFF intent_screen_off_to_PowerSaverMode"

    invoke-static/range {v34 .. v35}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 202
    new-instance v16, Landroid/content/Intent;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/framework/activity/powersaver/SmartSynServiceReceiver;->SMARTSYNC_SERVICE_BROADCAST_SCREEN_OFF:Ljava/lang/String;

    move-object/from16 v34, v0

    const/16 v35, 0x0

    const-class v36, Lcom/android/settings/framework/activity/powersaver/PowerSaverModeReceiver;

    move-object/from16 v0, v16

    move-object/from16 v1, v34

    move-object/from16 v2, v35

    move-object/from16 v3, p1

    move-object/from16 v4, v36

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;Landroid/content/Context;Ljava/lang/Class;)V

    .line 205
    .local v16, intent_screen_off_to_PowerSaverMode:Landroid/content/Intent;
    move-object/from16 v0, p1

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 209
    .end local v15           #intent_screen_off_to_DataLinkTurnOff:Landroid/content/Intent;
    .end local v16           #intent_screen_off_to_PowerSaverMode:Landroid/content/Intent;
    .end local v17           #intent_screen_off_to_ScreenOnOffTime:Landroid/content/Intent;
    .end local v25           #mNewPowerSaverMode:Z
    :cond_4
    const-string v34, "android.intent.action.QUICKBOOT_POWERON"

    move-object/from16 v0, v34

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v34

    if-eqz v34, :cond_6

    .line 211
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    .line 216
    .restart local v9       #cr:Landroid/content/ContentResolver;
    const/4 v8, 0x0

    .line 217
    .restart local v8       #bAutoEnalbe:I
    const-string v34, "SMARTSYNC_NIGHT_ENABLE"

    const/16 v35, 0x0

    move-object/from16 v0, v34

    move/from16 v1, v35

    invoke-static {v9, v0, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v8

    .line 225
    const/4 v5, 0x0

    .line 228
    .restart local v5       #PREF_POWER_SLEEP_MODE:Z
    const/16 v34, 0x2

    move/from16 v0, v34

    if-ge v8, v0, :cond_5

    .line 230
    invoke-direct/range {p0 .. p1}, Lcom/android/settings/framework/activity/powersaver/SmartSynServiceReceiver;->CheckRollBack(Landroid/content/Context;)V

    .line 231
    invoke-direct/range {p0 .. p1}, Lcom/android/settings/framework/activity/powersaver/SmartSynServiceReceiver;->startService(Landroid/content/Context;)V

    .line 234
    const/4 v5, 0x1

    .line 239
    :cond_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/framework/activity/powersaver/SmartSynServiceReceiver;->mSmartSyncSharedpref:Landroid/content/SharedPreferences;

    move-object/from16 v34, v0

    invoke-interface/range {v34 .. v34}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v34

    invoke-interface/range {v34 .. v34}, Landroid/content/SharedPreferences$Editor;->clear()Landroid/content/SharedPreferences$Editor;

    move-result-object v34

    invoke-interface/range {v34 .. v34}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 244
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/framework/activity/powersaver/SmartSynServiceReceiver;->mSmartSyncSharedpref:Landroid/content/SharedPreferences;

    move-object/from16 v34, v0

    invoke-interface/range {v34 .. v34}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v34

    const-string v35, "PREF_POWER_SLEEP_MODE"

    move-object/from16 v0, v34

    move-object/from16 v1, v35

    invoke-interface {v0, v1, v5}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v34

    invoke-interface/range {v34 .. v34}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 246
    const-string v34, "sys.psaver.dconn"

    const/16 v35, 0x0

    invoke-static/range {v34 .. v35}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v34

    if-eqz v34, :cond_1

    .line 247
    invoke-direct/range {p0 .. p1}, Lcom/android/settings/framework/activity/powersaver/SmartSynServiceReceiver;->startAllDaySleepMode(Landroid/content/Context;)V

    goto/16 :goto_0

    .line 250
    .end local v5           #PREF_POWER_SLEEP_MODE:Z
    .end local v8           #bAutoEnalbe:I
    .end local v9           #cr:Landroid/content/ContentResolver;
    :cond_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/framework/activity/powersaver/SmartSynServiceReceiver;->SMARTSYNC_SERVICE_BROADCAST_SERVICE_RUNNING:Ljava/lang/String;

    move-object/from16 v34, v0

    move-object/from16 v0, v34

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v34

    if-eqz v34, :cond_8

    .line 252
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/framework/activity/powersaver/SmartSynServiceReceiver;->TAG:Ljava/lang/String;

    move-object/from16 v34, v0

    const-string v35, "SMARTSYNC_SERVICE_BROADCAST_SERVICE_RUNNING"

    invoke-static/range {v34 .. v35}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 253
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/framework/activity/powersaver/SmartSynServiceReceiver;->mSmartSyncSharedpref:Landroid/content/SharedPreferences;

    move-object/from16 v34, v0

    const-string v35, "PREF_POWER_SLEEP_MODE"

    const/16 v36, 0x0

    invoke-interface/range {v34 .. v36}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v34

    sput-boolean v34, Lcom/android/settings/framework/activity/powersaver/SmartSynServiceReceiver;->SmartSynServiceRunning:Z

    .line 254
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/framework/activity/powersaver/SmartSynServiceReceiver;->TAG:Ljava/lang/String;

    move-object/from16 v34, v0

    new-instance v35, Ljava/lang/StringBuilder;

    invoke-direct/range {v35 .. v35}, Ljava/lang/StringBuilder;-><init>()V

    const-string v36, "SMARTSYNC_SERVICE_BROADCAST_SERVICE_RUNNING"

    invoke-virtual/range {v35 .. v36}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v35

    sget-boolean v36, Lcom/android/settings/framework/activity/powersaver/SmartSynServiceReceiver;->SmartSynServiceRunning:Z

    invoke-virtual/range {v35 .. v36}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v35

    invoke-virtual/range {v35 .. v35}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v35

    invoke-static/range {v34 .. v35}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 255
    sget-boolean v34, Lcom/android/settings/framework/activity/powersaver/SmartSynServiceReceiver;->SmartSynServiceRunning:Z

    if-nez v34, :cond_7

    .line 257
    invoke-direct/range {p0 .. p1}, Lcom/android/settings/framework/activity/powersaver/SmartSynServiceReceiver;->startService(Landroid/content/Context;)V

    .line 259
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/framework/activity/powersaver/SmartSynServiceReceiver;->mSmartSyncSharedpref:Landroid/content/SharedPreferences;

    move-object/from16 v34, v0

    invoke-interface/range {v34 .. v34}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v34

    const-string v35, "PREF_POWER_SLEEP_MODE"

    const/16 v36, 0x1

    invoke-interface/range {v34 .. v36}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v34

    invoke-interface/range {v34 .. v34}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 265
    :cond_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/framework/activity/powersaver/SmartSynServiceReceiver;->mSmartSyncSharedpref:Landroid/content/SharedPreferences;

    move-object/from16 v34, v0

    invoke-interface/range {v34 .. v34}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v34

    const-string v35, "PREF_NEW_POWER_SAVER_MODE_ENABLE"

    const/16 v36, 0x1

    invoke-interface/range {v34 .. v36}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v34

    invoke-interface/range {v34 .. v34}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 266
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/framework/activity/powersaver/SmartSynServiceReceiver;->TAG:Ljava/lang/String;

    move-object/from16 v34, v0

    const-string v35, "PREF_NEW_POWER_SAVER_MODE_ENABLE enable"

    invoke-static/range {v34 .. v35}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 268
    const-string v34, "power"

    move-object/from16 v0, p1

    move-object/from16 v1, v34

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v33

    check-cast v33, Landroid/os/PowerManager;

    .line 269
    .local v33, pm:Landroid/os/PowerManager;
    invoke-virtual/range {v33 .. v33}, Landroid/os/PowerManager;->isScreenOn()Z

    move-result v34

    if-nez v34, :cond_1

    .line 271
    new-instance v14, Landroid/content/Intent;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/framework/activity/powersaver/SmartSynServiceReceiver;->ALARM_FRAMEWORK_BROADCAST_ACTION_SCREEN_OFF:Ljava/lang/String;

    move-object/from16 v34, v0

    const/16 v35, 0x0

    const-class v36, Lcom/android/settings/framework/activity/powersaver/SmartSynServiceReceiver;

    move-object/from16 v0, v34

    move-object/from16 v1, v35

    move-object/from16 v2, p1

    move-object/from16 v3, v36

    invoke-direct {v14, v0, v1, v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;Landroid/content/Context;Ljava/lang/Class;)V

    .line 274
    .local v14, intent_power_saver_mode_enable:Landroid/content/Intent;
    move-object/from16 v0, p1

    invoke-virtual {v0, v14}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 275
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/framework/activity/powersaver/SmartSynServiceReceiver;->TAG:Ljava/lang/String;

    move-object/from16 v34, v0

    const-string v35, "POWER SAVER MODE SMARTSYNC_SERVICE_BROADCAST_SERVICE_RUNNING"

    invoke-static/range {v34 .. v35}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 279
    .end local v14           #intent_power_saver_mode_enable:Landroid/content/Intent;
    .end local v33           #pm:Landroid/os/PowerManager;
    :cond_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/framework/activity/powersaver/SmartSynServiceReceiver;->SMARTSYNC_SERVICE_BROADCAST_SERVICE_STOPING:Ljava/lang/String;

    move-object/from16 v34, v0

    move-object/from16 v0, v34

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v34

    if-eqz v34, :cond_a

    .line 281
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    .line 286
    .restart local v9       #cr:Landroid/content/ContentResolver;
    const-string v34, "SMARTSYNC_NIGHT_ENABLE"

    const/16 v35, 0x0

    move-object/from16 v0, v34

    move/from16 v1, v35

    invoke-static {v9, v0, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v8

    .line 287
    .restart local v8       #bAutoEnalbe:I
    const/16 v34, 0x2

    move/from16 v0, v34

    if-ne v8, v0, :cond_9

    .line 289
    invoke-direct/range {p0 .. p1}, Lcom/android/settings/framework/activity/powersaver/SmartSynServiceReceiver;->stopService(Landroid/content/Context;)V

    .line 290
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/framework/activity/powersaver/SmartSynServiceReceiver;->TAG:Ljava/lang/String;

    move-object/from16 v34, v0

    const-string v35, "set auto to disable"

    invoke-static/range {v34 .. v35}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 291
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/framework/activity/powersaver/SmartSynServiceReceiver;->mSmartSyncSharedpref:Landroid/content/SharedPreferences;

    move-object/from16 v34, v0

    invoke-interface/range {v34 .. v34}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v34

    const-string v35, "PREF_POWER_SLEEP_MODE"

    const/16 v36, 0x0

    invoke-interface/range {v34 .. v36}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v34

    invoke-interface/range {v34 .. v34}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 295
    :cond_9
    const-string v34, "alarm"

    move-object/from16 v0, p1

    move-object/from16 v1, v34

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/app/AlarmManager;

    .line 296
    .local v7, alarmManager:Landroid/app/AlarmManager;
    new-instance v21, Landroid/content/Intent;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/framework/activity/powersaver/SmartSynServiceReceiver;->SMARTSYNC_SERVICE_BROADCAST_SCREEN_OFF_TIME:Ljava/lang/String;

    move-object/from16 v34, v0

    const/16 v35, 0x0

    const-class v36, Lcom/android/settings/framework/activity/powersaver/SmartSyncScreenOnOffTimeReceiver;

    move-object/from16 v0, v21

    move-object/from16 v1, v34

    move-object/from16 v2, v35

    move-object/from16 v3, p1

    move-object/from16 v4, v36

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;Landroid/content/Context;Ljava/lang/Class;)V

    .line 299
    .local v21, intent_time:Landroid/content/Intent;
    const/16 v34, 0x0

    const/16 v35, 0x0

    move-object/from16 v0, p1

    move/from16 v1, v34

    move-object/from16 v2, v21

    move/from16 v3, v35

    invoke-static {v0, v1, v2, v3}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v26

    .line 300
    .local v26, mPendingIntent_15MinutestTrigger:Landroid/app/PendingIntent;
    move-object/from16 v0, v26

    invoke-virtual {v7, v0}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    .line 302
    new-instance v12, Landroid/content/Intent;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/framework/activity/powersaver/SmartSynServiceReceiver;->POWERSAVERMODE_TURN_OFF_MOBILE_RETRY:Ljava/lang/String;

    move-object/from16 v34, v0

    const/16 v35, 0x0

    const-class v36, Lcom/android/settings/framework/activity/powersaver/PowerSaverModeReceiver;

    move-object/from16 v0, v34

    move-object/from16 v1, v35

    move-object/from16 v2, p1

    move-object/from16 v3, v36

    invoke-direct {v12, v0, v1, v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;Landroid/content/Context;Ljava/lang/Class;)V

    .line 304
    .local v12, intent_mobile_off_retry:Landroid/content/Intent;
    const/16 v34, 0x0

    const/16 v35, 0x0

    move-object/from16 v0, p1

    move/from16 v1, v34

    move/from16 v2, v35

    invoke-static {v0, v1, v12, v2}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v28

    .line 305
    .local v28, mPowerSaver_PendingIntent_Off_mobile_retry:Landroid/app/PendingIntent;
    move-object/from16 v0, v28

    invoke-virtual {v7, v0}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    .line 307
    new-instance v23, Landroid/content/Intent;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/framework/activity/powersaver/SmartSynServiceReceiver;->POWERSAVERMODE_TURN_OFF_WIFI_RETRY:Ljava/lang/String;

    move-object/from16 v34, v0

    const/16 v35, 0x0

    const-class v36, Lcom/android/settings/framework/activity/powersaver/PowerSaverModeReceiver;

    move-object/from16 v0, v23

    move-object/from16 v1, v34

    move-object/from16 v2, v35

    move-object/from16 v3, p1

    move-object/from16 v4, v36

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;Landroid/content/Context;Ljava/lang/Class;)V

    .line 309
    .local v23, intent_wifi_off_retry:Landroid/content/Intent;
    const/16 v34, 0x0

    const/16 v35, 0x0

    move-object/from16 v0, p1

    move/from16 v1, v34

    move-object/from16 v2, v23

    move/from16 v3, v35

    invoke-static {v0, v1, v2, v3}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v30

    .line 310
    .local v30, mPowerSaver_PendingIntent_Off_wifi_retry:Landroid/app/PendingIntent;
    move-object/from16 v0, v30

    invoke-virtual {v7, v0}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    .line 312
    new-instance v11, Landroid/content/Intent;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/framework/activity/powersaver/SmartSynServiceReceiver;->POWERSAVERMODE_TURN_OFF_MOBILE:Ljava/lang/String;

    move-object/from16 v34, v0

    const/16 v35, 0x0

    const-class v36, Lcom/android/settings/framework/activity/powersaver/PowerSaverModeReceiver;

    move-object/from16 v0, v34

    move-object/from16 v1, v35

    move-object/from16 v2, p1

    move-object/from16 v3, v36

    invoke-direct {v11, v0, v1, v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;Landroid/content/Context;Ljava/lang/Class;)V

    .line 314
    .local v11, intent_mobile_off:Landroid/content/Intent;
    const/16 v34, 0x0

    const/16 v35, 0x0

    move-object/from16 v0, p1

    move/from16 v1, v34

    move/from16 v2, v35

    invoke-static {v0, v1, v11, v2}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v27

    .line 315
    .local v27, mPowerSaver_PendingIntent_Off_mobile:Landroid/app/PendingIntent;
    move-object/from16 v0, v27

    invoke-virtual {v7, v0}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    .line 317
    new-instance v22, Landroid/content/Intent;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/framework/activity/powersaver/SmartSynServiceReceiver;->POWERSAVERMODE_TURN_OFF_WIFI:Ljava/lang/String;

    move-object/from16 v34, v0

    const/16 v35, 0x0

    const-class v36, Lcom/android/settings/framework/activity/powersaver/PowerSaverModeReceiver;

    move-object/from16 v0, v22

    move-object/from16 v1, v34

    move-object/from16 v2, v35

    move-object/from16 v3, p1

    move-object/from16 v4, v36

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;Landroid/content/Context;Ljava/lang/Class;)V

    .line 320
    .local v22, intent_wifi_off:Landroid/content/Intent;
    const/16 v34, 0x0

    const/16 v35, 0x0

    move-object/from16 v0, p1

    move/from16 v1, v34

    move-object/from16 v2, v22

    move/from16 v3, v35

    invoke-static {v0, v1, v2, v3}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v29

    .line 321
    .local v29, mPowerSaver_PendingIntent_Off_wifi:Landroid/app/PendingIntent;
    move-object/from16 v0, v29

    invoke-virtual {v7, v0}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    .line 323
    new-instance v13, Landroid/content/Intent;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/framework/activity/powersaver/SmartSynServiceReceiver;->POWERSAVERMODE_TURN_ON_MOBILE:Ljava/lang/String;

    move-object/from16 v34, v0

    const/16 v35, 0x0

    const-class v36, Lcom/android/settings/framework/activity/powersaver/PowerSaverModeReceiver;

    move-object/from16 v0, v34

    move-object/from16 v1, v35

    move-object/from16 v2, p1

    move-object/from16 v3, v36

    invoke-direct {v13, v0, v1, v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;Landroid/content/Context;Ljava/lang/Class;)V

    .line 326
    .local v13, intent_mobile_on:Landroid/content/Intent;
    const/16 v34, 0x0

    const/16 v35, 0x0

    move-object/from16 v0, p1

    move/from16 v1, v34

    move/from16 v2, v35

    invoke-static {v0, v1, v13, v2}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v31

    .line 327
    .local v31, mPowerSaver_PendingIntent_On_mobile:Landroid/app/PendingIntent;
    move-object/from16 v0, v31

    invoke-virtual {v7, v0}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    .line 329
    new-instance v24, Landroid/content/Intent;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/framework/activity/powersaver/SmartSynServiceReceiver;->POWERSAVERMODE_TURN_ON_WIFI:Ljava/lang/String;

    move-object/from16 v34, v0

    const/16 v35, 0x0

    const-class v36, Lcom/android/settings/framework/activity/powersaver/PowerSaverModeReceiver;

    move-object/from16 v0, v24

    move-object/from16 v1, v34

    move-object/from16 v2, v35

    move-object/from16 v3, p1

    move-object/from16 v4, v36

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;Landroid/content/Context;Ljava/lang/Class;)V

    .line 332
    .local v24, intent_wifi_on:Landroid/content/Intent;
    const/16 v34, 0x0

    const/16 v35, 0x0

    move-object/from16 v0, p1

    move/from16 v1, v34

    move-object/from16 v2, v24

    move/from16 v3, v35

    invoke-static {v0, v1, v2, v3}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v32

    .line 333
    .local v32, mPowerSaver_PendingIntent_On_wifi:Landroid/app/PendingIntent;
    move-object/from16 v0, v32

    invoke-virtual {v7, v0}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    .line 336
    invoke-direct/range {p0 .. p1}, Lcom/android/settings/framework/activity/powersaver/SmartSynServiceReceiver;->CheckRollBack(Landroid/content/Context;)V

    .line 337
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/framework/activity/powersaver/SmartSynServiceReceiver;->mSmartSyncSharedpref:Landroid/content/SharedPreferences;

    move-object/from16 v34, v0

    invoke-interface/range {v34 .. v34}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v34

    const-string v35, "PREF_NEW_POWER_SAVER_MODE_ENABLE"

    const/16 v36, 0x0

    invoke-interface/range {v34 .. v36}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v34

    invoke-interface/range {v34 .. v34}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 339
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/framework/activity/powersaver/SmartSynServiceReceiver;->TAG:Ljava/lang/String;

    move-object/from16 v34, v0

    const-string v35, "PREF_NEW_POWER_SAVER_MODE_ENABLE disable"

    invoke-static/range {v34 .. v35}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 342
    .end local v7           #alarmManager:Landroid/app/AlarmManager;
    .end local v8           #bAutoEnalbe:I
    .end local v9           #cr:Landroid/content/ContentResolver;
    .end local v11           #intent_mobile_off:Landroid/content/Intent;
    .end local v12           #intent_mobile_off_retry:Landroid/content/Intent;
    .end local v13           #intent_mobile_on:Landroid/content/Intent;
    .end local v21           #intent_time:Landroid/content/Intent;
    .end local v22           #intent_wifi_off:Landroid/content/Intent;
    .end local v23           #intent_wifi_off_retry:Landroid/content/Intent;
    .end local v24           #intent_wifi_on:Landroid/content/Intent;
    .end local v26           #mPendingIntent_15MinutestTrigger:Landroid/app/PendingIntent;
    .end local v27           #mPowerSaver_PendingIntent_Off_mobile:Landroid/app/PendingIntent;
    .end local v28           #mPowerSaver_PendingIntent_Off_mobile_retry:Landroid/app/PendingIntent;
    .end local v29           #mPowerSaver_PendingIntent_Off_wifi:Landroid/app/PendingIntent;
    .end local v30           #mPowerSaver_PendingIntent_Off_wifi_retry:Landroid/app/PendingIntent;
    .end local v31           #mPowerSaver_PendingIntent_On_mobile:Landroid/app/PendingIntent;
    .end local v32           #mPowerSaver_PendingIntent_On_wifi:Landroid/app/PendingIntent;
    :cond_a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/framework/activity/powersaver/SmartSynServiceReceiver;->ALARM_FRAMEWORK_BROADCAST_ACTION_QUICKBOOT_POWEROFF:Ljava/lang/String;

    move-object/from16 v34, v0

    move-object/from16 v0, v34

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v34

    if-eqz v34, :cond_b

    .line 344
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/framework/activity/powersaver/SmartSynServiceReceiver;->mSmartSyncSharedpref:Landroid/content/SharedPreferences;

    move-object/from16 v34, v0

    const-string v35, "PREF_POWER_SLEEP_MODE"

    const/16 v36, 0x0

    invoke-interface/range {v34 .. v36}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v34

    sput-boolean v34, Lcom/android/settings/framework/activity/powersaver/SmartSynServiceReceiver;->SmartSynServiceRunning:Z

    .line 345
    sget-boolean v34, Lcom/android/settings/framework/activity/powersaver/SmartSynServiceReceiver;->SmartSynServiceRunning:Z

    const/16 v35, 0x1

    move/from16 v0, v34

    move/from16 v1, v35

    if-ne v0, v1, :cond_1

    .line 351
    new-instance v10, Landroid/content/Intent;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/framework/activity/powersaver/SmartSynServiceReceiver;->SMARTSYNC_SERVICE_BROADCAST_QUICKBOOT_POWEROFF:Ljava/lang/String;

    move-object/from16 v34, v0

    const/16 v35, 0x0

    const-class v36, Lcom/android/settings/framework/activity/powersaver/SmartSyncScreenOnOffTimeReceiver;

    move-object/from16 v0, v34

    move-object/from16 v1, v35

    move-object/from16 v2, p1

    move-object/from16 v3, v36

    invoke-direct {v10, v0, v1, v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;Landroid/content/Context;Ljava/lang/Class;)V

    .line 354
    .local v10, intent_action_quickboot_poweroff:Landroid/content/Intent;
    move-object/from16 v0, p1

    invoke-virtual {v0, v10}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 363
    .end local v10           #intent_action_quickboot_poweroff:Landroid/content/Intent;
    :cond_b
    invoke-direct/range {p0 .. p1}, Lcom/android/settings/framework/activity/powersaver/SmartSynServiceReceiver;->stopService(Landroid/content/Context;)V

    .line 365
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/framework/activity/powersaver/SmartSynServiceReceiver;->mSmartSyncSharedpref:Landroid/content/SharedPreferences;

    move-object/from16 v34, v0

    invoke-interface/range {v34 .. v34}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v34

    const-string v35, "PREF_POWER_SLEEP_MODE"

    const/16 v36, 0x0

    invoke-interface/range {v34 .. v36}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v34

    invoke-interface/range {v34 .. v34}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto/16 :goto_0
.end method
