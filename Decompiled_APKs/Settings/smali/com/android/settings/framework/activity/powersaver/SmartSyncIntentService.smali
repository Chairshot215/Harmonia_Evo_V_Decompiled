.class public Lcom/android/settings/framework/activity/powersaver/SmartSyncIntentService;
.super Landroid/app/IntentService;
.source "SmartSyncIntentService.java"


# static fields
.field private static Defined_WIFI_STATE_ENABLED:I

.field private static Defined_WIFI_STATE_ENABLING:I

.field private static Defined_WIFI_STATE_UNKNOWN:I

.field private static final HTC_DEBUG:Z

.field private static SmartSynServiceRunning:Z

.field private static mPendingIntent_Off_mobile_retry:Landroid/app/PendingIntent;

.field private static mPendingIntent_Off_wifi_retry:Landroid/app/PendingIntent;


# instance fields
.field private ALARM_FRAMEWORK_BROADCAST_ACTION_QUICKBOOT_POWEROFF:Ljava/lang/String;

.field private ALARM_FRAMEWORK_BROADCAST_ACTION_SCREEN_OFF:Ljava/lang/String;

.field private ALARM_FRAMEWORK_BROADCAST_ACTION_SCREEN_ON:Ljava/lang/String;

.field private AP_REQUEST_POWER_SLEEP_MODE_START:Ljava/lang/String;

.field private AP_REQUEST_POWER_SLEEP_MODE_STOP:Ljava/lang/String;

.field private SMARTSYNC_SERVICE_BROADCAST_QUICKBOOT_POWEROFF:Ljava/lang/String;

.field private SMARTSYNC_SERVICE_BROADCAST_SCREEN_OFF:Ljava/lang/String;

.field private SMARTSYNC_SERVICE_BROADCAST_SCREEN_ON:Ljava/lang/String;

.field private SMARTSYNC_TURN_OFF_MOBILE_RETRY:Ljava/lang/String;

.field private TAG:Ljava/lang/String;

.field private mSmartSyncSharedpref:Landroid/content/SharedPreferences;

.field private mWakeLock:Landroid/os/PowerManager$WakeLock;

