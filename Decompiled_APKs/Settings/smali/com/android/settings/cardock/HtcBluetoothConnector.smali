.class public Lcom/android/settings/cardock/HtcBluetoothConnector;
.super Ljava/lang/Object;
.source "HtcBluetoothConnector.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 14
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static toBluetoothDevice(Ljava/lang/String;)Landroid/bluetooth/BluetoothDevice;
    .locals 5
    .parameter "deviceAddress"

    .prologue
    .line 27
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    .line 32
    .local v0, adapter:Landroid/bluetooth/BluetoothAdapter;
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->getBondedDevices()Ljava/util/Set;

    move-result-object v2

    .line 33
    .local v2, devices:Ljava/util/Set;,"Ljava/util/Set<Landroid/bluetooth/BluetoothDevice;>;"
    if-eqz v2, :cond_1

    .line 36
    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, i$:Ljava/util/Iterator;
    :cond_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/bluetooth/BluetoothDevice;

    .line 37
    .local v1, device:Landroid/bluetooth/BluetoothDevice;
    invoke-virtual {v1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 43
    .end local v1           #device:Landroid/bluetooth/BluetoothDevice;
    .end local v3           #i$:Ljava/util/Iterator;
    :goto_0
    return-object v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static declared-synchronized turnOffBluetooth()Z
    .locals 3

    .prologue
    .line 81
    const-class v0, Lcom/android/settings/cardock/HtcBluetoothConnector;

    monitor-enter v0

    const-wide/16 v1, 0x0

    :try_start_0
    invoke-static {v1, v2}, Lcom/android/settings/cardock/HtcBluetoothConnector;->turnOffBluetooth(J)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    monitor-exit v0

    return v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static declared-synchronized turnOffBluetooth(J)Z
    .locals 5
    .parameter "delayMillis"

    .prologue
    .line 93
    const-class v3, Lcom/android/settings/cardock/HtcBluetoothConnector;

    monitor-enter v3

    :try_start_0
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    .line 94
    .local v0, adapter:Landroid/bluetooth/BluetoothAdapter;
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->isEnabled()Z

    move-result v1

    .line 96
    .local v1, enabled:Z
    if-eqz v1, :cond_0

    .line 97
    new-instance v2, Landroid/os/Handler;

    invoke-direct {v2}, Landroid/os/Handler;-><init>()V

    new-instance v4, Lcom/android/settings/cardock/HtcBluetoothConnector$2;

    invoke-direct {v4, v0}, Lcom/android/settings/cardock/HtcBluetoothConnector$2;-><init>(Landroid/bluetooth/BluetoothAdapter;)V

    invoke-virtual {v2, v4, p0, p1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 103
    :cond_0
    monitor-exit v3

    return v1

    .line 93
    .end local v0           #adapter:Landroid/bluetooth/BluetoothAdapter;
    .end local v1           #enabled:Z
    :catchall_0
    move-exception v2

    monitor-exit v3

    throw v2
.end method

.method public static declared-synchronized turnOffBluetoothMonitor(II)V
    .locals 7
    .parameter "repeatTimes"
    .parameter "interval"

    .prologue
    .line 115
    const-class v5, Lcom/android/settings/cardock/HtcBluetoothConnector;

    monitor-enter v5

    if-gtz p1, :cond_0

    .line 116
    :try_start_0
    const-string v0, "The interval must be a positive integer"

    .line 117
    .local v0, error:Ljava/lang/String;
    new-instance v4, Ljava/lang/IllegalArgumentException;

    invoke-direct {v4, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 115
    .end local v0           #error:Ljava/lang/String;
    :catchall_0
    move-exception v4

    monitor-exit v5

    throw v4

    .line 120
    :cond_0
    :try_start_1
    new-instance v3, Landroid/os/HandlerThread;

    const-string v4, "monitorTurnOfBluetooth"

    const/16 v6, 0xa

    invoke-direct {v3, v4, v6}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;I)V

    .line 123
    .local v3, thread:Landroid/os/HandlerThread;
    invoke-virtual {v3}, Landroid/os/HandlerThread;->start()V

    .line 124
    invoke-virtual {v3}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v2

    .line 125
    .local v2, looper:Landroid/os/Looper;
    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 127
    .local v1, handler:Landroid/os/Handler;
    new-instance v4, Lcom/android/settings/cardock/HtcBluetoothConnector$3;

    invoke-direct {v4, p0, p1}, Lcom/android/settings/cardock/HtcBluetoothConnector$3;-><init>(II)V

    invoke-virtual {v1, v4}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 152
    monitor-exit v5

    return-void
.end method

.method public static declared-synchronized turnOnBluetooth()Z
    .locals 3

    .prologue
    .line 51
    const-class v0, Lcom/android/settings/cardock/HtcBluetoothConnector;

    monitor-enter v0

    const-wide/16 v1, 0x0

    :try_start_0
    invoke-static {v1, v2}, Lcom/android/settings/cardock/HtcBluetoothConnector;->turnOnBluetooth(J)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    monitor-exit v0

    return v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static declared-synchronized turnOnBluetooth(J)Z
    .locals 5
    .parameter "delayMillis"

    .prologue
    .line 63
    const-class v3, Lcom/android/settings/cardock/HtcBluetoothConnector;

    monitor-enter v3

    :try_start_0
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    .line 64
    .local v0, adapter:Landroid/bluetooth/BluetoothAdapter;
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->isEnabled()Z

    move-result v1

    .line 66
    .local v1, enabled:Z
    if-nez v1, :cond_0

    .line 67
    new-instance v2, Landroid/os/Handler;

    invoke-direct {v2}, Landroid/os/Handler;-><init>()V

    new-instance v4, Lcom/android/settings/cardock/HtcBluetoothConnector$1;

    invoke-direct {v4, v0}, Lcom/android/settings/cardock/HtcBluetoothConnector$1;-><init>(Landroid/bluetooth/BluetoothAdapter;)V

    invoke-virtual {v2, v4, p0, p1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 73
    :cond_0
    monitor-exit v3

    return v1

    .line 63
    .end local v0           #adapter:Landroid/bluetooth/BluetoothAdapter;
    .end local v1           #enabled:Z
    :catchall_0
    move-exception v2

    monitor-exit v3

    throw v2
.end method
