.class public Lcom/android/settings/framework/activity/powersaver/SmartSyncDataLinkTurnOffReceiver;
.super Landroid/content/BroadcastReceiver;
.source "SmartSyncDataLinkTurnOffReceiver.java"


# static fields
.field public static final AC_ONLINE_PATH:Ljava/lang/String; = "/sys/class/power_supply/ac/online"

.field private static Defined_WIFI_STATE_ENABLED:I = 0x0

.field private static Defined_WIFI_STATE_ENABLING:I = 0x0

.field private static Defined_WIFI_STATE_UNKNOWN:I = 0x0

.field private static final HTC_DEBUG:Z = false

.field private static MobileTurnOff:Z = false

.field private static NoData_rxPkts:J = 0x0L

.field private static NoData_txPkts:J = 0x0L

.field private static SystemScreenOnStatus:Z = false

.field private static final TAG:Ljava/lang/String; = "SmartSyncDataLinkTurnOffReceiver"

.field private static TRIGGER_SCREEN_ONOFF_SYNC_ALL_TIME:J = 0x0L

.field private static TURN_OFF_DATA_LINE_RETRY_TIME:J = 0x0L

.field private static TurnOffSyncStatus:Z = false

.field public static final USB_ONLINE_PATH:Ljava/lang/String; = "/sys/class/power_supply/usb/online"

.field private static WifiTurnOff:Z

.field private static mAPRequestCount:I

.field private static mBroadcastedStatus:Z

.field private static mDBPostion_Lat:D

.field private static mDBPostion_Lng:D

.field private static mEnterPowerSleepStatus:Z

.field private static mPendingIntent_APTurnOffMobile:Landroid/app/PendingIntent;

.field private static mPendingIntent_APTurnOffWifi:Landroid/app/PendingIntent;

.field private static mPendingIntent_Off_mobile_retry:Landroid/app/PendingIntent;

.field private static mPendingIntent_Off_wifi_retry:Landroid/app/PendingIntent;

.field private static mPendingIntent_StartADSMMobile_Alarm:Landroid/app/PendingIntent;

.field private static mPendingIntent_StartADSMWifi_Alarm:Landroid/app/PendingIntent;

.field private static mPendingIntent_TimeoutAlarm:Landroid/app/PendingIntent;

.field private static mPostion_Lat:D

.field private static mPostion_Lng:D

.field private static mSmartSyncSyncAllTriggerTime:J

.field private static preMobile_rxPkts:J

.field private static preMobile_txPkts:J

.field private static preWifi_rxPkts:J

.field private static preWifi_txPkts:J

.field private static rxPkts:J

.field private static txPkts:J


# instance fields
.field private AP_REQUEST_POWER_SLEEP_MODE_START:Ljava/lang/String;

.field private AP_REQUEST_POWER_SLEEP_MODE_STOP:Ljava/lang/String;

.field private POWERSAVERMODE_STOP_CANCEL_ALL_ALARM:Ljava/lang/String;

.field private POWERSAVERMODE_TURN_OFF_MOBILE:Ljava/lang/String;

.field private POWERSAVERMODE_TURN_OFF_MOBILE_SN:Ljava/lang/String;

.field private POWERSAVERMODE_TURN_OFF_WIFI:Ljava/lang/String;

.field private POWERSAVERMODE_TURN_ON_MOBILE_SN:Ljava/lang/String;

.field private POWER_SLEEP_BROADCAST_STATUS:Ljava/lang/String;

.field Postion_different:D

.field private SMARTSYNC_AP_TURN_OFF_MOBILE:Ljava/lang/String;

.field private SMARTSYNC_AP_TURN_OFF_WIFI:Ljava/lang/String;

.field private SMARTSYNC_SERVICE_BROADCAST_SCREEN_OFF:Ljava/lang/String;

.field private SMARTSYNC_SERVICE_BROADCAST_SCREEN_ON:Ljava/lang/String;

.field private SMARTSYNC_TURN_OFF_MOBILE:Ljava/lang/String;

.field private SMARTSYNC_TURN_OFF_MOBILE_BY_CHECK:Ljava/lang/String;

.field private SMARTSYNC_TURN_OFF_MOBILE_RETRY:Ljava/lang/String;

.field private SMARTSYNC_TURN_OFF_WIFI:Ljava/lang/String;

.field private SMARTSYNC_TURN_OFF_WIFI_BY_CHECK:Ljava/lang/String;

.field private SMARTSYNC_TURN_OFF_WIFI_RETRY:Ljava/lang/String;

.field private SMARTSYNC_TURN_ON_MOBILE:Ljava/lang/String;

.field private SMARTSYNC_TURN_ON_WIFI:Ljava/lang/String;

.field private bestProvider:Ljava/lang/String;

.field private mDataLinkTurnOffSharedpref:Landroid/content/SharedPreferences;

.field private mInvisibleAdapters:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mWakeLock:Landroid/os/PowerManager$WakeLock;

.field private mWiFiManager:Landroid/net/wifi/WifiManager;


# direct methods
.method static constructor <clinit>()V
    .locals 10

    .prologue
    const-wide/16 v8, 0x78

    const-wide/16 v6, 0x0

    const-wide/16 v4, -0x1

    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 94
    sput-boolean v3, Lcom/android/settings/framework/activity/powersaver/SmartSyncDataLinkTurnOffReceiver;->TurnOffSyncStatus:Z

    .line 110
    sput-boolean v3, Lcom/android/settings/framework/activity/powersaver/SmartSyncDataLinkTurnOffReceiver;->WifiTurnOff:Z

    .line 111
    sput-boolean v3, Lcom/android/settings/framework/activity/powersaver/SmartSyncDataLinkTurnOffReceiver;->MobileTurnOff:Z

    .line 112
    const/4 v0, 0x1

    sput-boolean v0, Lcom/android/settings/framework/activity/powersaver/SmartSyncDataLinkTurnOffReceiver;->SystemScreenOnStatus:Z

    .line 114
    sput-wide v6, Lcom/android/settings/framework/activity/powersaver/SmartSyncDataLinkTurnOffReceiver;->mPostion_Lat:D

    .line 115
    sput-wide v6, Lcom/android/settings/framework/activity/powersaver/SmartSyncDataLinkTurnOffReceiver;->mPostion_Lng:D

    .line 117
    sput-wide v6, Lcom/android/settings/framework/activity/powersaver/SmartSyncDataLinkTurnOffReceiver;->mDBPostion_Lat:D

    .line 118
    sput-wide v6, Lcom/android/settings/framework/activity/powersaver/SmartSyncDataLinkTurnOffReceiver;->mDBPostion_Lng:D

    .line 122
    sput-boolean v3, Lcom/android/settings/framework/activity/powersaver/SmartSyncDataLinkTurnOffReceiver;->mEnterPowerSleepStatus:Z

    .line 123
    sput-boolean v3, Lcom/android/settings/framework/activity/powersaver/SmartSyncDataLinkTurnOffReceiver;->mBroadcastedStatus:Z

    .line 130
    sput-wide v4, Lcom/android/settings/framework/activity/powersaver/SmartSyncDataLinkTurnOffReceiver;->txPkts:J

    sput-wide v4, Lcom/android/settings/framework/activity/powersaver/SmartSyncDataLinkTurnOffReceiver;->rxPkts:J

    .line 132
    const-wide/32 v0, 0x2bf20

    sput-wide v0, Lcom/android/settings/framework/activity/powersaver/SmartSyncDataLinkTurnOffReceiver;->TURN_OFF_DATA_LINE_RETRY_TIME:J

    .line 134
    const-wide/32 v0, 0x6ddd00

    sput-wide v0, Lcom/android/settings/framework/activity/powersaver/SmartSyncDataLinkTurnOffReceiver;->TRIGGER_SCREEN_ONOFF_SYNC_ALL_TIME:J

    .line 136
    sput-object v2, Lcom/android/settings/framework/activity/powersaver/SmartSyncDataLinkTurnOffReceiver;->mPendingIntent_Off_mobile_retry:Landroid/app/PendingIntent;

    .line 137
    sput-object v2, Lcom/android/settings/framework/activity/powersaver/SmartSyncDataLinkTurnOffReceiver;->mPendingIntent_Off_wifi_retry:Landroid/app/PendingIntent;

    .line 140
    sput-object v2, Lcom/android/settings/framework/activity/powersaver/SmartSyncDataLinkTurnOffReceiver;->mPendingIntent_APTurnOffMobile:Landroid/app/PendingIntent;

    .line 141
    sput-object v2, Lcom/android/settings/framework/activity/powersaver/SmartSyncDataLinkTurnOffReceiver;->mPendingIntent_APTurnOffWifi:Landroid/app/PendingIntent;

    .line 142
    sput-object v2, Lcom/android/settings/framework/activity/powersaver/SmartSyncDataLinkTurnOffReceiver;->mPendingIntent_TimeoutAlarm:Landroid/app/PendingIntent;

    .line 144
    sput-object v2, Lcom/android/settings/framework/activity/powersaver/SmartSyncDataLinkTurnOffReceiver;->mPendingIntent_StartADSMWifi_Alarm:Landroid/app/PendingIntent;

    .line 145
    sput-object v2, Lcom/android/settings/framework/activity/powersaver/SmartSyncDataLinkTurnOffReceiver;->mPendingIntent_StartADSMMobile_Alarm:Landroid/app/PendingIntent;

    .line 147
    const-wide/16 v0, 0x0

    sput-wide v0, Lcom/android/settings/framework/activity/powersaver/SmartSyncDataLinkTurnOffReceiver;->mSmartSyncSyncAllTriggerTime:J

    .line 149
    sput-wide v4, Lcom/android/settings/framework/activity/powersaver/SmartSyncDataLinkTurnOffReceiver;->preWifi_txPkts:J

    sput-wide v4, Lcom/android/settings/framework/activity/powersaver/SmartSyncDataLinkTurnOffReceiver;->preWifi_rxPkts:J

    .line 150
    sput-wide v4, Lcom/android/settings/framework/activity/powersaver/SmartSyncDataLinkTurnOffReceiver;->preMobile_txPkts:J

    sput-wide v4, Lcom/android/settings/framework/activity/powersaver/SmartSyncDataLinkTurnOffReceiver;->preMobile_rxPkts:J

    .line 152
    sput-wide v8, Lcom/android/settings/framework/activity/powersaver/SmartSyncDataLinkTurnOffReceiver;->NoData_txPkts:J

    sput-wide v8, Lcom/android/settings/framework/activity/powersaver/SmartSyncDataLinkTurnOffReceiver;->NoData_rxPkts:J

    .line 154
    const/4 v0, 0x3

    sput v0, Lcom/android/settings/framework/activity/powersaver/SmartSyncDataLinkTurnOffReceiver;->Defined_WIFI_STATE_ENABLED:I

    .line 155
    const/4 v0, 0x2

    sput v0, Lcom/android/settings/framework/activity/powersaver/SmartSyncDataLinkTurnOffReceiver;->Defined_WIFI_STATE_ENABLING:I

    .line 156
    const/4 v0, 0x4

    sput v0, Lcom/android/settings/framework/activity/powersaver/SmartSyncDataLinkTurnOffReceiver;->Defined_WIFI_STATE_UNKNOWN:I

    .line 160
    sput v3, Lcom/android/settings/framework/activity/powersaver/SmartSyncDataLinkTurnOffReceiver;->mAPRequestCount:I

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 70
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 72
    iput-object v2, p0, Lcom/android/settings/framework/activity/powersaver/SmartSyncDataLinkTurnOffReceiver;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 74
    const-string v0, "SMARTSYNC_TURN_OFF_WIFI"

    iput-object v0, p0, Lcom/android/settings/framework/activity/powersaver/SmartSyncDataLinkTurnOffReceiver;->SMARTSYNC_TURN_OFF_WIFI:Ljava/lang/String;

    .line 75
    const-string v0, "SMARTSYNC_TURN_OFF_MOBILE"

    iput-object v0, p0, Lcom/android/settings/framework/activity/powersaver/SmartSyncDataLinkTurnOffReceiver;->SMARTSYNC_TURN_OFF_MOBILE:Ljava/lang/String;

    .line 76
    const-string v0, "SMARTSYNC_TURN_ON_WIFI"

    iput-object v0, p0, Lcom/android/settings/framework/activity/powersaver/SmartSyncDataLinkTurnOffReceiver;->SMARTSYNC_TURN_ON_WIFI:Ljava/lang/String;

    .line 77
    const-string v0, "SMARTSYNC_TURN_ON_MOBILE"

    iput-object v0, p0, Lcom/android/settings/framework/activity/powersaver/SmartSyncDataLinkTurnOffReceiver;->SMARTSYNC_TURN_ON_MOBILE:Ljava/lang/String;

    .line 80
    const-string v0, "POWERSAVERMODE_TURN_OFF_MOBILE_SN"

    iput-object v0, p0, Lcom/android/settings/framework/activity/powersaver/SmartSyncDataLinkTurnOffReceiver;->POWERSAVERMODE_TURN_OFF_MOBILE_SN:Ljava/lang/String;

    .line 81
    const-string v0, "POWERSAVERMODE_TURN_ON_MOBILE_SN"

    iput-object v0, p0, Lcom/android/settings/framework/activity/powersaver/SmartSyncDataLinkTurnOffReceiver;->POWERSAVERMODE_TURN_ON_MOBILE_SN:Ljava/lang/String;

    .line 83
    const-string v0, "SMARTSYNC_TURN_OFF_WIFI_BY_CHECK"

    iput-object v0, p0, Lcom/android/settings/framework/activity/powersaver/SmartSyncDataLinkTurnOffReceiver;->SMARTSYNC_TURN_OFF_WIFI_BY_CHECK:Ljava/lang/String;

    .line 84
    const-string v0, "SMARTSYNC_TURN_OFF_MOBILE_BY_CHECK"

    iput-object v0, p0, Lcom/android/settings/framework/activity/powersaver/SmartSyncDataLinkTurnOffReceiver;->SMARTSYNC_TURN_OFF_MOBILE_BY_CHECK:Ljava/lang/String;

    .line 85
    const-string v0, "SMARTSYNC_TURN_OFF_WIFI_RETRY"

    iput-object v0, p0, Lcom/android/settings/framework/activity/powersaver/SmartSyncDataLinkTurnOffReceiver;->SMARTSYNC_TURN_OFF_WIFI_RETRY:Ljava/lang/String;

    .line 86
    const-string v0, "SMARTSYNC_TURN_OFF_MOBILE_RETRY"

    iput-object v0, p0, Lcom/android/settings/framework/activity/powersaver/SmartSyncDataLinkTurnOffReceiver;->SMARTSYNC_TURN_OFF_MOBILE_RETRY:Ljava/lang/String;

    .line 87
    const-string v0, "SMARTSYNC_AP_TURN_OFF_WIFI"

    iput-object v0, p0, Lcom/android/settings/framework/activity/powersaver/SmartSyncDataLinkTurnOffReceiver;->SMARTSYNC_AP_TURN_OFF_WIFI:Ljava/lang/String;

    .line 88
    const-string v0, "SMARTSYNC_AP_TURN_OFF_MOBILE"

    iput-object v0, p0, Lcom/android/settings/framework/activity/powersaver/SmartSyncDataLinkTurnOffReceiver;->SMARTSYNC_AP_TURN_OFF_MOBILE:Ljava/lang/String;

    .line 91
    const-string v0, "SMARTSYNC_SERVICE_BROADCAST_SCREEN_ON"

    iput-object v0, p0, Lcom/android/settings/framework/activity/powersaver/SmartSyncDataLinkTurnOffReceiver;->SMARTSYNC_SERVICE_BROADCAST_SCREEN_ON:Ljava/lang/String;

    .line 92
    const-string v0, "SMARTSYNC_SERVICE_BROADCAST_SCREEN_OFF"

    iput-object v0, p0, Lcom/android/settings/framework/activity/powersaver/SmartSyncDataLinkTurnOffReceiver;->SMARTSYNC_SERVICE_BROADCAST_SCREEN_OFF:Ljava/lang/String;

    .line 97
    const-string v0, "AP_REQUEST_POWER_SLEEP_MODE_STOP"

    iput-object v0, p0, Lcom/android/settings/framework/activity/powersaver/SmartSyncDataLinkTurnOffReceiver;->AP_REQUEST_POWER_SLEEP_MODE_STOP:Ljava/lang/String;

    .line 98
    const-string v0, "AP_REQUEST_POWER_SLEEP_MODE_START"

    iput-object v0, p0, Lcom/android/settings/framework/activity/powersaver/SmartSyncDataLinkTurnOffReceiver;->AP_REQUEST_POWER_SLEEP_MODE_START:Ljava/lang/String;

    .line 100
    const-string v0, "POWER_SLEEP_BROADCAST_STATUS"

    iput-object v0, p0, Lcom/android/settings/framework/activity/powersaver/SmartSyncDataLinkTurnOffReceiver;->POWER_SLEEP_BROADCAST_STATUS:Ljava/lang/String;

    .line 102
    const-string v0, "POWERSAVERMODE_TURN_OFF_WIFI"

    iput-object v0, p0, Lcom/android/settings/framework/activity/powersaver/SmartSyncDataLinkTurnOffReceiver;->POWERSAVERMODE_TURN_OFF_WIFI:Ljava/lang/String;

    .line 103
    const-string v0, "POWERSAVERMODE_TURN_OFF_MOBILE"

    iput-object v0, p0, Lcom/android/settings/framework/activity/powersaver/SmartSyncDataLinkTurnOffReceiver;->POWERSAVERMODE_TURN_OFF_MOBILE:Ljava/lang/String;

    .line 105
    const-string v0, "POWERSAVERMODE_STOP_CANCEL_ALL_ALARM"

    iput-object v0, p0, Lcom/android/settings/framework/activity/powersaver/SmartSyncDataLinkTurnOffReceiver;->POWERSAVERMODE_STOP_CANCEL_ALL_ALARM:Ljava/lang/String;

    .line 120
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/settings/framework/activity/powersaver/SmartSyncDataLinkTurnOffReceiver;->Postion_different:D

    .line 138
    iput-object v2, p0, Lcom/android/settings/framework/activity/powersaver/SmartSyncDataLinkTurnOffReceiver;->mDataLinkTurnOffSharedpref:Landroid/content/SharedPreferences;

    .line 158
    invoke-static {}, Lcom/google/android/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/framework/activity/powersaver/SmartSyncDataLinkTurnOffReceiver;->mInvisibleAdapters:Ljava/util/ArrayList;

    return-void