.field private mWiFiManager:Landroid/net/wifi/WifiManager;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 22
    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/settings/framework/activity/powersaver/SmartSyncIntentService;->SmartSynServiceRunning:Z

    .line 35
    const/4 v0, 0x3

    sput v0, Lcom/android/settings/framework/activity/powersaver/SmartSyncIntentService;->Defined_WIFI_STATE_ENABLED:I

    .line 36
    const/4 v0, 0x2

    sput v0, Lcom/android/settings/framework/activity/powersaver/SmartSyncIntentService;->Defined_WIFI_STATE_ENABLING:I

    .line 37
    const/4 v0, 0x4

    sput v0, Lcom/android/settings/framework/activity/powersaver/SmartSyncIntentService;->Defined_WIFI_STATE_UNKNOWN:I

    .line 39
    sput-object v1, Lcom/android/settings/framework/activity/powersaver/SmartSyncIntentService;->mPendingIntent_Off_mobile_retry:Landroid/app/PendingIntent;

    .line 40
    sput-object v1, Lcom/android/settings/framework/activity/powersaver/SmartSyncIntentService;->mPendingIntent_Off_wifi_retry:Landroid/app/PendingIntent;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 45
    const-string v0, "SmartSyncIntentService"

    invoke-direct {p0, v0}, Landroid/app/IntentService;-><init>(Ljava/lang/String;)V

    .line 20
    const-string v0, "SmartSyncIntentService"

    iput-object v0, p0, Lcom/android/settings/framework/activity/powersaver/SmartSyncIntentService;->TAG:Ljava/lang/String;

    .line 21
    iput-object v1, p0, Lcom/android/settings/framework/activity/powersaver/SmartSyncIntentService;->mSmartSyncSharedpref:Landroid/content/SharedPreferences;

    .line 26
    const-string v0, "ALARM_FRAMEWORK_BROADCAST_ACTION_SCREEN_OFF"

    iput-object v0, p0, Lcom/android/settings/framework/activity/powersaver/SmartSyncIntentService;->ALARM_FRAMEWORK_BROADCAST_ACTION_SCREEN_OFF:Ljava/lang/String;

    .line 27
    const-string v0, "ALARM_FRAMEWORK_BROADCAST_ACTION_SCREEN_ON"

    iput-object v0, p0, Lcom/android/settings/framework/activity/powersaver/SmartSyncIntentService;->ALARM_FRAMEWORK_BROADCAST_ACTION_SCREEN_ON:Ljava/lang/String;

    .line 28
    const-string v0, "SMARTSYNC_SERVICE_BROADCAST_SCREEN_ON"

    iput-object v0, p0, Lcom/android/settings/framework/activity/powersaver/SmartSyncIntentService;->SMARTSYNC_SERVICE_BROADCAST_SCREEN_ON:Ljava/lang/String;

    .line 29
    const-string v0, "SMARTSYNC_SERVICE_BROADCAST_SCREEN_OFF"

    iput-object v0, p0, Lcom/android/settings/framework/activity/powersaver/SmartSyncIntentService;->SMARTSYNC_SERVICE_BROADCAST_SCREEN_OFF:Ljava/lang/String;

    .line 30
    const-string v0, "ALARM_FRAMEWORK_BROADCAST_ACTION_QUICKBOOT_POWEROFF"

    iput-object v0, p0, Lcom/android/settings/framework/activity/powersaver/SmartSyncIntentService;->ALARM_FRAMEWORK_BROADCAST_ACTION_QUICKBOOT_POWEROFF:Ljava/lang/String;

    .line 31
    const-string v0, "SMARTSYNC_SERVICE_BROADCAST_QUICKBOOT_POWEROFF"

    iput-object v0, p0, Lcom/android/settings/framework/activity/powersaver/SmartSyncIntentService;->SMARTSYNC_SERVICE_BROADCAST_QUICKBOOT_POWEROFF:Ljava/lang/String;

    .line 32
    const-string v0, "AP_REQUEST_POWER_SLEEP_MODE_STOP"

    iput-object v0, p0, Lcom/android/settings/framework/activity/powersaver/SmartSyncIntentService;->AP_REQUEST_POWER_SLEEP_MODE_STOP:Ljava/lang/String;

    .line 33
    const-string v0, "AP_REQUEST_POWER_SLEEP_MODE_START"

    iput-object v0, p0, Lcom/android/settings/framework/activity/powersaver/SmartSyncIntentService;->AP_REQUEST_POWER_SLEEP_MODE_START:Ljava/lang/String;

    .line 41
    const-string v0, "SMARTSYNC_TURN_OFF_MOBILE_RETRY"

    iput-object v0, p0, Lcom/android/settings/framework/activity/powersaver/SmartSyncIntentService;->SMARTSYNC_TURN_OFF_MOBILE_RETRY:Ljava/lang/String;

    .line 42
    iput-object v1, p0, Lcom/android/settings/framework/activity/powersaver/SmartSyncIntentService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 46
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 2
    .parameter "name"

    .prologue
    const/4 v1, 0x0

    .line 49
    invoke-direct {p0, p1}, Landroid/app/IntentService;-><init>(Ljava/lang/String;)V

    .line 20
    const-string v0, "SmartSyncIntentService"

    iput-object v0, p0, Lcom/android/settings/framework/activity/powersaver/SmartSyncIntentService;->TAG:Ljava/lang/String;

    .line 21
    iput-object v1, p0, Lcom/android/settings/framework/activity/powersaver/SmartSyncIntentService;->mSmartSyncSharedpref:Landroid/content/SharedPreferences;

    .line 26
    const-string v0, "ALARM_FRAMEWORK_BROADCAST_ACTION_SCREEN_OFF"

    iput-object v0, p0, Lcom/android/settings/framework/activity/powersaver/SmartSyncIntentService;->ALARM_FRAMEWORK_BROADCAST_ACTION_SCREEN_OFF:Ljava/lang/String;

    .line 27
    const-string v0, "ALARM_FRAMEWORK_BROADCAST_ACTION_SCREEN_ON"

    iput-object v0, p0, Lcom/android/settings/framework/activity/powersaver/SmartSyncIntentService;->ALARM_FRAMEWORK_BROADCAST_ACTION_SCREEN_ON:Ljava/lang/String;

    .line 28
    const-string v0, "SMARTSYNC_SERVICE_BROADCAST_SCREEN_ON"

    iput-object v0, p0, Lcom/android/settings/framework/activity/powersaver/SmartSyncIntentService;->SMARTSYNC_SERVICE_BROADCAST_SCREEN_ON:Ljava/lang/String;

    .line 29
    const-string v0, "SMARTSYNC_SERVICE_BROADCAST_SCREEN_OFF"

    iput-object v0, p0, Lcom/android/settings/framework/activity/powersaver/SmartSyncIntentService;->SMARTSYNC_SERVICE_BROADCAST_SCREEN_OFF:Ljava/lang/String;

    .line 30
    const-string v0, "ALARM_FRAMEWORK_BROADCAST_ACTION_QUICKBOOT_POWEROFF"

    iput-object v0, p0, Lcom/android/settings/framework/activity/powersaver/SmartSyncIntentService;->ALARM_FRAMEWORK_BROADCAST_ACTION_QUICKBOOT_POWEROFF:Ljava/lang/String;

    .line 31
    const-string v0, "SMARTSYNC_SERVICE_BROADCAST_QUICKBOOT_POWEROFF"

    iput-object v0, p0, Lcom/android/settings/framework/activity/powersaver/SmartSyncIntentService;->SMARTSYNC_SERVICE_BROADCAST_QUICKBOOT_POWEROFF:Ljava/lang/String;

    .line 32
    const-string v0, "AP_REQUEST_POWER_SLEEP_MODE_STOP"

    iput-object v0, p0, Lcom/android/settings/framework/activity/powersaver/SmartSyncIntentService;->AP_REQUEST_POWER_SLEEP_MODE_STOP:Ljava/lang/String;

    .line 33
    const-string v0, "AP_REQUEST_POWER_SLEEP_MODE_START"

    iput-object v0, p0, Lcom/android/settings/framework/activity/powersaver/SmartSyncIntentService;->AP_REQUEST_POWER_SLEEP_MODE_START:Ljava/lang/String;

    .line 41
    const-string v0, "SMARTSYNC_TURN_OFF_MOBILE_RETRY"

    iput-object v0, p0, Lcom/android/settings/framework/activity/powersaver/SmartSyncIntentService;->SMARTSYNC_TURN_OFF_MOBILE_RETRY:Ljava/lang/String;

    .line 42
    iput-object v1, p0, Lcom/android/settings/framework/activity/powersaver/SmartSyncIntentService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 50
    return-void
