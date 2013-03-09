.class public Lcom/htc/android/htcsetupwizard/WIFIScanAPService;
.super Landroid/app/Service;
.source "WIFIScanAPService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/android/htcsetupwizard/WIFIScanAPService$MyHandler;
    }
.end annotation


# static fields
.field private static final CONTINUOUS_SCAN_DELAY_MS:I = 0x1770

.field private static final MAX_WIFI_ENABLE_TIMES:I = 0x5

.field private static final MESSAGE_ATTEMPT_SCAN:I = 0x65

.field private static final SCAN_RETRY_DELAY_MS:I = 0x7d0

.field private static final TAG:Ljava/lang/String; = "OOBE_WIFIScanAPService"

.field private static final WIFI_SCAN_AP_FAIL:I = 0x3

.field private static final WIFI_SCAN_AP_INIT:I = 0x0

.field private static final WIFI_SCAN_AP_SCANNING:I = 0x1

.field private static final WIFI_SCAN_AP_SUCCESS:I = 0x2


# instance fields
.field private final mBinder:Landroid/os/IBinder;

.field private mHandler:Landroid/os/Handler;

.field private mLaunchByIcon:Z

.field private mLaunchByOOBE:Z

.field private mWifiEnableTimes:I

.field private mWifiManager:Landroid/net/wifi/WifiManager;

.field private mWifiReceiver:Landroid/content/BroadcastReceiver;

.field private mbPreWifiEnable:Z

.field private mbPreWifiScanResult:Z

.field private mbStopService:Ljava/lang/Boolean;

.field private mnScanAPState:I


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 48
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 63
    iput v2, p0, Lcom/htc/android/htcsetupwizard/WIFIScanAPService;->mWifiEnableTimes:I

    .line 73
    iput v2, p0, Lcom/htc/android/htcsetupwizard/WIFIScanAPService;->mnScanAPState:I

    .line 75
    new-instance v0, Lcom/htc/android/htcsetupwizard/WIFIScanAPService$MyHandler;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/htc/android/htcsetupwizard/WIFIScanAPService$MyHandler;-><init>(Lcom/htc/android/htcsetupwizard/WIFIScanAPService;Lcom/htc/android/htcsetupwizard/WIFIScanAPService$1;)V

    iput-object v0, p0, Lcom/htc/android/htcsetupwizard/WIFIScanAPService;->mHandler:Landroid/os/Handler;

    .line 77
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/android/htcsetupwizard/WIFIScanAPService;->mbStopService:Ljava/lang/Boolean;

    .line 79
    iput-boolean v2, p0, Lcom/htc/android/htcsetupwizard/WIFIScanAPService;->mbPreWifiEnable:Z

    .line 80
    iput-boolean v2, p0, Lcom/htc/android/htcsetupwizard/WIFIScanAPService;->mbPreWifiScanResult:Z

    .line 82
    iput-boolean v2, p0, Lcom/htc/android/htcsetupwizard/WIFIScanAPService;->mLaunchByIcon:Z

    .line 83
    iput-boolean v2, p0, Lcom/htc/android/htcsetupwizard/WIFIScanAPService;->mLaunchByOOBE:Z

    .line 85
    new-instance v0, Lcom/htc/android/htcsetupwizard/WIFIScanAPService$1;

    invoke-direct {v0, p0}, Lcom/htc/android/htcsetupwizard/WIFIScanAPService$1;-><init>(Lcom/htc/android/htcsetupwizard/WIFIScanAPService;)V

    iput-object v0, p0, Lcom/htc/android/htcsetupwizard/WIFIScanAPService;->mWifiReceiver:Landroid/content/BroadcastReceiver;

    .line 316
    new-instance v0, Lcom/htc/android/htcsetupwizard/WIFIScanAPService$2;

    invoke-direct {v0, p0}, Lcom/htc/android/htcsetupwizard/WIFIScanAPService$2;-><init>(Lcom/htc/android/htcsetupwizard/WIFIScanAPService;)V

    iput-object v0, p0, Lcom/htc/android/htcsetupwizard/WIFIScanAPService;->mBinder:Landroid/os/IBinder;

    return-void