.end method

.method private RestorePowerSleepStatus(Landroid/content/Context;)V
    .locals 14
    .parameter "context"

    .prologue
    .line 753
    const-string v11, "SMARTSYNC_SHARED"

    const/4 v12, 0x0

    invoke-virtual {p1, v11, v12}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v11

    iput-object v11, p0, Lcom/android/settings/framework/activity/powersaver/SmartSyncDataLinkTurnOffReceiver;->mDataLinkTurnOffSharedpref:Landroid/content/SharedPreferences;

    .line 754
    iget-object v11, p0, Lcom/android/settings/framework/activity/powersaver/SmartSyncDataLinkTurnOffReceiver;->mDataLinkTurnOffSharedpref:Landroid/content/SharedPreferences;

    const-string v12, "PREF_ENTER_POWER_SLEEP_STATES"

    const/4 v13, 0x0

    invoke-interface {v11, v12, v13}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v5

    .line 759
    .local v5, Sleep_Mode_States:Z
    iget-object v11, p0, Lcom/android/settings/framework/activity/powersaver/SmartSyncDataLinkTurnOffReceiver;->mDataLinkTurnOffSharedpref:Landroid/content/SharedPreferences;

    const-string v12, "PREF_CHANGE_MOBILE_STATES"

    const/4 v13, 0x0

    invoke-interface {v11, v12, v13}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    .line 760
    .local v2, Change_Mobile_States:Z
    iget-object v11, p0, Lcom/android/settings/framework/activity/powersaver/SmartSyncDataLinkTurnOffReceiver;->mDataLinkTurnOffSharedpref:Landroid/content/SharedPreferences;

    const-string v12, "PREF_MOBILE_STATES"

    const/4 v13, 0x1

    invoke-interface {v11, v12, v13}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v4

    .line 762
    .local v4, Mobile_States:Z
    iget-object v11, p0, Lcom/android/settings/framework/activity/powersaver/SmartSyncDataLinkTurnOffReceiver;->mDataLinkTurnOffSharedpref:Landroid/content/SharedPreferences;

    const-string v12, "PREF_CHANGE_WIFI_STATES"

    const/4 v13, 0x0

    invoke-interface {v11, v12, v13}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    .line 763
    .local v3, Change_Wifi_States:Z
    iget-object v11, p0, Lcom/android/settings/framework/activity/powersaver/SmartSyncDataLinkTurnOffReceiver;->mDataLinkTurnOffSharedpref:Landroid/content/SharedPreferences;

    const-string v12, "PREF_WIFI_STATES"

    const/4 v13, 0x1

    invoke-interface {v11, v12, v13}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v6

    .line 765
    .local v6, Wifi_States:Z
    iget-object v11, p0, Lcom/android/settings/framework/activity/powersaver/SmartSyncDataLinkTurnOffReceiver;->mDataLinkTurnOffSharedpref:Landroid/content/SharedPreferences;

    const-string v12, "PREF_CHANGE_AUTO_SYNC_STATES"

    const/4 v13, 0x1

    invoke-interface {v11, v12, v13}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    .line 766
    .local v1, Change_Auto_Sync_States:Z
    iget-object v11, p0, Lcom/android/settings/framework/activity/powersaver/SmartSyncDataLinkTurnOffReceiver;->mDataLinkTurnOffSharedpref:Landroid/content/SharedPreferences;

    const-string v12, "PREF_AUTO_SYNC_STATES"

    const/4 v13, 0x1

    invoke-interface {v11, v12, v13}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 769
    .local v0, Auto_Sync_States:Z
    const/4 v11, 0x1

    if-ne v5, v11, :cond_2

    .line 778
    const-string v11, "SmartSyncDataLinkTurnOffReceiver"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "FO S="

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, " M="

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, " W="

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, " A="

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 780
    const-string v11, "wifi"

    invoke-virtual {p1, v11}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/net/wifi/WifiManager;

    iput-object v11, p0, Lcom/android/settings/framework/activity/powersaver/SmartSyncDataLinkTurnOffReceiver;->mWiFiManager:Landroid/net/wifi/WifiManager;

    .line 781
    iget-object v11, p0, Lcom/android/settings/framework/activity/powersaver/SmartSyncDataLinkTurnOffReceiver;->mWiFiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v11}, Landroid/net/wifi/WifiManager;->isWifiEnabled()Z

    move-result v10

    .line 783
    .local v10, mWifiState:Z
    const-string v11, "SmartSyncDataLinkTurnOffReceiver"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "isWifiHotSpotEnabled():"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-static {}, Lcom/android/settings/framework/activity/powersaver/SmartSyncDataLinkTurnOffReceiver;->isWifiHotSpotEnabled()Z

    move-result v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, " isWifiEnabled "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    iget-object v13, p0, Lcom/android/settings/framework/activity/powersaver/SmartSyncDataLinkTurnOffReceiver;->mWiFiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v13}, Landroid/net/wifi/WifiManager;->isWifiEnabled()Z

    move-result v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 785
    if-eq v10, v6, :cond_0

    invoke-static {}, Lcom/android/settings/framework/activity/powersaver/SmartSyncDataLinkTurnOffReceiver;->isWifiHotSpotEnabled()Z

    move-result v11

    if-nez v11, :cond_0

    .line 793
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v11

    const-string v12, "smartsync_turn_off_wifi"

    const/4 v13, 0x1

    invoke-static {v11, v12, v13}, Lcom/htc/wrap/android/provider/HtcWrapSettings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v11

    const/4 v12, 0x1

    if-ne v11, v12, :cond_0

    .line 794
    iget-object v11, p0, Lcom/android/settings/framework/activity/powersaver/SmartSyncDataLinkTurnOffReceiver;->mWiFiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v11, v6}, Landroid/net/wifi/WifiManager;->setWifiEnabled(Z)Z

    .line 795
    iget-object v11, p0, Lcom/android/settings/framework/activity/powersaver/SmartSyncDataLinkTurnOffReceiver;->mDataLinkTurnOffSharedpref:Landroid/content/SharedPreferences;

    invoke-interface {v11}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v11

    const-string v12, "PREF_CHECK_TURN_ONOFF_WIFI_STATE"

    const/4 v13, 0x1

    invoke-interface {v11, v12, v13}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v11

    invoke-interface {v11}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 796
    iget-object v11, p0, Lcom/android/settings/framework/activity/powersaver/SmartSyncDataLinkTurnOffReceiver;->mDataLinkTurnOffSharedpref:Landroid/content/SharedPreferences;

    invoke-interface {v11}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v11

    const-string v12, "PREF_REWRITE_TURN_ONOFF_WIFI_STATE"

    invoke-interface {v11, v12, v6}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v11

    invoke-interface {v11}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 809
    :cond_0
    iget-object v11, p0, Lcom/android/settings/framework/activity/powersaver/SmartSyncDataLinkTurnOffReceiver;->mDataLinkTurnOffSharedpref:Landroid/content/SharedPreferences;

    invoke-interface {v11}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v11

    const-string v12, "PREF_CHANGE_WIFI_STATES"

    const/4 v13, 0x0

    invoke-interface {v11, v12, v13}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v11

    invoke-interface {v11}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 815
    const-string v11, "connectivity"

    invoke-virtual {p1, v11}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/net/ConnectivityManager;

    .line 816
    .local v8, mConnetManager:Landroid/net/ConnectivityManager;
    invoke-virtual {v8}, Landroid/net/ConnectivityManager;->getMobileDataEnabled()Z

    move-result v9

    .line 817
    .local v9, mMobileStates:Z
    if-eq v9, v4, :cond_1

    .line 823
    invoke-virtual {v8, v4}, Landroid/net/ConnectivityManager;->setMobileDataEnabled(Z)V

    .line 833
    :cond_1
    iget-object v11, p0, Lcom/android/settings/framework/activity/powersaver/SmartSyncDataLinkTurnOffReceiver;->mDataLinkTurnOffSharedpref:Landroid/content/SharedPreferences;

    invoke-interface {v11}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v11

    const-string v12, "PREF_CHANGE_MOBILE_STATES"

    const/4 v13, 0x0

    invoke-interface {v11, v12, v13}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v11

    invoke-interface {v11}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 855
    iget-object v11, p0, Lcom/android/settings/framework/activity/powersaver/SmartSyncDataLinkTurnOffReceiver;->mDataLinkTurnOffSharedpref:Landroid/content/SharedPreferences;

    invoke-interface {v11}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v11

    const-string v12, "PREF_ENTER_POWER_SLEEP_STATES"

    const/4 v13, 0x0

    invoke-interface {v11, v12, v13}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v11

    invoke-interface {v11}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 857
    const/4 v7, 0x0

    .line 858
    .local v7, bentersleepmode:Z
    iget-object v11, p0, Lcom/android/settings/framework/activity/powersaver/SmartSyncDataLinkTurnOffReceiver;->mDataLinkTurnOffSharedpref:Landroid/content/SharedPreferences;

    const-string v12, "PREF_ENTER_POWER_SLEEP_STATES"

    const/4 v13, 0x1

    invoke-interface {v11, v12, v13}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v7

    .line 859
    invoke-virtual {p0, p1, v7}, Lcom/android/settings/framework/activity/powersaver/SmartSyncDataLinkTurnOffReceiver;->BroadcastPowerSleepStatus(Landroid/content/Context;Z)V

    .line 864
    .end local v7           #bentersleepmode:Z
    .end local v8           #mConnetManager:Landroid/net/ConnectivityManager;
    .end local v9           #mMobileStates:Z
    .end local v10           #mWifiState:Z
    :cond_2
    return-void
.end method