.end method


# virtual methods
.method public SetTimeOutAlarm(Landroid/content/Context;I)V
    .locals 11
    .parameter "context"
    .parameter "SettingTime"

    .prologue
    const/4 v10, 0x0

    .line 233
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    .line 234
    .local v4, now:J
    const-wide/16 v0, 0x0

    .line 236
    .local v0, MobileOffsetAlarmTime:J
    const-string v7, "alarm"

    invoke-virtual {p0, v7}, Lcom/android/settings/framework/activity/powersaver/SmartSyncIntentService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/AlarmManager;

    .line 237
    .local v2, alarmManager:Landroid/app/AlarmManager;
    new-instance v3, Landroid/content/Intent;

    iget-object v7, p0, Lcom/android/settings/framework/activity/powersaver/SmartSyncIntentService;->AP_REQUEST_POWER_SLEEP_MODE_START:Ljava/lang/String;

    const/4 v8, 0x0

    const-class v9, Lcom/android/settings/framework/activity/powersaver/SmartSyncDataLinkTurnOffReceiver;

    invoke-direct {v3, v7, v8, p1, v9}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;Landroid/content/Context;Ljava/lang/Class;)V

    .line 238
    .local v3, intent_mobile:Landroid/content/Intent;
    invoke-static {p1, v10, v3, v10}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v6

    .line 239
    .local v6, pendingIntent:Landroid/app/PendingIntent;
    mul-int/lit16 v7, p2, 0x3e8

    mul-int/lit8 v7, v7, 0x3c

    int-to-long v7, v7

    add-long/2addr v7, v4

    add-long/2addr v7, v0

    invoke-virtual {v2, v10, v7, v8, v6}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V

    .line 245
    return-void
.end method