.end method

.method static synthetic access$100(Lcom/htc/android/htcsetupwizard/WIFIScanAPService;)Ljava/lang/Boolean;
    .locals 1
    .parameter "x0"

    .prologue
    .line 48
    iget-object v0, p0, Lcom/htc/android/htcsetupwizard/WIFIScanAPService;->mbStopService:Ljava/lang/Boolean;

    return-object v0
.end method

.method static synthetic access$200(Lcom/htc/android/htcsetupwizard/WIFIScanAPService;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 48
    invoke-direct {p0}, Lcom/htc/android/htcsetupwizard/WIFIScanAPService;->handleScanResultsAvailable()V

    return-void
.end method

.method static synthetic access$300(Lcom/htc/android/htcsetupwizard/WIFIScanAPService;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 48
    invoke-direct {p0, p1}, Lcom/htc/android/htcsetupwizard/WIFIScanAPService;->handleWifiStateChanged(I)V

    return-void
.end method

.method private enableWifi(I)V
    .locals 3
    .parameter "wifiState"

    .prologue
    const/4 v2, 0x1

    .line 301
    iget-boolean v0, p0, Lcom/htc/android/htcsetupwizard/WIFIScanAPService;->mLaunchByIcon:Z

    if-ne v0, v2, :cond_2

    if-ne p1, v2, :cond_2

    .line 302
    const-string v0, "OOBE_WIFIScanAPService"

    const-string v1, "no action, Launch by Icon"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 308
    :cond_0
    :goto_0
    const/4 v0, 0x4

    if-ne p1, v0, :cond_1

    .line 309
    iget v0, p0, Lcom/htc/android/htcsetupwizard/WIFIScanAPService;->mWifiEnableTimes:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/htc/android/htcsetupwizard/WIFIScanAPService;->mWifiEnableTimes:I

    .line 310
    const-string v0, "OOBE_WIFIScanAPService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Set wifi enable times = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/htc/android/htcsetupwizard/WIFIScanAPService;->mWifiEnableTimes:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 312
    :cond_1
    return-void

    .line 304
    :cond_2
    iget v0, p0, Lcom/htc/android/htcsetupwizard/WIFIScanAPService;->mWifiEnableTimes:I

    const/4 v1, 0x5

    if-gt v0, v1, :cond_0

    .line 305
    iget-object v0, p0, Lcom/htc/android/htcsetupwizard/WIFIScanAPService;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0, v2}, Landroid/net/wifi/WifiManager;->setWifiEnabled(Z)Z

    goto :goto_0
.end method

.method private handleScanResultsAvailable()V
    .locals 4

    .prologue
    const/4 v2, 0x1

    .line 212
    monitor-enter p0

    .line 213
    :try_start_0
    iget-object v1, p0, Lcom/htc/android/htcsetupwizard/WIFIScanAPService;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v1}, Landroid/net/wifi/WifiManager;->getScanResults()Ljava/util/List;

    move-result-object v0

    .line 214
    .local v0, list:Ljava/util/List;,"Ljava/util/List<Landroid/net/wifi/ScanResult;>;"
    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_1

    .line 215
    iget-boolean v1, p0, Lcom/htc/android/htcsetupwizard/WIFIScanAPService;->mbPreWifiScanResult:Z

    if-nez v1, :cond_0

    .line 216
    const-string v1, "OOBE_WIFIScanAPService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[handleScanResultsAvailable] get total ap = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 217
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/htc/android/htcsetupwizard/WIFIScanAPService;->mbPreWifiScanResult:Z

    .line 225
    :cond_0
    :goto_0
    invoke-direct {p0}, Lcom/htc/android/htcsetupwizard/WIFIScanAPService;->postAttemptScan()V

    .line 226
    monitor-exit p0

    .line 227
    return-void

    .line 220
    :cond_1
    iget-boolean v1, p0, Lcom/htc/android/htcsetupwizard/WIFIScanAPService;->mbPreWifiScanResult:Z

    if-ne v2, v1, :cond_0

    .line 221
    const-string v1, "OOBE_WIFIScanAPService"

    const-string v2, "[handleScanResultsAvailable] no aps have been found"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 222
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/htc/android/htcsetupwizard/WIFIScanAPService;->mbPreWifiScanResult:Z

    goto :goto_0

    .line 226
    .end local v0           #list:Ljava/util/List;,"Ljava/util/List<Landroid/net/wifi/ScanResult;>;"
    :catchall_0
    move-exception v1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private handleWifiStateChanged(I)V
    .locals 3
    .parameter "wifiState"

    .prologue
    const/4 v2, 0x1

    .line 230
    monitor-enter p0

    .line 232
    :try_start_0
    iget-object v0, p0, Lcom/htc/android/htcsetupwizard/WIFIScanAPService;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x65

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 233
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/android/htcsetupwizard/WIFIScanAPService;->mbPreWifiScanResult:Z

    .line 234
    packed-switch p1, :pswitch_data_0

    .line 280
    :cond_0
    :goto_0
    monitor-exit p0

    .line 298
    return-void

    .line 237
    :pswitch_0
    const-string v0, "OOBE_WIFIScanAPService"

    const-string v1, "WIFI_STATE_DISABLING"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 238
    iget-boolean v0, p0, Lcom/htc/android/htcsetupwizard/WIFIScanAPService;->mbPreWifiEnable:Z

    if-ne v2, v0, :cond_0

    .line 239
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/android/htcsetupwizard/WIFIScanAPService;->mbPreWifiEnable:Z

    goto :goto_0

    .line 280
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 245
    :pswitch_1
    :try_start_1
    const-string v0, "OOBE_WIFIScanAPService"

    const-string v1, "WIFI_STATE_DISABLED"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 246
    iget-boolean v0, p0, Lcom/htc/android/htcsetupwizard/WIFIScanAPService;->mbPreWifiEnable:Z

    if-ne v2, v0, :cond_1

    .line 247
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/android/htcsetupwizard/WIFIScanAPService;->mbPreWifiEnable:Z

    .line 249
    :cond_1
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/htc/android/htcsetupwizard/WIFIScanAPService;->enableWifi(I)V

    goto :goto_0

    .line 254
    :pswitch_2
    const-string v0, "OOBE_WIFIScanAPService"

    const-string v1, "WIFI_STATE_ENABLING"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 255
    iget-boolean v0, p0, Lcom/htc/android/htcsetupwizard/WIFIScanAPService;->mbPreWifiEnable:Z

    if-ne v2, v0, :cond_0

    .line 256
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/android/htcsetupwizard/WIFIScanAPService;->mbPreWifiEnable:Z

    goto :goto_0

    .line 262
    :pswitch_3
    const-string v0, "OOBE_WIFIScanAPService"

    const-string v1, "WIFI_STATE_ENABLED"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 263
    iget-boolean v0, p0, Lcom/htc/android/htcsetupwizard/WIFIScanAPService;->mbPreWifiEnable:Z

    if-nez v0, :cond_2

    .line 264
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/android/htcsetupwizard/WIFIScanAPService;->mbPreWifiEnable:Z

    .line 266
    :cond_2
    invoke-virtual {p0}, Lcom/htc/android/htcsetupwizard/WIFIScanAPService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "wifi_on"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 267
    invoke-direct {p0}, Lcom/htc/android/htcsetupwizard/WIFIScanAPService;->postAttemptScan()V

    goto :goto_0

    .line 272
    :pswitch_4
    const-string v0, "OOBE_WIFIScanAPService"

    const-string v1, "WIFI_STATE_UNKNOWN"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 273
    iget-boolean v0, p0, Lcom/htc/android/htcsetupwizard/WIFIScanAPService;->mbPreWifiEnable:Z

    if-ne v2, v0, :cond_3

    .line 274
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/android/htcsetupwizard/WIFIScanAPService;->mbPreWifiEnable:Z

    .line 276
    :cond_3
    const/4 v0, 0x4

    invoke-direct {p0, v0}, Lcom/htc/android/htcsetupwizard/WIFIScanAPService;->enableWifi(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 234
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method private postAttemptScan()V
    .locals 4

    .prologue
    const/16 v3, 0x65

    .line 207
    iget-object v0, p0, Lcom/htc/android/htcsetupwizard/WIFIScanAPService;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 208
    iget-object v0, p0, Lcom/htc/android/htcsetupwizard/WIFIScanAPService;->mHandler:Landroid/os/Handler;

    const-wide/16 v1, 0x7d0

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 209
    return-void
.end method


# virtual methods
.method public attemptScan()V
    .locals 4

    .prologue
    .line 190
    iget-object v1, p0, Lcom/htc/android/htcsetupwizard/WIFIScanAPService;->mHandler:Landroid/os/Handler;

    const/16 v2, 0x65

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 191
    iget-object v2, p0, Lcom/htc/android/htcsetupwizard/WIFIScanAPService;->mbStopService:Ljava/lang/Boolean;

    monitor-enter v2

    .line 192
    const/4 v1, 0x1

    :try_start_0
    iget-object v3, p0, Lcom/htc/android/htcsetupwizard/WIFIScanAPService;->mbStopService:Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-ne v1, v3, :cond_1

    .line 193
    monitor-exit v2

    .line 204
    :cond_0
    :goto_0
    return-void

    .line 195
    :cond_1
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 196
    iget-object v1, p0, Lcom/htc/android/htcsetupwizard/WIFIScanAPService;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v1}, Landroid/net/wifi/WifiManager;->getWifiState()I

    move-result v0

    .line 199
    .local v0, nWifiState:I
    const/4 v1, 0x3

    if-ne v1, v0, :cond_0

    .line 200
    iget-object v1, p0, Lcom/htc/android/htcsetupwizard/WIFIScanAPService;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v1}, Landroid/net/wifi/WifiManager;->startScan()Z

    move-result v1

    if-nez v1, :cond_0

    .line 201
    invoke-direct {p0}, Lcom/htc/android/htcsetupwizard/WIFIScanAPService;->postAttemptScan()V

    goto :goto_0

    .line 195
    .end local v0           #nWifiState:I
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1
    .parameter "intent"

    .prologue
    .line 163
    iget-object v0, p0, Lcom/htc/android/htcsetupwizard/WIFIScanAPService;->mBinder:Landroid/os/IBinder;

    return-object v0
