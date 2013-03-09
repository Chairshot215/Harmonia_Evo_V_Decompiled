.class public Lcom/futuredial/service/DMIBTScanModule;
.super Lcom/futuredial/service/DMIFunctionModule;
.source "DMIBTScanModule.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/futuredial/service/DMIBTScanModule$ScanWorker;
    }
.end annotation


# static fields
.field public static final DMI_BT_CLOSE_END_ACTION:I = 0x6b

.field public static final DMI_BT_CLOSE_START_ACTION:I = 0x6a

.field public static final DMI_BT_OPEN_FAIL_ACTION:I = 0x65

.field public static final DMI_DEVICE_FOUND_ACTION:I = 0x67

.field public static final DMI_EXISTING_DISV_FINISHED_ACTION:I = 0x6c

.field public static final DMI_NAME_CHANGED_ACTION:I = 0x69

.field public static final DMI_SCAN_END_ACTION:I = 0x68

.field public static final DMI_SCAN_START_ACTION:I = 0x66


# instance fields
.field TAG:Ljava/lang/String;

.field m_bstopped:Z

.field m_btDeviceList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/futuredial/service/DMIBTDevice;",
            ">;"
        }
    .end annotation
.end field

.field m_localBT:Landroid/bluetooth/BluetoothAdapter;

.field m_scanRec:Landroid/content/BroadcastReceiver;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 14
    invoke-direct {p0}, Lcom/futuredial/service/DMIFunctionModule;-><init>()V

    .line 32
    const-string v0, "DMI Service - Scan"

    iput-object v0, p0, Lcom/futuredial/service/DMIBTScanModule;->TAG:Ljava/lang/String;

    .line 34
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    iput-object v0, p0, Lcom/futuredial/service/DMIBTScanModule;->m_localBT:Landroid/bluetooth/BluetoothAdapter;

    .line 35
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/futuredial/service/DMIBTScanModule;->m_btDeviceList:Ljava/util/ArrayList;

    .line 125
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/futuredial/service/DMIBTScanModule;->m_bstopped:Z

    .line 167
    new-instance v0, Lcom/futuredial/service/DMIBTScanModule$2;

    invoke-direct {v0, p0}, Lcom/futuredial/service/DMIBTScanModule$2;-><init>(Lcom/futuredial/service/DMIBTScanModule;)V

    iput-object v0, p0, Lcom/futuredial/service/DMIBTScanModule;->m_scanRec:Landroid/content/BroadcastReceiver;

    return-void
.end method


# virtual methods
.method close_bt()Z
    .locals 5

    .prologue
    const/16 v4, 0xa

    .line 76
    iget-object v1, p0, Lcom/futuredial/service/DMIBTScanModule;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "turn off BT; current status: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/futuredial/service/DMIBTScanModule;->m_localBT:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v3}, Landroid/bluetooth/BluetoothAdapter;->getState()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 77
    iget-object v1, p0, Lcom/futuredial/service/DMIBTScanModule;->m_localBT:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothAdapter;->getState()I

    move-result v1

    if-eq v1, v4, :cond_1

    .line 78
    iget-object v1, p0, Lcom/futuredial/service/DMIBTScanModule;->m_localBT:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothAdapter;->disable()Z

    move-result v0

    .line 80
    .local v0, bCanClose:Z
    :cond_0
    :goto_0
    :try_start_0
    iget-object v1, p0, Lcom/futuredial/service/DMIBTScanModule;->m_localBT:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothAdapter;->getState()I

    move-result v1

    if-eq v1, v4, :cond_1

    .line 81
    const-wide/16 v1, 0x7d0

    invoke-static {v1, v2}, Ljava/lang/Thread;->sleep(J)V

    .line 82
    if-nez v0, :cond_0

    .line 83
    iget-object v1, p0, Lcom/futuredial/service/DMIBTScanModule;->m_localBT:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothAdapter;->disable()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    goto :goto_0

    .line 85
    :catch_0
    move-exception v1

    .line 88
    .end local v0           #bCanClose:Z
    :cond_1
    const/4 v1, 0x1

    return v1
.end method

.method public dmi_bt_close_bt()V
    .locals 1

    .prologue
    .line 92
    new-instance v0, Lcom/futuredial/service/DMIBTScanModule$1;

    invoke-direct {v0, p0}, Lcom/futuredial/service/DMIBTScanModule$1;-><init>(Lcom/futuredial/service/DMIBTScanModule;)V

    invoke-virtual {v0}, Lcom/futuredial/service/DMIBTScanModule$1;->start()V

    .line 100
    return-void
