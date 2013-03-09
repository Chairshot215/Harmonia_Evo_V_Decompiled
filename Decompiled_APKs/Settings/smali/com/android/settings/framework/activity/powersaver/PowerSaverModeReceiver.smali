.class public Lcom/android/settings/framework/activity/powersaver/PowerSaverModeReceiver;
.super Landroid/content/BroadcastReceiver;
.source "PowerSaverModeReceiver.java"


# static fields
.field public static final AC_ONLINE_PATH:Ljava/lang/String; = "/sys/class/power_supply/ac/online"

.field private static final HTC_DEBUG:Z = true

.field private static MobileTurnOff:Z = false

.field private static NoData_rxPkts:J = 0x0L

.field private static NoData_txPkts:J = 0x0L

.field private static POWERSAVERMODE_TURN_OFF_DATA_LINE_RETRY_TIME:J = 0x0L

.field private static POWERSAVERMODE_TURN_ON_DATA_LINE_TIME:J = 0x0L

.field private static POWERSAVERMODE_TURN_ON_DATA_TOTAL_TIME:J = 0x0L

.field private static final TAG:Ljava/lang/String; = "PowerSaverModeReceiver"

.field public static final USB_ONLINE_PATH:Ljava/lang/String; = "/sys/class/power_supply/usb/online"

.field private static WifiTurnOff:Z

.field private static dynamic_turnon_time:I

.field private static mCheckSendTurnOffWifi:Z

.field private static mPowerSaver_PendingIntent_Off_mobile:Landroid/app/PendingIntent;

.field private static mPowerSaver_PendingIntent_Off_mobile_retry:Landroid/app/PendingIntent;

.field private static mPowerSaver_PendingIntent_Off_wifi:Landroid/app/PendingIntent;

.field private static mPowerSaver_PendingIntent_Off_wifi_retry:Landroid/app/PendingIntent;

.field private static mPowerSaver_PendingIntent_On_mobile:Landroid/app/PendingIntent;

.field private static mPowerSaver_PendingIntent_On_wifi:Landroid/app/PendingIntent;

.field private static mSYSTEMWifMobileEnable:Z

.field private static preMobile_rxPkts:J

.field private static preMobile_txPkts:J

.field private static preWifi_rxPkts:J

.field private static preWifi_txPkts:J


# instance fields
.field private POWERSAVERMODE_STOP_CANCEL_ALL_ALARM:Ljava/lang/String;

.field private POWERSAVERMODE_TURN_OFF_MOBILE:Ljava/lang/String;

.field private POWERSAVERMODE_TURN_OFF_MOBILE_RETRY:Ljava/lang/String;

.field private POWERSAVERMODE_TURN_OFF_MOBILE_SN:Ljava/lang/String;

.field private POWERSAVERMODE_TURN_OFF_WIFI:Ljava/lang/String;

.field private POWERSAVERMODE_TURN_OFF_WIFI_RETRY:Ljava/lang/String;

.field private POWERSAVERMODE_TURN_ON_MOBILE:Ljava/lang/String;

.field private POWERSAVERMODE_TURN_ON_MOBILE_SN:Ljava/lang/String;

.field private POWERSAVERMODE_TURN_ON_WIFI:Ljava/lang/String;

.field private POWER_SLEEP_BROADCAST_STATUS:Ljava/lang/String;

.field private SMARTSYNC_SERVICE_BROADCAST_SCREEN_OFF:Ljava/lang/String;

.field private SMARTSYNC_SERVICE_BROADCAST_SCREEN_ON:Ljava/lang/String;

.field private mPowerSaverModeSharedpref:Landroid/content/SharedPreferences;

.field private mWakeLock:Landroid/os/PowerManager$WakeLock;

.field private mWiFiManager:Landroid/net/wifi/WifiManager;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const-wide/32 v0, 0x2bf20

    const-wide/16 v6, 0x78

    const-wide/16 v4, -0x1

    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 57
    sput-wide v0, Lcom/android/settings/framework/activity/powersaver/PowerSaverModeReceiver;->POWERSAVERMODE_TURN_OFF_DATA_LINE_RETRY_TIME:J

    .line 59
    sput-wide v0, Lcom/android/settings/framework/activity/powersaver/PowerSaverModeReceiver;->POWERSAVERMODE_TURN_ON_DATA_TOTAL_TIME:J

    .line 61
    const-wide/32 v0, 0x1b7740

    sput-wide v0, Lcom/android/settings/framework/activity/powersaver/PowerSaverModeReceiver;->POWERSAVERMODE_TURN_ON_DATA_LINE_TIME:J

    .line 64
    sput-object v2, Lcom/android/settings/framework/activity/powersaver/PowerSaverModeReceiver;->mPowerSaver_PendingIntent_Off_mobile_retry:Landroid/app/PendingIntent;

    .line 65
    sput-object v2, Lcom/android/settings/framework/activity/powersaver/PowerSaverModeReceiver;->mPowerSaver_PendingIntent_Off_wifi_retry:Landroid/app/PendingIntent;

    .line 67
    sput-object v2, Lcom/android/settings/framework/activity/powersaver/PowerSaverModeReceiver;->mPowerSaver_PendingIntent_Off_mobile:Landroid/app/PendingIntent;

    .line 68
    sput-object v2, Lcom/android/settings/framework/activity/powersaver/PowerSaverModeReceiver;->mPowerSaver_PendingIntent_Off_wifi:Landroid/app/PendingIntent;

    .line 71
    sput-object v2, Lcom/android/settings/framework/activity/powersaver/PowerSaverModeReceiver;->mPowerSaver_PendingIntent_On_mobile:Landroid/app/PendingIntent;

    .line 72
    sput-object v2, Lcom/android/settings/framework/activity/powersaver/PowerSaverModeReceiver;->mPowerSaver_PendingIntent_On_wifi:Landroid/app/PendingIntent;

    .line 75
    sput-boolean v3, Lcom/android/settings/framework/activity/powersaver/PowerSaverModeReceiver;->mSYSTEMWifMobileEnable:Z

    .line 79
    sput-wide v4, Lcom/android/settings/framework/activity/powersaver/PowerSaverModeReceiver;->preWifi_txPkts:J

    sput-wide v4, Lcom/android/settings/framework/activity/powersaver/PowerSaverModeReceiver;->preWifi_rxPkts:J

    .line 80
    sput-wide v4, Lcom/android/settings/framework/activity/powersaver/PowerSaverModeReceiver;->preMobile_txPkts:J

    sput-wide v4, Lcom/android/settings/framework/activity/powersaver/PowerSaverModeReceiver;->preMobile_rxPkts:J

    .line 82
    sput-wide v6, Lcom/android/settings/framework/activity/powersaver/PowerSaverModeReceiver;->NoData_txPkts:J

    sput-wide v6, Lcom/android/settings/framework/activity/powersaver/PowerSaverModeReceiver;->NoData_rxPkts:J

    .line 84
    sput v3, Lcom/android/settings/framework/activity/powersaver/PowerSaverModeReceiver;->dynamic_turnon_time:I

    .line 86
    sput-boolean v3, Lcom/android/settings/framework/activity/powersaver/PowerSaverModeReceiver;->mCheckSendTurnOffWifi:Z

    .line 88
    sput-boolean v3, Lcom/android/settings/framework/activity/powersaver/PowerSaverModeReceiver;->WifiTurnOff:Z

    .line 89
    sput-boolean v3, Lcom/android/settings/framework/activity/powersaver/PowerSaverModeReceiver;->MobileTurnOff:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 32
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 39
    const-string v0, "POWERSAVERMODE_TURN_OFF_MOBILE_SN"

    iput-object v0, p0, Lcom/android/settings/framework/activity/powersaver/PowerSaverModeReceiver;->POWERSAVERMODE_TURN_OFF_MOBILE_SN:Ljava/lang/String;

    .line 40
    const-string v0, "POWERSAVERMODE_TURN_ON_MOBILE_SN"

    iput-object v0, p0, Lcom/android/settings/framework/activity/powersaver/PowerSaverModeReceiver;->POWERSAVERMODE_TURN_ON_MOBILE_SN:Ljava/lang/String;

    .line 42
    const-string v0, "POWERSAVERMODE_TURN_OFF_WIFI"

    iput-object v0, p0, Lcom/android/settings/framework/activity/powersaver/PowerSaverModeReceiver;->POWERSAVERMODE_TURN_OFF_WIFI:Ljava/lang/String;

    .line 43
    const-string v0, "POWERSAVERMODE_TURN_OFF_MOBILE"

    iput-object v0, p0, Lcom/android/settings/framework/activity/powersaver/PowerSaverModeReceiver;->POWERSAVERMODE_TURN_OFF_MOBILE:Ljava/lang/String;

    .line 44
    const-string v0, "POWERSAVERMODE_TURN_ON_WIFI"

    iput-object v0, p0, Lcom/android/settings/framework/activity/powersaver/PowerSaverModeReceiver;->POWERSAVERMODE_TURN_ON_WIFI:Ljava/lang/String;

    .line 45
    const-string v0, "POWERSAVERMODE_TURN_ON_MOBILE"

    iput-object v0, p0, Lcom/android/settings/framework/activity/powersaver/PowerSaverModeReceiver;->POWERSAVERMODE_TURN_ON_MOBILE:Ljava/lang/String;

    .line 47
    const-string v0, "POWERSAVERMODE_TURN_OFF_WIFI_RETRY"

    iput-object v0, p0, Lcom/android/settings/framework/activity/powersaver/PowerSaverModeReceiver;->POWERSAVERMODE_TURN_OFF_WIFI_RETRY:Ljava/lang/String;

    .line 48
    const-string v0, "POWERSAVERMODE_TURN_OFF_MOBILE_RETRY"

    iput-object v0, p0, Lcom/android/settings/framework/activity/powersaver/PowerSaverModeReceiver;->POWERSAVERMODE_TURN_OFF_MOBILE_RETRY:Ljava/lang/String;

    .line 50
    const-string v0, "SMARTSYNC_SERVICE_BROADCAST_SCREEN_OFF"

    iput-object v0, p0, Lcom/android/settings/framework/activity/powersaver/PowerSaverModeReceiver;->SMARTSYNC_SERVICE_BROADCAST_SCREEN_OFF:Ljava/lang/String;

    .line 51
    const-string v0, "SMARTSYNC_SERVICE_BROADCAST_SCREEN_ON"

    iput-object v0, p0, Lcom/android/settings/framework/activity/powersaver/PowerSaverModeReceiver;->SMARTSYNC_SERVICE_BROADCAST_SCREEN_ON:Ljava/lang/String;

    .line 53
    const-string v0, "POWERSAVERMODE_STOP_CANCEL_ALL_ALARM"

    iput-object v0, p0, Lcom/android/settings/framework/activity/powersaver/PowerSaverModeReceiver;->POWERSAVERMODE_STOP_CANCEL_ALL_ALARM:Ljava/lang/String;

    .line 55
    const-string v0, "POWER_SLEEP_BROADCAST_STATUS"

    iput-object v0, p0, Lcom/android/settings/framework/activity/powersaver/PowerSaverModeReceiver;->POWER_SLEEP_BROADCAST_STATUS:Ljava/lang/String;

    .line 63
    iput-object v1, p0, Lcom/android/settings/framework/activity/powersaver/PowerSaverModeReceiver;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 77
    iput-object v1, p0, Lcom/android/settings/framework/activity/powersaver/PowerSaverModeReceiver;->mPowerSaverModeSharedpref:Landroid/content/SharedPreferences;

    return-void