.end method

.method public onCreate()V
    .locals 5

    .prologue
    const/16 v4, 0x65

    .line 126
    const-string v1, "OOBE_WIFIScanAPService"

    const-string v2, "onCreate"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 127
    const-string v1, "wifi"

    invoke-virtual {p0, v1}, Lcom/htc/android/htcsetupwizard/WIFIScanAPService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/wifi/WifiManager;

    iput-object v1, p0, Lcom/htc/android/htcsetupwizard/WIFIScanAPService;->mWifiManager:Landroid/net/wifi/WifiManager;

    .line 129
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 130
    .local v0, wifiIntentFilter:Landroid/content/IntentFilter;
    const-string v1, "android.net.wifi.SCAN_RESULTS"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 131
    const-string v1, "android.net.wifi.WIFI_STATE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 132
    iget-object v1, p0, Lcom/htc/android/htcsetupwizard/WIFIScanAPService;->mWifiReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1, v0}, Lcom/htc/android/htcsetupwizard/WIFIScanAPService;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 133
    const-string v1, "OOBE_WIFIScanAPService"

    const-string v2, "wifi disable"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 135
    iget-object v1, p0, Lcom/htc/android/htcsetupwizard/WIFIScanAPService;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v1}, Landroid/net/wifi/WifiManager;->isWifiEnabled()Z

    move-result v1

    if-nez v1, :cond_0

    .line 136
    const/4 v1, 0x1

    invoke-direct {p0, v1}, Lcom/htc/android/htcsetupwizard/WIFIScanAPService;->enableWifi(I)V

    .line 137
    const-string v1, "OOBE_WIFIScanAPService"

    const-string v2, "enable WIFI"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 139
    invoke-virtual {p0}, Lcom/htc/android/htcsetupwizard/WIFIScanAPService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "wifi_networks_available_notification_on"

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 146
    :goto_0
    return-void

    .line 143
    :cond_0
    iget-object v1, p0, Lcom/htc/android/htcsetupwizard/WIFIScanAPService;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v4}, Landroid/os/Handler;->removeMessages(I)V

    .line 144
    iget-object v1, p0, Lcom/htc/android/htcsetupwizard/WIFIScanAPService;->mHandler:Landroid/os/Handler;

    const-wide/16 v2, 0x1770

    invoke-virtual {v1, v4, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    .line 150
    const-string v0, "OOBE_WIFIScanAPService"

    const-string v1, "onDestroy"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 151
    iget-object v0, p0, Lcom/htc/android/htcsetupwizard/WIFIScanAPService;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x65

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 152
    iget-object v0, p0, Lcom/htc/android/htcsetupwizard/WIFIScanAPService;->mWifiReceiver:Landroid/content/BroadcastReceiver;

    if-eqz v0, :cond_0

    .line 153
    iget-object v0, p0, Lcom/htc/android/htcsetupwizard/WIFIScanAPService;->mWifiReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/htc/android/htcsetupwizard/WIFIScanAPService;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 154
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/android/htcsetupwizard/WIFIScanAPService;->mWifiReceiver:Landroid/content/BroadcastReceiver;

    .line 155
    const-string v0, "OOBE_WIFIScanAPService"

    const-string v1, "onDestroy unregisterReceiver"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 157
    :cond_0
    iget-object v1, p0, Lcom/htc/android/htcsetupwizard/WIFIScanAPService;->mbStopService:Ljava/lang/Boolean;

    monitor-enter v1

    const/4 v0, 0x1

    :try_start_0
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/android/htcsetupwizard/WIFIScanAPService;->mbStopService:Ljava/lang/Boolean;

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 158
    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    .line 159
    return-void

    .line 157
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public final onStart(Landroid/content/Intent;I)V
    .locals 2
    .parameter "intent"
    .parameter "startId"

    .prologue
    .line 168
    invoke-super {p0, p1, p2}, Landroid/app/Service;->onStart(Landroid/content/Intent;I)V

    .line 169
    iget-boolean v0, p0, Lcom/htc/android/htcsetupwizard/WIFIScanAPService;->mLaunchByOOBE:Z

    if-nez v0, :cond_0

    .line 170
    const-string v0, "OOBE_WIFIScanAPService"

    const-string v1, "Service Destroy, Launch by other AP"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 171
    invoke-virtual {p0}, Lcom/htc/android/htcsetupwizard/WIFIScanAPService;->onDestroy()V

    .line 173
    :cond_0
    return-void
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 4
    .parameter "intent"
    .parameter "flags"
    .parameter "startId"

    .prologue
    .line 106
    if-eqz p1, :cond_0

    .line 107
    const-string v1, "LaunchBySetupWizard"

    const/4 v2, 0x0

    invoke-virtual {p1, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lcom/htc/android/htcsetupwizard/WIFIScanAPService;->mLaunchByIcon:Z

    .line 108
    const-string v1, "LaunchedBy"

    invoke-virtual {p1, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 109
    .local v0, szLaunchBy:Ljava/lang/String;
    if-eqz v0, :cond_2

    .line 110
    const-string v1, "LaunchedByOOBE"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 111
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/htc/android/htcsetupwizard/WIFIScanAPService;->mLaunchByOOBE:Z

    .line 121
    .end local v0           #szLaunchBy:Ljava/lang/String;
    :cond_0
    :goto_0
    invoke-super {p0, p1, p2, p3}, Landroid/app/Service;->onStartCommand(Landroid/content/Intent;II)I

    move-result v1

    return v1

    .line 114
    .restart local v0       #szLaunchBy:Ljava/lang/String;
    :cond_1
    const-string v1, "OOBE_WIFIScanAPService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "WIFI Service can not launch not by other AP! : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 118
    :cond_2
    const-string v1, "OOBE_WIFIScanAPService"

    const-string v2, "WIFI Service can not launch not by other AP!"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
