.class Lcom/google/android/location/os/real/CallbackRunner$MyRunnable;
.super Ljava/lang/Object;
.source "CallbackRunner.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/location/os/real/CallbackRunner;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MyRunnable"
.end annotation


# instance fields
.field monitoringEvents:Z

.field final synthetic this$0:Lcom/google/android/location/os/real/CallbackRunner;


# direct methods
.method private constructor <init>(Lcom/google/android/location/os/real/CallbackRunner;)V
    .locals 1
    .parameter

    .prologue
    .line 280
    iput-object p1, p0, Lcom/google/android/location/os/real/CallbackRunner$MyRunnable;->this$0:Lcom/google/android/location/os/real/CallbackRunner;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 281
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/location/os/real/CallbackRunner$MyRunnable;->monitoringEvents:Z

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/location/os/real/CallbackRunner;Lcom/google/android/location/os/real/CallbackRunner$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 280
    invoke-direct {p0, p1}, Lcom/google/android/location/os/real/CallbackRunner$MyRunnable;-><init>(Lcom/google/android/location/os/real/CallbackRunner;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 9

    .prologue
    const/4 v3, 0x1

    .line 286
    const/4 v4, -0x4

    invoke-static {v4}, Landroid/os/Process;->setThreadPriority(I)V

    .line 287
    invoke-static {}, Landroid/os/Looper;->prepare()V

    .line 288
    iget-object v4, p0, Lcom/google/android/location/os/real/CallbackRunner$MyRunnable;->this$0:Lcom/google/android/location/os/real/CallbackRunner;

    #getter for: Lcom/google/android/location/os/real/CallbackRunner;->lock:Ljava/lang/Object;
    invoke-static {v4}, Lcom/google/android/location/os/real/CallbackRunner;->access$900(Lcom/google/android/location/os/real/CallbackRunner;)Ljava/lang/Object;

    move-result-object v4

    monitor-enter v4

    .line 289
    :try_start_0
    iget-object v5, p0, Lcom/google/android/location/os/real/CallbackRunner$MyRunnable;->this$0:Lcom/google/android/location/os/real/CallbackRunner;

    new-instance v6, Lcom/google/android/location/os/real/CallbackRunner$MyHandler;

    iget-object v7, p0, Lcom/google/android/location/os/real/CallbackRunner$MyRunnable;->this$0:Lcom/google/android/location/os/real/CallbackRunner;

    const/4 v8, 0x0

    invoke-direct {v6, v7, v8}, Lcom/google/android/location/os/real/CallbackRunner$MyHandler;-><init>(Lcom/google/android/location/os/real/CallbackRunner;Lcom/google/android/location/os/real/CallbackRunner$1;)V

    #setter for: Lcom/google/android/location/os/real/CallbackRunner;->handler:Landroid/os/Handler;
    invoke-static {v5, v6}, Lcom/google/android/location/os/real/CallbackRunner;->access$1002(Lcom/google/android/location/os/real/CallbackRunner;Landroid/os/Handler;)Landroid/os/Handler;

    .line 290
    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 296
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 297
    .local v0, intentFilter:Landroid/content/IntentFilter;
    const-string v4, "android.intent.action.AIRPLANE_MODE"

    invoke-virtual {v0, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 298
    const-string v4, "com.google.android.location.ALARM_WAKEUP_LOCATOR"

    invoke-virtual {v0, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 299
    const-string v4, "android.net.wifi.SCAN_RESULTS"

    invoke-virtual {v0, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 300
    const-string v4, "android.net.wifi.WIFI_STATE_CHANGED"

    invoke-virtual {v0, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 301
    iget-object v4, p0, Lcom/google/android/location/os/real/CallbackRunner$MyRunnable;->this$0:Lcom/google/android/location/os/real/CallbackRunner;

    #getter for: Lcom/google/android/location/os/real/CallbackRunner;->lock:Ljava/lang/Object;
    invoke-static {v4}, Lcom/google/android/location/os/real/CallbackRunner;->access$900(Lcom/google/android/location/os/real/CallbackRunner;)Ljava/lang/Object;

    move-result-object v4

    monitor-enter v4

    .line 302
    :try_start_1
    iget-object v5, p0, Lcom/google/android/location/os/real/CallbackRunner$MyRunnable;->this$0:Lcom/google/android/location/os/real/CallbackRunner;

    #getter for: Lcom/google/android/location/os/real/CallbackRunner;->quitCalled:Z
    invoke-static {v5}, Lcom/google/android/location/os/real/CallbackRunner;->access$1200(Lcom/google/android/location/os/real/CallbackRunner;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 303
    iget-object v5, p0, Lcom/google/android/location/os/real/CallbackRunner$MyRunnable;->this$0:Lcom/google/android/location/os/real/CallbackRunner;

    new-instance v6, Lcom/google/android/location/os/real/CallbackRunner$MyBroadcastReceiver;

    iget-object v7, p0, Lcom/google/android/location/os/real/CallbackRunner$MyRunnable;->this$0:Lcom/google/android/location/os/real/CallbackRunner;

    const/4 v8, 0x0

    invoke-direct {v6, v7, v8}, Lcom/google/android/location/os/real/CallbackRunner$MyBroadcastReceiver;-><init>(Lcom/google/android/location/os/real/CallbackRunner;Lcom/google/android/location/os/real/CallbackRunner$1;)V

    #setter for: Lcom/google/android/location/os/real/CallbackRunner;->broadcastReceiver:Lcom/google/android/location/os/real/CallbackRunner$MyBroadcastReceiver;
    invoke-static {v5, v6}, Lcom/google/android/location/os/real/CallbackRunner;->access$1302(Lcom/google/android/location/os/real/CallbackRunner;Lcom/google/android/location/os/real/CallbackRunner$MyBroadcastReceiver;)Lcom/google/android/location/os/real/CallbackRunner$MyBroadcastReceiver;

    .line 304
    iget-object v5, p0, Lcom/google/android/location/os/real/CallbackRunner$MyRunnable;->this$0:Lcom/google/android/location/os/real/CallbackRunner;

    #getter for: Lcom/google/android/location/os/real/CallbackRunner;->context:Landroid/content/Context;
    invoke-static {v5}, Lcom/google/android/location/os/real/CallbackRunner;->access$000(Lcom/google/android/location/os/real/CallbackRunner;)Landroid/content/Context;

    move-result-object v5

    iget-object v6, p0, Lcom/google/android/location/os/real/CallbackRunner$MyRunnable;->this$0:Lcom/google/android/location/os/real/CallbackRunner;

    #getter for: Lcom/google/android/location/os/real/CallbackRunner;->broadcastReceiver:Lcom/google/android/location/os/real/CallbackRunner$MyBroadcastReceiver;
    invoke-static {v6}, Lcom/google/android/location/os/real/CallbackRunner;->access$1300(Lcom/google/android/location/os/real/CallbackRunner;)Lcom/google/android/location/os/real/CallbackRunner$MyBroadcastReceiver;

    move-result-object v6

    invoke-virtual {v5, v6, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 306
    :cond_0
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 309
    iget-object v4, p0, Lcom/google/android/location/os/real/CallbackRunner$MyRunnable;->this$0:Lcom/google/android/location/os/real/CallbackRunner;

    #getter for: Lcom/google/android/location/os/real/CallbackRunner;->context:Landroid/content/Context;
    invoke-static {v4}, Lcom/google/android/location/os/real/CallbackRunner;->access$000(Lcom/google/android/location/os/real/CallbackRunner;)Landroid/content/Context;

    move-result-object v4

    const-string v5, "phone"

    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/TelephonyManager;

    .line 310
    .local v1, tm:Landroid/telephony/TelephonyManager;
    iget-object v4, p0, Lcom/google/android/location/os/real/CallbackRunner$MyRunnable;->this$0:Lcom/google/android/location/os/real/CallbackRunner;

    #getter for: Lcom/google/android/location/os/real/CallbackRunner;->phoneStateListener:Lcom/google/android/location/os/real/CallbackRunner$MyPhoneStateListener;
    invoke-static {v4}, Lcom/google/android/location/os/real/CallbackRunner;->access$100(Lcom/google/android/location/os/real/CallbackRunner;)Lcom/google/android/location/os/real/CallbackRunner$MyPhoneStateListener;

    move-result-object v4

    const/16 v5, 0x150

    invoke-virtual {v1, v4, v5}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    .line 315
    monitor-enter p0

    .line 316
    const/4 v4, 0x1

    :try_start_2
    iput-boolean v4, p0, Lcom/google/android/location/os/real/CallbackRunner$MyRunnable;->monitoringEvents:Z

    .line 317
    invoke-virtual {p0}, Ljava/lang/Object;->notify()V

    .line 318
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 331
    iget-object v4, p0, Lcom/google/android/location/os/real/CallbackRunner$MyRunnable;->this$0:Lcom/google/android/location/os/real/CallbackRunner;

    #getter for: Lcom/google/android/location/os/real/CallbackRunner;->context:Landroid/content/Context;
    invoke-static {v4}, Lcom/google/android/location/os/real/CallbackRunner;->access$000(Lcom/google/android/location/os/real/CallbackRunner;)Landroid/content/Context;

    move-result-object v4

    const-string v5, "wifi"

    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/wifi/WifiManager;

    .line 332
    .local v2, wm:Landroid/net/wifi/WifiManager;
    iget-object v4, p0, Lcom/google/android/location/os/real/CallbackRunner$MyRunnable;->this$0:Lcom/google/android/location/os/real/CallbackRunner;

    #getter for: Lcom/google/android/location/os/real/CallbackRunner;->callbacks:Lcom/google/android/location/os/Callbacks;
    invoke-static {v4}, Lcom/google/android/location/os/real/CallbackRunner;->access$300(Lcom/google/android/location/os/real/CallbackRunner;)Lcom/google/android/location/os/Callbacks;

    move-result-object v4

    invoke-virtual {v2}, Landroid/net/wifi/WifiManager;->getWifiState()I

    move-result v5

    const/4 v6, 0x3

    if-ne v5, v6, :cond_1

    :goto_0
    invoke-interface {v4, v3}, Lcom/google/android/location/os/Callbacks;->wifiStateChanged(Z)V

    .line 334
    iget-object v3, p0, Lcom/google/android/location/os/real/CallbackRunner$MyRunnable;->this$0:Lcom/google/android/location/os/real/CallbackRunner;

    #getter for: Lcom/google/android/location/os/real/CallbackRunner;->callbacks:Lcom/google/android/location/os/Callbacks;
    invoke-static {v3}, Lcom/google/android/location/os/real/CallbackRunner;->access$300(Lcom/google/android/location/os/real/CallbackRunner;)Lcom/google/android/location/os/Callbacks;

    move-result-object v3

    iget-object v4, p0, Lcom/google/android/location/os/real/CallbackRunner$MyRunnable;->this$0:Lcom/google/android/location/os/real/CallbackRunner;

    #getter for: Lcom/google/android/location/os/real/CallbackRunner;->context:Landroid/content/Context;
    invoke-static {v4}, Lcom/google/android/location/os/real/CallbackRunner;->access$000(Lcom/google/android/location/os/real/CallbackRunner;)Landroid/content/Context;

    move-result-object v4

    #calls: Lcom/google/android/location/os/real/CallbackRunner;->isAirplaneModeEnabled(Landroid/content/Context;)Z
    invoke-static {v4}, Lcom/google/android/location/os/real/CallbackRunner;->access$800(Landroid/content/Context;)Z

    move-result v4

    invoke-interface {v3, v4}, Lcom/google/android/location/os/Callbacks;->airplaneModeChanged(Z)V

    .line 337
    invoke-static {}, Landroid/os/Looper;->loop()V

    .line 338
    return-void

    .line 290
    .end local v0           #intentFilter:Landroid/content/IntentFilter;
    .end local v1           #tm:Landroid/telephony/TelephonyManager;
    .end local v2           #wm:Landroid/net/wifi/WifiManager;
    :catchall_0
    move-exception v3

    :try_start_3
    monitor-exit v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v3

    .line 306
    .restart local v0       #intentFilter:Landroid/content/IntentFilter;
    :catchall_1
    move-exception v3

    :try_start_4
    monitor-exit v4
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw v3

    .line 318
    .restart local v1       #tm:Landroid/telephony/TelephonyManager;
    :catchall_2
    move-exception v3

    :try_start_5
    monitor-exit p0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    throw v3

    .line 332
    .restart local v2       #wm:Landroid/net/wifi/WifiManager;
    :cond_1
    const/4 v3, 0x0

    goto :goto_0
.end method