.end method

.method private static isWifiHotSpotEnabled()Z
    .locals 7

    .prologue
    .line 602
    const/4 v3, 0x0

    .line 604
    .local v3, result:Z
    const-string v4, "network_management"

    invoke-static {v4}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 605
    .local v0, b:Landroid/os/IBinder;
    invoke-static {v0}, Landroid/os/INetworkManagementService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/INetworkManagementService;

    move-result-object v2

    .line 608
    .local v2, mNwService:Landroid/os/INetworkManagementService;
    :try_start_0
    invoke-interface {v2}, Landroid/os/INetworkManagementService;->getHotspotEnabled()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    .line 613
    :goto_0
    return v3

    .line 609
    :catch_0
    move-exception v1

    .line 610
    .local v1, e:Landroid/os/RemoteException;
    const-string v4, "PowerSaverModeReceiver"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "[isWifi] error to getHotspotEnabled:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method


# virtual methods
.method public BroadcastPowerSleepStatus(Landroid/content/Context;Z)V
    .locals 5
    .parameter "context"
    .parameter "states"

    .prologue
    .line 588
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 589
    .local v1, bundle:Landroid/os/Bundle;
    const-string v2, "PowerSleepStatus"

    invoke-virtual {v1, v2, p2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 590
    new-instance v0, Landroid/content/Intent;

    iget-object v2, p0, Lcom/android/settings/framework/activity/powersaver/PowerSaverModeReceiver;->POWER_SLEEP_BROADCAST_STATUS:Ljava/lang/String;

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 591
    .local v0, Intent_PowerSleep_Status:Landroid/content/Intent;
    invoke-virtual {v0, v1}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 592
    invoke-virtual {p1, v0}, Landroid/content/Context;->sendStickyBroadcast(Landroid/content/Intent;)V

    .line 595
    const-string v2, "PowerSaverModeReceiver"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "sendStickyBroadcast states="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 598
    return-void
.end method

.method public CheckAndSetNextTurnOnMobileNetwork(Landroid/content/Context;)I
    .locals 11
    .parameter "context"

    .prologue
    const/4 v9, 0x4

    const/4 v10, 0x0

    const/4 v8, 0x1

    .line 432
    const-string v6, "connectivity"

    invoke-virtual {p1, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/net/ConnectivityManager;

    .line 433
    .local v3, mConnetManager:Landroid/net/ConnectivityManager;
    const-string v6, "wifi"

    invoke-virtual {p1, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/net/wifi/WifiManager;

    iput-object v6, p0, Lcom/android/settings/framework/activity/powersaver/PowerSaverModeReceiver;->mWiFiManager:Landroid/net/wifi/WifiManager;

    .line 434
    invoke-virtual {v3}, Landroid/net/ConnectivityManager;->getMobileDataEnabled()Z

    move-result v6

    if-nez v6, :cond_2

    .line 436
    sget v6, Lcom/android/settings/framework/activity/powersaver/PowerSaverModeReceiver;->dynamic_turnon_time:I

    add-int/lit8 v6, v6, 0x1

    sput v6, Lcom/android/settings/framework/activity/powersaver/PowerSaverModeReceiver;->dynamic_turnon_time:I

    .line 438
    sget v6, Lcom/android/settings/framework/activity/powersaver/PowerSaverModeReceiver;->dynamic_turnon_time:I

    if-ge v6, v8, :cond_0

    .line 439
    sput v8, Lcom/android/settings/framework/activity/powersaver/PowerSaverModeReceiver;->dynamic_turnon_time:I

    .line 441
    :cond_0
    sget v6, Lcom/android/settings/framework/activity/powersaver/PowerSaverModeReceiver;->dynamic_turnon_time:I

    const/4 v7, 0x2

    if-le v6, v7, :cond_1

    .line 442
    sput v9, Lcom/android/settings/framework/activity/powersaver/PowerSaverModeReceiver;->dynamic_turnon_time:I

    .line 444
    :cond_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    .line 445
    .local v4, now:J
    const-string v6, "alarm"

    invoke-virtual {p1, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/AlarmManager;

    .line 447
    .local v1, alarmManager:Landroid/app/AlarmManager;
    iget-object v6, p0, Lcom/android/settings/framework/activity/powersaver/PowerSaverModeReceiver;->mPowerSaverModeSharedpref:Landroid/content/SharedPreferences;

    const-string v7, "PREF_MOBILE_STATES"

    invoke-interface {v6, v7, v8}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 449
    .local v0, Mobile_States:Z
    if-ne v0, v8, :cond_2

    sget v6, Lcom/android/settings/framework/activity/powersaver/PowerSaverModeReceiver;->dynamic_turnon_time:I

    if-eq v6, v9, :cond_2

    .line 451
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    .line 453
    new-instance v2, Landroid/content/Intent;

    iget-object v6, p0, Lcom/android/settings/framework/activity/powersaver/PowerSaverModeReceiver;->POWERSAVERMODE_TURN_ON_MOBILE:Ljava/lang/String;

    const/4 v7, 0x0

    const-class v8, Lcom/android/settings/framework/activity/powersaver/PowerSaverModeReceiver;

    invoke-direct {v2, v6, v7, p1, v8}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;Landroid/content/Context;Ljava/lang/Class;)V

    .line 456
    .local v2, intent_mobile_on:Landroid/content/Intent;
    invoke-static {p1, v10, v2, v10}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v6

    sput-object v6, Lcom/android/settings/framework/activity/powersaver/PowerSaverModeReceiver;->mPowerSaver_PendingIntent_On_mobile:Landroid/app/PendingIntent;

    .line 457
    sget v6, Lcom/android/settings/framework/activity/powersaver/PowerSaverModeReceiver;->dynamic_turnon_time:I

    int-to-long v6, v6

    sget-wide v8, Lcom/android/settings/framework/activity/powersaver/PowerSaverModeReceiver;->POWERSAVERMODE_TURN_ON_DATA_LINE_TIME:J

    mul-long/2addr v6, v8

    add-long/2addr v6, v4

    sget-object v8, Lcom/android/settings/framework/activity/powersaver/PowerSaverModeReceiver;->mPowerSaver_PendingIntent_On_mobile:Landroid/app/PendingIntent;

    invoke-virtual {v1, v10, v6, v7, v8}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V

    .line 461
    const-string v6, "PowerSaverModeReceiver"

    const-string v7, "CheckAndSetNextTurnOnMobileNetwork Set Next 30 minutes Alarm to POWERSAVERMODE_TURN_ON_MOBILE"

    invoke-static {v6, v7}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 466
    .end local v0           #Mobile_States:Z
    .end local v1           #alarmManager:Landroid/app/AlarmManager;
    .end local v2           #intent_mobile_on:Landroid/content/Intent;
    .end local v4           #now:J
    :cond_2
    sget v6, Lcom/android/settings/framework/activity/powersaver/PowerSaverModeReceiver;->dynamic_turnon_time:I

    return v6
.end method

.method public CheckAndSetNextTurnOnNetwork(Landroid/content/Context;)V
    .locals 13
    .parameter "context"

    .prologue
    .line 378
    const-string v8, "connectivity"

    invoke-virtual {p1, v8}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/net/ConnectivityManager;

    .line 379
    .local v5, mConnetManager:Landroid/net/ConnectivityManager;
    const-string v8, "wifi"

    invoke-virtual {p1, v8}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/net/wifi/WifiManager;

    iput-object v8, p0, Lcom/android/settings/framework/activity/powersaver/PowerSaverModeReceiver;->mWiFiManager:Landroid/net/wifi/WifiManager;

    .line 380
    invoke-virtual {v5}, Landroid/net/ConnectivityManager;->getMobileDataEnabled()Z

    move-result v8

    if-nez v8, :cond_3

    iget-object v8, p0, Lcom/android/settings/framework/activity/powersaver/PowerSaverModeReceiver;->mWiFiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v8}, Landroid/net/wifi/WifiManager;->isWifiEnabled()Z

    move-result v8

    if-nez v8, :cond_3

    .line 382
    sget v8, Lcom/android/settings/framework/activity/powersaver/PowerSaverModeReceiver;->dynamic_turnon_time:I

    add-int/lit8 v8, v8, 0x1

    sput v8, Lcom/android/settings/framework/activity/powersaver/PowerSaverModeReceiver;->dynamic_turnon_time:I

    .line 384
    sget v8, Lcom/android/settings/framework/activity/powersaver/PowerSaverModeReceiver;->dynamic_turnon_time:I

    const/4 v9, 0x1

    if-ge v8, v9, :cond_0

    .line 385
    const/4 v8, 0x1

    sput v8, Lcom/android/settings/framework/activity/powersaver/PowerSaverModeReceiver;->dynamic_turnon_time:I

    .line 387
    :cond_0
    sget v8, Lcom/android/settings/framework/activity/powersaver/PowerSaverModeReceiver;->dynamic_turnon_time:I

    const/4 v9, 0x2

    if-le v8, v9, :cond_1

    .line 388
    const/4 v8, 0x4

    sput v8, Lcom/android/settings/framework/activity/powersaver/PowerSaverModeReceiver;->dynamic_turnon_time:I

    .line 390
    :cond_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    .line 391
    .local v6, now:J
    const-string v8, "alarm"

    invoke-virtual {p1, v8}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/AlarmManager;

    .line 393
    .local v2, alarmManager:Landroid/app/AlarmManager;
    iget-object v8, p0, Lcom/android/settings/framework/activity/powersaver/PowerSaverModeReceiver;->mPowerSaverModeSharedpref:Landroid/content/SharedPreferences;

    const-string v9, "PREF_WIFI_STATES"

    const/4 v10, 0x1

    invoke-interface {v8, v9, v10}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    .line 395
    .local v1, Wifi_States:Z
    const/4 v8, 0x1

    if-ne v1, v8, :cond_2

    .line 398
    new-instance v4, Landroid/content/Intent;

    iget-object v8, p0, Lcom/android/settings/framework/activity/powersaver/PowerSaverModeReceiver;->POWERSAVERMODE_TURN_ON_WIFI:Ljava/lang/String;

    const/4 v9, 0x0

    const-class v10, Lcom/android/settings/framework/activity/powersaver/PowerSaverModeReceiver;

    invoke-direct {v4, v8, v9, p1, v10}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;Landroid/content/Context;Ljava/lang/Class;)V

    .line 401
    .local v4, intent_wifi_on:Landroid/content/Intent;
    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-static {p1, v8, v4, v9}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v8

    sput-object v8, Lcom/android/settings/framework/activity/powersaver/PowerSaverModeReceiver;->mPowerSaver_PendingIntent_On_wifi:Landroid/app/PendingIntent;

    .line 402
    const/4 v8, 0x0

    sget v9, Lcom/android/settings/framework/activity/powersaver/PowerSaverModeReceiver;->dynamic_turnon_time:I

    int-to-long v9, v9

    sget-wide v11, Lcom/android/settings/framework/activity/powersaver/PowerSaverModeReceiver;->POWERSAVERMODE_TURN_ON_DATA_LINE_TIME:J

    mul-long/2addr v9, v11

    add-long/2addr v9, v6

    sget-object v11, Lcom/android/settings/framework/activity/powersaver/PowerSaverModeReceiver;->mPowerSaver_PendingIntent_On_wifi:Landroid/app/PendingIntent;

    invoke-virtual {v2, v8, v9, v10, v11}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V

    .line 405
    const-string v8, "PowerSaverModeReceiver"

    const-string v9, "CheckAndSetNextTurnOnNetwork Set Next 30 minutes Alarm to POWERSAVERMODE_TURN_ON_WIFI"

    invoke-static {v8, v9}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 409
    .end local v4           #intent_wifi_on:Landroid/content/Intent;
    :cond_2
    iget-object v8, p0, Lcom/android/settings/framework/activity/powersaver/PowerSaverModeReceiver;->mPowerSaverModeSharedpref:Landroid/content/SharedPreferences;

    const-string v9, "PREF_MOBILE_STATES"

    const/4 v10, 0x1

    invoke-interface {v8, v9, v10}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 411
    .local v0, Mobile_States:Z
    const/4 v8, 0x1

    if-ne v0, v8, :cond_3

    .line 413
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    .line 415
    new-instance v3, Landroid/content/Intent;

    iget-object v8, p0, Lcom/android/settings/framework/activity/powersaver/PowerSaverModeReceiver;->POWERSAVERMODE_TURN_ON_MOBILE:Ljava/lang/String;

    const/4 v9, 0x0

    const-class v10, Lcom/android/settings/framework/activity/powersaver/PowerSaverModeReceiver;

    invoke-direct {v3, v8, v9, p1, v10}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;Landroid/content/Context;Ljava/lang/Class;)V

    .line 418
    .local v3, intent_mobile_on:Landroid/content/Intent;
    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-static {p1, v8, v3, v9}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v8

    sput-object v8, Lcom/android/settings/framework/activity/powersaver/PowerSaverModeReceiver;->mPowerSaver_PendingIntent_On_mobile:Landroid/app/PendingIntent;

    .line 419
    const/4 v8, 0x0

    sget v9, Lcom/android/settings/framework/activity/powersaver/PowerSaverModeReceiver;->dynamic_turnon_time:I

    int-to-long v9, v9

    sget-wide v11, Lcom/android/settings/framework/activity/powersaver/PowerSaverModeReceiver;->POWERSAVERMODE_TURN_ON_DATA_LINE_TIME:J

    mul-long/2addr v9, v11

    add-long/2addr v9, v6

    sget-object v11, Lcom/android/settings/framework/activity/powersaver/PowerSaverModeReceiver;->mPowerSaver_PendingIntent_On_mobile:Landroid/app/PendingIntent;

    invoke-virtual {v2, v8, v9, v10, v11}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V

    .line 422
    const-string v8, "PowerSaverModeReceiver"

    const-string v9, "Set Next 30 minutes Alarm to POWERSAVERMODE_TURN_ON_MOBILE"

    invoke-static {v8, v9}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 428
    .end local v0           #Mobile_States:Z
    .end local v1           #Wifi_States:Z
    .end local v2           #alarmManager:Landroid/app/AlarmManager;
    .end local v3           #intent_mobile_on:Landroid/content/Intent;
    .end local v6           #now:J
    :cond_3
    return-void