.method private SyncCheckedAuthorityForAllAccount([Landroid/accounts/Account;)V
    .locals 17
    .parameter "accounts"

    .prologue
    .line 1236
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/settings/framework/activity/powersaver/SmartSyncDataLinkTurnOffReceiver;->mInvisibleAdapters:Ljava/util/ArrayList;

    invoke-virtual {v15}, Ljava/util/ArrayList;->clear()V

    .line 1238
    invoke-static {}, Landroid/content/ContentResolver;->getSyncAdapterTypes()[Landroid/content/SyncAdapterType;

    move-result-object v12

    .line 1239
    .local v12, syncAdapters:[Landroid/content/SyncAdapterType;
    invoke-static {}, Lcom/google/android/collect/Maps;->newHashMap()Ljava/util/HashMap;

    move-result-object v2

    .line 1242
    .local v2, accountTypeToAuthorities:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/util/ArrayList<Ljava/lang/String;>;>;"
    const/4 v6, 0x0

    .local v6, i:I
    array-length v10, v12

    .local v10, n:I
    :goto_0
    if-ge v6, v10, :cond_2

    .line 1243
    aget-object v11, v12, v6

    .line 1245
    .local v11, sa:Landroid/content/SyncAdapterType;
    invoke-virtual {v11}, Landroid/content/SyncAdapterType;->isUserVisible()Z

    move-result v15

    if-eqz v15, :cond_1

    .line 1246
    iget-object v15, v11, Landroid/content/SyncAdapterType;->accountType:Ljava/lang/String;

    invoke-virtual {v2, v15}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/ArrayList;

    .line 1247
    .local v3, authorities:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    if-nez v3, :cond_0

    .line 1248
    new-instance v3, Ljava/util/ArrayList;

    .end local v3           #authorities:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 1249
    .restart local v3       #authorities:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    iget-object v15, v11, Landroid/content/SyncAdapterType;->accountType:Ljava/lang/String;

    invoke-virtual {v2, v15, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1251
    :cond_0
    iget-object v15, v11, Landroid/content/SyncAdapterType;->authority:Ljava/lang/String;

    invoke-virtual {v3, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1242
    .end local v3           #authorities:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    :goto_1
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 1255
    :cond_1
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/settings/framework/activity/powersaver/SmartSyncDataLinkTurnOffReceiver;->mInvisibleAdapters:Ljava/util/ArrayList;

    iget-object v0, v11, Landroid/content/SyncAdapterType;->authority:Ljava/lang/String;

    move-object/from16 v16, v0

    invoke-virtual/range {v15 .. v16}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 1263
    .end local v11           #sa:Landroid/content/SyncAdapterType;
    :cond_2
    const/4 v6, 0x0

    move-object/from16 v0, p1

    array-length v10, v0

    :goto_2
    if-ge v6, v10, :cond_6

    .line 1264
    aget-object v1, p1, v6

    .line 1265
    .local v1, account:Landroid/accounts/Account;
    iget-object v15, v1, Landroid/accounts/Account;->type:Ljava/lang/String;

    invoke-virtual {v2, v15}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/ArrayList;

    .line 1267
    .restart local v3       #authorities:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    if-eqz v3, :cond_4

    .line 1268
    const/4 v8, 0x0

    .local v8, j:I
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v9

    .local v9, m:I
    :goto_3
    if-ge v8, v9, :cond_4

    .line 1269
    invoke-virtual {v3, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 1271
    .local v4, authority:Ljava/lang/String;
    invoke-static {v1, v4}, Landroid/content/ContentResolver;->getIsSyncable(Landroid/accounts/Account;Ljava/lang/String;)I

    move-result v14

    .line 1272
    .local v14, syncState:I
    invoke-static {v1, v4}, Landroid/content/ContentResolver;->getSyncAutomatically(Landroid/accounts/Account;Ljava/lang/String;)Z

    move-result v13

    .line 1274
    .local v13, syncEnabled:Z
    if-lez v14, :cond_3

    const/4 v15, 0x1

    if-ne v13, v15, :cond_3

    .line 1275
    new-instance v5, Landroid/os/Bundle;

    invoke-direct {v5}, Landroid/os/Bundle;-><init>()V

    .line 1276
    .local v5, extras:Landroid/os/Bundle;
    const-string v15, "force"

    const/16 v16, 0x1

    move/from16 v0, v16

    invoke-virtual {v5, v15, v0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 1277
    invoke-static {v1, v4, v5}, Landroid/content/ContentResolver;->requestSync(Landroid/accounts/Account;Ljava/lang/String;Landroid/os/Bundle;)V

    .line 1268
    .end local v5           #extras:Landroid/os/Bundle;
    :cond_3
    add-int/lit8 v8, v8, 0x1

    goto :goto_3

    .line 1282
    .end local v4           #authority:Ljava/lang/String;
    .end local v8           #j:I
    .end local v9           #m:I
    .end local v13           #syncEnabled:Z
    .end local v14           #syncState:I
    :cond_4
    if-eqz v1, :cond_5

    .line 1283
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/settings/framework/activity/powersaver/SmartSyncDataLinkTurnOffReceiver;->mInvisibleAdapters:Ljava/util/ArrayList;

    invoke-virtual {v15}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v7

    .local v7, i$:Ljava/util/Iterator;
    :goto_4
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v15

    if-eqz v15, :cond_5

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 1284
    .restart local v4       #authority:Ljava/lang/String;
    new-instance v5, Landroid/os/Bundle;

    invoke-direct {v5}, Landroid/os/Bundle;-><init>()V

    .line 1285
    .restart local v5       #extras:Landroid/os/Bundle;
    const-string v15, "force"

    const/16 v16, 0x1

    move/from16 v0, v16

    invoke-virtual {v5, v15, v0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 1286
    invoke-static {v1, v4, v5}, Landroid/content/ContentResolver;->requestSync(Landroid/accounts/Account;Ljava/lang/String;Landroid/os/Bundle;)V

    goto :goto_4

    .line 1263
    .end local v4           #authority:Ljava/lang/String;
    .end local v5           #extras:Landroid/os/Bundle;
    .end local v7           #i$:Ljava/util/Iterator;
    :cond_5
    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    .line 1290
    .end local v1           #account:Landroid/accounts/Account;
    .end local v3           #authorities:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_6
    return-void
.end method

.method private static isWifiHotSpotEnabled()Z
    .locals 7

    .prologue
    .line 1294
    const/4 v3, 0x0

    .line 1296
    .local v3, result:Z
    const-string v4, "network_management"

    invoke-static {v4}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 1297
    .local v0, b:Landroid/os/IBinder;
    invoke-static {v0}, Landroid/os/INetworkManagementService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/INetworkManagementService;

    move-result-object v2

    .line 1300
    .local v2, mNwService:Landroid/os/INetworkManagementService;
    :try_start_0
    invoke-interface {v2}, Landroid/os/INetworkManagementService;->getHotspotEnabled()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    .line 1305
    :goto_0
    return v3

    .line 1301
    :catch_0
    move-exception v1

    .line 1302
    .local v1, e:Landroid/os/RemoteException;
    const-string v4, "SmartSyncDataLinkTurnOffReceiver"

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
    .locals 3
    .parameter "context"
    .parameter "states"

    .prologue
    .line 740
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 741
    .local v1, bundle:Landroid/os/Bundle;
    const-string v2, "PowerSleepStatus"

    invoke-virtual {v1, v2, p2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 742
    new-instance v0, Landroid/content/Intent;

    iget-object v2, p0, Lcom/android/settings/framework/activity/powersaver/SmartSyncDataLinkTurnOffReceiver;->POWER_SLEEP_BROADCAST_STATUS:Ljava/lang/String;

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 743
    .local v0, Intent_PowerSleep_Status:Landroid/content/Intent;
    invoke-virtual {v0, v1}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 744
    invoke-virtual {p1, v0}, Landroid/content/Context;->sendStickyBroadcast(Landroid/content/Intent;)V

    .line 750
    return-void
.end method

.method public CheckCurrentInNightTime()Z
    .locals 8

    .prologue
    const/4 v7, 0x0

    .line 1149
    const/4 v4, 0x0

    .line 1151
    .local v4, result:Z
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v2

    .line 1152
    .local v2, c:Ljava/util/Calendar;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    invoke-virtual {v2, v5, v6}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 1153
    const/16 v5, 0xb

    invoke-virtual {v2, v5}, Ljava/util/Calendar;->get(I)I

    move-result v3

    .line 1155
    .local v3, nowHour:I
    iget-object v5, p0, Lcom/android/settings/framework/activity/powersaver/SmartSyncDataLinkTurnOffReceiver;->mDataLinkTurnOffSharedpref:Landroid/content/SharedPreferences;

    const-string v6, "PREF_AUTOMATICALL_ENABLE_START_TIME"

    invoke-interface {v5, v6, v7}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    .line 1156
    .local v1, USERNIGHT_TIMESTART:I
    iget-object v5, p0, Lcom/android/settings/framework/activity/powersaver/SmartSyncDataLinkTurnOffReceiver;->mDataLinkTurnOffSharedpref:Landroid/content/SharedPreferences;

    const-string v6, "PREF_AUTOMATICALL_ENABLE_END_TIME"

    invoke-interface {v5, v6, v7}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 1158
    .local v0, USERNIGHT_TIMEEND:I
    if-ge v1, v0, :cond_0

    if-lt v3, v1, :cond_0

    if-ge v3, v0, :cond_0

    .line 1165
    const/4 v4, 0x1

    .line 1188
    :goto_0
    return v4

    .line 1168
    :cond_0
    if-le v1, v0, :cond_2

    if-ge v3, v1, :cond_1

    if-ge v3, v0, :cond_2

    .line 1175
    :cond_1
    const/4 v4, 0x1

    goto :goto_0

    .line 1184
    :cond_2
    const/4 v4, 0x0

    goto :goto_0
.end method

.method public CheckDataSendingReceiving(Landroid/content/Context;)Z
    .locals 21
    .parameter "context"

    .prologue
    .line 985
    const/4 v11, 0x0

    .line 986
    .local v11, result:Z
    const-wide/16 v12, 0x0

    .local v12, sent:J
    const-wide/16 v9, 0x0

    .line 987
    .local v9, received:J
    const-wide/16 v7, -0x1

    .local v7, TotalTxPkts:J
    const-wide/16 v5, -0x1

    .line 988
    .local v5, TotalRxPkts:J
    const-wide/16 v14, 0x0

    .line 989
    .local v14, stop_time:J
    const-wide/16 v16, 0x0

    .line 991
    .local v16, total_txrx_page:J
    const-wide/16 v3, -0x1

    .local v3, Mobile_txPkts:J
    const-wide/16 v1, -0x1

    .line 993
    .local v1, Mobile_rxPkts:J
    invoke-static {}, Landroid/net/TrafficStats;->getMobileTxPackets()J

    move-result-wide v3

    .line 994
    invoke-static {}, Landroid/net/TrafficStats;->getMobileRxPackets()J

    move-result-wide v1

    .line 996
    const-string v18, "SmartSyncDataLinkTurnOffReceiver"

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

    .line 997
    const-string v18, "SmartSyncDataLinkTurnOffReceiver"

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

    .line 999
    const-wide/16 v18, 0x0

    cmp-long v18, v3, v18

    if-gtz v18, :cond_0

    const-wide/16 v18, 0x0

    cmp-long v18, v1, v18

    if-lez v18, :cond_1

    .line 1001
    :cond_0
    sget-wide v18, Lcom/android/settings/framework/activity/powersaver/SmartSyncDataLinkTurnOffReceiver;->preMobile_txPkts:J

    sub-long v12, v3, v18

    .line 1002
    sget-wide v18, Lcom/android/settings/framework/activity/powersaver/SmartSyncDataLinkTurnOffReceiver;->preMobile_rxPkts:J

    sub-long v9, v1, v18

    .line 1004
    add-long v16, v12, v9

    .line 1006
    const-string v18, "SmartSyncDataLinkTurnOffReceiver"

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

    .line 1007
    const-string v18, "SmartSyncDataLinkTurnOffReceiver"

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

    .line 1009
    sget-wide v18, Lcom/android/settings/framework/activity/powersaver/SmartSyncDataLinkTurnOffReceiver;->NoData_txPkts:J

    cmp-long v18, v16, v18

    if-lez v18, :cond_1

    .line 1011
    const/4 v11, 0x1

    .line 1015
    :cond_1
    sput-wide v3, Lcom/android/settings/framework/activity/powersaver/SmartSyncDataLinkTurnOffReceiver;->preMobile_txPkts:J

    .line 1016
    sput-wide v1, Lcom/android/settings/framework/activity/powersaver/SmartSyncDataLinkTurnOffReceiver;->preMobile_rxPkts:J

    .line 1018
    return v11
.end method

.method public CheckWifiDataSendingReceiving(Landroid/content/Context;)Z
    .locals 17
    .parameter "context"

    .prologue
    .line 942
    const/4 v7, 0x0

    .line 943
    .local v7, result:Z
    const-wide/16 v8, 0x0

    .local v8, sent:J
    const-wide/16 v5, 0x0

    .line 944
    .local v5, received:J
    const-wide/16 v10, 0x0

    .line 945
    .local v10, stop_time:J
    const-wide/16 v12, 0x0

    .line 947
    .local v12, total_txrx_page:J
    const-wide/16 v2, -0x1

    .local v2, Wifi_txPkts:J
    const-wide/16 v0, -0x1

    .line 949
    .local v0, Wifi_rxPkts:J
    const-string v14, "wifi.interface"

    const-string v15, "tiwlan0"

    invoke-static {v14, v15}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 951
    .local v4, ifname:Ljava/lang/String;
    invoke-static {v4}, Landroid/net/TrafficStats;->getTxPackets(Ljava/lang/String;)J

    move-result-wide v2

    .line 952
    invoke-static {v4}, Landroid/net/TrafficStats;->getRxPackets(Ljava/lang/String;)J

    move-result-wide v0

    .line 954
    const-string v14, "SmartSyncDataLinkTurnOffReceiver"

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

    .line 955
    const-string v14, "SmartSyncDataLinkTurnOffReceiver"

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

    .line 957
    const-wide/16 v14, 0x0

    cmp-long v14, v2, v14

    if-gtz v14, :cond_0

    const-wide/16 v14, 0x0

    cmp-long v14, v0, v14

    if-lez v14, :cond_1

    .line 959
    :cond_0
    sget-wide v14, Lcom/android/settings/framework/activity/powersaver/SmartSyncDataLinkTurnOffReceiver;->preWifi_txPkts:J

    sub-long v8, v2, v14

    .line 960
    sget-wide v14, Lcom/android/settings/framework/activity/powersaver/SmartSyncDataLinkTurnOffReceiver;->preWifi_rxPkts:J

    sub-long v5, v0, v14

    .line 962
    add-long v12, v8, v5

    .line 964
    const-string v14, "SmartSyncDataLinkTurnOffReceiver"

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

    .line 965
    const-string v14, "SmartSyncDataLinkTurnOffReceiver"

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

    .line 969
    sget-wide v14, Lcom/android/settings/framework/activity/powersaver/SmartSyncDataLinkTurnOffReceiver;->NoData_txPkts:J

    cmp-long v14, v12, v14

    if-lez v14, :cond_1

    .line 971
    const/4 v7, 0x1

    .line 975
    :cond_1
    sput-wide v2, Lcom/android/settings/framework/activity/powersaver/SmartSyncDataLinkTurnOffReceiver;->preWifi_txPkts:J

    .line 976
    sput-wide v0, Lcom/android/settings/framework/activity/powersaver/SmartSyncDataLinkTurnOffReceiver;->preWifi_rxPkts:J

    .line 978
    return v7
.end method

.method public GetLocationData(Landroid/content/Context;)V
    .locals 5
    .parameter "context"

    .prologue
    .line 1023
    const-string v3, "location"

    invoke-virtual {p1, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/location/LocationManager;

    .line 1035
    .local v2, locationManager:Landroid/location/LocationManager;
    new-instance v1, Landroid/location/Criteria;

    invoke-direct {v1}, Landroid/location/Criteria;-><init>()V

    .line 1036
    .local v1, criteria:Landroid/location/Criteria;
    const/4 v3, 0x0

    invoke-virtual {v2, v1, v3}, Landroid/location/LocationManager;->getBestProvider(Landroid/location/Criteria;Z)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/android/settings/framework/activity/powersaver/SmartSyncDataLinkTurnOffReceiver;->bestProvider:Ljava/lang/String;

    .line 1038
    iget-object v3, p0, Lcom/android/settings/framework/activity/powersaver/SmartSyncDataLinkTurnOffReceiver;->bestProvider:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/location/LocationManager;->getLastKnownLocation(Ljava/lang/String;)Landroid/location/Location;

    move-result-object v0

    .line 1041
    .local v0, Location:Landroid/location/Location;
    if-nez v0, :cond_0

    .line 1042
    const-string v3, "SmartSyncDataLinkTurnOffReceiver"

    const-string v4, "\nLocation[unknown]\n"

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1050
    :goto_0
    return-void

    .line 1045
    :cond_0
    invoke-virtual {v0}, Landroid/location/Location;->getLatitude()D

    move-result-wide v3

    sput-wide v3, Lcom/android/settings/framework/activity/powersaver/SmartSyncDataLinkTurnOffReceiver;->mPostion_Lat:D

    .line 1046
    invoke-virtual {v0}, Landroid/location/Location;->getLongitude()D

    move-result-wide v3

    sput-wide v3, Lcom/android/settings/framework/activity/powersaver/SmartSyncDataLinkTurnOffReceiver;->mPostion_Lng:D

    goto :goto_0
.end method

.method public SetAlarmTurnOffMobileDataLink(Landroid/content/Context;I)V
    .locals 11
    .parameter "context"
    .parameter "SettingTime"

    .prologue
    const/4 v10, 0x0

    .line 1089
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    .line 1091
    .local v4, now:J
    const-wide/16 v0, 0x0

    .line 1093
    .local v0, MobileOffsetAlarmTime:J
    const-string v7, "alarm"

    invoke-virtual {p1, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/AlarmManager;

    .line 1094
    .local v2, alarmManager:Landroid/app/AlarmManager;
    new-instance v3, Landroid/content/Intent;

    iget-object v7, p0, Lcom/android/settings/framework/activity/powersaver/SmartSyncDataLinkTurnOffReceiver;->SMARTSYNC_AP_TURN_OFF_MOBILE:Ljava/lang/String;

    const/4 v8, 0x0

    const-class v9, Lcom/android/settings/framework/activity/powersaver/SmartSyncDataLinkTurnOffReceiver;

    invoke-direct {v3, v7, v8, p1, v9}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;Landroid/content/Context;Ljava/lang/Class;)V

    .line 1095
    .local v3, intent_mobile:Landroid/content/Intent;
    invoke-static {p1, v10, v3, v10}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v6

    .line 1096
    .local v6, pendingIntent:Landroid/app/PendingIntent;
    mul-int/lit16 v7, p2, 0x3e8

    mul-int/lit8 v7, v7, 0x3c

    int-to-long v7, v7

    add-long/2addr v7, v4

    add-long/2addr v7, v0

    invoke-virtual {v2, v10, v7, v8, v6}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V

    .line 1098
    sput-object v6, Lcom/android/settings/framework/activity/powersaver/SmartSyncDataLinkTurnOffReceiver;->mPendingIntent_APTurnOffMobile:Landroid/app/PendingIntent;

    .line 1100
    return-void
.end method

.method public SetAlarmTurnOffWifiDataLink(Landroid/content/Context;I)V
    .locals 9
    .parameter "context"
    .parameter "SettingTime"

    .prologue
    const/4 v8, 0x0

    .line 1074
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 1076
    .local v2, now:J
    const-string v5, "alarm"

    invoke-virtual {p1, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    .line 1078
    .local v0, alarmManager:Landroid/app/AlarmManager;
    new-instance v1, Landroid/content/Intent;

    iget-object v5, p0, Lcom/android/settings/framework/activity/powersaver/SmartSyncDataLinkTurnOffReceiver;->SMARTSYNC_AP_TURN_OFF_WIFI:Ljava/lang/String;

    const/4 v6, 0x0

    const-class v7, Lcom/android/settings/framework/activity/powersaver/SmartSyncDataLinkTurnOffReceiver;

    invoke-direct {v1, v5, v6, p1, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;Landroid/content/Context;Ljava/lang/Class;)V

    .line 1080
    .local v1, intent_wifi:Landroid/content/Intent;
    invoke-static {p1, v8, v1, v8}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v4

    .line 1081
    .local v4, pendingIntent:Landroid/app/PendingIntent;
    mul-int/lit16 v5, p2, 0x3e8

    mul-int/lit8 v5, v5, 0x3c

    int-to-long v5, v5

    add-long/2addr v5, v2

    invoke-virtual {v0, v8, v5, v6, v4}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V

    .line 1083
    sput-object v4, Lcom/android/settings/framework/activity/powersaver/SmartSyncDataLinkTurnOffReceiver;->mPendingIntent_APTurnOffWifi:Landroid/app/PendingIntent;

    .line 1085
    return-void
.end method

.method public SetTimeOutAlarm(Landroid/content/Context;I)V
    .locals 11
    .parameter "context"
    .parameter "SettingTime"

    .prologue
    const/4 v10, 0x0

    .line 1104
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    .line 1106
    .local v4, now:J
    const-wide/16 v0, 0x0

    .line 1108
    .local v0, MobileOffsetAlarmTime:J
    const-string v7, "alarm"

    invoke-virtual {p1, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/AlarmManager;

    .line 1109
    .local v2, alarmManager:Landroid/app/AlarmManager;
    new-instance v3, Landroid/content/Intent;

    iget-object v7, p0, Lcom/android/settings/framework/activity/powersaver/SmartSyncDataLinkTurnOffReceiver;->AP_REQUEST_POWER_SLEEP_MODE_START:Ljava/lang/String;

    const/4 v8, 0x0

    const-class v9, Lcom/android/settings/framework/activity/powersaver/SmartSyncDataLinkTurnOffReceiver;

    invoke-direct {v3, v7, v8, p1, v9}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;Landroid/content/Context;Ljava/lang/Class;)V

    .line 1110
    .local v3, intent_mobile:Landroid/content/Intent;
    invoke-static {p1, v10, v3, v10}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v6

    .line 1111
    .local v6, pendingIntent:Landroid/app/PendingIntent;
    mul-int/lit16 v7, p2, 0x3e8

    mul-int/lit8 v7, v7, 0x3c

    int-to-long v7, v7

    add-long/2addr v7, v4

    add-long/2addr v7, v0

    invoke-virtual {v2, v10, v7, v8, v6}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V

    .line 1113
    sput-object v6, Lcom/android/settings/framework/activity/powersaver/SmartSyncDataLinkTurnOffReceiver;->mPendingIntent_TimeoutAlarm:Landroid/app/PendingIntent;

    .line 1118
    return-void
.end method

.method public StartAlldaySleepMode(Landroid/content/Context;)V
    .locals 12
    .parameter "context"

    .prologue
    .line 1195
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    .line 1197
    .local v6, now:J
    iget-object v9, p0, Lcom/android/settings/framework/activity/powersaver/SmartSyncDataLinkTurnOffReceiver;->mDataLinkTurnOffSharedpref:Landroid/content/SharedPreferences;

    invoke-interface {v9}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v9

    const-string v10, "PREF_AUTOMATICALL_ENABLE"

    const/4 v11, 0x0

    invoke-interface {v9, v10, v11}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v9

    invoke-interface {v9}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 1204
    iget-object v9, p0, Lcom/android/settings/framework/activity/powersaver/SmartSyncDataLinkTurnOffReceiver;->mDataLinkTurnOffSharedpref:Landroid/content/SharedPreferences;

    const-string v10, "PREF_NEW_POWER_SAVER_MODE_ENABLE"

    const/4 v11, 0x0

    invoke-interface {v9, v10, v11}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v5

    .line 1206
    .local v5, mNewPowerSaverMode:Z
    const/4 v9, 0x1

    if-ne v5, v9, :cond_1

    .line 1208
    const-string v9, "alarm"

    invoke-virtual {p1, v9}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/AlarmManager;

    .line 1209
    .local v2, alarmManager:Landroid/app/AlarmManager;
    iget-object v9, p0, Lcom/android/settings/framework/activity/powersaver/SmartSyncDataLinkTurnOffReceiver;->mDataLinkTurnOffSharedpref:Landroid/content/SharedPreferences;

    const-string v10, "PREF_WIFI_STATES"

    const/4 v11, 0x1

    invoke-interface {v9, v10, v11}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    .line 1210
    .local v1, Wifi_States:Z
    const/4 v9, 0x1

    if-ne v1, v9, :cond_0

    .line 1212
    new-instance v4, Landroid/content/Intent;

    iget-object v9, p0, Lcom/android/settings/framework/activity/powersaver/SmartSyncDataLinkTurnOffReceiver;->POWERSAVERMODE_TURN_OFF_WIFI:Ljava/lang/String;

    const/4 v10, 0x0

    const-class v11, Lcom/android/settings/framework/activity/powersaver/PowerSaverModeReceiver;

    invoke-direct {v4, v9, v10, p1, v11}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;Landroid/content/Context;Ljava/lang/Class;)V

    .line 1213
    .local v4, intent_wifi:Landroid/content/Intent;
    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-static {p1, v9, v4, v10}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v8

    .line 1214
    .local v8, pendingIntent:Landroid/app/PendingIntent;
    const/4 v9, 0x0

    const-wide/32 v10, 0x2bf20

    add-long/2addr v10, v6

    invoke-virtual {v2, v9, v10, v11, v8}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V

    .line 1216
    sput-object v8, Lcom/android/settings/framework/activity/powersaver/SmartSyncDataLinkTurnOffReceiver;->mPendingIntent_StartADSMWifi_Alarm:Landroid/app/PendingIntent;

    .line 1218
    const-string v9, "SmartSyncDataLinkTurnOffReceiver"

    const-string v10, "send mPendingIntent_StartADSMWifi_Alarm"

    invoke-static {v9, v10}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1221
    .end local v4           #intent_wifi:Landroid/content/Intent;
    .end local v8           #pendingIntent:Landroid/app/PendingIntent;
    :cond_0
    iget-object v9, p0, Lcom/android/settings/framework/activity/powersaver/SmartSyncDataLinkTurnOffReceiver;->mDataLinkTurnOffSharedpref:Landroid/content/SharedPreferences;

    const-string v10, "PREF_MOBILE_STATES"

    const/4 v11, 0x1

    invoke-interface {v9, v10, v11}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 1222
    .local v0, Mobile_States:Z
    const/4 v9, 0x1

    if-ne v0, v9, :cond_1

    .line 1224
    new-instance v3, Landroid/content/Intent;

    iget-object v9, p0, Lcom/android/settings/framework/activity/powersaver/SmartSyncDataLinkTurnOffReceiver;->POWERSAVERMODE_TURN_OFF_MOBILE:Ljava/lang/String;

    const/4 v10, 0x0

    const-class v11, Lcom/android/settings/framework/activity/powersaver/PowerSaverModeReceiver;

    invoke-direct {v3, v9, v10, p1, v11}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;Landroid/content/Context;Ljava/lang/Class;)V

    .line 1225
    .local v3, intent_mobile:Landroid/content/Intent;
    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-static {p1, v9, v3, v10}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v8

    .line 1226
    .restart local v8       #pendingIntent:Landroid/app/PendingIntent;
    const/4 v9, 0x0

    const-wide/32 v10, 0x2bf20

    add-long/2addr v10, v6

    invoke-virtual {v2, v9, v10, v11, v8}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V

    .line 1228
    sput-object v8, Lcom/android/settings/framework/activity/powersaver/SmartSyncDataLinkTurnOffReceiver;->mPendingIntent_StartADSMMobile_Alarm:Landroid/app/PendingIntent;

    .line 1230
    const-string v9, "SmartSyncDataLinkTurnOffReceiver"

    const-string v10, "send mPendingIntent_StartADSMMobile_Alarm"

    invoke-static {v9, v10}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1234
    .end local v0           #Mobile_States:Z
    .end local v1           #Wifi_States:Z
    .end local v2           #alarmManager:Landroid/app/AlarmManager;
    .end local v3           #intent_mobile:Landroid/content/Intent;
    .end local v8           #pendingIntent:Landroid/app/PendingIntent;
    :cond_1
    return-void
.end method

.method public StopAlldaySleepMode(Landroid/content/Context;)V
    .locals 10
    .parameter "context"

    .prologue
    const/4 v9, 0x1

    .line 1122
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    .line 1124
    .local v3, now:J
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 1125
    .local v0, c:Ljava/util/Calendar;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    invoke-virtual {v0, v6, v7}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 1126
    const/16 v6, 0xb

    invoke-virtual {v0, v6}, Ljava/util/Calendar;->get(I)I

    move-result v5

    .line 1128
    .local v5, nowHour:I
    iget-object v6, p0, Lcom/android/settings/framework/activity/powersaver/SmartSyncDataLinkTurnOffReceiver;->mDataLinkTurnOffSharedpref:Landroid/content/SharedPreferences;

    invoke-interface {v6}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v6

    const-string v7, "PREF_AUTOMATICALL_ENABLE"

    invoke-interface {v6, v7, v9}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v6

    invoke-interface {v6}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 1135
    iget-object v6, p0, Lcom/android/settings/framework/activity/powersaver/SmartSyncDataLinkTurnOffReceiver;->mDataLinkTurnOffSharedpref:Landroid/content/SharedPreferences;

    const-string v7, "PREF_NEW_POWER_SAVER_MODE_ENABLE"

    const/4 v8, 0x0

    invoke-interface {v6, v7, v8}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    .line 1137
    .local v2, mNewPowerSaverMode:Z
    if-ne v2, v9, :cond_0

    invoke-virtual {p0}, Lcom/android/settings/framework/activity/powersaver/SmartSyncDataLinkTurnOffReceiver;->CheckCurrentInNightTime()Z

    move-result v6

    if-ne v6, v9, :cond_0

    .line 1139
    new-instance v1, Landroid/content/Intent;

    iget-object v6, p0, Lcom/android/settings/framework/activity/powersaver/SmartSyncDataLinkTurnOffReceiver;->POWERSAVERMODE_STOP_CANCEL_ALL_ALARM:Ljava/lang/String;

    const/4 v7, 0x0

    const-class v8, Lcom/android/settings/framework/activity/powersaver/PowerSaverModeReceiver;

    invoke-direct {v1, v6, v7, p1, v8}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;Landroid/content/Context;Ljava/lang/Class;)V

    .line 1142
    .local v1, intent_stop_PowerSaverMode:Landroid/content/Intent;
    invoke-virtual {p1, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 1145
    .end local v1           #intent_stop_PowerSaverMode:Landroid/content/Intent;
    :cond_0
    return-void
.end method

.method public getBooleanFromFile(Ljava/lang/String;)Z
    .locals 9
    .parameter "path"

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 872
    :try_start_0
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 873
    .local v1, file:Ljava/io/File;
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v6

    if-nez v6, :cond_1

    .line 874
    :cond_0
    const-string v4, "SmartSyncDataLinkTurnOffReceiver"

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

    .line 897
    .end local v1           #file:Ljava/io/File;
    :goto_0
    return v4

    .line 877
    .restart local v1       #file:Ljava/io/File;
    :cond_1
    const/4 v2, 0x0

    .line 878
    .local v2, input:Ljava/io/BufferedReader;
    new-instance v2, Ljava/io/BufferedReader;

    .end local v2           #input:Ljava/io/BufferedReader;
    new-instance v6, Ljava/io/FileReader;

    invoke-direct {v6, v1}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V

    const/4 v7, 0x1

    invoke-direct {v2, v6, v7}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;I)V

    .line 879
    .restart local v2       #input:Ljava/io/BufferedReader;
    const/4 v3, 0x0

    .line 880
    .local v3, line:Ljava/lang/String;
    if-nez v2, :cond_2

    .line 881
    const-string v6, "SmartSyncDataLinkTurnOffReceiver"

    const-string v7, "getBooleanFromFile() - BufferedReader input = null"

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 888
    :goto_1
    if-eqz v3, :cond_3

    const/4 v6, 0x0

    invoke-virtual {v3, v6}, Ljava/lang/String;->charAt(I)C

    move-result v6

    const/16 v7, 0x31

    if-ne v6, v7, :cond_3

    .line 889
    const-string v6, "SmartSyncDataLinkTurnOffReceiver"

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

    .line 895
    .end local v1           #file:Ljava/io/File;
    .end local v2           #input:Ljava/io/BufferedReader;
    .end local v3           #line:Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 896
    .local v0, ex:Ljava/lang/Exception;
    const-string v4, "SmartSyncDataLinkTurnOffReceiver"

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

    .line 897
    goto :goto_0

    .line 884
    .end local v0           #ex:Ljava/lang/Exception;
    .restart local v1       #file:Ljava/io/File;
    .restart local v2       #input:Ljava/io/BufferedReader;
    .restart local v3       #line:Ljava/lang/String;
    :cond_2
    :try_start_1
    invoke-virtual {v2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v3

    .line 885
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V

    goto :goto_1

    .line 892
    :cond_3
    const-string v4, "SmartSyncDataLinkTurnOffReceiver"

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

    .line 893
    goto :goto_0
.end method

.method public getLocationServicesStatus(Landroid/content/Context;)Z
    .locals 8
    .parameter "context"

    .prologue
    .line 1053
    const/4 v6, 0x0

    .line 1055
    .local v6, status:Z
    const-string v7, "location"

    invoke-virtual {p1, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/location/LocationManager;

    .line 1057
    .local v2, locationManager:Landroid/location/LocationManager;
    invoke-virtual {v2}, Landroid/location/LocationManager;->getAllProviders()Ljava/util/List;

    move-result-object v4

    .line 1059
    .local v4, providers:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 1060
    .local v3, provider:Ljava/lang/String;
    invoke-virtual {v2, v3}, Landroid/location/LocationManager;->isProviderEnabled(Ljava/lang/String;)Z

    move-result v0

    .line 1061
    .local v0, enabled:Z
    if-eqz v0, :cond_0

    .line 1064
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    .line 1065
    .local v5, resolver:Landroid/content/ContentResolver;
    invoke-static {v5, v3}, Landroid/provider/Settings$Secure;->isLocationProviderEnabled(Landroid/content/ContentResolver;Ljava/lang/String;)Z

    move-result v6

    .line 1066
    const/4 v7, 0x1

    if-ne v6, v7, :cond_0

    .line 1069
    .end local v0           #enabled:Z
    .end local v3           #provider:Ljava/lang/String;
    .end local v5           #resolver:Landroid/content/ContentResolver;
    :cond_1
    return v6
.end method

.method public isCharging()Z
    .locals 3

    .prologue
    .line 866
    const-string v2, "/sys/class/power_supply/ac/online"

    invoke-virtual {p0, v2}, Lcom/android/settings/framework/activity/powersaver/SmartSyncDataLinkTurnOffReceiver;->getBooleanFromFile(Ljava/lang/String;)Z

    move-result v0

    .line 867
    .local v0, ac:Z
    const-string v2, "/sys/class/power_supply/usb/online"

    invoke-virtual {p0, v2}, Lcom/android/settings/framework/activity/powersaver/SmartSyncDataLinkTurnOffReceiver;->getBooleanFromFile(Ljava/lang/String;)Z

    move-result v1

    .line 868
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
    .locals 38
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 164
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v14

    .line 167
    .local v14, action:Ljava/lang/String;
    const-string v32, "SMARTSYNC_SHARED"

    const/16 v33, 0x0

    move-object/from16 v0, p1

    move-object/from16 v1, v32

    move/from16 v2, v33

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v32

    move-object/from16 v0, v32

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/framework/activity/powersaver/SmartSyncDataLinkTurnOffReceiver;->mDataLinkTurnOffSharedpref:Landroid/content/SharedPreferences;

    .line 169
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/framework/activity/powersaver/SmartSyncDataLinkTurnOffReceiver;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    move-object/from16 v32, v0

    if-nez v32, :cond_0

    .line 170
    const-string v32, "power"

    move-object/from16 v0, p1

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v29

    check-cast v29, Landroid/os/PowerManager;

    .line 171
    .local v29, pm:Landroid/os/PowerManager;
    const/16 v32, 0x1

    const-string v33, "SmartSyncDataLinkTurnOffReceiver"

    move-object/from16 v0, v29

    move/from16 v1, v32

    move-object/from16 v2, v33

    invoke-virtual {v0, v1, v2}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v32

    move-object/from16 v0, v32

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/framework/activity/powersaver/SmartSyncDataLinkTurnOffReceiver;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 172
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/framework/activity/powersaver/SmartSyncDataLinkTurnOffReceiver;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    move-object/from16 v32, v0

    const/16 v33, 0x1

    invoke-virtual/range {v32 .. v33}, Landroid/os/PowerManager$WakeLock;->setReferenceCounted(Z)V

    .line 175
    .end local v29           #pm:Landroid/os/PowerManager;
    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/framework/activity/powersaver/SmartSyncDataLinkTurnOffReceiver;->SMARTSYNC_SERVICE_BROADCAST_SCREEN_ON:Ljava/lang/String;

    move-object/from16 v32, v0

    move-object/from16 v0, v32

    invoke-virtual {v14, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v32

    if-eqz v32, :cond_4

    .line 178
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/framework/activity/powersaver/SmartSyncDataLinkTurnOffReceiver;->mDataLinkTurnOffSharedpref:Landroid/content/SharedPreferences;

    move-object/from16 v32, v0

    invoke-interface/range {v32 .. v32}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v32

    const-string v33, "PREF_SCREEN_ON_OFF_INTENT_RECEIVER"

    const/16 v34, 0x1

    invoke-interface/range {v32 .. v34}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v32

    invoke-interface/range {v32 .. v32}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 179
    const-string v32, "SmartSyncDataLinkTurnOffReceiver"

    const-string v33, "DataLink: SMARTSYNC_SERVICE_BROADCAST_SCREEN_ON "

    invoke-static/range {v32 .. v33}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 180
    const/16 v32, 0x1

    sput-boolean v32, Lcom/android/settings/framework/activity/powersaver/SmartSyncDataLinkTurnOffReceiver;->SystemScreenOnStatus:Z

    .line 181
    const-string v32, "alarm"

    move-object/from16 v0, p1

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Landroid/app/AlarmManager;

    .line 183
    .local v15, alarmManager:Landroid/app/AlarmManager;
    invoke-direct/range {p0 .. p1}, Lcom/android/settings/framework/activity/powersaver/SmartSyncDataLinkTurnOffReceiver;->RestorePowerSleepStatus(Landroid/content/Context;)V

    .line 185
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/framework/activity/powersaver/SmartSyncDataLinkTurnOffReceiver;->mDataLinkTurnOffSharedpref:Landroid/content/SharedPreferences;

    move-object/from16 v32, v0

    invoke-interface/range {v32 .. v32}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v32

    const-string v33, "PREF_AUTOMATICALL_ENABLE"

    const/16 v34, 0x0

    invoke-interface/range {v32 .. v34}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v32

    invoke-interface/range {v32 .. v32}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 187
    sget-object v32, Lcom/android/settings/framework/activity/powersaver/SmartSyncDataLinkTurnOffReceiver;->mPendingIntent_Off_wifi_retry:Landroid/app/PendingIntent;

    if-eqz v32, :cond_1

    .line 189
    sget-object v32, Lcom/android/settings/framework/activity/powersaver/SmartSyncDataLinkTurnOffReceiver;->mPendingIntent_Off_wifi_retry:Landroid/app/PendingIntent;

    move-object/from16 v0, v32

    invoke-virtual {v15, v0}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    .line 190
    const/16 v32, 0x0

    sput-object v32, Lcom/android/settings/framework/activity/powersaver/SmartSyncDataLinkTurnOffReceiver;->mPendingIntent_Off_wifi_retry:Landroid/app/PendingIntent;

    .line 192
    :cond_1
    sget-object v32, Lcom/android/settings/framework/activity/powersaver/SmartSyncDataLinkTurnOffReceiver;->mPendingIntent_Off_mobile_retry:Landroid/app/PendingIntent;

    if-eqz v32, :cond_2

    .line 194
    sget-object v32, Lcom/android/settings/framework/activity/powersaver/SmartSyncDataLinkTurnOffReceiver;->mPendingIntent_Off_mobile_retry:Landroid/app/PendingIntent;

    move-object/from16 v0, v32

    invoke-virtual {v15, v0}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    .line 195
    const/16 v32, 0x0

    sput-object v32, Lcom/android/settings/framework/activity/powersaver/SmartSyncDataLinkTurnOffReceiver;->mPendingIntent_Off_mobile_retry:Landroid/app/PendingIntent;

    .line 732
    .end local v15           #alarmManager:Landroid/app/AlarmManager;
    :cond_2
    :goto_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/framework/activity/powersaver/SmartSyncDataLinkTurnOffReceiver;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    move-object/from16 v32, v0

    invoke-virtual/range {v32 .. v32}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v32

    const/16 v33, 0x1

    move/from16 v0, v32

    move/from16 v1, v33

    if-ne v0, v1, :cond_3

    .line 735
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/framework/activity/powersaver/SmartSyncDataLinkTurnOffReceiver;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    move-object/from16 v32, v0

    invoke-virtual/range {v32 .. v32}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 737
    :cond_3
    return-void

    .line 226
    :cond_4
    const-string v32, "android.net.wifi.WIFI_STATE_CHANGED"

    move-object/from16 v0, v32

    invoke-virtual {v14, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v32

    if-eqz v32, :cond_6

    .line 228
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/framework/activity/powersaver/SmartSyncDataLinkTurnOffReceiver;->mDataLinkTurnOffSharedpref:Landroid/content/SharedPreferences;

    move-object/from16 v32, v0

    const-string v33, "PREF_CHECK_TURN_ONOFF_WIFI_STATE"

    const/16 v34, 0x0

    invoke-interface/range {v32 .. v34}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v8

    .line 230
    .local v8, Check_Wifi_States:Z
    const/16 v32, 0x1

    move/from16 v0, v32

    if-ne v8, v0, :cond_2

    .line 232
    const-string v32, "wifi"

    move-object/from16 v0, p1

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v32

    check-cast v32, Landroid/net/wifi/WifiManager;

    move-object/from16 v0, v32

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/framework/activity/powersaver/SmartSyncDataLinkTurnOffReceiver;->mWiFiManager:Landroid/net/wifi/WifiManager;

    .line 233
    const-string v32, "SmartSyncDataLinkTurnOffReceiver"

    new-instance v33, Ljava/lang/StringBuilder;

    invoke-direct/range {v33 .. v33}, Ljava/lang/StringBuilder;-><init>()V

    const-string v34, "WIFI_STATE_CHANGED_ACTION mWiFiManager.getWifiState() ="

    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/framework/activity/powersaver/SmartSyncDataLinkTurnOffReceiver;->mWiFiManager:Landroid/net/wifi/WifiManager;

    move-object/from16 v34, v0

    invoke-virtual/range {v34 .. v34}, Landroid/net/wifi/WifiManager;->getWifiState()I

    move-result v34

    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v33

    invoke-virtual/range {v33 .. v33}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v33

    invoke-static/range {v32 .. v33}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 234
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/framework/activity/powersaver/SmartSyncDataLinkTurnOffReceiver;->mWiFiManager:Landroid/net/wifi/WifiManager;

    move-object/from16 v32, v0

    invoke-virtual/range {v32 .. v32}, Landroid/net/wifi/WifiManager;->getWifiState()I

    move-result v32

    sget v33, Lcom/android/settings/framework/activity/powersaver/SmartSyncDataLinkTurnOffReceiver;->Defined_WIFI_STATE_ENABLED:I

    move/from16 v0, v32

    move/from16 v1, v33

    if-eq v0, v1, :cond_5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/framework/activity/powersaver/SmartSyncDataLinkTurnOffReceiver;->mWiFiManager:Landroid/net/wifi/WifiManager;

    move-object/from16 v32, v0

    invoke-virtual/range {v32 .. v32}, Landroid/net/wifi/WifiManager;->getWifiState()I

    move-result v32

    sget v33, Lcom/android/settings/framework/activity/powersaver/SmartSyncDataLinkTurnOffReceiver;->Defined_WIFI_STATE_ENABLING:I

    move/from16 v0, v32

    move/from16 v1, v33

    if-eq v0, v1, :cond_5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/framework/activity/powersaver/SmartSyncDataLinkTurnOffReceiver;->mWiFiManager:Landroid/net/wifi/WifiManager;

    move-object/from16 v32, v0

    invoke-virtual/range {v32 .. v32}, Landroid/net/wifi/WifiManager;->getWifiState()I

    move-result v32

    sget v33, Lcom/android/settings/framework/activity/powersaver/SmartSyncDataLinkTurnOffReceiver;->Defined_WIFI_STATE_UNKNOWN:I

    move/from16 v0, v32

    move/from16 v1, v33

    if-ne v0, v1, :cond_2

    .line 235
    :cond_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/framework/activity/powersaver/SmartSyncDataLinkTurnOffReceiver;->mDataLinkTurnOffSharedpref:Landroid/content/SharedPreferences;

    move-object/from16 v32, v0

    invoke-interface/range {v32 .. v32}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v32

    const-string v33, "PREF_CHECK_TURN_ONOFF_WIFI_STATE"

    const/16 v34, 0x0

    invoke-interface/range {v32 .. v34}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v32

    invoke-interface/range {v32 .. v32}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto/16 :goto_0

    .line 239
    .end local v8           #Check_Wifi_States:Z
    :cond_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/framework/activity/powersaver/SmartSyncDataLinkTurnOffReceiver;->SMARTSYNC_SERVICE_BROADCAST_SCREEN_OFF:Ljava/lang/String;

    move-object/from16 v32, v0

    move-object/from16 v0, v32

    invoke-virtual {v14, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v32

    if-eqz v32, :cond_e

    .line 241
    const/16 v32, 0x0

    sput-boolean v32, Lcom/android/settings/framework/activity/powersaver/SmartSyncDataLinkTurnOffReceiver;->mEnterPowerSleepStatus:Z

    .line 242
    const/16 v32, 0x0

    sput-boolean v32, Lcom/android/settings/framework/activity/powersaver/SmartSyncDataLinkTurnOffReceiver;->TurnOffSyncStatus:Z

    .line 243
    const/16 v32, 0x0

    sput-boolean v32, Lcom/android/settings/framework/activity/powersaver/SmartSyncDataLinkTurnOffReceiver;->WifiTurnOff:Z

    .line 244
    const/16 v32, 0x0

    sput-boolean v32, Lcom/android/settings/framework/activity/powersaver/SmartSyncDataLinkTurnOffReceiver;->MobileTurnOff:Z

    .line 249
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/framework/activity/powersaver/SmartSyncDataLinkTurnOffReceiver;->mDataLinkTurnOffSharedpref:Landroid/content/SharedPreferences;

    move-object/from16 v32, v0

    const-string v33, "PREF_SCREEN_ON_OFF_INTENT_RECEIVER"

    const/16 v34, 0x1

    invoke-interface/range {v32 .. v34}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v6

    .line 250
    .local v6, Change_Screen_OnOff_States:Z
    const-string v32, "SmartSyncDataLinkTurnOffReceiver"

    new-instance v33, Ljava/lang/StringBuilder;

    invoke-direct/range {v33 .. v33}, Ljava/lang/StringBuilder;-><init>()V

    const-string v34, "SMARTSYNC_SERVICE_BROADCAST_SCREEN_OFF "

    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    move-object/from16 v0, v33

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v33

    invoke-virtual/range {v33 .. v33}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v33

    invoke-static/range {v32 .. v33}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 252
    const/16 v32, 0x1

    move/from16 v0, v32

    if-ne v6, v0, :cond_d

    .line 254
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/framework/activity/powersaver/SmartSyncDataLinkTurnOffReceiver;->mDataLinkTurnOffSharedpref:Landroid/content/SharedPreferences;

    move-object/from16 v32, v0

    const-string v33, "PREF_MOBILE_STATES"

    const/16 v34, 0x1

    invoke-interface/range {v32 .. v34}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v10

    .line 255
    .local v10, Mobile_States:Z
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/framework/activity/powersaver/SmartSyncDataLinkTurnOffReceiver;->mDataLinkTurnOffSharedpref:Landroid/content/SharedPreferences;

    move-object/from16 v32, v0

    const-string v33, "PREF_WIFI_STATES"

    const/16 v34, 0x1

    invoke-interface/range {v32 .. v34}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v13

    .line 256
    .local v13, Wifi_States:Z
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/framework/activity/powersaver/SmartSyncDataLinkTurnOffReceiver;->mDataLinkTurnOffSharedpref:Landroid/content/SharedPreferences;

    move-object/from16 v32, v0

    const-string v33, "PREF_AUTO_SYNC_STATES"

    const/16 v34, 0x1

    invoke-interface/range {v32 .. v34}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v5

    .line 258
    .local v5, Auto_Sync_States:Z
    const-string v32, "connectivity"

    move-object/from16 v0, p1

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v26

    check-cast v26, Landroid/net/ConnectivityManager;

    .line 259
    .local v26, mConnetManager:Landroid/net/ConnectivityManager;
    invoke-virtual/range {v26 .. v26}, Landroid/net/ConnectivityManager;->getMobileDataEnabled()Z

    move-result v30

    .line 265
    .local v30, system_mobile_states:Z
    move/from16 v0, v30

    if-eq v0, v10, :cond_7

    .line 266
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/framework/activity/powersaver/SmartSyncDataLinkTurnOffReceiver;->mDataLinkTurnOffSharedpref:Landroid/content/SharedPreferences;

    move-object/from16 v32, v0

    invoke-interface/range {v32 .. v32}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v32

    const-string v33, "PREF_MOBILE_STATES"

    move-object/from16 v0, v32

    move-object/from16 v1, v33

    move/from16 v2, v30

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v32

    invoke-interface/range {v32 .. v32}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 268
    :cond_7
    const-string v32, "wifi"

    move-object/from16 v0, p1

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v32

    check-cast v32, Landroid/net/wifi/WifiManager;

    move-object/from16 v0, v32

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/framework/activity/powersaver/SmartSyncDataLinkTurnOffReceiver;->mWiFiManager:Landroid/net/wifi/WifiManager;

    .line 270
    const/16 v31, 0x0

    .line 272
    .local v31, system_wifi_states:Z
    const-string v32, "SmartSyncDataLinkTurnOffReceiver"

    new-instance v33, Ljava/lang/StringBuilder;

    invoke-direct/range {v33 .. v33}, Ljava/lang/StringBuilder;-><init>()V

    const-string v34, "BROADCAST_SCREEN_OFF mWiFiManager.getWifiState() ="

    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/framework/activity/powersaver/SmartSyncDataLinkTurnOffReceiver;->mWiFiManager:Landroid/net/wifi/WifiManager;

    move-object/from16 v34, v0

    invoke-virtual/range {v34 .. v34}, Landroid/net/wifi/WifiManager;->getWifiState()I

    move-result v34

    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v33

    invoke-virtual/range {v33 .. v33}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v33

    invoke-static/range {v32 .. v33}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 274
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/framework/activity/powersaver/SmartSyncDataLinkTurnOffReceiver;->mWiFiManager:Landroid/net/wifi/WifiManager;

    move-object/from16 v32, v0

    invoke-virtual/range {v32 .. v32}, Landroid/net/wifi/WifiManager;->getWifiState()I

    move-result v32

    sget v33, Lcom/android/settings/framework/activity/powersaver/SmartSyncDataLinkTurnOffReceiver;->Defined_WIFI_STATE_ENABLED:I

    move/from16 v0, v32

    move/from16 v1, v33

    if-eq v0, v1, :cond_8

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/framework/activity/powersaver/SmartSyncDataLinkTurnOffReceiver;->mWiFiManager:Landroid/net/wifi/WifiManager;

    move-object/from16 v32, v0

    invoke-virtual/range {v32 .. v32}, Landroid/net/wifi/WifiManager;->getWifiState()I

    move-result v32

    sget v33, Lcom/android/settings/framework/activity/powersaver/SmartSyncDataLinkTurnOffReceiver;->Defined_WIFI_STATE_ENABLING:I

    move/from16 v0, v32

    move/from16 v1, v33

    if-ne v0, v1, :cond_9

    .line 275
    :cond_8
    const/16 v31, 0x1

    .line 277
    :cond_9
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/framework/activity/powersaver/SmartSyncDataLinkTurnOffReceiver;->mDataLinkTurnOffSharedpref:Landroid/content/SharedPreferences;

    move-object/from16 v32, v0

    const-string v33, "PREF_CHECK_TURN_ONOFF_WIFI_STATE"

    const/16 v34, 0x0

    invoke-interface/range {v32 .. v34}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v8

    .line 278
    .restart local v8       #Check_Wifi_States:Z
    const/16 v32, 0x1

    move/from16 v0, v32

    if-ne v8, v0, :cond_a

    .line 281
    const-string v32, "SmartSyncDataLinkTurnOffReceiver"

    const-string v33, "PREF_REWRITE_TURN_ONOFF_WIFI_STATE "

    invoke-static/range {v32 .. v33}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 282
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/framework/activity/powersaver/SmartSyncDataLinkTurnOffReceiver;->mDataLinkTurnOffSharedpref:Landroid/content/SharedPreferences;

    move-object/from16 v32, v0

    const-string v33, "PREF_REWRITE_TURN_ONOFF_WIFI_STATE"

    const/16 v34, 0x1

    invoke-interface/range {v32 .. v34}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v31

    .line 290
    :cond_a
    move/from16 v0, v31

    if-eq v0, v13, :cond_b

    .line 291
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/framework/activity/powersaver/SmartSyncDataLinkTurnOffReceiver;->mDataLinkTurnOffSharedpref:Landroid/content/SharedPreferences;

    move-object/from16 v32, v0

    invoke-interface/range {v32 .. v32}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v32

    const-string v33, "PREF_WIFI_STATES"

    move-object/from16 v0, v32

    move-object/from16 v1, v33

    move/from16 v2, v31

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v32

    invoke-interface/range {v32 .. v32}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 293
    :cond_b
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    invoke-static {}, Landroid/content/ContentResolver;->getMasterSyncAutomatically()Z

    move-result v12

    .line 301
    .local v12, System_auto_sync_states:Z
    const-string v32, "SmartSyncDataLinkTurnOffReceiver"

    new-instance v33, Ljava/lang/StringBuilder;

    invoke-direct/range {v33 .. v33}, Ljava/lang/StringBuilder;-><init>()V

    const-string v34, "OF M="

    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    move-object/from16 v0, v33

    move/from16 v1, v30

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v33

    const-string v34, " W="

    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    move-object/from16 v0, v33

    move/from16 v1, v31

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v33

    const-string v34, " A="

    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    move-object/from16 v0, v33

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v33

    invoke-virtual/range {v33 .. v33}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v33

    invoke-static/range {v32 .. v33}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 303
    if-eq v12, v5, :cond_c

    .line 304
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/framework/activity/powersaver/SmartSyncDataLinkTurnOffReceiver;->mDataLinkTurnOffSharedpref:Landroid/content/SharedPreferences;

    move-object/from16 v32, v0

    invoke-interface/range {v32 .. v32}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v32

    const-string v33, "PREF_AUTO_SYNC_STATES"

    move-object/from16 v0, v32

    move-object/from16 v1, v33

    invoke-interface {v0, v1, v12}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v32

    invoke-interface/range {v32 .. v32}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 306
    :cond_c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/framework/activity/powersaver/SmartSyncDataLinkTurnOffReceiver;->mDataLinkTurnOffSharedpref:Landroid/content/SharedPreferences;

    move-object/from16 v32, v0

    invoke-interface/range {v32 .. v32}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v32

    const-string v33, "PREF_SCREEN_ON_OFF_INTENT_RECEIVER"

    const/16 v34, 0x0

    invoke-interface/range {v32 .. v34}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v32

    invoke-interface/range {v32 .. v32}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 309
    .end local v5           #Auto_Sync_States:Z
    .end local v8           #Check_Wifi_States:Z
    .end local v10           #Mobile_States:Z
    .end local v12           #System_auto_sync_states:Z
    .end local v13           #Wifi_States:Z
    .end local v26           #mConnetManager:Landroid/net/ConnectivityManager;
    .end local v30           #system_mobile_states:Z
    .end local v31           #system_wifi_states:Z
    :cond_d
    invoke-static {}, Landroid/net/TrafficStats;->getMobileTxPackets()J

    move-result-wide v32

    sput-wide v32, Lcom/android/settings/framework/activity/powersaver/SmartSyncDataLinkTurnOffReceiver;->preMobile_txPkts:J

    .line 310
    invoke-static {}, Landroid/net/TrafficStats;->getMobileRxPackets()J

    move-result-wide v32

    sput-wide v32, Lcom/android/settings/framework/activity/powersaver/SmartSyncDataLinkTurnOffReceiver;->preMobile_rxPkts:J

    .line 312
    const-string v32, "SmartSyncDataLinkTurnOffReceiver"

    new-instance v33, Ljava/lang/StringBuilder;

    invoke-direct/range {v33 .. v33}, Ljava/lang/StringBuilder;-><init>()V

    const-string v34, "SMARTSYNC_SERVICE_BROADCAST_SCREEN_OFF  preMobile_txPkts="

    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    sget-wide v34, Lcom/android/settings/framework/activity/powersaver/SmartSyncDataLinkTurnOffReceiver;->preMobile_txPkts:J

    invoke-virtual/range {v33 .. v35}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v33

    invoke-virtual/range {v33 .. v33}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v33

    invoke-static/range {v32 .. v33}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 313
    const-string v32, "SmartSyncDataLinkTurnOffReceiver"

    new-instance v33, Ljava/lang/StringBuilder;

    invoke-direct/range {v33 .. v33}, Ljava/lang/StringBuilder;-><init>()V

    const-string v34, "SMARTSYNC_SERVICE_BROADCAST_SCREEN_OFF  preMobile_rxPkts= "

    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    sget-wide v34, Lcom/android/settings/framework/activity/powersaver/SmartSyncDataLinkTurnOffReceiver;->preMobile_rxPkts:J

    invoke-virtual/range {v33 .. v35}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v33

    invoke-virtual/range {v33 .. v33}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v33

    invoke-static/range {v32 .. v33}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 315
    const-string v32, "wifi.interface"

    const-string v33, "tiwlan0"

    invoke-static/range {v32 .. v33}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v20

    .line 317
    .local v20, ifname:Ljava/lang/String;
    invoke-static/range {v20 .. v20}, Landroid/net/TrafficStats;->getTxPackets(Ljava/lang/String;)J

    move-result-wide v32

    sput-wide v32, Lcom/android/settings/framework/activity/powersaver/SmartSyncDataLinkTurnOffReceiver;->preWifi_txPkts:J

    .line 318
    invoke-static/range {v20 .. v20}, Landroid/net/TrafficStats;->getRxPackets(Ljava/lang/String;)J

    move-result-wide v32

    sput-wide v32, Lcom/android/settings/framework/activity/powersaver/SmartSyncDataLinkTurnOffReceiver;->preWifi_rxPkts:J

    .line 320
    const-string v32, "SmartSyncDataLinkTurnOffReceiver"

    new-instance v33, Ljava/lang/StringBuilder;

    invoke-direct/range {v33 .. v33}, Ljava/lang/StringBuilder;-><init>()V

    const-string v34, "SMARTSYNC_SERVICE_BROADCAST_SCREEN_OFF  preWifi_txPkts="

    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    sget-wide v34, Lcom/android/settings/framework/activity/powersaver/SmartSyncDataLinkTurnOffReceiver;->preWifi_txPkts:J

    invoke-virtual/range {v33 .. v35}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v33

    invoke-virtual/range {v33 .. v33}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v33

    invoke-static/range {v32 .. v33}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 321
    const-string v32, "SmartSyncDataLinkTurnOffReceiver"

    new-instance v33, Ljava/lang/StringBuilder;

    invoke-direct/range {v33 .. v33}, Ljava/lang/StringBuilder;-><init>()V

    const-string v34, "SMARTSYNC_SERVICE_BROADCAST_SCREEN_OFF  preWifi_rxPkts= "

    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    sget-wide v34, Lcom/android/settings/framework/activity/powersaver/SmartSyncDataLinkTurnOffReceiver;->preWifi_rxPkts:J

    invoke-virtual/range {v33 .. v35}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v33

    invoke-virtual/range {v33 .. v33}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v33

    invoke-static/range {v32 .. v33}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 324
    const/16 v32, 0x0

    sput-boolean v32, Lcom/android/settings/framework/activity/powersaver/SmartSyncDataLinkTurnOffReceiver;->SystemScreenOnStatus:Z

    goto/16 :goto_0

    .line 327
    .end local v6           #Change_Screen_OnOff_States:Z
    .end local v20           #ifname:Ljava/lang/String;
    :cond_e
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/framework/activity/powersaver/SmartSyncDataLinkTurnOffReceiver;->SMARTSYNC_TURN_OFF_WIFI:Ljava/lang/String;

    move-object/from16 v32, v0

    move-object/from16 v0, v32

    invoke-virtual {v14, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v32

    if-nez v32, :cond_f

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/framework/activity/powersaver/SmartSyncDataLinkTurnOffReceiver;->SMARTSYNC_TURN_OFF_WIFI_BY_CHECK:Ljava/lang/String;

    move-object/from16 v32, v0

    move-object/from16 v0, v32

    invoke-virtual {v14, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v32

    if-nez v32, :cond_f

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/framework/activity/powersaver/SmartSyncDataLinkTurnOffReceiver;->SMARTSYNC_TURN_OFF_WIFI_RETRY:Ljava/lang/String;

    move-object/from16 v32, v0

    move-object/from16 v0, v32

    invoke-virtual {v14, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v32

    if-nez v32, :cond_f

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/framework/activity/powersaver/SmartSyncDataLinkTurnOffReceiver;->SMARTSYNC_AP_TURN_OFF_WIFI:Ljava/lang/String;

    move-object/from16 v32, v0

    move-object/from16 v0, v32

    invoke-virtual {v14, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v32

    if-eqz v32, :cond_13

    .line 330
    :cond_f
    const-string v32, "SmartSyncDataLinkTurnOffReceiver"

    new-instance v33, Ljava/lang/StringBuilder;

    invoke-direct/range {v33 .. v33}, Ljava/lang/StringBuilder;-><init>()V

    const-string v34, "smartsync_turn_off_wifi = "

    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v34

    const-string v35, "smartsync_turn_off_wifi"

    const/16 v36, 0x1

    invoke-static/range {v34 .. v36}, Lcom/htc/wrap/android/provider/HtcWrapSettings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v34

    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v33

    invoke-virtual/range {v33 .. v33}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v33

    invoke-static/range {v32 .. v33}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 331
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v32

    const-string v33, "smartsync_turn_off_wifi"

    const/16 v34, 0x1

    invoke-static/range {v32 .. v34}, Lcom/htc/wrap/android/provider/HtcWrapSettings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v32

    const/16 v33, 0x1

    move/from16 v0, v32

    move/from16 v1, v33

    if-ne v0, v1, :cond_2

    .line 338
    const/4 v11, 0x0

    .line 339
    .local v11, SmartSynServiceRunning:Z
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/framework/activity/powersaver/SmartSyncDataLinkTurnOffReceiver;->mDataLinkTurnOffSharedpref:Landroid/content/SharedPreferences;

    move-object/from16 v32, v0

    const-string v33, "PREF_POWER_SLEEP_MODE"

    const/16 v34, 0x0

    invoke-interface/range {v32 .. v34}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v11

    .line 341
    invoke-virtual/range {p0 .. p1}, Lcom/android/settings/framework/activity/powersaver/SmartSyncDataLinkTurnOffReceiver;->StopAlldaySleepMode(Landroid/content/Context;)V

    .line 343
    const-string v32, "SmartSyncDataLinkTurnOffReceiver"

    new-instance v33, Ljava/lang/StringBuilder;

    invoke-direct/range {v33 .. v33}, Ljava/lang/StringBuilder;-><init>()V

    const-string v34, "isWifiHotSpotEnabled():"

    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    invoke-static {}, Lcom/android/settings/framework/activity/powersaver/SmartSyncDataLinkTurnOffReceiver;->isWifiHotSpotEnabled()Z

    move-result v34

    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v33

    invoke-virtual/range {v33 .. v33}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v33

    invoke-static/range {v32 .. v33}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 345
    const/16 v32, 0x1

    move/from16 v0, v32

    if-ne v11, v0, :cond_2

    invoke-static {}, Lcom/android/settings/framework/activity/powersaver/SmartSyncDataLinkTurnOffReceiver;->isWifiHotSpotEnabled()Z

    move-result v32

    if-nez v32, :cond_2

    .line 347
    const/4 v9, 0x0

    .line 348
    .local v9, LatLngValue:Z
    invoke-virtual/range {p0 .. p1}, Lcom/android/settings/framework/activity/powersaver/SmartSyncDataLinkTurnOffReceiver;->CheckWifiDataSendingReceiving(Landroid/content/Context;)Z

    move-result v7

    .line 354
    .local v7, CheckWifiData:Z
    if-nez v7, :cond_12

    .line 358
    invoke-virtual/range {p0 .. p1}, Lcom/android/settings/framework/activity/powersaver/SmartSyncDataLinkTurnOffReceiver;->getLocationServicesStatus(Landroid/content/Context;)Z

    .line 359
    invoke-virtual/range {p0 .. p1}, Lcom/android/settings/framework/activity/powersaver/SmartSyncDataLinkTurnOffReceiver;->GetLocationData(Landroid/content/Context;)V

    .line 361
    sget-wide v32, Lcom/android/settings/framework/activity/powersaver/SmartSyncDataLinkTurnOffReceiver;->mDBPostion_Lat:D

    const-wide/16 v34, 0x0

    cmpl-double v32, v32, v34

    if-nez v32, :cond_10

    sget-wide v32, Lcom/android/settings/framework/activity/powersaver/SmartSyncDataLinkTurnOffReceiver;->mDBPostion_Lng:D

    const-wide/16 v34, 0x0

    cmpl-double v32, v32, v34

    if-nez v32, :cond_10

    .line 362
    const/4 v9, 0x1

    .line 364
    :cond_10
    sget-wide v32, Lcom/android/settings/framework/activity/powersaver/SmartSyncDataLinkTurnOffReceiver;->mPostion_Lat:D

    sget-wide v34, Lcom/android/settings/framework/activity/powersaver/SmartSyncDataLinkTurnOffReceiver;->mDBPostion_Lat:D

    sub-double v32, v32, v34

    sget-wide v34, Lcom/android/settings/framework/activity/powersaver/SmartSyncDataLinkTurnOffReceiver;->mPostion_Lng:D

    sget-wide v36, Lcom/android/settings/framework/activity/powersaver/SmartSyncDataLinkTurnOffReceiver;->mDBPostion_Lng:D

    sub-double v34, v34, v36

    invoke-static/range {v32 .. v35}, Ljava/lang/Math;->hypot(DD)D

    move-result-wide v32

    move-wide/from16 v0, v32

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/android/settings/framework/activity/powersaver/SmartSyncDataLinkTurnOffReceiver;->Postion_different:D

    .line 366
    const-string v32, "SmartSyncDataLinkTurnOffReceiver"

    const-string v33, "Wifi CheckWifiDataSendingReceiving is pass"

    invoke-static/range {v32 .. v33}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 372
    sget-wide v32, Lcom/android/settings/framework/activity/powersaver/SmartSyncDataLinkTurnOffReceiver;->mPostion_Lat:D

    sput-wide v32, Lcom/android/settings/framework/activity/powersaver/SmartSyncDataLinkTurnOffReceiver;->mDBPostion_Lat:D

    .line 373
    sget-wide v32, Lcom/android/settings/framework/activity/powersaver/SmartSyncDataLinkTurnOffReceiver;->mPostion_Lng:D

    sput-wide v32, Lcom/android/settings/framework/activity/powersaver/SmartSyncDataLinkTurnOffReceiver;->mDBPostion_Lng:D

    .line 375
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/framework/activity/powersaver/SmartSyncDataLinkTurnOffReceiver;->mDataLinkTurnOffSharedpref:Landroid/content/SharedPreferences;

    move-object/from16 v32, v0

    const-string v33, "PREF_AP_REQUEST_POWER_SLEEP_MODE"

    const/16 v34, 0x0

    invoke-interface/range {v32 .. v34}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v16

    .line 380
    .local v16, apreqnetwork:Z
    if-nez v16, :cond_2

    .line 382
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/framework/activity/powersaver/SmartSyncDataLinkTurnOffReceiver;->isCharging()Z

    move-result v32

    if-nez v32, :cond_2

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/settings/framework/activity/powersaver/SmartSyncDataLinkTurnOffReceiver;->Postion_different:D

    move-wide/from16 v32, v0

    const-wide v34, 0x3f847ae147ae147bL

    cmpg-double v32, v32, v34

    if-ltz v32, :cond_11

    const/16 v32, 0x1

    move/from16 v0, v32

    if-ne v9, v0, :cond_2

    .line 385
    :cond_11
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/framework/activity/powersaver/SmartSyncDataLinkTurnOffReceiver;->mDataLinkTurnOffSharedpref:Landroid/content/SharedPreferences;

    move-object/from16 v32, v0

    const-string v33, "PREF_SCREEN_ON_OFF_INTENT_RECEIVER"

    const/16 v34, 0x1

    invoke-interface/range {v32 .. v34}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v32

    sput-boolean v32, Lcom/android/settings/framework/activity/powersaver/SmartSyncDataLinkTurnOffReceiver;->SystemScreenOnStatus:Z

    .line 392
    const-string v32, "wifi"

    move-object/from16 v0, p1

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v32

    check-cast v32, Landroid/net/wifi/WifiManager;

    move-object/from16 v0, v32

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/framework/activity/powersaver/SmartSyncDataLinkTurnOffReceiver;->mWiFiManager:Landroid/net/wifi/WifiManager;

    .line 393
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/framework/activity/powersaver/SmartSyncDataLinkTurnOffReceiver;->mWiFiManager:Landroid/net/wifi/WifiManager;

    move-object/from16 v32, v0

    invoke-virtual/range {v32 .. v32}, Landroid/net/wifi/WifiManager;->isWifiEnabled()Z

    move-result v32

    const/16 v33, 0x1

    move/from16 v0, v32

    move/from16 v1, v33

    if-ne v0, v1, :cond_2

    sget-boolean v32, Lcom/android/settings/framework/activity/powersaver/SmartSyncDataLinkTurnOffReceiver;->SystemScreenOnStatus:Z

    if-nez v32, :cond_2

    .line 395
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/framework/activity/powersaver/SmartSyncDataLinkTurnOffReceiver;->mDataLinkTurnOffSharedpref:Landroid/content/SharedPreferences;

    move-object/from16 v32, v0

    invoke-interface/range {v32 .. v32}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v32

    const-string v33, "PREF_CHANGE_WIFI_STATES"

    const/16 v34, 0x1

    invoke-interface/range {v32 .. v34}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v32

    invoke-interface/range {v32 .. v32}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 400
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/framework/activity/powersaver/SmartSyncDataLinkTurnOffReceiver;->mWiFiManager:Landroid/net/wifi/WifiManager;

    move-object/from16 v32, v0

    const/16 v33, 0x0

    invoke-virtual/range {v32 .. v33}, Landroid/net/wifi/WifiManager;->setWifiEnabled(Z)Z

    .line 402
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/framework/activity/powersaver/SmartSyncDataLinkTurnOffReceiver;->mDataLinkTurnOffSharedpref:Landroid/content/SharedPreferences;

    move-object/from16 v32, v0

    invoke-interface/range {v32 .. v32}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v32

    const-string v33, "PREF_ENTER_POWER_SLEEP_STATES"

    const/16 v34, 0x1

    invoke-interface/range {v32 .. v34}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v32

    invoke-interface/range {v32 .. v32}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 403
    const/16 v17, 0x0

    .line 404
    .local v17, bentersleepmode:Z
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/framework/activity/powersaver/SmartSyncDataLinkTurnOffReceiver;->mDataLinkTurnOffSharedpref:Landroid/content/SharedPreferences;

    move-object/from16 v32, v0

    const-string v33, "PREF_ENTER_POWER_SLEEP_STATES"

    const/16 v34, 0x1

    invoke-interface/range {v32 .. v34}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v17

    .line 405
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, v17

    invoke-virtual {v0, v1, v2}, Lcom/android/settings/framework/activity/powersaver/SmartSyncDataLinkTurnOffReceiver;->BroadcastPowerSleepStatus(Landroid/content/Context;Z)V

    goto/16 :goto_0

    .line 412
    .end local v16           #apreqnetwork:Z
    .end local v17           #bentersleepmode:Z
    :cond_12
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v27

    .line 413
    .local v27, now:J
    const-string v32, "alarm"

    move-object/from16 v0, p1

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Landroid/app/AlarmManager;

    .line 414
    .restart local v15       #alarmManager:Landroid/app/AlarmManager;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/framework/activity/powersaver/SmartSyncDataLinkTurnOffReceiver;->mDataLinkTurnOffSharedpref:Landroid/content/SharedPreferences;

    move-object/from16 v32, v0

    const-string v33, "PREF_SCREEN_ON_OFF_INTENT_RECEIVER"

    const/16 v34, 0x1

    invoke-interface/range {v32 .. v34}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v32

    sput-boolean v32, Lcom/android/settings/framework/activity/powersaver/SmartSyncDataLinkTurnOffReceiver;->SystemScreenOnStatus:Z

    .line 419
    sget-boolean v32, Lcom/android/settings/framework/activity/powersaver/SmartSyncDataLinkTurnOffReceiver;->SystemScreenOnStatus:Z

    if-nez v32, :cond_2

    .line 421
    new-instance v25, Landroid/content/Intent;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/framework/activity/powersaver/SmartSyncDataLinkTurnOffReceiver;->SMARTSYNC_TURN_OFF_WIFI_RETRY:Ljava/lang/String;

    move-object/from16 v32, v0

    const/16 v33, 0x0

    const-class v34, Lcom/android/settings/framework/activity/powersaver/SmartSyncDataLinkTurnOffReceiver;

    move-object/from16 v0, v25

    move-object/from16 v1, v32

    move-object/from16 v2, v33

    move-object/from16 v3, p1

    move-object/from16 v4, v34

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;Landroid/content/Context;Ljava/lang/Class;)V

    .line 424
    .local v25, intent_wifi_off_retry:Landroid/content/Intent;
    const/16 v32, 0x0

    const/16 v33, 0x0

    move-object/from16 v0, p1

    move/from16 v1, v32

    move-object/from16 v2, v25

    move/from16 v3, v33

    invoke-static {v0, v1, v2, v3}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v32

    sput-object v32, Lcom/android/settings/framework/activity/powersaver/SmartSyncDataLinkTurnOffReceiver;->mPendingIntent_Off_wifi_retry:Landroid/app/PendingIntent;

    .line 425
    const/16 v32, 0x0

    sget-wide v33, Lcom/android/settings/framework/activity/powersaver/SmartSyncDataLinkTurnOffReceiver;->TURN_OFF_DATA_LINE_RETRY_TIME:J

    add-long v33, v33, v27

    sget-object v35, Lcom/android/settings/framework/activity/powersaver/SmartSyncDataLinkTurnOffReceiver;->mPendingIntent_Off_wifi_retry:Landroid/app/PendingIntent;

    move/from16 v0, v32

    move-wide/from16 v1, v33

    move-object/from16 v3, v35

    invoke-virtual {v15, v0, v1, v2, v3}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V

    goto/16 :goto_0

    .line 436
    .end local v7           #CheckWifiData:Z
    .end local v9           #LatLngValue:Z
    .end local v11           #SmartSynServiceRunning:Z
    .end local v15           #alarmManager:Landroid/app/AlarmManager;
    .end local v25           #intent_wifi_off_retry:Landroid/content/Intent;
    .end local v27           #now:J
    :cond_13
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/framework/activity/powersaver/SmartSyncDataLinkTurnOffReceiver;->SMARTSYNC_TURN_OFF_MOBILE:Ljava/lang/String;

    move-object/from16 v32, v0

    move-object/from16 v0, v32

    invoke-virtual {v14, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v32

    if-nez v32, :cond_14

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/framework/activity/powersaver/SmartSyncDataLinkTurnOffReceiver;->SMARTSYNC_TURN_OFF_MOBILE_BY_CHECK:Ljava/lang/String;

    move-object/from16 v32, v0

    move-object/from16 v0, v32

    invoke-virtual {v14, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v32

    if-nez v32, :cond_14

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/framework/activity/powersaver/SmartSyncDataLinkTurnOffReceiver;->SMARTSYNC_TURN_OFF_MOBILE_RETRY:Ljava/lang/String;

    move-object/from16 v32, v0

    move-object/from16 v0, v32

    invoke-virtual {v14, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v32

    if-nez v32, :cond_14

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/framework/activity/powersaver/SmartSyncDataLinkTurnOffReceiver;->SMARTSYNC_AP_TURN_OFF_MOBILE:Ljava/lang/String;

    move-object/from16 v32, v0

    move-object/from16 v0, v32

    invoke-virtual {v14, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v32

    if-eqz v32, :cond_19

    .line 440
    :cond_14
    const/4 v9, 0x0

    .line 441
    .restart local v9       #LatLngValue:Z
    invoke-virtual/range {p0 .. p1}, Lcom/android/settings/framework/activity/powersaver/SmartSyncDataLinkTurnOffReceiver;->StopAlldaySleepMode(Landroid/content/Context;)V

    .line 443
    const/4 v11, 0x0

    .line 444
    .restart local v11       #SmartSynServiceRunning:Z
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/framework/activity/powersaver/SmartSyncDataLinkTurnOffReceiver;->mDataLinkTurnOffSharedpref:Landroid/content/SharedPreferences;

    move-object/from16 v32, v0

    const-string v33, "PREF_POWER_SLEEP_MODE"

    const/16 v34, 0x0

    invoke-interface/range {v32 .. v34}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v11

    .line 445
    const/16 v32, 0x1

    move/from16 v0, v32

    if-ne v11, v0, :cond_2

    .line 447
    const-string v32, "SmartSyncDataLinkTurnOffReceiver"

    new-instance v33, Ljava/lang/StringBuilder;

    invoke-direct/range {v33 .. v33}, Ljava/lang/StringBuilder;-><init>()V

    const-string v34, "isWifiHotSpotEnabled():"

    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    invoke-static {}, Lcom/android/settings/framework/activity/powersaver/SmartSyncDataLinkTurnOffReceiver;->isWifiHotSpotEnabled()Z

    move-result v34

    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v33

    invoke-virtual/range {v33 .. v33}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v33

    invoke-static/range {v32 .. v33}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 449
    invoke-virtual/range {p0 .. p1}, Lcom/android/settings/framework/activity/powersaver/SmartSyncDataLinkTurnOffReceiver;->CheckDataSendingReceiving(Landroid/content/Context;)Z

    move-result v32

    if-nez v32, :cond_18

    invoke-static {}, Lcom/android/settings/framework/activity/powersaver/SmartSyncDataLinkTurnOffReceiver;->isWifiHotSpotEnabled()Z

    move-result v32

    if-nez v32, :cond_18

    .line 453
    invoke-virtual/range {p0 .. p1}, Lcom/android/settings/framework/activity/powersaver/SmartSyncDataLinkTurnOffReceiver;->getLocationServicesStatus(Landroid/content/Context;)Z

    .line 454
    invoke-virtual/range {p0 .. p1}, Lcom/android/settings/framework/activity/powersaver/SmartSyncDataLinkTurnOffReceiver;->GetLocationData(Landroid/content/Context;)V

    .line 457
    sget-wide v32, Lcom/android/settings/framework/activity/powersaver/SmartSyncDataLinkTurnOffReceiver;->mDBPostion_Lat:D

    const-wide/16 v34, 0x0

    cmpl-double v32, v32, v34

    if-nez v32, :cond_15

    sget-wide v32, Lcom/android/settings/framework/activity/powersaver/SmartSyncDataLinkTurnOffReceiver;->mDBPostion_Lng:D

    const-wide/16 v34, 0x0

    cmpl-double v32, v32, v34

    if-nez v32, :cond_15

    .line 458
    const/4 v9, 0x1

    .line 460
    :cond_15
    sget-wide v32, Lcom/android/settings/framework/activity/powersaver/SmartSyncDataLinkTurnOffReceiver;->mPostion_Lat:D

    sget-wide v34, Lcom/android/settings/framework/activity/powersaver/SmartSyncDataLinkTurnOffReceiver;->mDBPostion_Lat:D

    sub-double v32, v32, v34

    sget-wide v34, Lcom/android/settings/framework/activity/powersaver/SmartSyncDataLinkTurnOffReceiver;->mPostion_Lng:D

    sget-wide v36, Lcom/android/settings/framework/activity/powersaver/SmartSyncDataLinkTurnOffReceiver;->mDBPostion_Lng:D

    sub-double v34, v34, v36

    invoke-static/range {v32 .. v35}, Ljava/lang/Math;->hypot(DD)D

    move-result-wide v32

    move-wide/from16 v0, v32

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/android/settings/framework/activity/powersaver/SmartSyncDataLinkTurnOffReceiver;->Postion_different:D

    .line 468
    sget-wide v32, Lcom/android/settings/framework/activity/powersaver/SmartSyncDataLinkTurnOffReceiver;->mPostion_Lat:D

    sput-wide v32, Lcom/android/settings/framework/activity/powersaver/SmartSyncDataLinkTurnOffReceiver;->mDBPostion_Lat:D

    .line 469
    sget-wide v32, Lcom/android/settings/framework/activity/powersaver/SmartSyncDataLinkTurnOffReceiver;->mPostion_Lng:D

    sput-wide v32, Lcom/android/settings/framework/activity/powersaver/SmartSyncDataLinkTurnOffReceiver;->mDBPostion_Lng:D

    .line 471
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/framework/activity/powersaver/SmartSyncDataLinkTurnOffReceiver;->mDataLinkTurnOffSharedpref:Landroid/content/SharedPreferences;

    move-object/from16 v32, v0

    const-string v33, "PREF_AP_REQUEST_POWER_SLEEP_MODE"

    const/16 v34, 0x0

    invoke-interface/range {v32 .. v34}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v16

    .line 476
    .restart local v16       #apreqnetwork:Z
    if-nez v16, :cond_2

    .line 478
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/framework/activity/powersaver/SmartSyncDataLinkTurnOffReceiver;->isCharging()Z

    move-result v32

    if-nez v32, :cond_2

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/settings/framework/activity/powersaver/SmartSyncDataLinkTurnOffReceiver;->Postion_different:D

    move-wide/from16 v32, v0

    const-wide v34, 0x3f847ae147ae147bL

    cmpg-double v32, v32, v34

    if-ltz v32, :cond_16

    const/16 v32, 0x1

    move/from16 v0, v32

    if-ne v9, v0, :cond_2

    .line 480
    :cond_16
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/framework/activity/powersaver/SmartSyncDataLinkTurnOffReceiver;->mDataLinkTurnOffSharedpref:Landroid/content/SharedPreferences;

    move-object/from16 v32, v0

    const-string v33, "PREF_SCREEN_ON_OFF_INTENT_RECEIVER"

    const/16 v34, 0x1

    invoke-interface/range {v32 .. v34}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v32

    sput-boolean v32, Lcom/android/settings/framework/activity/powersaver/SmartSyncDataLinkTurnOffReceiver;->SystemScreenOnStatus:Z

    .line 481
    const-string v32, "connectivity"

    move-object/from16 v0, p1

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v26

    check-cast v26, Landroid/net/ConnectivityManager;

    .line 482
    .restart local v26       #mConnetManager:Landroid/net/ConnectivityManager;
    sget-boolean v32, Lcom/android/settings/framework/activity/powersaver/SmartSyncDataLinkTurnOffReceiver;->SystemScreenOnStatus:Z

    if-nez v32, :cond_17

    invoke-virtual/range {v26 .. v26}, Landroid/net/ConnectivityManager;->getMobileDataEnabled()Z

    move-result v32

    const/16 v33, 0x1

    move/from16 v0, v32

    move/from16 v1, v33

    if-ne v0, v1, :cond_17

    .line 484
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/framework/activity/powersaver/SmartSyncDataLinkTurnOffReceiver;->mDataLinkTurnOffSharedpref:Landroid/content/SharedPreferences;

    move-object/from16 v32, v0

    invoke-interface/range {v32 .. v32}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v32

    const-string v33, "PREF_CHANGE_MOBILE_STATES"

    const/16 v34, 0x1

    invoke-interface/range {v32 .. v34}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v32

    invoke-interface/range {v32 .. v32}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 489
    const/16 v32, 0x0

    move-object/from16 v0, v26

    move/from16 v1, v32

    invoke-virtual {v0, v1}, Landroid/net/ConnectivityManager;->setMobileDataEnabled(Z)V

    .line 491
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/framework/activity/powersaver/SmartSyncDataLinkTurnOffReceiver;->mDataLinkTurnOffSharedpref:Landroid/content/SharedPreferences;

    move-object/from16 v32, v0

    invoke-interface/range {v32 .. v32}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v32

    const-string v33, "PREF_ENTER_POWER_SLEEP_STATES"

    const/16 v34, 0x1

    invoke-interface/range {v32 .. v34}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v32

    invoke-interface/range {v32 .. v32}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 493
    :cond_17
    new-instance v23, Landroid/content/Intent;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/framework/activity/powersaver/SmartSyncDataLinkTurnOffReceiver;->POWERSAVERMODE_TURN_OFF_MOBILE_SN:Ljava/lang/String;

    move-object/from16 v32, v0

    move-object/from16 v0, v23

    move-object/from16 v1, v32

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 494
    .local v23, intent_power_saver_mode_mobile_off_sn:Landroid/content/Intent;
    move-object/from16 v0, p1

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 495
    const-string v32, "SmartSyncDataLinkTurnOffReceiver"

    const-string v33, "POWERSAVERMODE_TURN_OFF_MOBILE_SN"

    invoke-static/range {v32 .. v33}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 514
    .end local v16           #apreqnetwork:Z
    .end local v23           #intent_power_saver_mode_mobile_off_sn:Landroid/content/Intent;
    .end local v26           #mConnetManager:Landroid/net/ConnectivityManager;
    :cond_18
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v27

    .line 515
    .restart local v27       #now:J
    const-string v32, "alarm"

    move-object/from16 v0, p1

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Landroid/app/AlarmManager;

    .line 516
    .restart local v15       #alarmManager:Landroid/app/AlarmManager;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/framework/activity/powersaver/SmartSyncDataLinkTurnOffReceiver;->mDataLinkTurnOffSharedpref:Landroid/content/SharedPreferences;

    move-object/from16 v32, v0

    const-string v33, "PREF_SCREEN_ON_OFF_INTENT_RECEIVER"

    const/16 v34, 0x1

    invoke-interface/range {v32 .. v34}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v32

    sput-boolean v32, Lcom/android/settings/framework/activity/powersaver/SmartSyncDataLinkTurnOffReceiver;->SystemScreenOnStatus:Z

    .line 517
    sget-boolean v32, Lcom/android/settings/framework/activity/powersaver/SmartSyncDataLinkTurnOffReceiver;->SystemScreenOnStatus:Z

    if-nez v32, :cond_2

    .line 519
    new-instance v22, Landroid/content/Intent;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/framework/activity/powersaver/SmartSyncDataLinkTurnOffReceiver;->SMARTSYNC_TURN_OFF_MOBILE_RETRY:Ljava/lang/String;

    move-object/from16 v32, v0

    const/16 v33, 0x0

    const-class v34, Lcom/android/settings/framework/activity/powersaver/SmartSyncDataLinkTurnOffReceiver;

    move-object/from16 v0, v22

    move-object/from16 v1, v32

    move-object/from16 v2, v33

    move-object/from16 v3, p1

    move-object/from16 v4, v34

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;Landroid/content/Context;Ljava/lang/Class;)V

    .line 522
    .local v22, intent_mobile_off_retry:Landroid/content/Intent;
    const/16 v32, 0x0

    const/16 v33, 0x0

    move-object/from16 v0, p1

    move/from16 v1, v32

    move-object/from16 v2, v22

    move/from16 v3, v33

    invoke-static {v0, v1, v2, v3}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v32

    sput-object v32, Lcom/android/settings/framework/activity/powersaver/SmartSyncDataLinkTurnOffReceiver;->mPendingIntent_Off_mobile_retry:Landroid/app/PendingIntent;

    .line 523
    const/16 v32, 0x0

    sget-wide v33, Lcom/android/settings/framework/activity/powersaver/SmartSyncDataLinkTurnOffReceiver;->TURN_OFF_DATA_LINE_RETRY_TIME:J

    add-long v33, v33, v27

    sget-object v35, Lcom/android/settings/framework/activity/powersaver/SmartSyncDataLinkTurnOffReceiver;->mPendingIntent_Off_mobile_retry:Landroid/app/PendingIntent;

    move/from16 v0, v32

    move-wide/from16 v1, v33

    move-object/from16 v3, v35

    invoke-virtual {v15, v0, v1, v2, v3}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V

    goto/16 :goto_0

    .line 533
    .end local v9           #LatLngValue:Z
    .end local v11           #SmartSynServiceRunning:Z
    .end local v15           #alarmManager:Landroid/app/AlarmManager;
    .end local v22           #intent_mobile_off_retry:Landroid/content/Intent;
    .end local v27           #now:J
    :cond_19
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/framework/activity/powersaver/SmartSyncDataLinkTurnOffReceiver;->SMARTSYNC_TURN_ON_WIFI:Ljava/lang/String;

    move-object/from16 v32, v0

    move-object/from16 v0, v32

    invoke-virtual {v14, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v32

    if-eqz v32, :cond_1b

    .line 535
    const-string v32, "SmartSyncDataLinkTurnOffReceiver"

    new-instance v33, Ljava/lang/StringBuilder;

    invoke-direct/range {v33 .. v33}, Ljava/lang/StringBuilder;-><init>()V

    const-string v34, "smartsync_turn_off_wifi = "

    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v34

    const-string v35, "smartsync_turn_off_wifi"

    const/16 v36, 0x1

    invoke-static/range {v34 .. v36}, Lcom/htc/wrap/android/provider/HtcWrapSettings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v34

    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v33

    invoke-virtual/range {v33 .. v33}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v33

    invoke-static/range {v32 .. v33}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 536
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v32

    const-string v33, "smartsync_turn_off_wifi"

    const/16 v34, 0x1

    invoke-static/range {v32 .. v34}, Lcom/htc/wrap/android/provider/HtcWrapSettings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v32

    const/16 v33, 0x1

    move/from16 v0, v32

    move/from16 v1, v33

    if-ne v0, v1, :cond_2

    .line 542
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/framework/activity/powersaver/SmartSyncDataLinkTurnOffReceiver;->mDataLinkTurnOffSharedpref:Landroid/content/SharedPreferences;

    move-object/from16 v32, v0

    invoke-interface/range {v32 .. v32}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v32

    const-string v33, "PREF_ENTER_POWER_SLEEP_STATES"

    const/16 v34, 0x0

    invoke-interface/range {v32 .. v34}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v32

    invoke-interface/range {v32 .. v32}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 544
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/framework/activity/powersaver/SmartSyncDataLinkTurnOffReceiver;->mDataLinkTurnOffSharedpref:Landroid/content/SharedPreferences;

    move-object/from16 v32, v0

    const-string v33, "PREF_CHANGE_WIFI_STATES"

    const/16 v34, 0x0

    invoke-interface/range {v32 .. v34}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v32

    sput-boolean v32, Lcom/android/settings/framework/activity/powersaver/SmartSyncDataLinkTurnOffReceiver;->WifiTurnOff:Z

    .line 545
    const-string v32, "wifi"

    move-object/from16 v0, p1

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v32

    check-cast v32, Landroid/net/wifi/WifiManager;

    move-object/from16 v0, v32

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/framework/activity/powersaver/SmartSyncDataLinkTurnOffReceiver;->mWiFiManager:Landroid/net/wifi/WifiManager;

    .line 546
    sget-boolean v32, Lcom/android/settings/framework/activity/powersaver/SmartSyncDataLinkTurnOffReceiver;->WifiTurnOff:Z

    const/16 v33, 0x1

    move/from16 v0, v32

    move/from16 v1, v33

    if-ne v0, v1, :cond_1a

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/framework/activity/powersaver/SmartSyncDataLinkTurnOffReceiver;->mWiFiManager:Landroid/net/wifi/WifiManager;

    move-object/from16 v32, v0

    invoke-virtual/range {v32 .. v32}, Landroid/net/wifi/WifiManager;->isWifiEnabled()Z

    move-result v32

    if-nez v32, :cond_1a

    .line 553
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/framework/activity/powersaver/SmartSyncDataLinkTurnOffReceiver;->mWiFiManager:Landroid/net/wifi/WifiManager;

    move-object/from16 v32, v0

    const/16 v33, 0x1

    invoke-virtual/range {v32 .. v33}, Landroid/net/wifi/WifiManager;->setWifiEnabled(Z)Z

    .line 555
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/framework/activity/powersaver/SmartSyncDataLinkTurnOffReceiver;->mDataLinkTurnOffSharedpref:Landroid/content/SharedPreferences;

    move-object/from16 v32, v0

    invoke-interface/range {v32 .. v32}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v32

    const-string v33, "PREF_CHANGE_WIFI_STATES"

    const/16 v34, 0x0

    invoke-interface/range {v32 .. v34}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v32

    invoke-interface/range {v32 .. v32}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 559
    :cond_1a
    invoke-virtual/range {p0 .. p1}, Lcom/android/settings/framework/activity/powersaver/SmartSyncDataLinkTurnOffReceiver;->StartAlldaySleepMode(Landroid/content/Context;)V

    goto/16 :goto_0

    .line 578
    :cond_1b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/framework/activity/powersaver/SmartSyncDataLinkTurnOffReceiver;->SMARTSYNC_TURN_ON_MOBILE:Ljava/lang/String;

    move-object/from16 v32, v0

    move-object/from16 v0, v32

    invoke-virtual {v14, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v32

    if-eqz v32, :cond_1d

    .line 580
    const-string v32, "connectivity"

    move-object/from16 v0, p1

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v26

    check-cast v26, Landroid/net/ConnectivityManager;

    .line 581
    .restart local v26       #mConnetManager:Landroid/net/ConnectivityManager;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/framework/activity/powersaver/SmartSyncDataLinkTurnOffReceiver;->mDataLinkTurnOffSharedpref:Landroid/content/SharedPreferences;

    move-object/from16 v32, v0

    invoke-interface/range {v32 .. v32}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v32

    const-string v33, "PREF_ENTER_POWER_SLEEP_STATES"

    const/16 v34, 0x0

    invoke-interface/range {v32 .. v34}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v32

    invoke-interface/range {v32 .. v32}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 582
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/framework/activity/powersaver/SmartSyncDataLinkTurnOffReceiver;->mDataLinkTurnOffSharedpref:Landroid/content/SharedPreferences;

    move-object/from16 v32, v0

    const-string v33, "PREF_CHANGE_MOBILE_STATES"

    const/16 v34, 0x0

    invoke-interface/range {v32 .. v34}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v32

    sput-boolean v32, Lcom/android/settings/framework/activity/powersaver/SmartSyncDataLinkTurnOffReceiver;->MobileTurnOff:Z

    .line 587
    sget-boolean v32, Lcom/android/settings/framework/activity/powersaver/SmartSyncDataLinkTurnOffReceiver;->MobileTurnOff:Z

    const/16 v33, 0x1

    move/from16 v0, v32

    move/from16 v1, v33

    if-ne v0, v1, :cond_1c

    invoke-virtual/range {v26 .. v26}, Landroid/net/ConnectivityManager;->getMobileDataEnabled()Z

    move-result v32

    if-nez v32, :cond_1c

    .line 595
    const/16 v32, 0x1

    move-object/from16 v0, v26

    move/from16 v1, v32

    invoke-virtual {v0, v1}, Landroid/net/ConnectivityManager;->setMobileDataEnabled(Z)V

    .line 596
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/framework/activity/powersaver/SmartSyncDataLinkTurnOffReceiver;->mDataLinkTurnOffSharedpref:Landroid/content/SharedPreferences;

    move-object/from16 v32, v0

    invoke-interface/range {v32 .. v32}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v32

    const-string v33, "PREF_CHANGE_MOBILE_STATES"

    const/16 v34, 0x0

    invoke-interface/range {v32 .. v34}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v32

    invoke-interface/range {v32 .. v32}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 598
    :cond_1c
    invoke-virtual/range {p0 .. p1}, Lcom/android/settings/framework/activity/powersaver/SmartSyncDataLinkTurnOffReceiver;->StartAlldaySleepMode(Landroid/content/Context;)V

    .line 599
    new-instance v24, Landroid/content/Intent;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/framework/activity/powersaver/SmartSyncDataLinkTurnOffReceiver;->POWERSAVERMODE_TURN_ON_MOBILE_SN:Ljava/lang/String;

    move-object/from16 v32, v0

    move-object/from16 v0, v24

    move-object/from16 v1, v32

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 601
    .local v24, intent_power_saver_mode_mobile_on_sn:Landroid/content/Intent;
    move-object/from16 v0, p1

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 602
    const-string v32, "SmartSyncDataLinkTurnOffReceiver"

    const-string v33, "POWERSAVERMODE_TURN_ON_MOBILE_SN"

    invoke-static/range {v32 .. v33}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 604
    .end local v24           #intent_power_saver_mode_mobile_on_sn:Landroid/content/Intent;
    .end local v26           #mConnetManager:Landroid/net/ConnectivityManager;
    :cond_1d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/framework/activity/powersaver/SmartSyncDataLinkTurnOffReceiver;->AP_REQUEST_POWER_SLEEP_MODE_STOP:Ljava/lang/String;

    move-object/from16 v32, v0

    move-object/from16 v0, v32

    invoke-virtual {v14, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v32

    if-eqz v32, :cond_21

    .line 606
    sget v32, Lcom/android/settings/framework/activity/powersaver/SmartSyncDataLinkTurnOffReceiver;->mAPRequestCount:I

    add-int/lit8 v32, v32, 0x1

    sput v32, Lcom/android/settings/framework/activity/powersaver/SmartSyncDataLinkTurnOffReceiver;->mAPRequestCount:I

    .line 607
    const-string v32, "SmartSyncDataLinkTurnOffReceiver"

    const-string v33, "A_SOP"

    invoke-static/range {v32 .. v33}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 612
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/framework/activity/powersaver/SmartSyncDataLinkTurnOffReceiver;->mDataLinkTurnOffSharedpref:Landroid/content/SharedPreferences;

    move-object/from16 v32, v0

    invoke-interface/range {v32 .. v32}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v32

    const-string v33, "PREF_AP_REQUEST_POWER_SLEEP_MODE"

    const/16 v34, 0x1

    invoke-interface/range {v32 .. v34}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v32

    invoke-interface/range {v32 .. v32}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 613
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/framework/activity/powersaver/SmartSyncDataLinkTurnOffReceiver;->mDataLinkTurnOffSharedpref:Landroid/content/SharedPreferences;

    move-object/from16 v32, v0

    const-string v33, "PREF_ENTER_POWER_SLEEP_STATES"

    const/16 v34, 0x0

    invoke-interface/range {v32 .. v34}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v18

    .line 615
    .local v18, enter_sleep_time:Z
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/framework/activity/powersaver/SmartSyncDataLinkTurnOffReceiver;->mDataLinkTurnOffSharedpref:Landroid/content/SharedPreferences;

    move-object/from16 v32, v0

    const-string v33, "PREF_SCREEN_ON_OFF_INTENT_RECEIVER"

    const/16 v34, 0x1

    invoke-interface/range {v32 .. v34}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v6

    .line 617
    .restart local v6       #Change_Screen_OnOff_States:Z
    const/16 v32, 0x1

    move/from16 v0, v18

    move/from16 v1, v32

    if-ne v0, v1, :cond_20

    if-nez v6, :cond_20

    .line 619
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/framework/activity/powersaver/SmartSyncDataLinkTurnOffReceiver;->mDataLinkTurnOffSharedpref:Landroid/content/SharedPreferences;

    move-object/from16 v32, v0

    const-string v33, "PREF_MOBILE_STATES"

    const/16 v34, 0x1

    invoke-interface/range {v32 .. v34}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v10

    .line 620
    .restart local v10       #Mobile_States:Z
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/framework/activity/powersaver/SmartSyncDataLinkTurnOffReceiver;->mDataLinkTurnOffSharedpref:Landroid/content/SharedPreferences;

    move-object/from16 v32, v0

    const-string v33, "PREF_WIFI_STATES"

    const/16 v34, 0x1

    invoke-interface/range {v32 .. v34}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v13

    .line 621
    .restart local v13       #Wifi_States:Z
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/framework/activity/powersaver/SmartSyncDataLinkTurnOffReceiver;->mDataLinkTurnOffSharedpref:Landroid/content/SharedPreferences;

    move-object/from16 v32, v0

    const-string v33, "PREF_AUTO_SYNC_STATES"

    const/16 v34, 0x1

    invoke-interface/range {v32 .. v34}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v5

    .line 623
    .restart local v5       #Auto_Sync_States:Z
    const-string v32, "alarm"

    move-object/from16 v0, p1

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Landroid/app/AlarmManager;

    .line 627
    .restart local v15       #alarmManager:Landroid/app/AlarmManager;
    const-string v32, "SmartSyncDataLinkTurnOffReceiver"

    new-instance v33, Ljava/lang/StringBuilder;

    invoke-direct/range {v33 .. v33}, Ljava/lang/StringBuilder;-><init>()V

    const-string v34, "A_SOP M="

    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    move-object/from16 v0, v33

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v33

    const-string v34, " W="

    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    move-object/from16 v0, v33

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v33

    const-string v34, " A="

    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    move-object/from16 v0, v33

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v33

    const-string v34, "ISWHE "

    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    invoke-static {}, Lcom/android/settings/framework/activity/powersaver/SmartSyncDataLinkTurnOffReceiver;->isWifiHotSpotEnabled()Z

    move-result v34

    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v33

    invoke-virtual/range {v33 .. v33}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v33

    invoke-static/range {v32 .. v33}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 629
    sget-object v32, Lcom/android/settings/framework/activity/powersaver/SmartSyncDataLinkTurnOffReceiver;->mPendingIntent_Off_wifi_retry:Landroid/app/PendingIntent;

    if-eqz v32, :cond_1e

    .line 631
    sget-object v32, Lcom/android/settings/framework/activity/powersaver/SmartSyncDataLinkTurnOffReceiver;->mPendingIntent_Off_wifi_retry:Landroid/app/PendingIntent;

    move-object/from16 v0, v32

    invoke-virtual {v15, v0}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    .line 632
    const/16 v32, 0x0

    sput-object v32, Lcom/android/settings/framework/activity/powersaver/SmartSyncDataLinkTurnOffReceiver;->mPendingIntent_Off_wifi_retry:Landroid/app/PendingIntent;

    .line 634
    :cond_1e
    sget-object v32, Lcom/android/settings/framework/activity/powersaver/SmartSyncDataLinkTurnOffReceiver;->mPendingIntent_Off_mobile_retry:Landroid/app/PendingIntent;

    if-eqz v32, :cond_1f

    .line 636
    sget-object v32, Lcom/android/settings/framework/activity/powersaver/SmartSyncDataLinkTurnOffReceiver;->mPendingIntent_Off_mobile_retry:Landroid/app/PendingIntent;

    move-object/from16 v0, v32

    invoke-virtual {v15, v0}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    .line 637
    const/16 v32, 0x0

    sput-object v32, Lcom/android/settings/framework/activity/powersaver/SmartSyncDataLinkTurnOffReceiver;->mPendingIntent_Off_mobile_retry:Landroid/app/PendingIntent;

    .line 640
    :cond_1f
    invoke-static {}, Lcom/android/settings/framework/activity/powersaver/SmartSyncDataLinkTurnOffReceiver;->isWifiHotSpotEnabled()Z

    move-result v32

    if-nez v32, :cond_20

    .line 641
    const-string v32, "wifi"

    move-object/from16 v0, p1

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v32

    check-cast v32, Landroid/net/wifi/WifiManager;

    move-object/from16 v0, v32

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/framework/activity/powersaver/SmartSyncDataLinkTurnOffReceiver;->mWiFiManager:Landroid/net/wifi/WifiManager;

    .line 642
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/framework/activity/powersaver/SmartSyncDataLinkTurnOffReceiver;->mWiFiManager:Landroid/net/wifi/WifiManager;

    move-object/from16 v32, v0

    move-object/from16 v0, v32

    invoke-virtual {v0, v13}, Landroid/net/wifi/WifiManager;->setWifiEnabled(Z)Z

    .line 644
    const-string v32, "connectivity"

    move-object/from16 v0, p1

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v26

    check-cast v26, Landroid/net/ConnectivityManager;

    .line 645
    .restart local v26       #mConnetManager:Landroid/net/ConnectivityManager;
    move-object/from16 v0, v26

    invoke-virtual {v0, v10}, Landroid/net/ConnectivityManager;->setMobileDataEnabled(Z)V

    .line 653
    .end local v5           #Auto_Sync_States:Z
    .end local v10           #Mobile_States:Z
    .end local v13           #Wifi_States:Z
    .end local v15           #alarmManager:Landroid/app/AlarmManager;
    .end local v26           #mConnetManager:Landroid/net/ConnectivityManager;
    :cond_20
    const/16 v32, 0x3c

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, v32

    invoke-virtual {v0, v1, v2}, Lcom/android/settings/framework/activity/powersaver/SmartSyncDataLinkTurnOffReceiver;->SetTimeOutAlarm(Landroid/content/Context;I)V

    goto/16 :goto_0

    .line 657
    .end local v6           #Change_Screen_OnOff_States:Z
    .end local v18           #enter_sleep_time:Z
    :cond_21
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/framework/activity/powersaver/SmartSyncDataLinkTurnOffReceiver;->AP_REQUEST_POWER_SLEEP_MODE_START:Ljava/lang/String;

    move-object/from16 v32, v0

    move-object/from16 v0, v32

    invoke-virtual {v14, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v32

    if-eqz v32, :cond_2

    .line 659
    sget v32, Lcom/android/settings/framework/activity/powersaver/SmartSyncDataLinkTurnOffReceiver;->mAPRequestCount:I

    add-int/lit8 v32, v32, -0x1

    sput v32, Lcom/android/settings/framework/activity/powersaver/SmartSyncDataLinkTurnOffReceiver;->mAPRequestCount:I

    .line 661
    sget v32, Lcom/android/settings/framework/activity/powersaver/SmartSyncDataLinkTurnOffReceiver;->mAPRequestCount:I

    if-nez v32, :cond_2

    .line 662
    const-string v32, "alarm"

    move-object/from16 v0, p1

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Landroid/app/AlarmManager;

    .line 663
    .restart local v15       #alarmManager:Landroid/app/AlarmManager;
    new-instance v21, Landroid/content/Intent;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/framework/activity/powersaver/SmartSyncDataLinkTurnOffReceiver;->AP_REQUEST_POWER_SLEEP_MODE_START:Ljava/lang/String;

    move-object/from16 v32, v0

    const/16 v33, 0x0

    const-class v34, Lcom/android/settings/framework/activity/powersaver/SmartSyncDataLinkTurnOffReceiver;

    move-object/from16 v0, v21

    move-object/from16 v1, v32

    move-object/from16 v2, v33

    move-object/from16 v3, p1

    move-object/from16 v4, v34

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;Landroid/content/Context;Ljava/lang/Class;)V

    .line 664
    .local v21, intent_mobile:Landroid/content/Intent;
    const/16 v32, 0x0

    const/16 v33, 0x0

    move-object/from16 v0, p1

    move/from16 v1, v32

    move-object/from16 v2, v21

    move/from16 v3, v33

    invoke-static {v0, v1, v2, v3}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v32

    sput-object v32, Lcom/android/settings/framework/activity/powersaver/SmartSyncDataLinkTurnOffReceiver;->mPendingIntent_TimeoutAlarm:Landroid/app/PendingIntent;

    .line 665
    sget-object v32, Lcom/android/settings/framework/activity/powersaver/SmartSyncDataLinkTurnOffReceiver;->mPendingIntent_TimeoutAlarm:Landroid/app/PendingIntent;

    if-eqz v32, :cond_22

    .line 671
    sget-object v32, Lcom/android/settings/framework/activity/powersaver/SmartSyncDataLinkTurnOffReceiver;->mPendingIntent_TimeoutAlarm:Landroid/app/PendingIntent;

    move-object/from16 v0, v32

    invoke-virtual {v15, v0}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    .line 673
    :cond_22
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/framework/activity/powersaver/SmartSyncDataLinkTurnOffReceiver;->mDataLinkTurnOffSharedpref:Landroid/content/SharedPreferences;

    move-object/from16 v32, v0

    const-string v33, "PREF_AP_REQUEST_POWER_SLEEP_MODE"

    const/16 v34, 0x0

    invoke-interface/range {v32 .. v34}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v19

    .line 674
    .local v19, get_ap_stop_cmd:Z
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/framework/activity/powersaver/SmartSyncDataLinkTurnOffReceiver;->mDataLinkTurnOffSharedpref:Landroid/content/SharedPreferences;

    move-object/from16 v32, v0

    const-string v33, "PREF_ENTER_POWER_SLEEP_STATES"

    const/16 v34, 0x0

    invoke-interface/range {v32 .. v34}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v18

    .line 675
    .restart local v18       #enter_sleep_time:Z
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/framework/activity/powersaver/SmartSyncDataLinkTurnOffReceiver;->mDataLinkTurnOffSharedpref:Landroid/content/SharedPreferences;

    move-object/from16 v32, v0

    const-string v33, "PREF_SCREEN_ON_OFF_INTENT_RECEIVER"

    const/16 v34, 0x1

    invoke-interface/range {v32 .. v34}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v6

    .line 677
    .restart local v6       #Change_Screen_OnOff_States:Z
    const-string v32, "SmartSyncDataLinkTurnOffReceiver"

    const-string v33, "A_SAT"

    invoke-static/range {v32 .. v33}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 679
    const/16 v32, 0x1

    move/from16 v0, v18

    move/from16 v1, v32

    if-ne v0, v1, :cond_24

    if-nez v6, :cond_24

    const/16 v32, 0x1

    move/from16 v0, v19

    move/from16 v1, v32

    if-ne v0, v1, :cond_24

    .line 681
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/framework/activity/powersaver/SmartSyncDataLinkTurnOffReceiver;->mDataLinkTurnOffSharedpref:Landroid/content/SharedPreferences;

    move-object/from16 v32, v0

    const-string v33, "PREF_MOBILE_STATES"

    const/16 v34, 0x1

    invoke-interface/range {v32 .. v34}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v10

    .line 682
    .restart local v10       #Mobile_States:Z
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/framework/activity/powersaver/SmartSyncDataLinkTurnOffReceiver;->mDataLinkTurnOffSharedpref:Landroid/content/SharedPreferences;

    move-object/from16 v32, v0

    const-string v33, "PREF_WIFI_STATES"

    const/16 v34, 0x1

    invoke-interface/range {v32 .. v34}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v13

    .line 683
    .restart local v13       #Wifi_States:Z
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/framework/activity/powersaver/SmartSyncDataLinkTurnOffReceiver;->mDataLinkTurnOffSharedpref:Landroid/content/SharedPreferences;

    move-object/from16 v32, v0

    const-string v33, "PREF_AUTO_SYNC_STATES"

    const/16 v34, 0x1

    invoke-interface/range {v32 .. v34}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v5

    .line 685
    .restart local v5       #Auto_Sync_States:Z
    const-string v32, "SmartSyncDataLinkTurnOffReceiver"

    new-instance v33, Ljava/lang/StringBuilder;

    invoke-direct/range {v33 .. v33}, Ljava/lang/StringBuilder;-><init>()V

    const-string v34, "A_SAT M="

    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    move-object/from16 v0, v33

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v33

    const-string v34, " W="

    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    move-object/from16 v0, v33

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v33

    const-string v34, " ISWEN="

    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    invoke-static {}, Lcom/android/settings/framework/activity/powersaver/SmartSyncDataLinkTurnOffReceiver;->isWifiHotSpotEnabled()Z

    move-result v34

    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v33

    invoke-virtual/range {v33 .. v33}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v33

    invoke-static/range {v32 .. v33}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 687
    invoke-static {}, Lcom/android/settings/framework/activity/powersaver/SmartSyncDataLinkTurnOffReceiver;->isWifiHotSpotEnabled()Z

    move-result v32

    if-nez v32, :cond_24

    .line 688
    const/16 v32, 0x1

    move/from16 v0, v32

    if-ne v13, v0, :cond_23

    .line 690
    const/16 v32, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, v32

    invoke-virtual {v0, v1, v2}, Lcom/android/settings/framework/activity/powersaver/SmartSyncDataLinkTurnOffReceiver;->SetAlarmTurnOffWifiDataLink(Landroid/content/Context;I)V

    .line 697
    :cond_23
    const/16 v32, 0x1

    move/from16 v0, v32

    if-ne v10, v0, :cond_24

    .line 699
    const/16 v32, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, v32

    invoke-virtual {v0, v1, v2}, Lcom/android/settings/framework/activity/powersaver/SmartSyncDataLinkTurnOffReceiver;->SetAlarmTurnOffMobileDataLink(Landroid/content/Context;I)V

    .line 708
    .end local v5           #Auto_Sync_States:Z
    .end local v10           #Mobile_States:Z
    .end local v13           #Wifi_States:Z
    :cond_24
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/framework/activity/powersaver/SmartSyncDataLinkTurnOffReceiver;->mDataLinkTurnOffSharedpref:Landroid/content/SharedPreferences;

    move-object/from16 v32, v0

    invoke-interface/range {v32 .. v32}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v32

    const-string v33, "PREF_AP_REQUEST_POWER_SLEEP_MODE"

    const/16 v34, 0x0

    invoke-interface/range {v32 .. v34}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v32

    invoke-interface/range {v32 .. v32}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto/16 :goto_0
.end method
