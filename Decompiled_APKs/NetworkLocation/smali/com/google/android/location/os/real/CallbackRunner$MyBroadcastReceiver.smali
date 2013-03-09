.class Lcom/google/android/location/os/real/CallbackRunner$MyBroadcastReceiver;
.super Landroid/content/BroadcastReceiver;
.source "CallbackRunner.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/location/os/real/CallbackRunner;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MyBroadcastReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/location/os/real/CallbackRunner;

.field private final wifiManager:Landroid/net/wifi/WifiManager;


# direct methods
.method private constructor <init>(Lcom/google/android/location/os/real/CallbackRunner;)V
    .locals 2
    .parameter

    .prologue
    .line 234
    iput-object p1, p0, Lcom/google/android/location/os/real/CallbackRunner$MyBroadcastReceiver;->this$0:Lcom/google/android/location/os/real/CallbackRunner;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 236
    iget-object v0, p0, Lcom/google/android/location/os/real/CallbackRunner$MyBroadcastReceiver;->this$0:Lcom/google/android/location/os/real/CallbackRunner;

    #getter for: Lcom/google/android/location/os/real/CallbackRunner;->context:Landroid/content/Context;
    invoke-static {v0}, Lcom/google/android/location/os/real/CallbackRunner;->access$000(Lcom/google/android/location/os/real/CallbackRunner;)Landroid/content/Context;

    move-result-object v0

    const-string v1, "wifi"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiManager;

    iput-object v0, p0, Lcom/google/android/location/os/real/CallbackRunner$MyBroadcastReceiver;->wifiManager:Landroid/net/wifi/WifiManager;

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/location/os/real/CallbackRunner;Lcom/google/android/location/os/real/CallbackRunner$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 234
    invoke-direct {p0, p1}, Lcom/google/android/location/os/real/CallbackRunner$MyBroadcastReceiver;-><init>(Lcom/google/android/location/os/real/CallbackRunner;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 13
    .parameter "context"
    .parameter "intent"

    .prologue
    const/4 v8, 0x0

    const/4 v12, -0x1

    const/4 v7, 0x1

    .line 244
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 246
    .local v0, action:Ljava/lang/String;
    const-string v9, "com.google.android.location.ALARM_WAKEUP_LOCATOR"

    invoke-virtual {v9, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_1

    .line 250
    iget-object v7, p0, Lcom/google/android/location/os/real/CallbackRunner$MyBroadcastReceiver;->this$0:Lcom/google/android/location/os/real/CallbackRunner;

    #getter for: Lcom/google/android/location/os/real/CallbackRunner;->alarmWakeLock:Landroid/os/PowerManager$WakeLock;
    invoke-static {v7}, Lcom/google/android/location/os/real/CallbackRunner;->access$400(Lcom/google/android/location/os/real/CallbackRunner;)Landroid/os/PowerManager$WakeLock;

    move-result-object v7

    invoke-virtual {v7}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 251
    iget-object v7, p0, Lcom/google/android/location/os/real/CallbackRunner$MyBroadcastReceiver;->this$0:Lcom/google/android/location/os/real/CallbackRunner;

    const/4 v8, 0x6

    #calls: Lcom/google/android/location/os/real/CallbackRunner;->sendMessage(I)V
    invoke-static {v7, v8}, Lcom/google/android/location/os/real/CallbackRunner;->access$700(Lcom/google/android/location/os/real/CallbackRunner;I)V

    .line 276
    :cond_0
    :goto_0
    return-void

    .line 252
    :cond_1
    const-string v9, "android.net.wifi.SCAN_RESULTS"

    invoke-virtual {v9, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_2

    .line 253
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    .line 254
    .local v2, now:J
    iget-object v7, p0, Lcom/google/android/location/os/real/CallbackRunner$MyBroadcastReceiver;->wifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v7}, Landroid/net/wifi/WifiManager;->getScanResults()Ljava/util/List;

    move-result-object v6

    .line 255
    .local v6, wifiScanResults:Ljava/util/List;,"Ljava/util/List<Landroid/net/wifi/ScanResult;>;"
    if-eqz v6, :cond_0

    .line 256
    invoke-static {v2, v3, v6}, Lcom/google/android/location/os/real/RealWifiScan;->create(JLjava/util/List;)Lcom/google/android/location/os/real/RealWifiScan;

    move-result-object v5

    .line 257
    .local v5, wifiScan:Lcom/google/android/location/os/real/RealWifiScan;
    iget-object v7, p0, Lcom/google/android/location/os/real/CallbackRunner$MyBroadcastReceiver;->this$0:Lcom/google/android/location/os/real/CallbackRunner;

    const/16 v8, 0xa

    #calls: Lcom/google/android/location/os/real/CallbackRunner;->sendMessage(ILjava/lang/Object;)V
    invoke-static {v7, v8, v5}, Lcom/google/android/location/os/real/CallbackRunner;->access$500(Lcom/google/android/location/os/real/CallbackRunner;ILjava/lang/Object;)V

    goto :goto_0

    .line 259
    .end local v2           #now:J
    .end local v5           #wifiScan:Lcom/google/android/location/os/real/RealWifiScan;
    .end local v6           #wifiScanResults:Ljava/util/List;,"Ljava/util/List<Landroid/net/wifi/ScanResult;>;"
    :cond_2
    const-string v9, "android.net.wifi.WIFI_STATE_CHANGED"

    invoke-virtual {v9, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_5

    .line 260
    const-string v9, "wifi_state"

    const/4 v10, 0x4

    invoke-virtual {p2, v9, v10}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v4

    .line 262
    .local v4, state:I
    const/4 v1, 0x0

    .line 263
    .local v1, enabled:Z
    const/4 v9, 0x3

    if-ne v4, v9, :cond_3

    .line 264
    const/4 v1, 0x1

    .line 270
    :goto_1
    iget-object v9, p0, Lcom/google/android/location/os/real/CallbackRunner$MyBroadcastReceiver;->this$0:Lcom/google/android/location/os/real/CallbackRunner;

    const/16 v10, 0xb

    if-eqz v1, :cond_4

    :goto_2
    #calls: Lcom/google/android/location/os/real/CallbackRunner;->sendMessage(III)V
    invoke-static {v9, v10, v7, v12}, Lcom/google/android/location/os/real/CallbackRunner;->access$600(Lcom/google/android/location/os/real/CallbackRunner;III)V

    goto :goto_0

    .line 265
    :cond_3
    if-ne v4, v7, :cond_0

    .line 266
    const/4 v1, 0x0

    goto :goto_1

    :cond_4
    move v7, v8

    .line 270
    goto :goto_2

    .line 271
    .end local v1           #enabled:Z
    .end local v4           #state:I
    :cond_5
    const-string v9, "android.intent.action.AIRPLANE_MODE"

    invoke-virtual {v9, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_7

    .line 272
    iget-object v9, p0, Lcom/google/android/location/os/real/CallbackRunner$MyBroadcastReceiver;->this$0:Lcom/google/android/location/os/real/CallbackRunner;

    const/16 v10, 0xc

    #calls: Lcom/google/android/location/os/real/CallbackRunner;->isAirplaneModeEnabled(Landroid/content/Context;)Z
    invoke-static {p1}, Lcom/google/android/location/os/real/CallbackRunner;->access$800(Landroid/content/Context;)Z

    move-result v11

    if-eqz v11, :cond_6

    :goto_3
    #calls: Lcom/google/android/location/os/real/CallbackRunner;->sendMessage(III)V
    invoke-static {v9, v10, v7, v12}, Lcom/google/android/location/os/real/CallbackRunner;->access$600(Lcom/google/android/location/os/real/CallbackRunner;III)V

    goto :goto_0

    :cond_6
    move v7, v8

    goto :goto_3

    .line 274
    :cond_7
    const-string v7, "NetworkLocationCallbackRunner"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Unexpected action "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/google/android/location/os/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