.end method

.method public dmi_bt_is_open()Z
    .locals 1

    .prologue
    .line 122
    iget-object v0, p0, Lcom/futuredial/service/DMIBTScanModule;->m_localBT:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->isEnabled()Z

    move-result v0

    return v0
.end method

.method public dmi_bt_start_scan()Z
    .locals 2

    .prologue
    .line 107
    :try_start_0
    new-instance v1, Lcom/futuredial/service/DMIBTScanModule$ScanWorker;

    invoke-direct {v1, p0}, Lcom/futuredial/service/DMIBTScanModule$ScanWorker;-><init>(Lcom/futuredial/service/DMIBTScanModule;)V

    invoke-virtual {v1}, Lcom/futuredial/service/DMIBTScanModule$ScanWorker;->start()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 113
    const/4 v1, 0x1

    :goto_0
    return v1

    .line 108
    :catch_0
    move-exception v0

    .line 110
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 111
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public dmi_bt_stop_scan()Z
    .locals 1

    .prologue
    .line 117
    iget-object v0, p0, Lcom/futuredial/service/DMIBTScanModule;->m_localBT:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->cancelDiscovery()Z

    .line 118
    const/4 v0, 0x1

    return v0
.end method

.method public finalize_module()V
    .locals 1

    .prologue
    .line 50
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/futuredial/service/DMIBTScanModule;->m_bstopped:Z

    .line 51
    iget-object v0, p0, Lcom/futuredial/service/DMIBTScanModule;->m_scanRec:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/futuredial/service/DMIBTScanModule;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 52
    return-void
.end method

.method public init_module()V
    .locals 2

    .prologue
    .line 39
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 40
    .local v0, filter:Landroid/content/IntentFilter;
    const-string v1, "android.bluetooth.device.action.NAME_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 41
    const-string v1, "android.bluetooth.adapter.action.DISCOVERY_FINISHED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 42
    const-string v1, "android.bluetooth.device.action.FOUND"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 43
    const-string v1, "android.bluetooth.adapter.action.DISCOVERY_STARTED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 44
    const-string v1, "android.bluetooth.adapter.action.STATE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 45
    iget-object v1, p0, Lcom/futuredial/service/DMIBTScanModule;->m_scanRec:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1, v0}, Lcom/futuredial/service/DMIBTScanModule;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 46
    return-void
.end method

.method open_bt()Z
    .locals 6

    .prologue
    const/4 v2, 0x0

    .line 56
    iget-object v3, p0, Lcom/futuredial/service/DMIBTScanModule;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "turn on BT; current status: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/futuredial/service/DMIBTScanModule;->m_localBT:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v5}, Landroid/bluetooth/BluetoothAdapter;->getState()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 57
    const/4 v0, 0x1

    .line 58
    .local v0, bCanOpen:Z
    iget-object v3, p0, Lcom/futuredial/service/DMIBTScanModule;->m_localBT:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v3}, Landroid/bluetooth/BluetoothAdapter;->getState()I

    move-result v3

    const/16 v4, 0xa

    if-ne v3, v4, :cond_0

    .line 59
    iget-object v3, p0, Lcom/futuredial/service/DMIBTScanModule;->m_localBT:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v3}, Landroid/bluetooth/BluetoothAdapter;->enable()Z

    move-result v0

    .line 60
    :cond_0
    if-nez v0, :cond_1

    .line 62
    iget-object v3, p0, Lcom/futuredial/service/DMIBTScanModule;->TAG:Ljava/lang/String;

    const-string v4, "can not turn on bluetooth (aircaraft mode?)"

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 71
    :goto_0
    return v2

    .line 66
    :cond_1
    :goto_1
    :try_start_0
    iget-object v3, p0, Lcom/futuredial/service/DMIBTScanModule;->m_localBT:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v3}, Landroid/bluetooth/BluetoothAdapter;->getState()I

    move-result v3

    const/16 v4, 0xc

    if-eq v3, v4, :cond_2

    .line 67
    const-wide/16 v3, 0x3e8

    invoke-static {v3, v4}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 68
    :catch_0
    move-exception v1

    .line 69
    .local v1, e:Ljava/lang/Exception;
    goto :goto_0

    .line 71
    .end local v1           #e:Ljava/lang/Exception;
    :cond_2
    const/4 v2, 0x1

    goto :goto_0
.end method