.end method

.method public CheckDataSendingReceiving(Landroid/content/Context;)Z
    .locals 21
    .parameter "context"

    .prologue
    .line 508
    const/4 v11, 0x0

    .line 509
    .local v11, result:Z
    const-wide/16 v12, 0x0

    .local v12, sent:J
    const-wide/16 v9, 0x0

    .line 510
    .local v9, received:J
    const-wide/16 v7, -0x1

    .local v7, TotalTxPkts:J
    const-wide/16 v5, -0x1

    .line 511
    .local v5, TotalRxPkts:J
    const-wide/16 v14, 0x0

    .line 512
    .local v14, stop_time:J
    const-wide/16 v16, 0x0

    .line 514
    .local v16, total_txrx_page:J
    const-wide/16 v3, -0x1

    .local v3, Mobile_txPkts:J
    const-wide/16 v1, -0x1

    .line 516
    .local v1, Mobile_rxPkts:J
    invoke-static {}, Landroid/net/TrafficStats;->getMobileTxPackets()J

    move-result-wide v3

    .line 517
    invoke-static {}, Landroid/net/TrafficStats;->getMobileRxPackets()J

    move-result-wide v1

    .line 519
    const-string v18, "PowerSaverModeReceiver"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "CheckDataSendingReceiving Mobile_txPkts="

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 520
    const-string v18, "PowerSaverModeReceiver"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "CheckDataSendingReceiving Mobile_rxPkts="

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 522
    const-wide/16 v18, 0x0

    cmp-long v18, v3, v18

    if-gtz v18, :cond_0

    const-wide/16 v18, 0x0

    cmp-long v18, v1, v18

    if-lez v18, :cond_1

    .line 524
    :cond_0
    sget-wide v18, Lcom/android/settings/framework/activity/powersaver/PowerSaverModeReceiver;->preMobile_txPkts:J

    sub-long v12, v3, v18

    .line 525
    sget-wide v18, Lcom/android/settings/framework/activity/powersaver/PowerSaverModeReceiver;->preMobile_rxPkts:J

    sub-long v9, v1, v18

    .line 527
    add-long v16, v12, v9

    .line 529
    const-string v18, "PowerSaverModeReceiver"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "CheckDataSendingReceiving sent="

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 530
    const-string v18, "PowerSaverModeReceiver"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "CheckDataSendingReceiving received="

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 532
    sget-wide v18, Lcom/android/settings/framework/activity/powersaver/PowerSaverModeReceiver;->NoData_txPkts:J

    cmp-long v18, v16, v18

    if-lez v18, :cond_1

    .line 534
    const/4 v11, 0x1

    .line 538
    :cond_1
    sput-wide v3, Lcom/android/settings/framework/activity/powersaver/PowerSaverModeReceiver;->preMobile_txPkts:J

    .line 539
    sput-wide v1, Lcom/android/settings/framework/activity/powersaver/PowerSaverModeReceiver;->preMobile_rxPkts:J

    .line 541
    return v11
.end method

