.class Lcom/futuredial/service/DMIBTScanModule$ScanWorker;
.super Ljava/lang/Thread;
.source "DMIBTScanModule.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/futuredial/service/DMIBTScanModule;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ScanWorker"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/futuredial/service/DMIBTScanModule;


# direct methods
.method constructor <init>(Lcom/futuredial/service/DMIBTScanModule;)V
    .locals 0
    .parameter

    .prologue
    .line 126
    iput-object p1, p0, Lcom/futuredial/service/DMIBTScanModule$ScanWorker;->this$0:Lcom/futuredial/service/DMIBTScanModule;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 130
    iget-object v1, p0, Lcom/futuredial/service/DMIBTScanModule$ScanWorker;->this$0:Lcom/futuredial/service/DMIBTScanModule;

    iget-object v2, v1, Lcom/futuredial/service/DMIBTScanModule;->TAG:Ljava/lang/String;

    monitor-enter v2

    .line 131
    :try_start_0
    iget-object v1, p0, Lcom/futuredial/service/DMIBTScanModule$ScanWorker;->this$0:Lcom/futuredial/service/DMIBTScanModule;

    invoke-virtual {v1}, Lcom/futuredial/service/DMIBTScanModule;->open_bt()Z

    move-result v1

    if-nez v1, :cond_0

    .line 133
    iget-object v1, p0, Lcom/futuredial/service/DMIBTScanModule$ScanWorker;->this$0:Lcom/futuredial/service/DMIBTScanModule;

    const/16 v3, 0x65

    invoke-virtual {v1, v3}, Lcom/futuredial/service/DMIBTScanModule;->SendMsg(I)Z

    .line 134
    monitor-exit v2

    .line 164
    :goto_0
    return-void

    .line 136
    :cond_0
    iget-object v1, p0, Lcom/futuredial/service/DMIBTScanModule$ScanWorker;->this$0:Lcom/futuredial/service/DMIBTScanModule;

    iget-object v1, v1, Lcom/futuredial/service/DMIBTScanModule;->TAG:Ljava/lang/String;

    const-string v3, "BlueTooth on"

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 138
    iget-object v1, p0, Lcom/futuredial/service/DMIBTScanModule$ScanWorker;->this$0:Lcom/futuredial/service/DMIBTScanModule;

    iget-object v1, v1, Lcom/futuredial/service/DMIBTScanModule;->m_localBT:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothAdapter;->isDiscovering()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 140
    iget-object v1, p0, Lcom/futuredial/service/DMIBTScanModule$ScanWorker;->this$0:Lcom/futuredial/service/DMIBTScanModule;

    iget-object v1, v1, Lcom/futuredial/service/DMIBTScanModule;->TAG:Ljava/lang/String;

    const-string v3, "cancel existing disovering"

    invoke-static {v1, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 142
    iget-object v1, p0, Lcom/futuredial/service/DMIBTScanModule$ScanWorker;->this$0:Lcom/futuredial/service/DMIBTScanModule;

    const/4 v3, 0x0

    iput-boolean v3, v1, Lcom/futuredial/service/DMIBTScanModule;->m_bstopped:Z

    .line 143
    iget-object v1, p0, Lcom/futuredial/service/DMIBTScanModule$ScanWorker;->this$0:Lcom/futuredial/service/DMIBTScanModule;

    iget-object v1, v1, Lcom/futuredial/service/DMIBTScanModule;->m_localBT:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothAdapter;->cancelDiscovery()Z

    .line 145
    :goto_1
    iget-object v1, p0, Lcom/futuredial/service/DMIBTScanModule$ScanWorker;->this$0:Lcom/futuredial/service/DMIBTScanModule;

    iget-boolean v1, v1, Lcom/futuredial/service/DMIBTScanModule;->m_bstopped:Z

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/futuredial/service/DMIBTScanModule$ScanWorker;->this$0:Lcom/futuredial/service/DMIBTScanModule;

    iget-object v1, v1, Lcom/futuredial/service/DMIBTScanModule;->m_localBT:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothAdapter;->isDiscovering()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 147
    iget-object v1, p0, Lcom/futuredial/service/DMIBTScanModule$ScanWorker;->this$0:Lcom/futuredial/service/DMIBTScanModule;

    iget-object v1, v1, Lcom/futuredial/service/DMIBTScanModule;->TAG:Ljava/lang/String;

    const-string v3, "wait for existing discovering process stop"

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 149
    const-wide/16 v3, 0x3e8

    :try_start_1
    invoke-static {v3, v4}, Ljava/lang/Thread;->sleep(J)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    .line 150
    :catch_0
    move-exception v0

    .line 151
    .local v0, e:Ljava/lang/InterruptedException;
    :try_start_2
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_1

    .line 163
    .end local v0           #e:Ljava/lang/InterruptedException;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1

    .line 155
    :cond_1
    :try_start_3
    iget-object v1, p0, Lcom/futuredial/service/DMIBTScanModule$ScanWorker;->this$0:Lcom/futuredial/service/DMIBTScanModule;

    const/16 v3, 0x6c

    invoke-virtual {v1, v3}, Lcom/futuredial/service/DMIBTScanModule;->SendMsg(I)Z

    .line 157
    iget-object v1, p0, Lcom/futuredial/service/DMIBTScanModule$ScanWorker;->this$0:Lcom/futuredial/service/DMIBTScanModule;

    iget-object v1, v1, Lcom/futuredial/service/DMIBTScanModule;->m_localBT:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothAdapter;->startDiscovery()Z

    move-result v1

    if-nez v1, :cond_2

    .line 159
    iget-object v1, p0, Lcom/futuredial/service/DMIBTScanModule$ScanWorker;->this$0:Lcom/futuredial/service/DMIBTScanModule;

    iget-object v1, v1, Lcom/futuredial/service/DMIBTScanModule;->TAG:Ljava/lang/String;

    const-string v3, "retry start discovery "

    invoke-static {v1, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 161
    iget-object v1, p0, Lcom/futuredial/service/DMIBTScanModule$ScanWorker;->this$0:Lcom/futuredial/service/DMIBTScanModule;

    iget-object v1, v1, Lcom/futuredial/service/DMIBTScanModule;->m_localBT:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothAdapter;->startDiscovery()Z

    .line 163
    :cond_2
    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0
.end method
