.class public Lcom/android/settings/wifi/WifiOffloadRequest;
.super Landroid/content/BroadcastReceiver;
.source "WifiOffloadRequest.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/wifi/WifiOffloadRequest$1;,
        Lcom/android/settings/wifi/WifiOffloadRequest$MyHandler;
    }
.end annotation


# static fields
.field static final AUTO_TURNING_ENABLING_WIFI:I = 0x1

.field static final AUTO_TURNING_INIT:I = 0x0

.field static final AUTO_TURNING_SHOW_DIALOG:I = 0x3

.field static final AUTO_TURNING_WAITTING_CONNECT:I = 0x2

.field private static final TAG:Ljava/lang/String; = "WifiOffloadRequest"

.field static final WIFI_TURN_ON_TIMER:J = 0x7530L

.field private static mHandler:Lcom/android/settings/wifi/WifiOffloadRequest$MyHandler;

.field static mTurningOnState:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 37
    const/4 v0, 0x0

    sput v0, Lcom/android/settings/wifi/WifiOffloadRequest;->mTurningOnState:I

    .line 39
    const/4 v0, 0x0

    sput-object v0, Lcom/android/settings/wifi/WifiOffloadRequest;->mHandler:Lcom/android/settings/wifi/WifiOffloadRequest$MyHandler;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 27
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method public static getHandler()Lcom/android/settings/wifi/WifiOffloadRequest$MyHandler;
    .locals 3

    .prologue
    .line 238
    const-class v1, Lcom/android/settings/wifi/WifiOffloadRequest$MyHandler;

    monitor-enter v1

    .line 239
    :try_start_0
    sget-object v0, Lcom/android/settings/wifi/WifiOffloadRequest;->mHandler:Lcom/android/settings/wifi/WifiOffloadRequest$MyHandler;

    if-nez v0, :cond_0

    .line 240
    new-instance v0, Lcom/android/settings/wifi/WifiOffloadRequest$MyHandler;

    const/4 v2, 0x0

    invoke-direct {v0, v2}, Lcom/android/settings/wifi/WifiOffloadRequest$MyHandler;-><init>(Lcom/android/settings/wifi/WifiOffloadRequest$1;)V

    sput-object v0, Lcom/android/settings/wifi/WifiOffloadRequest;->mHandler:Lcom/android/settings/wifi/WifiOffloadRequest$MyHandler;

    .line 242
    :cond_0
    sget-object v0, Lcom/android/settings/wifi/WifiOffloadRequest;->mHandler:Lcom/android/settings/wifi/WifiOffloadRequest$MyHandler;

    monitor-exit v1

    return-object v0

    .line 243
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method static setupTimer()V
    .locals 4

    .prologue
    .line 223
    const/4 v2, 0x0

    invoke-static {v2}, Lcom/android/settings/wifi/WifiOffloadManager;->getInstance(Landroid/content/Context;)Lcom/android/settings/wifi/WifiOffloadManager;

    move-result-object v1

    .line 224
    .local v1, wifiOffloadManager:Lcom/android/settings/wifi/WifiOffloadManager;
    if-nez v1, :cond_1

    .line 235
    :cond_0
    :goto_0
    return-void

    .line 229
    :cond_1
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lcom/android/settings/wifi/WifiOffloadManager;->persistWifiOffloadPauseTime(J)V

    .line 231
    invoke-virtual {v1}, Lcom/android/settings/wifi/WifiOffloadManager;->getWifiManager()Landroid/net/wifi/WifiManager;

    move-result-object v0

    .line 232
    .local v0, wifiManager:Landroid/net/wifi/WifiManager;
    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->isWifiEnabled()Z

    move-result v2

    if-nez v2, :cond_0

    .line 233
    const/4 v2, 0x1

    sput-boolean v2, Lcom/android/settings/wifi/WifiOffloadManager;->mDontReset:Z

    goto :goto_0
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 24
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 43
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    .line 44
    .local v3, action:Ljava/lang/String;
    invoke-static/range {p1 .. p1}, Lcom/android/settings/wifi/WifiOffloadManager;->getInstance(Landroid/content/Context;)Lcom/android/settings/wifi/WifiOffloadManager;

    move-result-object v18

    .line 46
    .local v18, wifiOffloadManager:Lcom/android/settings/wifi/WifiOffloadManager;
    const-string v20, "com.htc.wifioffload.intent.INTERNETAPP_RESUMED"

    move-object/from16 v0, v20

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_6

    .line 47
    const-string v20, "WifiOffloadRequest"

    const-string v21, "receive INTERNETAPP_RESUMED"

    invoke-static/range {v20 .. v21}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 50
    invoke-virtual/range {v18 .. v18}, Lcom/android/settings/wifi/WifiOffloadManager;->shouldWifiOffloadEnabled()Z

    move-result v20

    if-eqz v20, :cond_0

    .line 51
    invoke-virtual/range {v18 .. v18}, Lcom/android/settings/wifi/WifiOffloadManager;->getWifiManager()Landroid/net/wifi/WifiManager;

    move-result-object v16

    .line 52
    .local v16, wifiManager:Landroid/net/wifi/WifiManager;
    invoke-virtual/range {v16 .. v16}, Landroid/net/wifi/WifiManager;->getWifiState()I

    move-result v19

    .line 53
    .local v19, wifiState:I
    const/16 v20, 0x4

    move/from16 v0, v19

    move/from16 v1, v20

    if-ne v0, v1, :cond_1

    .line 219
    .end local v16           #wifiManager:Landroid/net/wifi/WifiManager;
    .end local v19           #wifiState:I
    :cond_0
    :goto_0
    return-void

    .line 55
    .restart local v16       #wifiManager:Landroid/net/wifi/WifiManager;
    .restart local v19       #wifiState:I
    :cond_1
    const/16 v20, 0x1

    move/from16 v0, v19

    move/from16 v1, v20

    if-eq v0, v1, :cond_2

    if-nez v19, :cond_3

    .line 59
    :cond_2
    sget v20, Lcom/android/settings/wifi/WifiOffloadRequest;->mTurningOnState:I

    if-nez v20, :cond_0

    .line 60
    const/16 v20, 0x1

    move-object/from16 v0, v16

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/net/wifi/WifiManager;->setWifiEnabled(Z)Z

    .line 61
    const-string v20, "WifiOffloadRequest"

    const-string v21, "enable wifi!!!"

    invoke-static/range {v20 .. v21}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 62
    const/16 v20, 0x1

    sput v20, Lcom/android/settings/wifi/WifiOffloadRequest;->mTurningOnState:I

    goto :goto_0

    .line 66
    :cond_3
    const/16 v20, 0x3

    move/from16 v0, v19

    move/from16 v1, v20

    if-ne v0, v1, :cond_5

    .line 67
    invoke-virtual/range {v16 .. v16}, Landroid/net/wifi/WifiManager;->getScanResults()Ljava/util/List;

    move-result-object v10

    .line 68
    .local v10, list:Ljava/util/List;,"Ljava/util/List<Landroid/net/wifi/ScanResult;>;"
    if-eqz v10, :cond_4

    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v20

    if-nez v20, :cond_5

    .line 69
    :cond_4
    const-string v20, "WifiOffloadRequest"

    const-string v21, "Do not launch wifi offload since no AP around"

    invoke-static/range {v20 .. v21}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 76
    .end local v10           #list:Ljava/util/List;,"Ljava/util/List<Landroid/net/wifi/ScanResult;>;"
    :cond_5
    new-instance v17, Landroid/content/Intent;

    invoke-direct/range {v17 .. v17}, Landroid/content/Intent;-><init>()V

    .line 77
    .local v17, wifiOffload:Landroid/content/Intent;
    const-class v20, Lcom/android/settings/wifi/WifiOffloadSettings;

    move-object/from16 v0, v17

    move-object/from16 v1, p1

    move-object/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 78
    const/high16 v20, 0x1000

    move-object/from16 v0, v17

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 79
    move-object/from16 v0, p1

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 83
    .end local v16           #wifiManager:Landroid/net/wifi/WifiManager;
    .end local v17           #wifiOffload:Landroid/content/Intent;
    .end local v19           #wifiState:I
    :cond_6
    const-string v20, "android.net.wifi.WIFI_STATE_CHANGED"

    move-object/from16 v0, v20

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_a

    .line 95
    const-string v20, "wifi_state"

    const/16 v21, 0x4

    move-object/from16 v0, p2

    move-object/from16 v1, v20

    move/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v19

    .line 96
    .restart local v19       #wifiState:I
    const/16 v20, 0x3

    move/from16 v0, v19

    move/from16 v1, v20

    if-ne v0, v1, :cond_8

    .line 97
    sget-boolean v20, Lcom/android/settings/wifi/WifiOffloadManager;->mDontReset:Z

    if-eqz v20, :cond_7

    .line 100
    const-string v20, "WifiOffloadRequest"

    const-string v21, "get mDontReset: true"

    invoke-static/range {v20 .. v21}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 101
    const/16 v20, 0x0

    sput-boolean v20, Lcom/android/settings/wifi/WifiOffloadManager;->mDontReset:Z

    goto/16 :goto_0

    .line 103
    :cond_7
    const-wide/16 v20, 0x0

    move-object/from16 v0, v18

    move-wide/from16 v1, v20

    invoke-virtual {v0, v1, v2}, Lcom/android/settings/wifi/WifiOffloadManager;->persistWifiOffloadPauseTime(J)V

    goto/16 :goto_0

    .line 105
    :cond_8
    const/16 v20, 0x1

    move/from16 v0, v19

    move/from16 v1, v20

    if-eq v0, v1, :cond_9

    const/16 v20, 0x4

    move/from16 v0, v19

    move/from16 v1, v20

    if-ne v0, v1, :cond_0

    .line 108
    :cond_9
    const/16 v20, 0x0

    sput v20, Lcom/android/settings/wifi/WifiOffloadRequest;->mTurningOnState:I

    .line 109
    invoke-static {}, Lcom/android/settings/wifi/WifiOffloadRequest;->getHandler()Lcom/android/settings/wifi/WifiOffloadRequest$MyHandler;

    move-result-object v20

    const/16 v21, 0x1

    invoke-virtual/range {v20 .. v21}, Lcom/android/settings/wifi/WifiOffloadRequest$MyHandler;->removeMessages(I)V

    goto/16 :goto_0

    .line 112
    .end local v19           #wifiState:I
    :cond_a
    const-string v20, "android.intent.action.BOOT_COMPLETED"

    move-object/from16 v0, v20

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-nez v20, :cond_b

    const-string v20, "android.intent.action.QUICKBOOT_POWERON"

    move-object/from16 v0, v20

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_c

    .line 114
    :cond_b
    const-wide/16 v20, 0x0

    move-object/from16 v0, v18

    move-wide/from16 v1, v20

    invoke-virtual {v0, v1, v2}, Lcom/android/settings/wifi/WifiOffloadManager;->persistWifiOffloadPauseTime(J)V

    goto/16 :goto_0

    .line 115
    :cond_c
    const-string v20, "android.net.wifi.SCAN_RESULTS"

    move-object/from16 v0, v20

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_12

    .line 120
    sget v20, Lcom/android/settings/wifi/WifiOffloadRequest;->mTurningOnState:I

    const/16 v21, 0x1

    move/from16 v0, v20

    move/from16 v1, v21

    if-ne v0, v1, :cond_0

    .line 121
    invoke-virtual/range {v18 .. v18}, Lcom/android/settings/wifi/WifiOffloadManager;->getWifiManager()Landroid/net/wifi/WifiManager;

    move-result-object v16

    .line 122
    .restart local v16       #wifiManager:Landroid/net/wifi/WifiManager;
    invoke-virtual/range {v16 .. v16}, Landroid/net/wifi/WifiManager;->getWifiState()I

    move-result v19

    .line 127
    .restart local v19       #wifiState:I
    packed-switch v19, :pswitch_data_0

    goto/16 :goto_0

    .line 129
    :pswitch_0
    const/4 v14, 0x1

    .line 131
    .local v14, turnOffWifi:Z
    invoke-virtual/range {v16 .. v16}, Landroid/net/wifi/WifiManager;->getConfiguredNetworks()Ljava/util/List;

    move-result-object v5

    .line 136
    .local v5, configs:Ljava/util/List;,"Ljava/util/List<Landroid/net/wifi/WifiConfiguration;>;"
    if-eqz v5, :cond_10

    invoke-interface {v5}, Ljava/util/List;->isEmpty()Z

    move-result v20

    if-nez v20, :cond_10

    .line 137
    invoke-virtual/range {v16 .. v16}, Landroid/net/wifi/WifiManager;->getScanResults()Ljava/util/List;

    move-result-object v12

    .line 138
    .local v12, results:Ljava/util/List;,"Ljava/util/List<Landroid/net/wifi/ScanResult;>;"
    if-eqz v12, :cond_10

    .line 139
    invoke-interface {v12}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_d
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v20

    if-eqz v20, :cond_10

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/net/wifi/ScanResult;

    .line 141
    .local v11, result:Landroid/net/wifi/ScanResult;
    iget-object v0, v11, Landroid/net/wifi/ScanResult;->SSID:Ljava/lang/String;

    move-object/from16 v20, v0

    if-eqz v20, :cond_d

    iget-object v0, v11, Landroid/net/wifi/ScanResult;->SSID:Ljava/lang/String;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Ljava/lang/String;->length()I

    move-result v20

    if-eqz v20, :cond_d

    iget-object v0, v11, Landroid/net/wifi/ScanResult;->capabilities:Ljava/lang/String;

    move-object/from16 v20, v0

    const-string v21, "[IBSS]"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v20

    if-nez v20, :cond_d

    .line 149
    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    .local v8, i$:Ljava/util/Iterator;
    :cond_e
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v20

    if-eqz v20, :cond_f

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/net/wifi/WifiConfiguration;

    .line 151
    .local v4, config:Landroid/net/wifi/WifiConfiguration;
    iget-object v0, v4, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    move-object/from16 v20, v0

    if-eqz v20, :cond_e

    iget-object v0, v11, Landroid/net/wifi/ScanResult;->SSID:Ljava/lang/String;

    move-object/from16 v20, v0

    iget-object v0, v4, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    move-object/from16 v21, v0

    invoke-static/range {v21 .. v21}, Lcom/android/settings/wifi/AccessPoint;->removeDoubleQuotes(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_e

    invoke-static {v11}, Lcom/android/settings/wifi/AccessPoint;->getSecurity(Landroid/net/wifi/ScanResult;)I

    move-result v20

    invoke-static {v4}, Lcom/android/settings/wifi/AccessPoint;->getSecurity(Landroid/net/wifi/WifiConfiguration;)I

    move-result v21

    move/from16 v0, v20

    move/from16 v1, v21

    if-ne v0, v1, :cond_e

    .line 154
    const/4 v14, 0x0

    .line 162
    .end local v4           #config:Landroid/net/wifi/WifiConfiguration;
    :cond_f
    if-nez v14, :cond_d

    .line 167
    .end local v8           #i$:Ljava/util/Iterator;
    .end local v11           #result:Landroid/net/wifi/ScanResult;
    .end local v12           #results:Ljava/util/List;,"Ljava/util/List<Landroid/net/wifi/ScanResult;>;"
    :cond_10
    if-eqz v14, :cond_11

    .line 171
    const/16 v20, 0x0

    move-object/from16 v0, v16

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/net/wifi/WifiManager;->setWifiEnabled(Z)Z

    .line 172
    invoke-static {}, Lcom/android/settings/wifi/WifiOffloadRequest;->setupTimer()V

    .line 173
    const/16 v20, 0x0

    sput v20, Lcom/android/settings/wifi/WifiOffloadRequest;->mTurningOnState:I

    goto/16 :goto_0

    .line 176
    :cond_11
    invoke-static {}, Lcom/android/settings/wifi/WifiOffloadRequest;->getHandler()Lcom/android/settings/wifi/WifiOffloadRequest$MyHandler;

    move-result-object v20

    invoke-static {}, Lcom/android/settings/wifi/WifiOffloadRequest;->getHandler()Lcom/android/settings/wifi/WifiOffloadRequest$MyHandler;

    move-result-object v21

    const/16 v22, 0x1

    move-object/from16 v0, v21

    move/from16 v1, v22

    move-object/from16 v2, v16

    invoke-virtual {v0, v1, v2}, Lcom/android/settings/wifi/WifiOffloadRequest$MyHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v21

    const-wide/16 v22, 0x7530

    invoke-virtual/range {v20 .. v23}, Lcom/android/settings/wifi/WifiOffloadRequest$MyHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 179
    const/16 v20, 0x2

    sput v20, Lcom/android/settings/wifi/WifiOffloadRequest;->mTurningOnState:I

    goto/16 :goto_0

    .line 185
    .end local v5           #configs:Ljava/util/List;,"Ljava/util/List<Landroid/net/wifi/WifiConfiguration;>;"
    .end local v14           #turnOffWifi:Z
    .end local v16           #wifiManager:Landroid/net/wifi/WifiManager;
    .end local v19           #wifiState:I
    :cond_12
    const-string v20, "android.net.wifi.STATE_CHANGE"

    move-object/from16 v0, v20

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_0

    .line 190
    sget v20, Lcom/android/settings/wifi/WifiOffloadRequest;->mTurningOnState:I

    const/16 v21, 0x2

    move/from16 v0, v20

    move/from16 v1, v21

    if-eq v0, v1, :cond_13

    sget v20, Lcom/android/settings/wifi/WifiOffloadRequest;->mTurningOnState:I

    const/16 v21, 0x1

    move/from16 v0, v20

    move/from16 v1, v21

    if-ne v0, v1, :cond_0

    .line 192
    :cond_13
    const-string v20, "networkInfo"

    move-object/from16 v0, p2

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v9

    check-cast v9, Landroid/net/NetworkInfo;

    .line 197
    .local v9, info:Landroid/net/NetworkInfo;
    invoke-virtual {v9}, Landroid/net/NetworkInfo;->getDetailedState()Landroid/net/NetworkInfo$DetailedState;

    move-result-object v20

    sget-object v21, Landroid/net/NetworkInfo$DetailedState;->CONNECTED:Landroid/net/NetworkInfo$DetailedState;

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    if-ne v0, v1, :cond_0

    .line 198
    invoke-virtual/range {v18 .. v18}, Lcom/android/settings/wifi/WifiOffloadManager;->isAutoConnectToWifi()Z

    move-result v20

    if-nez v20, :cond_15

    .line 199
    const-string v20, "WifiOffloadRequest"

    const-string v21, "already connected to wifi in wifi offload"

    invoke-static/range {v20 .. v21}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 200
    invoke-virtual/range {v18 .. v18}, Lcom/android/settings/wifi/WifiOffloadManager;->getWifiManager()Landroid/net/wifi/WifiManager;

    move-result-object v16

    .line 201
    .restart local v16       #wifiManager:Landroid/net/wifi/WifiManager;
    invoke-virtual/range {v16 .. v16}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v15

    .line 202
    .local v15, wifiInfo:Landroid/net/wifi/WifiInfo;
    invoke-virtual {v15}, Landroid/net/wifi/WifiInfo;->getSSID()Ljava/lang/String;

    move-result-object v13

    .line 203
    .local v13, ssid:Ljava/lang/String;
    if-eqz v13, :cond_14

    .line 204
    new-instance v6, Landroid/content/Intent;

    invoke-direct {v6}, Landroid/content/Intent;-><init>()V

    .line 205
    .local v6, dialogIntent:Landroid/content/Intent;
    const-class v20, Lcom/android/settings/wifi/WifiOffloadAutoOnDialog;

    move-object/from16 v0, p1

    move-object/from16 v1, v20

    invoke-virtual {v6, v0, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 206
    const/high16 v20, 0x1000

    move/from16 v0, v20

    invoke-virtual {v6, v0}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 207
    const-string v20, "ssid"

    move-object/from16 v0, v20

    invoke-virtual {v6, v0, v13}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 208
    move-object/from16 v0, p1

    invoke-virtual {v0, v6}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 215
    .end local v6           #dialogIntent:Landroid/content/Intent;
    .end local v13           #ssid:Ljava/lang/String;
    .end local v15           #wifiInfo:Landroid/net/wifi/WifiInfo;
    .end local v16           #wifiManager:Landroid/net/wifi/WifiManager;
    :goto_1
    invoke-static {}, Lcom/android/settings/wifi/WifiOffloadRequest;->getHandler()Lcom/android/settings/wifi/WifiOffloadRequest$MyHandler;

    move-result-object v20

    const/16 v21, 0x1

    invoke-virtual/range {v20 .. v21}, Lcom/android/settings/wifi/WifiOffloadRequest$MyHandler;->removeMessages(I)V

    goto/16 :goto_0

    .line 210
    .restart local v13       #ssid:Ljava/lang/String;
    .restart local v15       #wifiInfo:Landroid/net/wifi/WifiInfo;
    .restart local v16       #wifiManager:Landroid/net/wifi/WifiManager;
    :cond_14
    const-string v20, "WifiOffloadRequest"

    const-string v21, "ssid shouldn\'t be null"

    invoke-static/range {v20 .. v21}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 213
    .end local v13           #ssid:Ljava/lang/String;
    .end local v15           #wifiInfo:Landroid/net/wifi/WifiInfo;
    .end local v16           #wifiManager:Landroid/net/wifi/WifiManager;
    :cond_15
    const/16 v20, 0x0

    sput v20, Lcom/android/settings/wifi/WifiOffloadRequest;->mTurningOnState:I

    goto :goto_1

    .line 127
    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_0
    .end packed-switch
.end method