.method public CheckWifiDataSendingReceiving(Landroid/content/Context;)Z
    .locals 17
    .parameter "context"

    .prologue
    .line 546
    const/4 v7, 0x0

    .line 547
    .local v7, result:Z
    const-wide/16 v8, 0x0

    .local v8, sent:J
    const-wide/16 v5, 0x0

    .line 548
    .local v5, received:J
    const-wide/16 v10, 0x0

    .line 549
    .local v10, stop_time:J
    const-wide/16 v12, 0x0

    .line 551
    .local v12, total_txrx_page:J
    const-wide/16 v2, -0x1

    .local v2, Wifi_txPkts:J
    const-wide/16 v0, -0x1

    .line 553
    .local v0, Wifi_rxPkts:J
    const-string v14, "wifi.interface"

    const-string v15, "tiwlan0"

    invoke-static {v14, v15}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 555
    .local v4, ifname:Ljava/lang/String;
    invoke-static {v4}, Landroid/net/TrafficStats;->getTxPackets(Ljava/lang/String;)J

    move-result-wide v2

    .line 556
    invoke-static {v4}, Landroid/net/TrafficStats;->getRxPackets(Ljava/lang/String;)J

    move-result-wide v0

    .line 558
    const-string v14, "PowerSaverModeReceiver"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "CheckWifiDataSendingReceiving Wifi_txPkts="

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 559
    const-string v14, "PowerSaverModeReceiver"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "CheckWifiDataSendingReceiving Wifi_rxPkts="

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 561
    const-wide/16 v14, 0x0

    cmp-long v14, v2, v14

    if-gtz v14, :cond_0

    const-wide/16 v14, 0x0

    cmp-long v14, v0, v14

    if-lez v14, :cond_1

    .line 563
    :cond_0
    sget-wide v14, Lcom/android/settings/framework/activity/powersaver/PowerSaverModeReceiver;->preWifi_txPkts:J

    sub-long v8, v2, v14

    .line 564
    sget-wide v14, Lcom/android/settings/framework/activity/powersaver/PowerSaverModeReceiver;->preWifi_rxPkts:J

    sub-long v5, v0, v14

    .line 566
    add-long v12, v8, v5

    .line 568
    const-string v14, "PowerSaverModeReceiver"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "CheckWifiDataSendingReceiving sent="

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 569
    const-string v14, "PowerSaverModeReceiver"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "CheckWifiDataSendingReceiving received="

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 573
    sget-wide v14, Lcom/android/settings/framework/activity/powersaver/PowerSaverModeReceiver;->NoData_txPkts:J

    cmp-long v14, v12, v14

    if-lez v14, :cond_1

    .line 575
    const/4 v7, 0x1

    .line 579
    :cond_1
    sput-wide v2, Lcom/android/settings/framework/activity/powersaver/PowerSaverModeReceiver;->preWifi_txPkts:J

    .line 580
    sput-wide v0, Lcom/android/settings/framework/activity/powersaver/PowerSaverModeReceiver;->preWifi_rxPkts:J

    .line 582
    return v7
.end method