.method protected onHandleIntent(Landroid/content/Intent;)V
    .locals 26
    .parameter "intent"

    .prologue
    .line 61
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/framework/activity/powersaver/SmartSyncIntentService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    move-object/from16 v23, v0

    if-nez v23, :cond_0

    .line 62
    const-string v23, "power"

    move-object/from16 v0, p0

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Lcom/android/settings/framework/activity/powersaver/SmartSyncIntentService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Landroid/os/PowerManager;

    .line 63
    .local v20, pm:Landroid/os/PowerManager;
    if-eqz v20, :cond_0

    .line 64
    const/16 v23, 0x1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/framework/activity/powersaver/SmartSyncIntentService;->TAG:Ljava/lang/String;

    move-object/from16 v24, v0

    move-object/from16 v0, v20

    move/from16 v1, v23

    move-object/from16 v2, v24

    invoke-virtual {v0, v1, v2}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v23

    move-object/from16 v0, v23

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/framework/activity/powersaver/SmartSyncIntentService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 65
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/framework/activity/powersaver/SmartSyncIntentService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    move-object/from16 v23, v0

    if-eqz v23, :cond_0

    .line 66
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/framework/activity/powersaver/SmartSyncIntentService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    move-object/from16 v23, v0

    const/16 v24, 0x1

    invoke-virtual/range {v23 .. v24}, Landroid/os/PowerManager$WakeLock;->setReferenceCounted(Z)V

    .line 70
    .end local v20           #pm:Landroid/os/PowerManager;
    :cond_0
    if-eqz p1, :cond_1

    .line 71
    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v11

    .line 72
    .local v11, action:Ljava/lang/String;
    const-string v23, "SMARTSYNC_SHARED"

    const/16 v24, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v23

    move/from16 v2, v24

    invoke-virtual {v0, v1, v2}, Lcom/android/settings/framework/activity/powersaver/SmartSyncIntentService;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v23

    move-object/from16 v0, v23

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/framework/activity/powersaver/SmartSyncIntentService;->mSmartSyncSharedpref:Landroid/content/SharedPreferences;

    .line 74
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/framework/activity/powersaver/SmartSyncIntentService;->ALARM_FRAMEWORK_BROADCAST_ACTION_SCREEN_OFF:Ljava/lang/String;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    invoke-virtual {v11, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v23

    if-eqz v23, :cond_3

    .line 77
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/framework/activity/powersaver/SmartSyncIntentService;->mSmartSyncSharedpref:Landroid/content/SharedPreferences;

    move-object/from16 v23, v0

    const-string v24, "PREF_POWER_SLEEP_MODE"

    const/16 v25, 0x0

    invoke-interface/range {v23 .. v25}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v23

    sput-boolean v23, Lcom/android/settings/framework/activity/powersaver/SmartSyncIntentService;->SmartSynServiceRunning:Z

    .line 80
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/framework/activity/powersaver/SmartSyncIntentService;->TAG:Ljava/lang/String;

    move-object/from16 v23, v0

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string v25, "ACTION_SCREEN_OFF SmartSynServiceRunning="

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    sget-boolean v25, Lcom/android/settings/framework/activity/powersaver/SmartSyncIntentService;->SmartSynServiceRunning:Z

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-static/range {v23 .. v24}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 82
    sget-boolean v23, Lcom/android/settings/framework/activity/powersaver/SmartSyncIntentService;->SmartSynServiceRunning:Z

    const/16 v24, 0x1

    move/from16 v0, v23

    move/from16 v1, v24

    if-ne v0, v1, :cond_1

    .line 85
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/framework/activity/powersaver/SmartSyncIntentService;->TAG:Ljava/lang/String;

    move-object/from16 v23, v0

    const-string v24, "ACTION_SCREEN_OFF"

    invoke-static/range {v23 .. v24}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 87
    new-instance v17, Landroid/content/Intent;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/framework/activity/powersaver/SmartSyncIntentService;->SMARTSYNC_SERVICE_BROADCAST_SCREEN_OFF:Ljava/lang/String;

    move-object/from16 v23, v0

    const/16 v24, 0x0

    const-class v25, Lcom/android/settings/framework/activity/powersaver/SmartSyncScreenOnOffTimeReceiver;

    move-object/from16 v0, v17

    move-object/from16 v1, v23

    move-object/from16 v2, v24

    move-object/from16 v3, p0

    move-object/from16 v4, v25

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;Landroid/content/Context;Ljava/lang/Class;)V

    .line 90
    .local v17, intent_screen_off_to_ScreenOnOffTime:Landroid/content/Intent;
    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/android/settings/framework/activity/powersaver/SmartSyncIntentService;->sendBroadcast(Landroid/content/Intent;)V

    .line 92
    new-instance v15, Landroid/content/Intent;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/framework/activity/powersaver/SmartSyncIntentService;->SMARTSYNC_SERVICE_BROADCAST_SCREEN_OFF:Ljava/lang/String;

    move-object/from16 v23, v0

    const/16 v24, 0x0

    const-class v25, Lcom/android/settings/framework/activity/powersaver/SmartSyncDataLinkTurnOffReceiver;

    move-object/from16 v0, v23

    move-object/from16 v1, v24

    move-object/from16 v2, p0

    move-object/from16 v3, v25

    invoke-direct {v15, v0, v1, v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;Landroid/content/Context;Ljava/lang/Class;)V

    .line 95
    .local v15, intent_screen_off_to_DataLinkTurnOff:Landroid/content/Intent;
    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Lcom/android/settings/framework/activity/powersaver/SmartSyncIntentService;->sendBroadcast(Landroid/content/Intent;)V

    .line 97
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/framework/activity/powersaver/SmartSyncIntentService;->mSmartSyncSharedpref:Landroid/content/SharedPreferences;

    move-object/from16 v23, v0

    const-string v24, "PREF_NEW_POWER_SAVER_MODE_ENABLE"

    const/16 v25, 0x0

    invoke-interface/range {v23 .. v25}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v19

    .line 98
    .local v19, mNewPowerSaverMode:Z
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/framework/activity/powersaver/SmartSyncIntentService;->TAG:Ljava/lang/String;

    move-object/from16 v23, v0

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string v25, "ACTION_SCREEN_OFF"

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-static/range {v23 .. v24}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 99
    const/16 v23, 0x1

    move/from16 v0, v19

    move/from16 v1, v23

    if-ne v0, v1, :cond_1

    .line 101
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/framework/activity/powersaver/SmartSyncIntentService;->TAG:Ljava/lang/String;

    move-object/from16 v23, v0

    const-string v24, "ACTION_SCREEN_OFF intent_screen_off_to_PowerSaverMode"

    invoke-static/range {v23 .. v24}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 103
    new-instance v16, Landroid/content/Intent;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/framework/activity/powersaver/SmartSyncIntentService;->SMARTSYNC_SERVICE_BROADCAST_SCREEN_OFF:Ljava/lang/String;

    move-object/from16 v23, v0

    const/16 v24, 0x0

    const-class v25, Lcom/android/settings/framework/activity/powersaver/PowerSaverModeReceiver;

    move-object/from16 v0, v16

    move-object/from16 v1, v23

    move-object/from16 v2, v24

    move-object/from16 v3, p0

    move-object/from16 v4, v25

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;Landroid/content/Context;Ljava/lang/Class;)V

    .line 106
    .local v16, intent_screen_off_to_PowerSaverMode:Landroid/content/Intent;
    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/android/settings/framework/activity/powersaver/SmartSyncIntentService;->sendBroadcast(Landroid/content/Intent;)V

    .line 220
    .end local v11           #action:Ljava/lang/String;
    .end local v15           #intent_screen_off_to_DataLinkTurnOff:Landroid/content/Intent;
    .end local v16           #intent_screen_off_to_PowerSaverMode:Landroid/content/Intent;
    .end local v17           #intent_screen_off_to_ScreenOnOffTime:Landroid/content/Intent;
    .end local v19           #mNewPowerSaverMode:Z
    :cond_1
    :goto_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/framework/activity/powersaver/SmartSyncIntentService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    move-object/from16 v23, v0

    if-eqz v23, :cond_2

    .line 221
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/framework/activity/powersaver/SmartSyncIntentService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v23

    const/16 v24, 0x1

    move/from16 v0, v23

    move/from16 v1, v24

    if-ne v0, v1, :cond_2

    .line 225
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/framework/activity/powersaver/SmartSyncIntentService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 226
    const/16 v23, 0x0

    move-object/from16 v0, v23

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/framework/activity/powersaver/SmartSyncIntentService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 229
    :cond_2
    return-void

    .line 110
    .restart local v11       #action:Ljava/lang/String;
    :cond_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/framework/activity/powersaver/SmartSyncIntentService;->SMARTSYNC_SERVICE_BROADCAST_SCREEN_OFF:Ljava/lang/String;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    invoke-virtual {v11, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v23

    if-eqz v23, :cond_a

    .line 111
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/framework/activity/powersaver/SmartSyncIntentService;->mSmartSyncSharedpref:Landroid/content/SharedPreferences;

    move-object/from16 v23, v0

    const-string v24, "PREF_SCREEN_ON_OFF_INTENT_RECEIVER"

    const/16 v25, 0x1

    invoke-interface/range {v23 .. v25}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v6

    .line 112
    .local v6, Change_Screen_OnOff_States:Z
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/framework/activity/powersaver/SmartSyncIntentService;->TAG:Ljava/lang/String;

    move-object/from16 v23, v0

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string v25, "SMARTSYNC_SERVICE_BROADCAST_SCREEN_OFF "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-static/range {v23 .. v24}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 114
    const/16 v23, 0x1

    move/from16 v0, v23

    if-ne v6, v0, :cond_1

    .line 116
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/framework/activity/powersaver/SmartSyncIntentService;->mSmartSyncSharedpref:Landroid/content/SharedPreferences;

    move-object/from16 v23, v0

    const-string v24, "PREF_MOBILE_STATES"

    const/16 v25, 0x1

    invoke-interface/range {v23 .. v25}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v8

    .line 117
    .local v8, Mobile_States:Z
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/framework/activity/powersaver/SmartSyncIntentService;->mSmartSyncSharedpref:Landroid/content/SharedPreferences;

    move-object/from16 v23, v0

    const-string v24, "PREF_WIFI_STATES"

    const/16 v25, 0x1

    invoke-interface/range {v23 .. v25}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v10

    .line 118
    .local v10, Wifi_States:Z
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/framework/activity/powersaver/SmartSyncIntentService;->mSmartSyncSharedpref:Landroid/content/SharedPreferences;

    move-object/from16 v23, v0

    const-string v24, "PREF_AUTO_SYNC_STATES"

    const/16 v25, 0x1

    invoke-interface/range {v23 .. v25}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v5

    .line 120
    .local v5, Auto_Sync_States:Z
    const-string v23, "connectivity"

    move-object/from16 v0, p0

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Lcom/android/settings/framework/activity/powersaver/SmartSyncIntentService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Landroid/net/ConnectivityManager;

    .line 121
    .local v18, mConnetManager:Landroid/net/ConnectivityManager;
    invoke-virtual/range {v18 .. v18}, Landroid/net/ConnectivityManager;->getMobileDataEnabled()Z

    move-result v21

    .line 127
    .local v21, system_mobile_states:Z
    move/from16 v0, v21

    if-eq v0, v8, :cond_4

    .line 128
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/framework/activity/powersaver/SmartSyncIntentService;->mSmartSyncSharedpref:Landroid/content/SharedPreferences;

    move-object/from16 v23, v0

    invoke-interface/range {v23 .. v23}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v23

    const-string v24, "PREF_MOBILE_STATES"

    move-object/from16 v0, v23

    move-object/from16 v1, v24

    move/from16 v2, v21

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v23

    invoke-interface/range {v23 .. v23}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 130
    :cond_4
    const-string v23, "wifi"

    move-object/from16 v0, p0

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Lcom/android/settings/framework/activity/powersaver/SmartSyncIntentService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v23

    check-cast v23, Landroid/net/wifi/WifiManager;

    move-object/from16 v0, v23

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/framework/activity/powersaver/SmartSyncIntentService;->mWiFiManager:Landroid/net/wifi/WifiManager;

    .line 132
    const/16 v22, 0x0

    .line 134
    .local v22, system_wifi_states:Z
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/framework/activity/powersaver/SmartSyncIntentService;->TAG:Ljava/lang/String;

    move-object/from16 v23, v0

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string v25, "BROADCAST_SCREEN_OFF mWiFiManager.getWifiState() ="

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/framework/activity/powersaver/SmartSyncIntentService;->mWiFiManager:Landroid/net/wifi/WifiManager;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Landroid/net/wifi/WifiManager;->getWifiState()I

    move-result v25

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-static/range {v23 .. v24}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 136
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/framework/activity/powersaver/SmartSyncIntentService;->mWiFiManager:Landroid/net/wifi/WifiManager;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Landroid/net/wifi/WifiManager;->getWifiState()I

    move-result v23

    sget v24, Lcom/android/settings/framework/activity/powersaver/SmartSyncIntentService;->Defined_WIFI_STATE_ENABLED:I

    move/from16 v0, v23

    move/from16 v1, v24

    if-eq v0, v1, :cond_5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/framework/activity/powersaver/SmartSyncIntentService;->mWiFiManager:Landroid/net/wifi/WifiManager;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Landroid/net/wifi/WifiManager;->getWifiState()I

    move-result v23

    sget v24, Lcom/android/settings/framework/activity/powersaver/SmartSyncIntentService;->Defined_WIFI_STATE_ENABLING:I

    move/from16 v0, v23

    move/from16 v1, v24

    if-ne v0, v1, :cond_6

    .line 137
    :cond_5
    const/16 v22, 0x1

    .line 139
    :cond_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/framework/activity/powersaver/SmartSyncIntentService;->mSmartSyncSharedpref:Landroid/content/SharedPreferences;

    move-object/from16 v23, v0

    const-string v24, "PREF_CHECK_TURN_ONOFF_WIFI_STATE"

    const/16 v25, 0x0

    invoke-interface/range {v23 .. v25}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v7

    .line 140
    .local v7, Check_Wifi_States:Z
    const/16 v23, 0x1

    move/from16 v0, v23

    if-ne v7, v0, :cond_7

    .line 143
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/framework/activity/powersaver/SmartSyncIntentService;->TAG:Ljava/lang/String;

    move-object/from16 v23, v0

    const-string v24, "PREF_REWRITE_TURN_ONOFF_WIFI_STATE "

    invoke-static/range {v23 .. v24}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 144
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/framework/activity/powersaver/SmartSyncIntentService;->mSmartSyncSharedpref:Landroid/content/SharedPreferences;

    move-object/from16 v23, v0

    const-string v24, "PREF_REWRITE_TURN_ONOFF_WIFI_STATE"

    const/16 v25, 0x1

    invoke-interface/range {v23 .. v25}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v22

    .line 152
    :cond_7
    move/from16 v0, v22

    if-eq v0, v10, :cond_8

    .line 153
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/framework/activity/powersaver/SmartSyncIntentService;->mSmartSyncSharedpref:Landroid/content/SharedPreferences;

    move-object/from16 v23, v0

    invoke-interface/range {v23 .. v23}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v23

    const-string v24, "PREF_WIFI_STATES"

    move-object/from16 v0, v23

    move-object/from16 v1, v24

    move/from16 v2, v22

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v23

    invoke-interface/range {v23 .. v23}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 155
    :cond_8
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/framework/activity/powersaver/SmartSyncIntentService;->getContentResolver()Landroid/content/ContentResolver;

    invoke-static {}, Landroid/content/ContentResolver;->getMasterSyncAutomatically()Z

    move-result v9

    .line 163
    .local v9, System_auto_sync_states:Z
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/framework/activity/powersaver/SmartSyncIntentService;->TAG:Ljava/lang/String;

    move-object/from16 v23, v0

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string v25, "OF M="

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v24

    const-string v25, " W="

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v24

    const-string v25, " A="

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-static/range {v23 .. v24}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 165
    if-eq v9, v5, :cond_9

    .line 166
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/framework/activity/powersaver/SmartSyncIntentService;->mSmartSyncSharedpref:Landroid/content/SharedPreferences;

    move-object/from16 v23, v0

    invoke-interface/range {v23 .. v23}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v23

    const-string v24, "PREF_AUTO_SYNC_STATES"

    move-object/from16 v0, v23

    move-object/from16 v1, v24

    invoke-interface {v0, v1, v9}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v23

    invoke-interface/range {v23 .. v23}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 168
    :cond_9
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/framework/activity/powersaver/SmartSyncIntentService;->mSmartSyncSharedpref:Landroid/content/SharedPreferences;

    move-object/from16 v23, v0

    invoke-interface/range {v23 .. v23}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v23

    const-string v24, "PREF_SCREEN_ON_OFF_INTENT_RECEIVER"

    const/16 v25, 0x0

    invoke-interface/range {v23 .. v25}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v23

    invoke-interface/range {v23 .. v23}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto/16 :goto_0

    .line 172
    .end local v5           #Auto_Sync_States:Z
    .end local v6           #Change_Screen_OnOff_States:Z
    .end local v7           #Check_Wifi_States:Z
    .end local v8           #Mobile_States:Z
    .end local v9           #System_auto_sync_states:Z
    .end local v10           #Wifi_States:Z
    .end local v18           #mConnetManager:Landroid/net/ConnectivityManager;
    .end local v21           #system_mobile_states:Z
    .end local v22           #system_wifi_states:Z
    :cond_a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/framework/activity/powersaver/SmartSyncIntentService;->AP_REQUEST_POWER_SLEEP_MODE_STOP:Ljava/lang/String;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    invoke-virtual {v11, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v23

    if-eqz v23, :cond_1

    .line 173
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/framework/activity/powersaver/SmartSyncIntentService;->TAG:Ljava/lang/String;

    move-object/from16 v23, v0

    const-string v24, "AP_REQUEST_POWER_SLEEP_MODE_STOP"

    invoke-static/range {v23 .. v24}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 175
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/framework/activity/powersaver/SmartSyncIntentService;->mSmartSyncSharedpref:Landroid/content/SharedPreferences;

    move-object/from16 v23, v0

    invoke-interface/range {v23 .. v23}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v23

    const-string v24, "PREF_AP_REQUEST_POWER_SLEEP_MODE"

    const/16 v25, 0x1

    invoke-interface/range {v23 .. v25}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v23

    invoke-interface/range {v23 .. v23}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 176
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/framework/activity/powersaver/SmartSyncIntentService;->mSmartSyncSharedpref:Landroid/content/SharedPreferences;

    move-object/from16 v23, v0

    const-string v24, "PREF_ENTER_POWER_SLEEP_STATES"

    const/16 v25, 0x0

    invoke-interface/range {v23 .. v25}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v13

    .line 178
    .local v13, enter_sleep_time:Z
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/framework/activity/powersaver/SmartSyncIntentService;->mSmartSyncSharedpref:Landroid/content/SharedPreferences;

    move-object/from16 v23, v0

    const-string v24, "PREF_SCREEN_ON_OFF_INTENT_RECEIVER"

    const/16 v25, 0x1

    invoke-interface/range {v23 .. v25}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v6

    .line 180
    .restart local v6       #Change_Screen_OnOff_States:Z
    const/16 v23, 0x1

    move/from16 v0, v23

    if-ne v13, v0, :cond_d

    if-nez v6, :cond_d

    .line 182
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/framework/activity/powersaver/SmartSyncIntentService;->mSmartSyncSharedpref:Landroid/content/SharedPreferences;

    move-object/from16 v23, v0

    const-string v24, "PREF_MOBILE_STATES"

    const/16 v25, 0x1

    invoke-interface/range {v23 .. v25}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v8

    .line 183
    .restart local v8       #Mobile_States:Z
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/framework/activity/powersaver/SmartSyncIntentService;->mSmartSyncSharedpref:Landroid/content/SharedPreferences;

    move-object/from16 v23, v0

    const-string v24, "PREF_WIFI_STATES"

    const/16 v25, 0x1

    invoke-interface/range {v23 .. v25}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v10

    .line 184
    .restart local v10       #Wifi_States:Z
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/framework/activity/powersaver/SmartSyncIntentService;->mSmartSyncSharedpref:Landroid/content/SharedPreferences;

    move-object/from16 v23, v0

    const-string v24, "PREF_AUTO_SYNC_STATES"

    const/16 v25, 0x1

    invoke-interface/range {v23 .. v25}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v5

    .line 186
    .restart local v5       #Auto_Sync_States:Z
    const-string v23, "alarm"

    move-object/from16 v0, p0

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Lcom/android/settings/framework/activity/powersaver/SmartSyncIntentService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/app/AlarmManager;

    .line 190
    .local v12, alarmManager:Landroid/app/AlarmManager;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/framework/activity/powersaver/SmartSyncIntentService;->TAG:Ljava/lang/String;

    move-object/from16 v23, v0

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string v25, "A_SOP M="

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v24

    const-string v25, " W="

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v24

    const-string v25, " A="

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-static/range {v23 .. v24}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 192
    sget-object v23, Lcom/android/settings/framework/activity/powersaver/SmartSyncIntentService;->mPendingIntent_Off_wifi_retry:Landroid/app/PendingIntent;

    if-eqz v23, :cond_b

    .line 194
    sget-object v23, Lcom/android/settings/framework/activity/powersaver/SmartSyncIntentService;->mPendingIntent_Off_wifi_retry:Landroid/app/PendingIntent;

    move-object/from16 v0, v23

    invoke-virtual {v12, v0}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    .line 195
    const/16 v23, 0x0

    sput-object v23, Lcom/android/settings/framework/activity/powersaver/SmartSyncIntentService;->mPendingIntent_Off_wifi_retry:Landroid/app/PendingIntent;

    .line 198
    :cond_b
    new-instance v14, Landroid/content/Intent;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/framework/activity/powersaver/SmartSyncIntentService;->SMARTSYNC_TURN_OFF_MOBILE_RETRY:Ljava/lang/String;

    move-object/from16 v23, v0

    const/16 v24, 0x0

    const-class v25, Lcom/android/settings/framework/activity/powersaver/SmartSyncDataLinkTurnOffReceiver;

    move-object/from16 v0, v23

    move-object/from16 v1, v24

    move-object/from16 v2, p0

    move-object/from16 v3, v25

    invoke-direct {v14, v0, v1, v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;Landroid/content/Context;Ljava/lang/Class;)V

    .line 200
    .local v14, intent_mobile_off_retry:Landroid/content/Intent;
    const/16 v23, 0x0

    const/16 v24, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v23

    move/from16 v2, v24

    invoke-static {v0, v1, v14, v2}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v23

    sput-object v23, Lcom/android/settings/framework/activity/powersaver/SmartSyncIntentService;->mPendingIntent_Off_mobile_retry:Landroid/app/PendingIntent;

    .line 202
    sget-object v23, Lcom/android/settings/framework/activity/powersaver/SmartSyncIntentService;->mPendingIntent_Off_mobile_retry:Landroid/app/PendingIntent;

    if-eqz v23, :cond_c

    .line 204
    sget-object v23, Lcom/android/settings/framework/activity/powersaver/SmartSyncIntentService;->mPendingIntent_Off_mobile_retry:Landroid/app/PendingIntent;

    move-object/from16 v0, v23

    invoke-virtual {v12, v0}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    .line 205
    const/16 v23, 0x0

    sput-object v23, Lcom/android/settings/framework/activity/powersaver/SmartSyncIntentService;->mPendingIntent_Off_mobile_retry:Landroid/app/PendingIntent;

    .line 208
    :cond_c
    const-string v23, "wifi"

    move-object/from16 v0, p0

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Lcom/android/settings/framework/activity/powersaver/SmartSyncIntentService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v23

    check-cast v23, Landroid/net/wifi/WifiManager;

    move-object/from16 v0, v23

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/framework/activity/powersaver/SmartSyncIntentService;->mWiFiManager:Landroid/net/wifi/WifiManager;

    .line 209
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/framework/activity/powersaver/SmartSyncIntentService;->mWiFiManager:Landroid/net/wifi/WifiManager;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    invoke-virtual {v0, v10}, Landroid/net/wifi/WifiManager;->setWifiEnabled(Z)Z

    .line 211
    const-string v23, "connectivity"

    move-object/from16 v0, p0

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Lcom/android/settings/framework/activity/powersaver/SmartSyncIntentService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Landroid/net/ConnectivityManager;

    .line 212
    .restart local v18       #mConnetManager:Landroid/net/ConnectivityManager;
    move-object/from16 v0, v18

    invoke-virtual {v0, v8}, Landroid/net/ConnectivityManager;->setMobileDataEnabled(Z)V

    .line 216
    .end local v5           #Auto_Sync_States:Z
    .end local v8           #Mobile_States:Z
    .end local v10           #Wifi_States:Z
    .end local v12           #alarmManager:Landroid/app/AlarmManager;
    .end local v14           #intent_mobile_off_retry:Landroid/content/Intent;
    .end local v18           #mConnetManager:Landroid/net/ConnectivityManager;
    :cond_d
    const/16 v23, 0x3c

    move-object/from16 v0, p0

    move-object/from16 v1, p0

    move/from16 v2, v23

    invoke-virtual {v0, v1, v2}, Lcom/android/settings/framework/activity/powersaver/SmartSyncIntentService;->SetTimeOutAlarm(Landroid/content/Context;I)V

    goto/16 :goto_0
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 3
    .parameter "intent"
    .parameter "flags"
    .parameter "startId"

    .prologue
    .line 54
    iget-object v0, p0, Lcom/android/settings/framework/activity/powersaver/SmartSyncIntentService;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onStartCommand, the hashcode = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 55
    invoke-super {p0, p1, p2, p3}, Landroid/app/IntentService;->onStartCommand(Landroid/content/Intent;II)I

    move-result v0

    return v0
.end method