.method public getBooleanFromFile(Ljava/lang/String;)Z
    .locals 9
    .parameter "path"

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 476
    :try_start_0
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 477
    .local v1, file:Ljava/io/File;
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v6

    if-nez v6, :cond_1

    .line 478
    :cond_0
    const-string v4, "PowerSaverModeReceiver"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "getBooleanFromFile() - File does not exist!! : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    move v4, v5

    .line 501
    .end local v1           #file:Ljava/io/File;
    :goto_0
    return v4

    .line 481
    .restart local v1       #file:Ljava/io/File;
    :cond_1
    const/4 v2, 0x0

    .line 482
    .local v2, input:Ljava/io/BufferedReader;
    new-instance v2, Ljava/io/BufferedReader;

    .end local v2           #input:Ljava/io/BufferedReader;
    new-instance v6, Ljava/io/FileReader;

    invoke-direct {v6, v1}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V

    const/4 v7, 0x1

    invoke-direct {v2, v6, v7}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;I)V

    .line 483
    .restart local v2       #input:Ljava/io/BufferedReader;
    const/4 v3, 0x0

    .line 484
    .local v3, line:Ljava/lang/String;
    if-nez v2, :cond_2

    .line 485
    const-string v6, "PowerSaverModeReceiver"

    const-string v7, "getBooleanFromFile() - BufferedReader input = null"

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 492
    :goto_1
    if-eqz v3, :cond_3

    const/4 v6, 0x0

    invoke-virtual {v3, v6}, Ljava/lang/String;->charAt(I)C

    move-result v6

    const/16 v7, 0x31

    if-ne v6, v7, :cond_3

    .line 493
    const-string v6, "PowerSaverModeReceiver"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "getBooleanFromFile() -  true ="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 499
    .end local v1           #file:Ljava/io/File;
    .end local v2           #input:Ljava/io/BufferedReader;
    .end local v3           #line:Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 500
    .local v0, ex:Ljava/lang/Exception;
    const-string v4, "PowerSaverModeReceiver"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "getBooleanFromFile() - Exception"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    move v4, v5

    .line 501
    goto :goto_0

    .line 488
    .end local v0           #ex:Ljava/lang/Exception;
    .restart local v1       #file:Ljava/io/File;
    .restart local v2       #input:Ljava/io/BufferedReader;
    .restart local v3       #line:Ljava/lang/String;
    :cond_2
    :try_start_1
    invoke-virtual {v2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v3

    .line 489
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V

    goto :goto_1

    .line 496
    :cond_3
    const-string v4, "PowerSaverModeReceiver"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "getBooleanFromFile() -  false ="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move v4, v5

    .line 497
    goto :goto_0
.end method

.method public isCharging()Z
    .locals 3

    .prologue
    .line 470
    const-string v2, "/sys/class/power_supply/ac/online"

    invoke-virtual {p0, v2}, Lcom/android/settings/framework/activity/powersaver/PowerSaverModeReceiver;->getBooleanFromFile(Ljava/lang/String;)Z

    move-result v0

    .line 471
    .local v0, ac:Z
    const-string v2, "/sys/class/power_supply/usb/online"

    invoke-virtual {p0, v2}, Lcom/android/settings/framework/activity/powersaver/PowerSaverModeReceiver;->getBooleanFromFile(Ljava/lang/String;)Z

    move-result v1

    .line 472
    .local v1, usb:Z
    if-nez v0, :cond_0

    if-eqz v1, :cond_1

    :cond_0
    const/4 v2, 0x1

    :goto_0
    return v2

    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 24
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 93
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v6

    .line 96
    .local v6, action:Ljava/lang/String;
    const-string v20, "SMARTSYNC_SHARED"

    const/16 v21, 0x0

    move-object/from16 v0, p1

    move-object/from16 v1, v20

    move/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v20

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/framework/activity/powersaver/PowerSaverModeReceiver;->mPowerSaverModeSharedpref:Landroid/content/SharedPreferences;

    .line 99
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/framework/activity/powersaver/PowerSaverModeReceiver;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    move-object/from16 v20, v0

    if-nez v20, :cond_0

    .line 100
    const-string v20, "power"

    move-object/from16 v0, p1

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Landroid/os/PowerManager;

    .line 101
    .local v19, pm:Landroid/os/PowerManager;
    const/16 v20, 0x1

    const-string v21, "PowerSaverModeReceiver"

    invoke-virtual/range {v19 .. v21}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v20

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/framework/activity/powersaver/PowerSaverModeReceiver;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 102
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/framework/activity/powersaver/PowerSaverModeReceiver;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    move-object/from16 v20, v0

    const/16 v21, 0x1

    invoke-virtual/range {v20 .. v21}, Landroid/os/PowerManager$WakeLock;->setReferenceCounted(Z)V

    .line 105
    .end local v19           #pm:Landroid/os/PowerManager;
    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/framework/activity/powersaver/PowerSaverModeReceiver;->SMARTSYNC_SERVICE_BROADCAST_SCREEN_ON:Ljava/lang/String;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_3

    .line 107
    const-string v20, "alarm"

    move-object/from16 v0, p1

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/app/AlarmManager;

    .line 108
    .local v7, alarmManager:Landroid/app/AlarmManager;
    sget-object v20, Lcom/android/settings/framework/activity/powersaver/PowerSaverModeReceiver;->mPowerSaver_PendingIntent_Off_mobile_retry:Landroid/app/PendingIntent;

    move-object/from16 v0, v20

    invoke-virtual {v7, v0}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    .line 109
    sget-object v20, Lcom/android/settings/framework/activity/powersaver/PowerSaverModeReceiver;->mPowerSaver_PendingIntent_Off_wifi_retry:Landroid/app/PendingIntent;

    move-object/from16 v0, v20

    invoke-virtual {v7, v0}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    .line 110
    sget-object v20, Lcom/android/settings/framework/activity/powersaver/PowerSaverModeReceiver;->mPowerSaver_PendingIntent_Off_mobile:Landroid/app/PendingIntent;

    move-object/from16 v0, v20

    invoke-virtual {v7, v0}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    .line 111
    sget-object v20, Lcom/android/settings/framework/activity/powersaver/PowerSaverModeReceiver;->mPowerSaver_PendingIntent_Off_wifi:Landroid/app/PendingIntent;

    move-object/from16 v0, v20

    invoke-virtual {v7, v0}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    .line 112
    sget-object v20, Lcom/android/settings/framework/activity/powersaver/PowerSaverModeReceiver;->mPowerSaver_PendingIntent_On_mobile:Landroid/app/PendingIntent;

    move-object/from16 v0, v20

    invoke-virtual {v7, v0}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    .line 113
    sget-object v20, Lcom/android/settings/framework/activity/powersaver/PowerSaverModeReceiver;->mPowerSaver_PendingIntent_On_wifi:Landroid/app/PendingIntent;

    move-object/from16 v0, v20

    invoke-virtual {v7, v0}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    .line 115
    const-string v20, "PowerSaverModeReceiver"

    const-string v21, "SMARTSYNC_SERVICE_BROADCAST_SCREEN_ON"

    invoke-static/range {v20 .. v21}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 117
    const/16 v20, 0x0

    sput-boolean v20, Lcom/android/settings/framework/activity/powersaver/PowerSaverModeReceiver;->mSYSTEMWifMobileEnable:Z

    .line 118
    const/16 v20, 0x0

    sput v20, Lcom/android/settings/framework/activity/powersaver/PowerSaverModeReceiver;->dynamic_turnon_time:I

    .line 119
    const/16 v20, 0x0

    sput-boolean v20, Lcom/android/settings/framework/activity/powersaver/PowerSaverModeReceiver;->mCheckSendTurnOffWifi:Z

    .line 370
    .end local v7           #alarmManager:Landroid/app/AlarmManager;
    :cond_1
    :goto_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/framework/activity/powersaver/PowerSaverModeReceiver;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v20

    const/16 v21, 0x1

    move/from16 v0, v20

    move/from16 v1, v21

    if-ne v0, v1, :cond_2

    .line 372
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/framework/activity/powersaver/PowerSaverModeReceiver;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 374
    :cond_2
    return-void

    .line 121
    :cond_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/framework/activity/powersaver/PowerSaverModeReceiver;->POWERSAVERMODE_STOP_CANCEL_ALL_ALARM:Ljava/lang/String;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_4

    .line 123
    const-string v20, "alarm"

    move-object/from16 v0, p1

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/app/AlarmManager;

    .line 124
    .restart local v7       #alarmManager:Landroid/app/AlarmManager;
    sget-object v20, Lcom/android/settings/framework/activity/powersaver/PowerSaverModeReceiver;->mPowerSaver_PendingIntent_Off_mobile_retry:Landroid/app/PendingIntent;

    move-object/from16 v0, v20

    invoke-virtual {v7, v0}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    .line 125
    sget-object v20, Lcom/android/settings/framework/activity/powersaver/PowerSaverModeReceiver;->mPowerSaver_PendingIntent_Off_wifi_retry:Landroid/app/PendingIntent;

    move-object/from16 v0, v20

    invoke-virtual {v7, v0}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    .line 126
    sget-object v20, Lcom/android/settings/framework/activity/powersaver/PowerSaverModeReceiver;->mPowerSaver_PendingIntent_Off_mobile:Landroid/app/PendingIntent;

    move-object/from16 v0, v20

    invoke-virtual {v7, v0}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    .line 127
    sget-object v20, Lcom/android/settings/framework/activity/powersaver/PowerSaverModeReceiver;->mPowerSaver_PendingIntent_Off_wifi:Landroid/app/PendingIntent;

    move-object/from16 v0, v20

    invoke-virtual {v7, v0}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    .line 128
    sget-object v20, Lcom/android/settings/framework/activity/powersaver/PowerSaverModeReceiver;->mPowerSaver_PendingIntent_On_mobile:Landroid/app/PendingIntent;

    move-object/from16 v0, v20

    invoke-virtual {v7, v0}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    .line 129
    sget-object v20, Lcom/android/settings/framework/activity/powersaver/PowerSaverModeReceiver;->mPowerSaver_PendingIntent_On_wifi:Landroid/app/PendingIntent;

    move-object/from16 v0, v20

    invoke-virtual {v7, v0}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    .line 130
    const-string v20, "PowerSaverModeReceiver"

    const-string v21, "POWERSAVERMODE_STOP_CANCEL_ALL_ALARM"

    invoke-static/range {v20 .. v21}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 131
    const/16 v20, 0x0

    sput-boolean v20, Lcom/android/settings/framework/activity/powersaver/PowerSaverModeReceiver;->mSYSTEMWifMobileEnable:Z

    .line 132
    const/16 v20, 0x0

    sput v20, Lcom/android/settings/framework/activity/powersaver/PowerSaverModeReceiver;->dynamic_turnon_time:I

    .line 134
    const/16 v20, 0x0

    sput-boolean v20, Lcom/android/settings/framework/activity/powersaver/PowerSaverModeReceiver;->mCheckSendTurnOffWifi:Z

    goto :goto_0

    .line 136
    .end local v7           #alarmManager:Landroid/app/AlarmManager;
    :cond_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/framework/activity/powersaver/PowerSaverModeReceiver;->SMARTSYNC_SERVICE_BROADCAST_SCREEN_OFF:Ljava/lang/String;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_6

    .line 138
    const-string v20, "PowerSaverModeReceiver"

    const-string v21, "SMARTSYNC_SERVICE_BROADCAST_SCREEN_OFF"

    invoke-static/range {v20 .. v21}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 140
    const-string v20, "wifi"

    move-object/from16 v0, p1

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Landroid/net/wifi/WifiManager;

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/framework/activity/powersaver/PowerSaverModeReceiver;->mWiFiManager:Landroid/net/wifi/WifiManager;

    .line 141
    const-string v20, "connectivity"

    move-object/from16 v0, p1

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Landroid/net/ConnectivityManager;

    .line 143
    .local v16, mConnetManager:Landroid/net/ConnectivityManager;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/framework/activity/powersaver/PowerSaverModeReceiver;->mWiFiManager:Landroid/net/wifi/WifiManager;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Landroid/net/wifi/WifiManager;->isWifiEnabled()Z

    move-result v20

    const/16 v21, 0x1

    move/from16 v0, v20

    move/from16 v1, v21

    if-ne v0, v1, :cond_5

    invoke-virtual/range {v16 .. v16}, Landroid/net/ConnectivityManager;->getMobileDataEnabled()Z

    move-result v20

    const/16 v21, 0x1

    move/from16 v0, v20

    move/from16 v1, v21

    if-ne v0, v1, :cond_5

    .line 144
    const/16 v20, 0x1

    sput-boolean v20, Lcom/android/settings/framework/activity/powersaver/PowerSaverModeReceiver;->mSYSTEMWifMobileEnable:Z

    .line 146
    :cond_5
    invoke-static {}, Landroid/net/TrafficStats;->getMobileTxPackets()J

    move-result-wide v20

    sput-wide v20, Lcom/android/settings/framework/activity/powersaver/PowerSaverModeReceiver;->preMobile_txPkts:J

    .line 147
    invoke-static {}, Landroid/net/TrafficStats;->getMobileRxPackets()J

    move-result-wide v20

    sput-wide v20, Lcom/android/settings/framework/activity/powersaver/PowerSaverModeReceiver;->preMobile_rxPkts:J

    .line 149
    const-string v20, "PowerSaverModeReceiver"

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "SMARTSYNC_SERVICE_BROADCAST_SCREEN_OFF  preMobile_txPkts="

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    sget-wide v22, Lcom/android/settings/framework/activity/powersaver/PowerSaverModeReceiver;->preMobile_txPkts:J

    invoke-virtual/range {v21 .. v23}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 150
    const-string v20, "PowerSaverModeReceiver"

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "SMARTSYNC_SERVICE_BROADCAST_SCREEN_OFF  preMobile_rxPkts= "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    sget-wide v22, Lcom/android/settings/framework/activity/powersaver/PowerSaverModeReceiver;->preMobile_rxPkts:J

    invoke-virtual/range {v21 .. v23}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 152
    const-string v20, "wifi.interface"

    const-string v21, "tiwlan0"

    invoke-static/range {v20 .. v21}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 154
    .local v8, ifname:Ljava/lang/String;
    invoke-static {v8}, Landroid/net/TrafficStats;->getTxPackets(Ljava/lang/String;)J

    move-result-wide v20

    sput-wide v20, Lcom/android/settings/framework/activity/powersaver/PowerSaverModeReceiver;->preWifi_txPkts:J

    .line 155
    invoke-static {v8}, Landroid/net/TrafficStats;->getRxPackets(Ljava/lang/String;)J

    move-result-wide v20

    sput-wide v20, Lcom/android/settings/framework/activity/powersaver/PowerSaverModeReceiver;->preWifi_rxPkts:J

    .line 157
    const-string v20, "PowerSaverModeReceiver"

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "SMARTSYNC_SERVICE_BROADCAST_SCREEN_OFF  preWifi_txPkts="

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    sget-wide v22, Lcom/android/settings/framework/activity/powersaver/PowerSaverModeReceiver;->preWifi_txPkts:J

    invoke-virtual/range {v21 .. v23}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 158
    const-string v20, "PowerSaverModeReceiver"

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "SMARTSYNC_SERVICE_BROADCAST_SCREEN_OFF  preWifi_rxPkts= "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    sget-wide v22, Lcom/android/settings/framework/activity/powersaver/PowerSaverModeReceiver;->preWifi_rxPkts:J

    invoke-virtual/range {v21 .. v23}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 160
    const/16 v20, 0x0

    sput v20, Lcom/android/settings/framework/activity/powersaver/PowerSaverModeReceiver;->dynamic_turnon_time:I

    .line 161
    const/16 v20, 0x0

    sput-boolean v20, Lcom/android/settings/framework/activity/powersaver/PowerSaverModeReceiver;->mCheckSendTurnOffWifi:Z

    goto/16 :goto_0

    .line 163
    .end local v8           #ifname:Ljava/lang/String;
    .end local v16           #mConnetManager:Landroid/net/ConnectivityManager;
    :cond_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/framework/activity/powersaver/PowerSaverModeReceiver;->POWERSAVERMODE_TURN_OFF_WIFI:Ljava/lang/String;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-nez v20, :cond_7

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/framework/activity/powersaver/PowerSaverModeReceiver;->POWERSAVERMODE_TURN_OFF_WIFI_RETRY:Ljava/lang/String;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_c

    .line 167
    :cond_7
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v20

    const-string v21, "smartsync_turn_off_wifi"

    const/16 v22, 0x1

    invoke-static/range {v20 .. v22}, Lcom/htc/wrap/android/provider/HtcWrapSettings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v20

    const/16 v21, 0x1

    move/from16 v0, v20

    move/from16 v1, v21

    if-ne v0, v1, :cond_b

    .line 168
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/framework/activity/powersaver/PowerSaverModeReceiver;->mPowerSaverModeSharedpref:Landroid/content/SharedPreferences;

    move-object/from16 v20, v0

    invoke-interface/range {v20 .. v20}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v20

    const-string v21, "PREF_ENTER_POWER_SLEEP_STATES"

    const/16 v22, 0x1

    invoke-interface/range {v20 .. v22}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v20

    invoke-interface/range {v20 .. v20}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 169
    const/16 v20, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Lcom/android/settings/framework/activity/powersaver/PowerSaverModeReceiver;->BroadcastPowerSleepStatus(Landroid/content/Context;Z)V

    .line 170
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/framework/activity/powersaver/PowerSaverModeReceiver;->mPowerSaverModeSharedpref:Landroid/content/SharedPreferences;

    move-object/from16 v20, v0

    invoke-interface/range {v20 .. v20}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v20

    const-string v21, "PREF_CHANGE_WIFI_STATES"

    const/16 v22, 0x0

    invoke-interface/range {v20 .. v22}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v20

    invoke-interface/range {v20 .. v20}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 171
    const-string v20, "PowerSaverModeReceiver"

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "isWifiHotSpotEnabled():"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-static {}, Lcom/android/settings/framework/activity/powersaver/PowerSaverModeReceiver;->isWifiHotSpotEnabled()Z

    move-result v22

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 173
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/framework/activity/powersaver/PowerSaverModeReceiver;->isCharging()Z

    move-result v20

    if-nez v20, :cond_1

    invoke-static {}, Lcom/android/settings/framework/activity/powersaver/PowerSaverModeReceiver;->isWifiHotSpotEnabled()Z

    move-result v20

    if-nez v20, :cond_1

    .line 176
    invoke-virtual/range {p0 .. p1}, Lcom/android/settings/framework/activity/powersaver/PowerSaverModeReceiver;->CheckWifiDataSendingReceiving(Landroid/content/Context;)Z

    move-result v20

    if-nez v20, :cond_a

    .line 178
    const-string v20, "wifi"

    move-object/from16 v0, p1

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Landroid/net/wifi/WifiManager;

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/framework/activity/powersaver/PowerSaverModeReceiver;->mWiFiManager:Landroid/net/wifi/WifiManager;

    .line 179
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/framework/activity/powersaver/PowerSaverModeReceiver;->mPowerSaverModeSharedpref:Landroid/content/SharedPreferences;

    move-object/from16 v20, v0

    const-string v21, "PREF_SCREEN_ON_OFF_INTENT_RECEIVER"

    const/16 v22, 0x1

    invoke-interface/range {v20 .. v22}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v4

    .line 180
    .local v4, SystemScreenOnStatus:Z
    const-string v20, "PowerSaverModeReceiver"

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "POWERSAVERMODE_TURN_OFF_WIFI\tSystemScreenOnStatus= "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 182
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/framework/activity/powersaver/PowerSaverModeReceiver;->mWiFiManager:Landroid/net/wifi/WifiManager;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Landroid/net/wifi/WifiManager;->isWifiEnabled()Z

    move-result v20

    const/16 v21, 0x1

    move/from16 v0, v20

    move/from16 v1, v21

    if-ne v0, v1, :cond_8

    if-nez v4, :cond_8

    .line 186
    const-string v20, "PowerSaverModeReceiver"

    const-string v21, "SMARTSYNC_TURN_OFF_WIFI  mWiFiManager.setWifiEnabled(false) "

    invoke-static/range {v20 .. v21}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 188
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/framework/activity/powersaver/PowerSaverModeReceiver;->mWiFiManager:Landroid/net/wifi/WifiManager;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    invoke-virtual/range {v20 .. v21}, Landroid/net/wifi/WifiManager;->setWifiEnabled(Z)Z

    .line 189
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/framework/activity/powersaver/PowerSaverModeReceiver;->mPowerSaverModeSharedpref:Landroid/content/SharedPreferences;

    move-object/from16 v20, v0

    invoke-interface/range {v20 .. v20}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v20

    const-string v21, "PREF_CHANGE_WIFI_STATES"

    const/16 v22, 0x1

    invoke-interface/range {v20 .. v22}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v20

    invoke-interface/range {v20 .. v20}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 190
    sget-boolean v20, Lcom/android/settings/framework/activity/powersaver/PowerSaverModeReceiver;->mSYSTEMWifMobileEnable:Z

    const/16 v21, 0x1

    move/from16 v0, v20

    move/from16 v1, v21

    if-ne v0, v1, :cond_8

    .line 192
    const-string v20, "connectivity"

    move-object/from16 v0, p1

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Landroid/net/ConnectivityManager;

    .line 193
    .restart local v16       #mConnetManager:Landroid/net/ConnectivityManager;
    invoke-virtual/range {v16 .. v16}, Landroid/net/ConnectivityManager;->getMobileDataEnabled()Z

    move-result v20

    const/16 v21, 0x1

    move/from16 v0, v20

    move/from16 v1, v21

    if-ne v0, v1, :cond_8

    .line 195
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/framework/activity/powersaver/PowerSaverModeReceiver;->mPowerSaverModeSharedpref:Landroid/content/SharedPreferences;

    move-object/from16 v20, v0

    invoke-interface/range {v20 .. v20}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v20

    const-string v21, "PREF_CHANGE_MOBILE_STATES"

    const/16 v22, 0x1

    invoke-interface/range {v20 .. v22}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v20

    invoke-interface/range {v20 .. v20}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 198
    const-string v20, "PowerSaverModeReceiver"

    const-string v21, "SMARTSYNC_TURN_OFF_WIFI SMARTSYNC_TURN_OFF_MOBILE  mConnetManager.setMobileDataEnabled(false) "

    invoke-static/range {v20 .. v21}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 200
    const/16 v20, 0x0

    move-object/from16 v0, v16

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/net/ConnectivityManager;->setMobileDataEnabled(Z)V

    .line 207
    .end local v16           #mConnetManager:Landroid/net/ConnectivityManager;
    :cond_8
    const-string v20, "PowerSaverModeReceiver"

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "SMARTSYNC_TURN_OFF_MOBILE  check  dynamic_turnon_time="

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    sget v22, Lcom/android/settings/framework/activity/powersaver/PowerSaverModeReceiver;->dynamic_turnon_time:I

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 209
    invoke-virtual/range {p0 .. p1}, Lcom/android/settings/framework/activity/powersaver/PowerSaverModeReceiver;->CheckAndSetNextTurnOnMobileNetwork(Landroid/content/Context;)I

    move-result v20

    const/16 v21, 0x4

    move/from16 v0, v20

    move/from16 v1, v21

    if-ne v0, v1, :cond_1

    .line 211
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/framework/activity/powersaver/PowerSaverModeReceiver;->mPowerSaverModeSharedpref:Landroid/content/SharedPreferences;

    move-object/from16 v20, v0

    const-string v21, "PREF_WIFI_STATES"

    const/16 v22, 0x1

    invoke-interface/range {v20 .. v22}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v5

    .line 212
    .local v5, Wifi_States:Z
    const/16 v20, 0x1

    move/from16 v0, v20

    if-ne v5, v0, :cond_9

    sget-boolean v20, Lcom/android/settings/framework/activity/powersaver/PowerSaverModeReceiver;->mCheckSendTurnOffWifi:Z

    if-nez v20, :cond_9

    .line 214
    new-instance v13, Landroid/content/Intent;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/framework/activity/powersaver/PowerSaverModeReceiver;->POWERSAVERMODE_TURN_OFF_WIFI:Ljava/lang/String;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    const-class v22, Lcom/android/settings/framework/activity/powersaver/PowerSaverModeReceiver;

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    move-object/from16 v2, p1

    move-object/from16 v3, v22

    invoke-direct {v13, v0, v1, v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;Landroid/content/Context;Ljava/lang/Class;)V

    .line 217
    .local v13, intent_power_saver_mode_wifi:Landroid/content/Intent;
    move-object/from16 v0, p1

    invoke-virtual {v0, v13}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 218
    const/16 v20, 0x1

    sput-boolean v20, Lcom/android/settings/framework/activity/powersaver/PowerSaverModeReceiver;->mCheckSendTurnOffWifi:Z

    .line 219
    const-string v20, "PowerSaverModeReceiver"

    const-string v21, "POWERSAVERMODE_TURN_OFF_MOBILE  ((Wifi_States==true)&&(mCheckSendTurnOffWifi==false)) "

    invoke-static/range {v20 .. v21}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 221
    .end local v13           #intent_power_saver_mode_wifi:Landroid/content/Intent;
    :cond_9
    invoke-virtual/range {p0 .. p1}, Lcom/android/settings/framework/activity/powersaver/PowerSaverModeReceiver;->CheckAndSetNextTurnOnNetwork(Landroid/content/Context;)V

    goto/16 :goto_0

    .line 228
    .end local v4           #SystemScreenOnStatus:Z
    .end local v5           #Wifi_States:Z
    :cond_a
    const-string v20, "PowerSaverModeReceiver"

    const-string v21, "SMARTSYNC_TURN_OFF_WIFI  Off_wifi_retry "

    invoke-static/range {v20 .. v21}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 230
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v17

    .line 231
    .local v17, now:J
    const-string v20, "alarm"

    move-object/from16 v0, p1

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/app/AlarmManager;

    .line 237
    .restart local v7       #alarmManager:Landroid/app/AlarmManager;
    new-instance v15, Landroid/content/Intent;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/framework/activity/powersaver/PowerSaverModeReceiver;->POWERSAVERMODE_TURN_OFF_WIFI_RETRY:Ljava/lang/String;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    const-class v22, Lcom/android/settings/framework/activity/powersaver/PowerSaverModeReceiver;

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    move-object/from16 v2, p1

    move-object/from16 v3, v22

    invoke-direct {v15, v0, v1, v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;Landroid/content/Context;Ljava/lang/Class;)V

    .line 240
    .local v15, intent_wifi_off_retry:Landroid/content/Intent;
    const/16 v20, 0x0

    const/16 v21, 0x0

    move-object/from16 v0, p1

    move/from16 v1, v20

    move/from16 v2, v21

    invoke-static {v0, v1, v15, v2}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v20

    sput-object v20, Lcom/android/settings/framework/activity/powersaver/PowerSaverModeReceiver;->mPowerSaver_PendingIntent_Off_wifi_retry:Landroid/app/PendingIntent;

    .line 241
    const/16 v20, 0x0

    sget-wide v21, Lcom/android/settings/framework/activity/powersaver/PowerSaverModeReceiver;->POWERSAVERMODE_TURN_OFF_DATA_LINE_RETRY_TIME:J

    add-long v21, v21, v17

    sget-object v23, Lcom/android/settings/framework/activity/powersaver/PowerSaverModeReceiver;->mPowerSaver_PendingIntent_Off_wifi_retry:Landroid/app/PendingIntent;

    move/from16 v0, v20

    move-wide/from16 v1, v21

    move-object/from16 v3, v23

    invoke-virtual {v7, v0, v1, v2, v3}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V

    goto/16 :goto_0

    .line 249
    .end local v7           #alarmManager:Landroid/app/AlarmManager;
    .end local v15           #intent_wifi_off_retry:Landroid/content/Intent;
    .end local v17           #now:J
    :cond_b
    const-string v20, "PowerSaverModeReceiver"

    const-string v21, "powersaver no need turn off wifi"

    invoke-static/range {v20 .. v21}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 252
    :cond_c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/framework/activity/powersaver/PowerSaverModeReceiver;->POWERSAVERMODE_TURN_OFF_MOBILE:Ljava/lang/String;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-nez v20, :cond_d

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/framework/activity/powersaver/PowerSaverModeReceiver;->POWERSAVERMODE_TURN_OFF_MOBILE_RETRY:Ljava/lang/String;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_11

    .line 254
    :cond_d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/framework/activity/powersaver/PowerSaverModeReceiver;->mPowerSaverModeSharedpref:Landroid/content/SharedPreferences;

    move-object/from16 v20, v0

    invoke-interface/range {v20 .. v20}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v20

    const-string v21, "PREF_ENTER_POWER_SLEEP_STATES"

    const/16 v22, 0x1

    invoke-interface/range {v20 .. v22}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v20

    invoke-interface/range {v20 .. v20}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 255
    const/16 v20, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Lcom/android/settings/framework/activity/powersaver/PowerSaverModeReceiver;->BroadcastPowerSleepStatus(Landroid/content/Context;Z)V

    .line 256
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/framework/activity/powersaver/PowerSaverModeReceiver;->mPowerSaverModeSharedpref:Landroid/content/SharedPreferences;

    move-object/from16 v20, v0

    invoke-interface/range {v20 .. v20}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v20

    const-string v21, "PREF_CHANGE_MOBILE_STATES"

    const/16 v22, 0x0

    invoke-interface/range {v20 .. v22}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v20

    invoke-interface/range {v20 .. v20}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 257
    const-string v20, "PowerSaverModeReceiver"

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "isWifiHotSpotEnabled():"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-static {}, Lcom/android/settings/framework/activity/powersaver/PowerSaverModeReceiver;->isWifiHotSpotEnabled()Z

    move-result v22

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 259
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/framework/activity/powersaver/PowerSaverModeReceiver;->isCharging()Z

    move-result v20

    if-nez v20, :cond_1

    invoke-static {}, Lcom/android/settings/framework/activity/powersaver/PowerSaverModeReceiver;->isWifiHotSpotEnabled()Z

    move-result v20

    if-nez v20, :cond_1

    .line 261
    invoke-virtual/range {p0 .. p1}, Lcom/android/settings/framework/activity/powersaver/PowerSaverModeReceiver;->CheckDataSendingReceiving(Landroid/content/Context;)Z

    move-result v20

    if-eqz v20, :cond_e

    sget-boolean v20, Lcom/android/settings/framework/activity/powersaver/PowerSaverModeReceiver;->mSYSTEMWifMobileEnable:Z

    const/16 v21, 0x1

    move/from16 v0, v20

    move/from16 v1, v21

    if-ne v0, v1, :cond_10

    .line 263
    :cond_e
    const-string v20, "connectivity"

    move-object/from16 v0, p1

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Landroid/net/ConnectivityManager;

    .line 264
    .restart local v16       #mConnetManager:Landroid/net/ConnectivityManager;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/framework/activity/powersaver/PowerSaverModeReceiver;->mPowerSaverModeSharedpref:Landroid/content/SharedPreferences;

    move-object/from16 v20, v0

    const-string v21, "PREF_SCREEN_ON_OFF_INTENT_RECEIVER"

    const/16 v22, 0x1

    invoke-interface/range {v20 .. v22}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v4

    .line 265
    .restart local v4       #SystemScreenOnStatus:Z
    const-string v20, "PowerSaverModeReceiver"

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "POWERSAVERMODE_TURN_OFF_MOBILE\tSystemScreenOnStatus= "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 267
    invoke-virtual/range {v16 .. v16}, Landroid/net/ConnectivityManager;->getMobileDataEnabled()Z

    move-result v20

    const/16 v21, 0x1

    move/from16 v0, v20

    move/from16 v1, v21

    if-ne v0, v1, :cond_f

    if-nez v4, :cond_f

    .line 269
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/framework/activity/powersaver/PowerSaverModeReceiver;->mPowerSaverModeSharedpref:Landroid/content/SharedPreferences;

    move-object/from16 v20, v0

    invoke-interface/range {v20 .. v20}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v20

    const-string v21, "PREF_CHANGE_MOBILE_STATES"

    const/16 v22, 0x1

    invoke-interface/range {v20 .. v22}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v20

    invoke-interface/range {v20 .. v20}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 272
    const-string v20, "PowerSaverModeReceiver"

    const-string v21, "SMARTSYNC_TURN_OFF_MOBILE  mConnetManager.setMobileDataEnabled(false) "

    invoke-static/range {v20 .. v21}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 274
    const/16 v20, 0x0

    move-object/from16 v0, v16

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/net/ConnectivityManager;->setMobileDataEnabled(Z)V

    .line 277
    :cond_f
    new-instance v11, Landroid/content/Intent;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/framework/activity/powersaver/PowerSaverModeReceiver;->POWERSAVERMODE_TURN_OFF_MOBILE_SN:Ljava/lang/String;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-direct {v11, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 278
    .local v11, intent_power_saver_mode_mobile_off_sn:Landroid/content/Intent;
    move-object/from16 v0, p1

    invoke-virtual {v0, v11}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 279
    const-string v20, "PowerSaverModeReceiver"

    const-string v21, "POWERSAVERMODE_TURN_OFF_MOBILE_SN"

    invoke-static/range {v20 .. v21}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 280
    invoke-virtual/range {p0 .. p1}, Lcom/android/settings/framework/activity/powersaver/PowerSaverModeReceiver;->CheckAndSetNextTurnOnNetwork(Landroid/content/Context;)V

    goto/16 :goto_0

    .line 286
    .end local v4           #SystemScreenOnStatus:Z
    .end local v11           #intent_power_saver_mode_mobile_off_sn:Landroid/content/Intent;
    .end local v16           #mConnetManager:Landroid/net/ConnectivityManager;
    :cond_10
    const-string v20, "PowerSaverModeReceiver"

    const-string v21, "SMARTSYNC_TURN_OFF_MOBILE  Off_mobile_retry "

    invoke-static/range {v20 .. v21}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 288
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v17

    .line 289
    .restart local v17       #now:J
    const-string v20, "alarm"

    move-object/from16 v0, p1

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/app/AlarmManager;

    .line 290
    .restart local v7       #alarmManager:Landroid/app/AlarmManager;
    new-instance v10, Landroid/content/Intent;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/framework/activity/powersaver/PowerSaverModeReceiver;->POWERSAVERMODE_TURN_OFF_MOBILE_RETRY:Ljava/lang/String;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    const-class v22, Lcom/android/settings/framework/activity/powersaver/PowerSaverModeReceiver;

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    move-object/from16 v2, p1

    move-object/from16 v3, v22

    invoke-direct {v10, v0, v1, v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;Landroid/content/Context;Ljava/lang/Class;)V

    .line 293
    .local v10, intent_mobile_off_retry:Landroid/content/Intent;
    const/16 v20, 0x0

    const/16 v21, 0x0

    move-object/from16 v0, p1

    move/from16 v1, v20

    move/from16 v2, v21

    invoke-static {v0, v1, v10, v2}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v20

    sput-object v20, Lcom/android/settings/framework/activity/powersaver/PowerSaverModeReceiver;->mPowerSaver_PendingIntent_Off_mobile_retry:Landroid/app/PendingIntent;

    .line 294
    const/16 v20, 0x0

    sget-wide v21, Lcom/android/settings/framework/activity/powersaver/PowerSaverModeReceiver;->POWERSAVERMODE_TURN_OFF_DATA_LINE_RETRY_TIME:J

    add-long v21, v21, v17

    sget-object v23, Lcom/android/settings/framework/activity/powersaver/PowerSaverModeReceiver;->mPowerSaver_PendingIntent_Off_mobile_retry:Landroid/app/PendingIntent;

    move/from16 v0, v20

    move-wide/from16 v1, v21

    move-object/from16 v3, v23

    invoke-virtual {v7, v0, v1, v2, v3}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V

    goto/16 :goto_0

    .line 299
    .end local v7           #alarmManager:Landroid/app/AlarmManager;
    .end local v10           #intent_mobile_off_retry:Landroid/content/Intent;
    .end local v17           #now:J
    :cond_11
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/framework/activity/powersaver/PowerSaverModeReceiver;->POWERSAVERMODE_TURN_ON_WIFI:Ljava/lang/String;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_13

    .line 301
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v20

    const-string v21, "smartsync_turn_off_wifi"

    const/16 v22, 0x1

    invoke-static/range {v20 .. v22}, Lcom/htc/wrap/android/provider/HtcWrapSettings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v20

    const/16 v21, 0x1

    move/from16 v0, v20

    move/from16 v1, v21

    if-ne v0, v1, :cond_12

    .line 302
    const-string v20, "wifi"

    move-object/from16 v0, p1

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Landroid/net/wifi/WifiManager;

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/framework/activity/powersaver/PowerSaverModeReceiver;->mWiFiManager:Landroid/net/wifi/WifiManager;

    .line 303
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/framework/activity/powersaver/PowerSaverModeReceiver;->mPowerSaverModeSharedpref:Landroid/content/SharedPreferences;

    move-object/from16 v20, v0

    const-string v21, "PREF_CHANGE_WIFI_STATES"

    const/16 v22, 0x0

    invoke-interface/range {v20 .. v22}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v20

    sput-boolean v20, Lcom/android/settings/framework/activity/powersaver/PowerSaverModeReceiver;->WifiTurnOff:Z

    .line 304
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/framework/activity/powersaver/PowerSaverModeReceiver;->mWiFiManager:Landroid/net/wifi/WifiManager;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Landroid/net/wifi/WifiManager;->isWifiEnabled()Z

    move-result v20

    if-nez v20, :cond_1

    sget-boolean v20, Lcom/android/settings/framework/activity/powersaver/PowerSaverModeReceiver;->WifiTurnOff:Z

    const/16 v21, 0x1

    move/from16 v0, v20

    move/from16 v1, v21

    if-ne v0, v1, :cond_1

    .line 308
    const-string v20, "PowerSaverModeReceiver"

    const-string v21, "POWERSAVERMODE_TURN_ON_WIFI  mWiFiManager.setWifiEnabled(true) "

    invoke-static/range {v20 .. v21}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 310
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/framework/activity/powersaver/PowerSaverModeReceiver;->mWiFiManager:Landroid/net/wifi/WifiManager;

    move-object/from16 v20, v0

    const/16 v21, 0x1

    invoke-virtual/range {v20 .. v21}, Landroid/net/wifi/WifiManager;->setWifiEnabled(Z)Z

    .line 311
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v17

    .line 312
    .restart local v17       #now:J
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/framework/activity/powersaver/PowerSaverModeReceiver;->mPowerSaverModeSharedpref:Landroid/content/SharedPreferences;

    move-object/from16 v20, v0

    invoke-interface/range {v20 .. v20}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v20

    const-string v21, "PREF_CHANGE_WIFI_STATES"

    const/16 v22, 0x0

    invoke-interface/range {v20 .. v22}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v20

    invoke-interface/range {v20 .. v20}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 316
    const-string v20, "alarm"

    move-object/from16 v0, p1

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/app/AlarmManager;

    .line 317
    .restart local v7       #alarmManager:Landroid/app/AlarmManager;
    new-instance v14, Landroid/content/Intent;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/framework/activity/powersaver/PowerSaverModeReceiver;->POWERSAVERMODE_TURN_OFF_WIFI:Ljava/lang/String;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    const-class v22, Lcom/android/settings/framework/activity/powersaver/PowerSaverModeReceiver;

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    move-object/from16 v2, p1

    move-object/from16 v3, v22

    invoke-direct {v14, v0, v1, v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;Landroid/content/Context;Ljava/lang/Class;)V

    .line 320
    .local v14, intent_wifi_off:Landroid/content/Intent;
    const/16 v20, 0x0

    const/16 v21, 0x0

    move-object/from16 v0, p1

    move/from16 v1, v20

    move/from16 v2, v21

    invoke-static {v0, v1, v14, v2}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v20

    sput-object v20, Lcom/android/settings/framework/activity/powersaver/PowerSaverModeReceiver;->mPowerSaver_PendingIntent_Off_wifi:Landroid/app/PendingIntent;

    .line 321
    const/16 v20, 0x0

    sget-wide v21, Lcom/android/settings/framework/activity/powersaver/PowerSaverModeReceiver;->POWERSAVERMODE_TURN_ON_DATA_TOTAL_TIME:J

    add-long v21, v21, v17

    sget-object v23, Lcom/android/settings/framework/activity/powersaver/PowerSaverModeReceiver;->mPowerSaver_PendingIntent_Off_wifi:Landroid/app/PendingIntent;

    move/from16 v0, v20

    move-wide/from16 v1, v21

    move-object/from16 v3, v23

    invoke-virtual {v7, v0, v1, v2, v3}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V

    goto/16 :goto_0

    .line 328
    .end local v7           #alarmManager:Landroid/app/AlarmManager;
    .end local v14           #intent_wifi_off:Landroid/content/Intent;
    .end local v17           #now:J
    :cond_12
    const-string v20, "PowerSaverModeReceiver"

    const-string v21, "powersaver no need turn on wifi"

    invoke-static/range {v20 .. v21}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 331
    :cond_13
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/framework/activity/powersaver/PowerSaverModeReceiver;->POWERSAVERMODE_TURN_ON_MOBILE:Ljava/lang/String;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_1

    .line 333
    const-string v20, "connectivity"

    move-object/from16 v0, p1

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Landroid/net/ConnectivityManager;

    .line 335
    .restart local v16       #mConnetManager:Landroid/net/ConnectivityManager;
    invoke-virtual/range {v16 .. v16}, Landroid/net/ConnectivityManager;->getMobileDataEnabled()Z

    move-result v20

    if-nez v20, :cond_15

    .line 339
    const-string v20, "PowerSaverModeReceiver"

    const-string v21, "SMARTSYNC_TURN_ON_MOBILE  mConnetManager.setMobileDataEnabled(true) "

    invoke-static/range {v20 .. v21}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 342
    const/16 v20, 0x1

    move-object/from16 v0, v16

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v9

    .line 343
    .local v9, info:Landroid/net/NetworkInfo;
    if-eqz v9, :cond_14

    .line 344
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/framework/activity/powersaver/PowerSaverModeReceiver;->mPowerSaverModeSharedpref:Landroid/content/SharedPreferences;

    move-object/from16 v20, v0

    const-string v21, "PREF_CHANGE_MOBILE_STATES"

    const/16 v22, 0x0

    invoke-interface/range {v20 .. v22}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v20

    sput-boolean v20, Lcom/android/settings/framework/activity/powersaver/PowerSaverModeReceiver;->MobileTurnOff:Z

    .line 345
    invoke-virtual {v9}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v20

    if-nez v20, :cond_14

    sget-boolean v20, Lcom/android/settings/framework/activity/powersaver/PowerSaverModeReceiver;->MobileTurnOff:Z

    const/16 v21, 0x1

    move/from16 v0, v20

    move/from16 v1, v21

    if-ne v0, v1, :cond_14

    .line 346
    const/16 v20, 0x1

    move-object/from16 v0, v16

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/net/ConnectivityManager;->setMobileDataEnabled(Z)V

    .line 347
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/framework/activity/powersaver/PowerSaverModeReceiver;->mPowerSaverModeSharedpref:Landroid/content/SharedPreferences;

    move-object/from16 v20, v0

    invoke-interface/range {v20 .. v20}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v20

    const-string v21, "PREF_CHANGE_MOBILE_STATES"

    const/16 v22, 0x0

    invoke-interface/range {v20 .. v22}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v20

    invoke-interface/range {v20 .. v20}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 350
    :cond_14
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v17

    .line 354
    .restart local v17       #now:J
    const-string v20, "alarm"

    move-object/from16 v0, p1

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/app/AlarmManager;

    .line 355
    .restart local v7       #alarmManager:Landroid/app/AlarmManager;
    new-instance v14, Landroid/content/Intent;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/framework/activity/powersaver/PowerSaverModeReceiver;->POWERSAVERMODE_TURN_OFF_MOBILE:Ljava/lang/String;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    const-class v22, Lcom/android/settings/framework/activity/powersaver/PowerSaverModeReceiver;

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    move-object/from16 v2, p1

    move-object/from16 v3, v22

    invoke-direct {v14, v0, v1, v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;Landroid/content/Context;Ljava/lang/Class;)V

    .line 358
    .restart local v14       #intent_wifi_off:Landroid/content/Intent;
    const/16 v20, 0x0

    const/16 v21, 0x0

    move-object/from16 v0, p1

    move/from16 v1, v20

    move/from16 v2, v21

    invoke-static {v0, v1, v14, v2}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v20

    sput-object v20, Lcom/android/settings/framework/activity/powersaver/PowerSaverModeReceiver;->mPowerSaver_PendingIntent_Off_mobile:Landroid/app/PendingIntent;

    .line 359
    const/16 v20, 0x0

    sget-wide v21, Lcom/android/settings/framework/activity/powersaver/PowerSaverModeReceiver;->POWERSAVERMODE_TURN_ON_DATA_TOTAL_TIME:J

    add-long v21, v21, v17

    sget-object v23, Lcom/android/settings/framework/activity/powersaver/PowerSaverModeReceiver;->mPowerSaver_PendingIntent_Off_mobile:Landroid/app/PendingIntent;

    move/from16 v0, v20

    move-wide/from16 v1, v21

    move-object/from16 v3, v23

    invoke-virtual {v7, v0, v1, v2, v3}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V

    .line 364
    .end local v7           #alarmManager:Landroid/app/AlarmManager;
    .end local v9           #info:Landroid/net/NetworkInfo;
    .end local v14           #intent_wifi_off:Landroid/content/Intent;
    .end local v17           #now:J
    :cond_15
    new-instance v12, Landroid/content/Intent;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/framework/activity/powersaver/PowerSaverModeReceiver;->POWERSAVERMODE_TURN_ON_MOBILE_SN:Ljava/lang/String;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-direct {v12, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 366
    .local v12, intent_power_saver_mode_mobile_on_sn:Landroid/content/Intent;
    move-object/from16 v0, p1

    invoke-virtual {v0, v12}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 367
    const-string v20, "PowerSaverModeReceiver"

    const-string v21, "POWERSAVERMODE_TURN_ON_MOBILE_SN"

    invoke-static/range {v20 .. v21}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0
.end method
