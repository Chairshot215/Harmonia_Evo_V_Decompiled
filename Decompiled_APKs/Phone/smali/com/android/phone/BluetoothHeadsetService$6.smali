.class Lcom/android/phone/BluetoothHeadsetService$6;
.super Landroid/bluetooth/IBluetoothHeadset$Stub;
.source "BluetoothHeadsetService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/BluetoothHeadsetService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/BluetoothHeadsetService;


# direct methods
.method constructor <init>(Lcom/android/phone/BluetoothHeadsetService;)V
    .locals 0
    .parameter

    .prologue
    .line 643
    iput-object p1, p0, Lcom/android/phone/BluetoothHeadsetService$6;->this$0:Lcom/android/phone/BluetoothHeadsetService;

    invoke-direct {p0}, Landroid/bluetooth/IBluetoothHeadset$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public acceptIncomingConnect(Landroid/bluetooth/BluetoothDevice;)Z
    .locals 10
    .parameter "device"

    .prologue
    const/4 v1, 0x0

    .line 873
    if-nez p1, :cond_0

    .line 874
    const-string v2, "Bluetooth HSHFP"

    const-string v3, "device is null in acceptIncomingConnect"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 896
    :goto_0
    return v1

    .line 877
    :cond_0
    iget-object v9, p0, Lcom/android/phone/BluetoothHeadsetService$6;->this$0:Lcom/android/phone/BluetoothHeadsetService;

    monitor-enter v9

    .line 879
    :try_start_0
    iget-object v2, p0, Lcom/android/phone/BluetoothHeadsetService$6;->this$0:Lcom/android/phone/BluetoothHeadsetService;

    #getter for: Lcom/android/phone/BluetoothHeadsetService;->mRemoteHeadsets:Ljava/util/concurrent/ConcurrentHashMap;
    invoke-static {v2}, Lcom/android/phone/BluetoothHeadsetService;->access$600(Lcom/android/phone/BluetoothHeadsetService;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/phone/BluetoothHeadsetService$BluetoothRemoteHeadset;

    .line 880
    .local v7, cachedHeadset:Lcom/android/phone/BluetoothHeadsetService$BluetoothRemoteHeadset;
    if-nez v7, :cond_1

    .line 881
    const-string v2, "Bluetooth HSHFP"

    const-string v3, "Cached Headset is Null in acceptIncomingConnect"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 882
    monitor-exit v9

    goto :goto_0

    .line 897
    .end local v7           #cachedHeadset:Lcom/android/phone/BluetoothHeadsetService$BluetoothRemoteHeadset;
    :catchall_0
    move-exception v1

    monitor-exit v9
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 884
    .restart local v7       #cachedHeadset:Lcom/android/phone/BluetoothHeadsetService$BluetoothRemoteHeadset;
    :cond_1
    :try_start_1
    #getter for: Lcom/android/phone/BluetoothHeadsetService$BluetoothRemoteHeadset;->mIncomingInfo:Landroid/bluetooth/BluetoothAudioGateway$IncomingConnectionInfo;
    invoke-static {v7}, Lcom/android/phone/BluetoothHeadsetService$BluetoothRemoteHeadset;->access$800(Lcom/android/phone/BluetoothHeadsetService$BluetoothRemoteHeadset;)Landroid/bluetooth/BluetoothAudioGateway$IncomingConnectionInfo;

    move-result-object v8

    .line 885
    .local v8, info:Landroid/bluetooth/BluetoothAudioGateway$IncomingConnectionInfo;
    new-instance v0, Landroid/bluetooth/HeadsetBase;

    iget-object v1, p0, Lcom/android/phone/BluetoothHeadsetService$6;->this$0:Lcom/android/phone/BluetoothHeadsetService;

    #getter for: Lcom/android/phone/BluetoothHeadsetService;->mPowerManager:Landroid/os/PowerManager;
    invoke-static {v1}, Lcom/android/phone/BluetoothHeadsetService;->access$200(Lcom/android/phone/BluetoothHeadsetService;)Landroid/os/PowerManager;

    move-result-object v1

    iget-object v2, p0, Lcom/android/phone/BluetoothHeadsetService$6;->this$0:Lcom/android/phone/BluetoothHeadsetService;

    #getter for: Lcom/android/phone/BluetoothHeadsetService;->mAdapter:Landroid/bluetooth/BluetoothAdapter;
    invoke-static {v2}, Lcom/android/phone/BluetoothHeadsetService;->access$300(Lcom/android/phone/BluetoothHeadsetService;)Landroid/bluetooth/BluetoothAdapter;

    move-result-object v2

    iget v4, v8, Landroid/bluetooth/BluetoothAudioGateway$IncomingConnectionInfo;->mSocketFd:I

    iget v5, v8, Landroid/bluetooth/BluetoothAudioGateway$IncomingConnectionInfo;->mRfcommChan:I

    iget-object v3, p0, Lcom/android/phone/BluetoothHeadsetService$6;->this$0:Lcom/android/phone/BluetoothHeadsetService;

    #getter for: Lcom/android/phone/BluetoothHeadsetService;->mConnectedStatusHandler:Landroid/os/Handler;
    invoke-static {v3}, Lcom/android/phone/BluetoothHeadsetService;->access$1700(Lcom/android/phone/BluetoothHeadsetService;)Landroid/os/Handler;

    move-result-object v6

    move-object v3, p1

    invoke-direct/range {v0 .. v6}, Landroid/bluetooth/HeadsetBase;-><init>(Landroid/os/PowerManager;Landroid/bluetooth/BluetoothAdapter;Landroid/bluetooth/BluetoothDevice;IILandroid/os/Handler;)V

    .line 890
    .local v0, headset:Landroid/bluetooth/HeadsetBase;
    iget-object v1, p0, Lcom/android/phone/BluetoothHeadsetService$6;->this$0:Lcom/android/phone/BluetoothHeadsetService;

    const/4 v2, 0x2

    #calls: Lcom/android/phone/BluetoothHeadsetService;->setState(Landroid/bluetooth/BluetoothDevice;I)V
    invoke-static {v1, p1, v2}, Lcom/android/phone/BluetoothHeadsetService;->access$2100(Lcom/android/phone/BluetoothHeadsetService;Landroid/bluetooth/BluetoothDevice;I)V

    .line 892
    #setter for: Lcom/android/phone/BluetoothHeadsetService$BluetoothRemoteHeadset;->mHeadset:Landroid/bluetooth/HeadsetBase;
    invoke-static {v7, v0}, Lcom/android/phone/BluetoothHeadsetService$BluetoothRemoteHeadset;->access$2202(Lcom/android/phone/BluetoothHeadsetService$BluetoothRemoteHeadset;Landroid/bluetooth/HeadsetBase;)Landroid/bluetooth/HeadsetBase;

    .line 893
    iget-object v1, p0, Lcom/android/phone/BluetoothHeadsetService$6;->this$0:Lcom/android/phone/BluetoothHeadsetService;

    #getter for: Lcom/android/phone/BluetoothHeadsetService;->mBtHandsfree:Lcom/android/phone/BluetoothHandsfree;
    invoke-static {v1}, Lcom/android/phone/BluetoothHeadsetService;->access$1300(Lcom/android/phone/BluetoothHeadsetService;)Lcom/android/phone/BluetoothHandsfree;

    move-result-object v1

    #getter for: Lcom/android/phone/BluetoothHeadsetService$BluetoothRemoteHeadset;->mHeadsetType:I
    invoke-static {v7}, Lcom/android/phone/BluetoothHeadsetService$BluetoothRemoteHeadset;->access$700(Lcom/android/phone/BluetoothHeadsetService$BluetoothRemoteHeadset;)I

    move-result v2

    invoke-virtual {v1, v0, v2}, Lcom/android/phone/BluetoothHandsfree;->connectHeadset(Landroid/bluetooth/HeadsetBase;I)V

    .line 895
    const-string v1, "Successfully used incoming connection"

    #calls: Lcom/android/phone/BluetoothHeadsetService;->log(Ljava/lang/String;)V
    invoke-static {v1}, Lcom/android/phone/BluetoothHeadsetService;->access$1900(Ljava/lang/String;)V

    .line 896
    const/4 v1, 0x1

    monitor-exit v9
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method

.method public cancelConnectThread()Z
    .locals 4

    .prologue
    .line 901
    iget-object v2, p0, Lcom/android/phone/BluetoothHeadsetService$6;->this$0:Lcom/android/phone/BluetoothHeadsetService;

    monitor-enter v2

    .line 902
    :try_start_0
    iget-object v1, p0, Lcom/android/phone/BluetoothHeadsetService$6;->this$0:Lcom/android/phone/BluetoothHeadsetService;

    #getter for: Lcom/android/phone/BluetoothHeadsetService;->mConnectThread:Lcom/android/phone/BluetoothHeadsetService$RfcommConnectThread;
    invoke-static {v1}, Lcom/android/phone/BluetoothHeadsetService;->access$1800(Lcom/android/phone/BluetoothHeadsetService;)Lcom/android/phone/BluetoothHeadsetService$RfcommConnectThread;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 904
    iget-object v1, p0, Lcom/android/phone/BluetoothHeadsetService$6;->this$0:Lcom/android/phone/BluetoothHeadsetService;

    #getter for: Lcom/android/phone/BluetoothHeadsetService;->mConnectThread:Lcom/android/phone/BluetoothHeadsetService$RfcommConnectThread;
    invoke-static {v1}, Lcom/android/phone/BluetoothHeadsetService;->access$1800(Lcom/android/phone/BluetoothHeadsetService;)Lcom/android/phone/BluetoothHeadsetService$RfcommConnectThread;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/phone/BluetoothHeadsetService$RfcommConnectThread;->interrupt()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 906
    :try_start_1
    iget-object v1, p0, Lcom/android/phone/BluetoothHeadsetService$6;->this$0:Lcom/android/phone/BluetoothHeadsetService;

    #getter for: Lcom/android/phone/BluetoothHeadsetService;->mConnectThread:Lcom/android/phone/BluetoothHeadsetService$RfcommConnectThread;
    invoke-static {v1}, Lcom/android/phone/BluetoothHeadsetService;->access$1800(Lcom/android/phone/BluetoothHeadsetService;)Lcom/android/phone/BluetoothHeadsetService$RfcommConnectThread;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/phone/BluetoothHeadsetService$RfcommConnectThread;->join()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0

    .line 910
    :goto_0
    :try_start_2
    iget-object v1, p0, Lcom/android/phone/BluetoothHeadsetService$6;->this$0:Lcom/android/phone/BluetoothHeadsetService;

    const/4 v3, 0x0

    #setter for: Lcom/android/phone/BluetoothHeadsetService;->mConnectThread:Lcom/android/phone/BluetoothHeadsetService$RfcommConnectThread;
    invoke-static {v1, v3}, Lcom/android/phone/BluetoothHeadsetService;->access$1802(Lcom/android/phone/BluetoothHeadsetService;Lcom/android/phone/BluetoothHeadsetService$RfcommConnectThread;)Lcom/android/phone/BluetoothHeadsetService$RfcommConnectThread;

    .line 912
    :cond_0
    const/4 v1, 0x1

    monitor-exit v2

    return v1

    .line 907
    :catch_0
    move-exception v0

    .line 908
    .local v0, e:Ljava/lang/InterruptedException;
    const-string v1, "Bluetooth HSHFP"

    const-string v3, "Connection cancelled twice?"

    invoke-static {v1, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 913
    .end local v0           #e:Ljava/lang/InterruptedException;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method public connect(Landroid/bluetooth/BluetoothDevice;)Z
    .locals 6
    .parameter "device"

    .prologue
    const/4 v2, 0x0

    .line 665
    iget-object v3, p0, Lcom/android/phone/BluetoothHeadsetService$6;->this$0:Lcom/android/phone/BluetoothHeadsetService;

    const-string v4, "android.permission.BLUETOOTH_ADMIN"

    const-string v5, "Need BLUETOOTH_ADMIN permission"

    invoke-virtual {v3, v4, v5}, Lcom/android/phone/BluetoothHeadsetService;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 668
    if-nez p1, :cond_0

    .line 669
    const-string v3, "Bluetooth HSHFP"

    const-string v4, "device is null in connect"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 685
    :goto_0
    return v2

    .line 672
    :cond_0
    iget-object v3, p0, Lcom/android/phone/BluetoothHeadsetService$6;->this$0:Lcom/android/phone/BluetoothHeadsetService;

    monitor-enter v3

    .line 673
    :try_start_0
    iget-object v4, p0, Lcom/android/phone/BluetoothHeadsetService$6;->this$0:Lcom/android/phone/BluetoothHeadsetService;

    #calls: Lcom/android/phone/BluetoothHeadsetService;->getCurrentDevice()Landroid/bluetooth/BluetoothDevice;
    invoke-static {v4}, Lcom/android/phone/BluetoothHeadsetService;->access$500(Lcom/android/phone/BluetoothHeadsetService;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v0

    .line 674
    .local v0, currDevice:Landroid/bluetooth/BluetoothDevice;
    if-eq v0, p1, :cond_1

    invoke-virtual {p0, p1}, Lcom/android/phone/BluetoothHeadsetService$6;->getPriority(Landroid/bluetooth/BluetoothDevice;)I

    move-result v4

    if-nez v4, :cond_2

    .line 676
    :cond_1
    monitor-exit v3

    goto :goto_0

    .line 687
    .end local v0           #currDevice:Landroid/bluetooth/BluetoothDevice;
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    .line 678
    .restart local v0       #currDevice:Landroid/bluetooth/BluetoothDevice;
    :cond_2
    if-eqz v0, :cond_3

    .line 679
    :try_start_1
    invoke-virtual {p0, v0}, Lcom/android/phone/BluetoothHeadsetService$6;->disconnect(Landroid/bluetooth/BluetoothDevice;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 682
    :cond_3
    :try_start_2
    iget-object v4, p0, Lcom/android/phone/BluetoothHeadsetService$6;->this$0:Lcom/android/phone/BluetoothHeadsetService;

    #getter for: Lcom/android/phone/BluetoothHeadsetService;->mBluetoothService:Landroid/bluetooth/IBluetooth;
    invoke-static {v4}, Lcom/android/phone/BluetoothHeadsetService;->access$400(Lcom/android/phone/BluetoothHeadsetService;)Landroid/bluetooth/IBluetooth;

    move-result-object v4

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5}, Landroid/bluetooth/IBluetooth;->connectHeadset(Ljava/lang/String;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0

    move-result v2

    :try_start_3
    monitor-exit v3

    goto :goto_0

    .line 683
    :catch_0
    move-exception v1

    .line 684
    .local v1, e:Landroid/os/RemoteException;
    const-string v4, "Bluetooth HSHFP"

    const-string v5, "connectHeadset"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 685
    monitor-exit v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0
.end method

.method public connectHeadsetInternal(Landroid/bluetooth/BluetoothDevice;)Z
    .locals 8
    .parameter "device"

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 918
    if-nez p1, :cond_0

    .line 919
    const-string v3, "Bluetooth HSHFP"

    const-string v5, "device is null in connectHeadsetInternal"

    invoke-static {v3, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v3, v4

    .line 945
    :goto_0
    return v3

    .line 922
    :cond_0
    iget-object v5, p0, Lcom/android/phone/BluetoothHeadsetService$6;->this$0:Lcom/android/phone/BluetoothHeadsetService;

    monitor-enter v5

    .line 923
    :try_start_0
    iget-object v6, p0, Lcom/android/phone/BluetoothHeadsetService$6;->this$0:Lcom/android/phone/BluetoothHeadsetService;

    #calls: Lcom/android/phone/BluetoothHeadsetService;->getCurrentDevice()Landroid/bluetooth/BluetoothDevice;
    invoke-static {v6}, Lcom/android/phone/BluetoothHeadsetService;->access$500(Lcom/android/phone/BluetoothHeadsetService;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v0

    .line 924
    .local v0, currDevice:Landroid/bluetooth/BluetoothDevice;
    if-nez v0, :cond_2

    .line 925
    new-instance v1, Lcom/android/phone/BluetoothHeadsetService$BluetoothRemoteHeadset;

    iget-object v4, p0, Lcom/android/phone/BluetoothHeadsetService$6;->this$0:Lcom/android/phone/BluetoothHeadsetService;

    invoke-direct {v1, v4}, Lcom/android/phone/BluetoothHeadsetService$BluetoothRemoteHeadset;-><init>(Lcom/android/phone/BluetoothHeadsetService;)V

    .line 926
    .local v1, headset:Lcom/android/phone/BluetoothHeadsetService$BluetoothRemoteHeadset;
    iget-object v4, p0, Lcom/android/phone/BluetoothHeadsetService$6;->this$0:Lcom/android/phone/BluetoothHeadsetService;

    #getter for: Lcom/android/phone/BluetoothHeadsetService;->mRemoteHeadsets:Ljava/util/concurrent/ConcurrentHashMap;
    invoke-static {v4}, Lcom/android/phone/BluetoothHeadsetService;->access$600(Lcom/android/phone/BluetoothHeadsetService;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v4

    invoke-virtual {v4, p1, v1}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 928
    iget-object v4, p0, Lcom/android/phone/BluetoothHeadsetService$6;->this$0:Lcom/android/phone/BluetoothHeadsetService;

    const/4 v6, 0x1

    #calls: Lcom/android/phone/BluetoothHeadsetService;->setState(Landroid/bluetooth/BluetoothDevice;I)V
    invoke-static {v4, p1, v6}, Lcom/android/phone/BluetoothHeadsetService;->access$2100(Lcom/android/phone/BluetoothHeadsetService;Landroid/bluetooth/BluetoothDevice;I)V

    .line 929
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getUuids()[Landroid/os/ParcelUuid;

    move-result-object v4

    if-nez v4, :cond_1

    .line 932
    new-instance v2, Landroid/os/Message;

    invoke-direct {v2}, Landroid/os/Message;-><init>()V

    .line 933
    .local v2, msg:Landroid/os/Message;
    const/4 v4, 0x1

    iput v4, v2, Landroid/os/Message;->what:I

    .line 934
    iput-object p1, v2, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 935
    iget-object v4, p0, Lcom/android/phone/BluetoothHeadsetService$6;->this$0:Lcom/android/phone/BluetoothHeadsetService;

    #getter for: Lcom/android/phone/BluetoothHeadsetService;->mHandler:Landroid/os/Handler;
    invoke-static {v4}, Lcom/android/phone/BluetoothHeadsetService;->access$2400(Lcom/android/phone/BluetoothHeadsetService;)Landroid/os/Handler;

    move-result-object v4

    const-wide/16 v6, 0x5dc

    invoke-virtual {v4, v2, v6, v7}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 939
    .end local v2           #msg:Landroid/os/Message;
    :goto_1
    monitor-exit v5

    goto :goto_0

    .line 946
    .end local v0           #currDevice:Landroid/bluetooth/BluetoothDevice;
    .end local v1           #headset:Lcom/android/phone/BluetoothHeadsetService$BluetoothRemoteHeadset;
    :catchall_0
    move-exception v3

    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3

    .line 937
    .restart local v0       #currDevice:Landroid/bluetooth/BluetoothDevice;
    .restart local v1       #headset:Lcom/android/phone/BluetoothHeadsetService$BluetoothRemoteHeadset;
    :cond_1
    :try_start_1
    iget-object v4, p0, Lcom/android/phone/BluetoothHeadsetService$6;->this$0:Lcom/android/phone/BluetoothHeadsetService;

    #calls: Lcom/android/phone/BluetoothHeadsetService;->getSdpRecordsAndConnect(Landroid/bluetooth/BluetoothDevice;)V
    invoke-static {v4, p1}, Lcom/android/phone/BluetoothHeadsetService;->access$1600(Lcom/android/phone/BluetoothHeadsetService;Landroid/bluetooth/BluetoothDevice;)V

    goto :goto_1

    .line 941
    .end local v1           #headset:Lcom/android/phone/BluetoothHeadsetService$BluetoothRemoteHeadset;
    :cond_2
    const-string v6, "Bluetooth HSHFP"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "connectHeadset("

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v7, "): failed: already in state "

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v3, p0, Lcom/android/phone/BluetoothHeadsetService$6;->this$0:Lcom/android/phone/BluetoothHeadsetService;

    #getter for: Lcom/android/phone/BluetoothHeadsetService;->mRemoteHeadsets:Ljava/util/concurrent/ConcurrentHashMap;
    invoke-static {v3}, Lcom/android/phone/BluetoothHeadsetService;->access$600(Lcom/android/phone/BluetoothHeadsetService;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/phone/BluetoothHeadsetService$BluetoothRemoteHeadset;

    #getter for: Lcom/android/phone/BluetoothHeadsetService$BluetoothRemoteHeadset;->mState:I
    invoke-static {v3}, Lcom/android/phone/BluetoothHeadsetService$BluetoothRemoteHeadset;->access$000(Lcom/android/phone/BluetoothHeadsetService$BluetoothRemoteHeadset;)I

    move-result v3

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v7, " with headset "

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v6, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 945
    monitor-exit v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move v3, v4

    goto/16 :goto_0
.end method

.method public createIncomingConnect(Landroid/bluetooth/BluetoothDevice;)Z
    .locals 10
    .parameter "device"

    .prologue
    const/4 v8, 0x1

    .line 806
    if-nez p1, :cond_0

    .line 807
    const-string v1, "Bluetooth HSHFP"

    const-string v2, "device is null in createIncomingConnect"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 808
    const/4 v1, 0x0

    .line 823
    :goto_0
    return v1

    .line 810
    :cond_0
    iget-object v9, p0, Lcom/android/phone/BluetoothHeadsetService$6;->this$0:Lcom/android/phone/BluetoothHeadsetService;

    monitor-enter v9

    .line 812
    :try_start_0
    iget-object v1, p0, Lcom/android/phone/BluetoothHeadsetService$6;->this$0:Lcom/android/phone/BluetoothHeadsetService;

    const/4 v2, 0x1

    #calls: Lcom/android/phone/BluetoothHeadsetService;->setState(Landroid/bluetooth/BluetoothDevice;I)V
    invoke-static {v1, p1, v2}, Lcom/android/phone/BluetoothHeadsetService;->access$2100(Lcom/android/phone/BluetoothHeadsetService;Landroid/bluetooth/BluetoothDevice;I)V

    .line 814
    iget-object v1, p0, Lcom/android/phone/BluetoothHeadsetService$6;->this$0:Lcom/android/phone/BluetoothHeadsetService;

    #getter for: Lcom/android/phone/BluetoothHeadsetService;->mRemoteHeadsets:Ljava/util/concurrent/ConcurrentHashMap;
    invoke-static {v1}, Lcom/android/phone/BluetoothHeadsetService;->access$600(Lcom/android/phone/BluetoothHeadsetService;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/phone/BluetoothHeadsetService$BluetoothRemoteHeadset;

    #getter for: Lcom/android/phone/BluetoothHeadsetService$BluetoothRemoteHeadset;->mIncomingInfo:Landroid/bluetooth/BluetoothAudioGateway$IncomingConnectionInfo;
    invoke-static {v1}, Lcom/android/phone/BluetoothHeadsetService$BluetoothRemoteHeadset;->access$800(Lcom/android/phone/BluetoothHeadsetService$BluetoothRemoteHeadset;)Landroid/bluetooth/BluetoothAudioGateway$IncomingConnectionInfo;

    move-result-object v7

    .line 815
    .local v7, info:Landroid/bluetooth/BluetoothAudioGateway$IncomingConnectionInfo;
    new-instance v0, Landroid/bluetooth/HeadsetBase;

    iget-object v1, p0, Lcom/android/phone/BluetoothHeadsetService$6;->this$0:Lcom/android/phone/BluetoothHeadsetService;

    #getter for: Lcom/android/phone/BluetoothHeadsetService;->mPowerManager:Landroid/os/PowerManager;
    invoke-static {v1}, Lcom/android/phone/BluetoothHeadsetService;->access$200(Lcom/android/phone/BluetoothHeadsetService;)Landroid/os/PowerManager;

    move-result-object v1

    iget-object v2, p0, Lcom/android/phone/BluetoothHeadsetService$6;->this$0:Lcom/android/phone/BluetoothHeadsetService;

    #getter for: Lcom/android/phone/BluetoothHeadsetService;->mAdapter:Landroid/bluetooth/BluetoothAdapter;
    invoke-static {v2}, Lcom/android/phone/BluetoothHeadsetService;->access$300(Lcom/android/phone/BluetoothHeadsetService;)Landroid/bluetooth/BluetoothAdapter;

    move-result-object v2

    iget v4, v7, Landroid/bluetooth/BluetoothAudioGateway$IncomingConnectionInfo;->mSocketFd:I

    iget v5, v7, Landroid/bluetooth/BluetoothAudioGateway$IncomingConnectionInfo;->mRfcommChan:I

    iget-object v3, p0, Lcom/android/phone/BluetoothHeadsetService$6;->this$0:Lcom/android/phone/BluetoothHeadsetService;

    #getter for: Lcom/android/phone/BluetoothHeadsetService;->mConnectedStatusHandler:Landroid/os/Handler;
    invoke-static {v3}, Lcom/android/phone/BluetoothHeadsetService;->access$1700(Lcom/android/phone/BluetoothHeadsetService;)Landroid/os/Handler;

    move-result-object v6

    move-object v3, p1

    invoke-direct/range {v0 .. v6}, Landroid/bluetooth/HeadsetBase;-><init>(Landroid/os/PowerManager;Landroid/bluetooth/BluetoothAdapter;Landroid/bluetooth/BluetoothDevice;IILandroid/os/Handler;)V

    .line 820
    .local v0, headset:Landroid/bluetooth/HeadsetBase;
    iget-object v1, p0, Lcom/android/phone/BluetoothHeadsetService$6;->this$0:Lcom/android/phone/BluetoothHeadsetService;

    #getter for: Lcom/android/phone/BluetoothHeadsetService;->mRemoteHeadsets:Ljava/util/concurrent/ConcurrentHashMap;
    invoke-static {v1}, Lcom/android/phone/BluetoothHeadsetService;->access$600(Lcom/android/phone/BluetoothHeadsetService;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/phone/BluetoothHeadsetService$BluetoothRemoteHeadset;

    #setter for: Lcom/android/phone/BluetoothHeadsetService$BluetoothRemoteHeadset;->mHeadset:Landroid/bluetooth/HeadsetBase;
    invoke-static {v1, v0}, Lcom/android/phone/BluetoothHeadsetService$BluetoothRemoteHeadset;->access$2202(Lcom/android/phone/BluetoothHeadsetService$BluetoothRemoteHeadset;Landroid/bluetooth/HeadsetBase;)Landroid/bluetooth/HeadsetBase;

    .line 822
    iget-object v1, p0, Lcom/android/phone/BluetoothHeadsetService$6;->this$0:Lcom/android/phone/BluetoothHeadsetService;

    #getter for: Lcom/android/phone/BluetoothHeadsetService;->mConnectingStatusHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/android/phone/BluetoothHeadsetService;->access$2000(Lcom/android/phone/BluetoothHeadsetService;)Landroid/os/Handler;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    .line 823
    monitor-exit v9

    move v1, v8

    goto :goto_0

    .line 824
    .end local v0           #headset:Landroid/bluetooth/HeadsetBase;
    .end local v7           #info:Landroid/bluetooth/BluetoothAudioGateway$IncomingConnectionInfo;
    :catchall_0
    move-exception v1

    monitor-exit v9
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public disconnect(Landroid/bluetooth/BluetoothDevice;)Z
    .locals 6
    .parameter "device"

    .prologue
    const/4 v2, 0x0

    .line 691
    iget-object v3, p0, Lcom/android/phone/BluetoothHeadsetService$6;->this$0:Lcom/android/phone/BluetoothHeadsetService;

    const-string v4, "android.permission.BLUETOOTH_ADMIN"

    const-string v5, "Need BLUETOOTH_ADMIN permission"

    invoke-virtual {v3, v4, v5}, Lcom/android/phone/BluetoothHeadsetService;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 694
    if-nez p1, :cond_0

    .line 695
    const-string v3, "Bluetooth HSHFP"

    const-string v4, "device is null in disconnect"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 709
    :goto_0
    return v2

    .line 698
    :cond_0
    iget-object v3, p0, Lcom/android/phone/BluetoothHeadsetService$6;->this$0:Lcom/android/phone/BluetoothHeadsetService;

    monitor-enter v3

    .line 699
    :try_start_0
    iget-object v4, p0, Lcom/android/phone/BluetoothHeadsetService$6;->this$0:Lcom/android/phone/BluetoothHeadsetService;

    #getter for: Lcom/android/phone/BluetoothHeadsetService;->mRemoteHeadsets:Ljava/util/concurrent/ConcurrentHashMap;
    invoke-static {v4}, Lcom/android/phone/BluetoothHeadsetService;->access$600(Lcom/android/phone/BluetoothHeadsetService;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/phone/BluetoothHeadsetService$BluetoothRemoteHeadset;

    .line 700
    .local v1, headset:Lcom/android/phone/BluetoothHeadsetService$BluetoothRemoteHeadset;
    if-eqz v1, :cond_1

    #getter for: Lcom/android/phone/BluetoothHeadsetService$BluetoothRemoteHeadset;->mState:I
    invoke-static {v1}, Lcom/android/phone/BluetoothHeadsetService$BluetoothRemoteHeadset;->access$000(Lcom/android/phone/BluetoothHeadsetService$BluetoothRemoteHeadset;)I

    move-result v4

    if-eqz v4, :cond_1

    #getter for: Lcom/android/phone/BluetoothHeadsetService$BluetoothRemoteHeadset;->mState:I
    invoke-static {v1}, Lcom/android/phone/BluetoothHeadsetService$BluetoothRemoteHeadset;->access$000(Lcom/android/phone/BluetoothHeadsetService$BluetoothRemoteHeadset;)I

    move-result v4

    const/4 v5, 0x3

    if-ne v4, v5, :cond_2

    .line 703
    :cond_1
    monitor-exit v3

    goto :goto_0

    .line 711
    .end local v1           #headset:Lcom/android/phone/BluetoothHeadsetService$BluetoothRemoteHeadset;
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    .line 706
    .restart local v1       #headset:Lcom/android/phone/BluetoothHeadsetService$BluetoothRemoteHeadset;
    :cond_2
    :try_start_1
    iget-object v4, p0, Lcom/android/phone/BluetoothHeadsetService$6;->this$0:Lcom/android/phone/BluetoothHeadsetService;

    #getter for: Lcom/android/phone/BluetoothHeadsetService;->mBluetoothService:Landroid/bluetooth/IBluetooth;
    invoke-static {v4}, Lcom/android/phone/BluetoothHeadsetService;->access$400(Lcom/android/phone/BluetoothHeadsetService;)Landroid/bluetooth/IBluetooth;

    move-result-object v4

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5}, Landroid/bluetooth/IBluetooth;->disconnectHeadset(Ljava/lang/String;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    move-result v2

    :try_start_2
    monitor-exit v3

    goto :goto_0

    .line 707
    :catch_0
    move-exception v0

    .line 708
    .local v0, e:Landroid/os/RemoteException;
    const-string v4, "Bluetooth HSHFP"

    const-string v5, "disconnectHeadset"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 709
    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0
.end method

.method public disconnectHeadsetInternal(Landroid/bluetooth/BluetoothDevice;)Z
    .locals 7
    .parameter "device"

    .prologue
    const/4 v6, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 951
    if-nez p1, :cond_0

    .line 952
    const-string v3, "Bluetooth HSHFP"

    const-string v4, "device is null in disconnectHeadsetInternal"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 991
    :goto_0
    return v2

    .line 955
    :cond_0
    iget-object v4, p0, Lcom/android/phone/BluetoothHeadsetService$6;->this$0:Lcom/android/phone/BluetoothHeadsetService;

    monitor-enter v4

    .line 956
    :try_start_0
    iget-object v5, p0, Lcom/android/phone/BluetoothHeadsetService$6;->this$0:Lcom/android/phone/BluetoothHeadsetService;

    #getter for: Lcom/android/phone/BluetoothHeadsetService;->mRemoteHeadsets:Ljava/util/concurrent/ConcurrentHashMap;
    invoke-static {v5}, Lcom/android/phone/BluetoothHeadsetService;->access$600(Lcom/android/phone/BluetoothHeadsetService;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/phone/BluetoothHeadsetService$BluetoothRemoteHeadset;

    .line 957
    .local v1, remoteHeadset:Lcom/android/phone/BluetoothHeadsetService$BluetoothRemoteHeadset;
    if-nez v1, :cond_1

    monitor-exit v4

    goto :goto_0

    .line 992
    .end local v1           #remoteHeadset:Lcom/android/phone/BluetoothHeadsetService$BluetoothRemoteHeadset;
    :catchall_0
    move-exception v2

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    .line 959
    .restart local v1       #remoteHeadset:Lcom/android/phone/BluetoothHeadsetService$BluetoothRemoteHeadset;
    :cond_1
    :try_start_1
    #getter for: Lcom/android/phone/BluetoothHeadsetService$BluetoothRemoteHeadset;->mState:I
    invoke-static {v1}, Lcom/android/phone/BluetoothHeadsetService$BluetoothRemoteHeadset;->access$000(Lcom/android/phone/BluetoothHeadsetService$BluetoothRemoteHeadset;)I

    move-result v5

    if-ne v5, v6, :cond_5

    .line 967
    iget-object v2, p0, Lcom/android/phone/BluetoothHeadsetService$6;->this$0:Lcom/android/phone/BluetoothHeadsetService;

    const/4 v5, 0x3

    #calls: Lcom/android/phone/BluetoothHeadsetService;->setState(Landroid/bluetooth/BluetoothDevice;I)V
    invoke-static {v2, p1, v5}, Lcom/android/phone/BluetoothHeadsetService;->access$2100(Lcom/android/phone/BluetoothHeadsetService;Landroid/bluetooth/BluetoothDevice;I)V

    .line 969
    #getter for: Lcom/android/phone/BluetoothHeadsetService$BluetoothRemoteHeadset;->mHeadset:Landroid/bluetooth/HeadsetBase;
    invoke-static {v1}, Lcom/android/phone/BluetoothHeadsetService$BluetoothRemoteHeadset;->access$2200(Lcom/android/phone/BluetoothHeadsetService$BluetoothRemoteHeadset;)Landroid/bluetooth/HeadsetBase;

    move-result-object v0

    .line 971
    .local v0, headset:Landroid/bluetooth/HeadsetBase;
    #getter for: Lcom/android/phone/BluetoothHeadsetService$BluetoothRemoteHeadset;->mHeadsetType:I
    invoke-static {v1}, Lcom/android/phone/BluetoothHeadsetService$BluetoothRemoteHeadset;->access$700(Lcom/android/phone/BluetoothHeadsetService$BluetoothRemoteHeadset;)I

    move-result v2

    if-ne v2, v6, :cond_2

    const-string v2, "0"

    const-string v5, "htc.bluetooth.pts_test"

    const-string v6, "0"

    invoke-static {v5, v6}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 972
    if-eqz v0, :cond_4

    .line 973
    const-string v2, "+CIEV: 7,3"

    invoke-virtual {v0, v2}, Landroid/bluetooth/HeadsetBase;->sendURC(Ljava/lang/String;)Z

    .line 979
    :cond_2
    :goto_1
    if-eqz v0, :cond_3

    .line 980
    invoke-virtual {v0}, Landroid/bluetooth/HeadsetBase;->disconnect()V

    .line 981
    const/4 v0, 0x0

    .line 983
    :cond_3
    iget-object v2, p0, Lcom/android/phone/BluetoothHeadsetService$6;->this$0:Lcom/android/phone/BluetoothHeadsetService;

    const/4 v5, 0x0

    #calls: Lcom/android/phone/BluetoothHeadsetService;->setState(Landroid/bluetooth/BluetoothDevice;I)V
    invoke-static {v2, p1, v5}, Lcom/android/phone/BluetoothHeadsetService;->access$2100(Lcom/android/phone/BluetoothHeadsetService;Landroid/bluetooth/BluetoothDevice;I)V

    .line 984
    monitor-exit v4

    move v2, v3

    goto :goto_0

    .line 975
    :cond_4
    const-string v2, "Bluetooth HSHFP"

    const-string v5, "disconnectHeadsetInternal headset is null"

    invoke-static {v2, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 985
    .end local v0           #headset:Landroid/bluetooth/HeadsetBase;
    :cond_5
    #getter for: Lcom/android/phone/BluetoothHeadsetService$BluetoothRemoteHeadset;->mState:I
    invoke-static {v1}, Lcom/android/phone/BluetoothHeadsetService$BluetoothRemoteHeadset;->access$000(Lcom/android/phone/BluetoothHeadsetService$BluetoothRemoteHeadset;)I

    move-result v5

    if-ne v5, v3, :cond_6

    .line 988
    iget-object v2, p0, Lcom/android/phone/BluetoothHeadsetService$6;->this$0:Lcom/android/phone/BluetoothHeadsetService;

    const/4 v5, 0x0

    #calls: Lcom/android/phone/BluetoothHeadsetService;->setState(Landroid/bluetooth/BluetoothDevice;I)V
    invoke-static {v2, p1, v5}, Lcom/android/phone/BluetoothHeadsetService;->access$2100(Lcom/android/phone/BluetoothHeadsetService;Landroid/bluetooth/BluetoothDevice;I)V

    .line 989
    monitor-exit v4

    move v2, v3

    goto :goto_0

    .line 991
    :cond_6
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method

.method public getAudioState(Landroid/bluetooth/BluetoothDevice;)I
    .locals 4
    .parameter "device"

    .prologue
    const/16 v1, 0xa

    .line 1021
    if-nez p1, :cond_1

    .line 1022
    const-string v2, "Bluetooth HSHFP"

    const-string v3, "device is null in getAudioState"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1029
    :cond_0
    :goto_0
    return v1

    .line 1026
    :cond_1
    iget-object v2, p0, Lcom/android/phone/BluetoothHeadsetService$6;->this$0:Lcom/android/phone/BluetoothHeadsetService;

    #getter for: Lcom/android/phone/BluetoothHeadsetService;->mRemoteHeadsets:Ljava/util/concurrent/ConcurrentHashMap;
    invoke-static {v2}, Lcom/android/phone/BluetoothHeadsetService;->access$600(Lcom/android/phone/BluetoothHeadsetService;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/phone/BluetoothHeadsetService$BluetoothRemoteHeadset;

    .line 1027
    .local v0, headset:Lcom/android/phone/BluetoothHeadsetService$BluetoothRemoteHeadset;
    if-eqz v0, :cond_0

    .line 1029
    #getter for: Lcom/android/phone/BluetoothHeadsetService$BluetoothRemoteHeadset;->mAudioState:I
    invoke-static {v0}, Lcom/android/phone/BluetoothHeadsetService$BluetoothRemoteHeadset;->access$2500(Lcom/android/phone/BluetoothHeadsetService$BluetoothRemoteHeadset;)I

    move-result v1

    goto :goto_0
.end method

.method public getBatteryUsageHint(Landroid/bluetooth/BluetoothDevice;)I
    .locals 3
    .parameter "device"

    .prologue
    .line 766
    iget-object v0, p0, Lcom/android/phone/BluetoothHeadsetService$6;->this$0:Lcom/android/phone/BluetoothHeadsetService;

    const-string v1, "android.permission.BLUETOOTH"

    const-string v2, "Need BLUETOOTH permission"

    invoke-virtual {v0, v1, v2}, Lcom/android/phone/BluetoothHeadsetService;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 768
    invoke-static {}, Landroid/bluetooth/HeadsetBase;->getAtInputCount()I

    move-result v0

    return v0
.end method

.method public getConnectedDevices()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/bluetooth/BluetoothDevice;",
            ">;"
        }
    .end annotation

    .prologue
    .line 659
    iget-object v0, p0, Lcom/android/phone/BluetoothHeadsetService$6;->this$0:Lcom/android/phone/BluetoothHeadsetService;

    const-string v1, "android.permission.BLUETOOTH"

    const-string v2, "Need BLUETOOTH permission"

    invoke-virtual {v0, v1, v2}, Lcom/android/phone/BluetoothHeadsetService;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 660
    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    const/4 v2, 0x2

    aput v2, v0, v1

    invoke-virtual {p0, v0}, Lcom/android/phone/BluetoothHeadsetService$6;->getDevicesMatchingConnectionStates([I)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getConnectionState(Landroid/bluetooth/BluetoothDevice;)I
    .locals 5
    .parameter "device"

    .prologue
    const/4 v1, 0x0

    .line 645
    iget-object v2, p0, Lcom/android/phone/BluetoothHeadsetService$6;->this$0:Lcom/android/phone/BluetoothHeadsetService;

    const-string v3, "android.permission.BLUETOOTH"

    const-string v4, "Need BLUETOOTH permission"

    invoke-virtual {v2, v3, v4}, Lcom/android/phone/BluetoothHeadsetService;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 647
    if-nez p1, :cond_1

    .line 648
    const-string v2, "Bluetooth HSHFP"

    const-string v3, "device is null in getConnectionState"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 655
    :cond_0
    :goto_0
    return v1

    .line 651
    :cond_1
    iget-object v2, p0, Lcom/android/phone/BluetoothHeadsetService$6;->this$0:Lcom/android/phone/BluetoothHeadsetService;

    #getter for: Lcom/android/phone/BluetoothHeadsetService;->mRemoteHeadsets:Ljava/util/concurrent/ConcurrentHashMap;
    invoke-static {v2}, Lcom/android/phone/BluetoothHeadsetService;->access$600(Lcom/android/phone/BluetoothHeadsetService;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/phone/BluetoothHeadsetService$BluetoothRemoteHeadset;

    .line 652
    .local v0, headset:Lcom/android/phone/BluetoothHeadsetService$BluetoothRemoteHeadset;
    if-eqz v0, :cond_0

    .line 655
    #getter for: Lcom/android/phone/BluetoothHeadsetService$BluetoothRemoteHeadset;->mState:I
    invoke-static {v0}, Lcom/android/phone/BluetoothHeadsetService$BluetoothRemoteHeadset;->access$000(Lcom/android/phone/BluetoothHeadsetService$BluetoothRemoteHeadset;)I

    move-result v1

    goto :goto_0
.end method

.method public declared-synchronized getDevicesMatchingConnectionStates([I)Ljava/util/List;
    .locals 11
    .parameter "states"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([I)",
            "Ljava/util/List",
            "<",
            "Landroid/bluetooth/BluetoothDevice;",
            ">;"
        }
    .end annotation

    .prologue
    .line 726
    monitor-enter p0

    :try_start_0
    iget-object v8, p0, Lcom/android/phone/BluetoothHeadsetService$6;->this$0:Lcom/android/phone/BluetoothHeadsetService;

    const-string v9, "android.permission.BLUETOOTH"

    const-string v10, "Need BLUETOOTH permission"

    invoke-virtual {v8, v9, v10}, Lcom/android/phone/BluetoothHeadsetService;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 727
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 728
    .local v3, headsets:Ljava/util/List;,"Ljava/util/List<Landroid/bluetooth/BluetoothDevice;>;"
    iget-object v8, p0, Lcom/android/phone/BluetoothHeadsetService$6;->this$0:Lcom/android/phone/BluetoothHeadsetService;

    #getter for: Lcom/android/phone/BluetoothHeadsetService;->mRemoteHeadsets:Ljava/util/concurrent/ConcurrentHashMap;
    invoke-static {v8}, Lcom/android/phone/BluetoothHeadsetService;->access$600(Lcom/android/phone/BluetoothHeadsetService;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v8

    invoke-virtual {v8}, Ljava/util/concurrent/ConcurrentHashMap;->keySet()Ljava/util/Set;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_0
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/bluetooth/BluetoothDevice;

    .line 729
    .local v1, device:Landroid/bluetooth/BluetoothDevice;
    invoke-virtual {p0, v1}, Lcom/android/phone/BluetoothHeadsetService$6;->getConnectionState(Landroid/bluetooth/BluetoothDevice;)I

    move-result v2

    .line 730
    .local v2, headsetState:I
    move-object v0, p1

    .local v0, arr$:[I
    array-length v6, v0

    .local v6, len$:I
    const/4 v5, 0x0

    .local v5, i$:I
    :goto_1
    if-ge v5, v6, :cond_0

    aget v7, v0, v5

    .line 731
    .local v7, state:I
    if-ne v7, v2, :cond_1

    .line 732
    invoke-interface {v3, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 726
    .end local v0           #arr$:[I
    .end local v1           #device:Landroid/bluetooth/BluetoothDevice;
    .end local v2           #headsetState:I
    .end local v3           #headsets:Ljava/util/List;,"Ljava/util/List<Landroid/bluetooth/BluetoothDevice;>;"
    .end local v5           #i$:I
    .end local v6           #len$:I
    .end local v7           #state:I
    :catchall_0
    move-exception v8

    monitor-exit p0

    throw v8

    .line 730
    .restart local v0       #arr$:[I
    .restart local v1       #device:Landroid/bluetooth/BluetoothDevice;
    .restart local v2       #headsetState:I
    .restart local v3       #headsets:Ljava/util/List;,"Ljava/util/List<Landroid/bluetooth/BluetoothDevice;>;"
    .restart local v5       #i$:I
    .restart local v6       #len$:I
    .restart local v7       #state:I
    :cond_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 737
    .end local v0           #arr$:[I
    .end local v1           #device:Landroid/bluetooth/BluetoothDevice;
    .end local v2           #headsetState:I
    .end local v5           #i$:I
    .end local v6           #len$:I
    .end local v7           #state:I
    :cond_2
    monitor-exit p0

    return-object v3
.end method

.method public getPriority(Landroid/bluetooth/BluetoothDevice;)I
    .locals 5
    .parameter "device"

    .prologue
    const/4 v0, -0x1

    .line 772
    iget-object v1, p0, Lcom/android/phone/BluetoothHeadsetService$6;->this$0:Lcom/android/phone/BluetoothHeadsetService;

    const-string v2, "android.permission.BLUETOOTH_ADMIN"

    const-string v3, "Need BLUETOOTH_ADMIN permission"

    invoke-virtual {v1, v2, v3}, Lcom/android/phone/BluetoothHeadsetService;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 775
    if-nez p1, :cond_0

    .line 776
    const-string v1, "Bluetooth HSHFP"

    const-string v2, "device is null in getPriority"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 783
    :goto_0
    return v0

    .line 779
    :cond_0
    iget-object v2, p0, Lcom/android/phone/BluetoothHeadsetService$6;->this$0:Lcom/android/phone/BluetoothHeadsetService;

    monitor-enter v2

    .line 780
    :try_start_0
    iget-object v1, p0, Lcom/android/phone/BluetoothHeadsetService$6;->this$0:Lcom/android/phone/BluetoothHeadsetService;

    invoke-virtual {v1}, Lcom/android/phone/BluetoothHeadsetService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/provider/Settings$Secure;->getBluetoothHeadsetPriorityKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const/4 v4, -0x1

    invoke-static {v1, v3, v4}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 783
    .local v0, priority:I
    monitor-exit v2

    goto :goto_0

    .line 784
    .end local v0           #priority:I
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public declared-synchronized isAudioConnected(Landroid/bluetooth/BluetoothDevice;)Z
    .locals 4
    .parameter "device"

    .prologue
    const/4 v0, 0x0

    .line 715
    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Lcom/android/phone/BluetoothHeadsetService$6;->this$0:Lcom/android/phone/BluetoothHeadsetService;

    const-string v2, "android.permission.BLUETOOTH"

    const-string v3, "Need BLUETOOTH permission"

    invoke-virtual {v1, v2, v3}, Lcom/android/phone/BluetoothHeadsetService;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 717
    if-nez p1, :cond_1

    .line 718
    const-string v1, "Bluetooth HSHFP"

    const-string v2, "isAudioConnected, device is null"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 722
    :cond_0
    :goto_0
    monitor-exit p0

    return v0

    .line 721
    :cond_1
    :try_start_1
    iget-object v1, p0, Lcom/android/phone/BluetoothHeadsetService$6;->this$0:Lcom/android/phone/BluetoothHeadsetService;

    #getter for: Lcom/android/phone/BluetoothHeadsetService;->mAudioConnectedDevice:Landroid/bluetooth/BluetoothDevice;
    invoke-static {v1}, Lcom/android/phone/BluetoothHeadsetService;->access$2300(Lcom/android/phone/BluetoothHeadsetService;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/bluetooth/BluetoothDevice;->equals(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    .line 715
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public rejectIncomingConnect(Landroid/bluetooth/BluetoothDevice;)Z
    .locals 5
    .parameter "device"

    .prologue
    .line 855
    if-nez p1, :cond_0

    .line 856
    const-string v2, "Bluetooth HSHFP"

    const-string v3, "device is null in rejectIncomingConnect"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 857
    const/4 v2, 0x0

    .line 867
    :goto_0
    return v2

    .line 859
    :cond_0
    iget-object v3, p0, Lcom/android/phone/BluetoothHeadsetService$6;->this$0:Lcom/android/phone/BluetoothHeadsetService;

    monitor-enter v3

    .line 860
    :try_start_0
    iget-object v2, p0, Lcom/android/phone/BluetoothHeadsetService$6;->this$0:Lcom/android/phone/BluetoothHeadsetService;

    #getter for: Lcom/android/phone/BluetoothHeadsetService;->mRemoteHeadsets:Ljava/util/concurrent/ConcurrentHashMap;
    invoke-static {v2}, Lcom/android/phone/BluetoothHeadsetService;->access$600(Lcom/android/phone/BluetoothHeadsetService;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/phone/BluetoothHeadsetService$BluetoothRemoteHeadset;

    .line 861
    .local v0, headset:Lcom/android/phone/BluetoothHeadsetService$BluetoothRemoteHeadset;
    if-eqz v0, :cond_1

    .line 862
    #getter for: Lcom/android/phone/BluetoothHeadsetService$BluetoothRemoteHeadset;->mIncomingInfo:Landroid/bluetooth/BluetoothAudioGateway$IncomingConnectionInfo;
    invoke-static {v0}, Lcom/android/phone/BluetoothHeadsetService$BluetoothRemoteHeadset;->access$800(Lcom/android/phone/BluetoothHeadsetService$BluetoothRemoteHeadset;)Landroid/bluetooth/BluetoothAudioGateway$IncomingConnectionInfo;

    move-result-object v1

    .line 863
    .local v1, info:Landroid/bluetooth/BluetoothAudioGateway$IncomingConnectionInfo;
    iget-object v2, p0, Lcom/android/phone/BluetoothHeadsetService$6;->this$0:Lcom/android/phone/BluetoothHeadsetService;

    #calls: Lcom/android/phone/BluetoothHeadsetService;->rejectIncomingConnection(Landroid/bluetooth/BluetoothAudioGateway$IncomingConnectionInfo;)V
    invoke-static {v2, v1}, Lcom/android/phone/BluetoothHeadsetService;->access$900(Lcom/android/phone/BluetoothHeadsetService;Landroid/bluetooth/BluetoothAudioGateway$IncomingConnectionInfo;)V

    .line 867
    .end local v1           #info:Landroid/bluetooth/BluetoothAudioGateway$IncomingConnectionInfo;
    :goto_1
    const/4 v2, 0x1

    monitor-exit v3

    goto :goto_0

    .line 868
    .end local v0           #headset:Lcom/android/phone/BluetoothHeadsetService$BluetoothRemoteHeadset;
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    .line 865
    .restart local v0       #headset:Lcom/android/phone/BluetoothHeadsetService$BluetoothRemoteHeadset;
    :cond_1
    :try_start_1
    const-string v2, "Bluetooth HSHFP"

    const-string v4, "Error no record of remote headset"

    invoke-static {v2, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1
.end method

.method public setAudioState(Landroid/bluetooth/BluetoothDevice;I)Z
    .locals 4
    .parameter "device"
    .parameter "state"

    .prologue
    .line 997
    if-nez p1, :cond_0

    .line 998
    const-string v2, "Bluetooth HSHFP"

    const-string v3, "device is null in setAudioState"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 999
    const/4 v2, 0x0

    .line 1016
    :goto_0
    return v2

    .line 1002
    :cond_0
    iget-object v2, p0, Lcom/android/phone/BluetoothHeadsetService$6;->this$0:Lcom/android/phone/BluetoothHeadsetService;

    #getter for: Lcom/android/phone/BluetoothHeadsetService;->mRemoteHeadsets:Ljava/util/concurrent/ConcurrentHashMap;
    invoke-static {v2}, Lcom/android/phone/BluetoothHeadsetService;->access$600(Lcom/android/phone/BluetoothHeadsetService;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/phone/BluetoothHeadsetService$BluetoothRemoteHeadset;

    #getter for: Lcom/android/phone/BluetoothHeadsetService$BluetoothRemoteHeadset;->mAudioState:I
    invoke-static {v2}, Lcom/android/phone/BluetoothHeadsetService$BluetoothRemoteHeadset;->access$2500(Lcom/android/phone/BluetoothHeadsetService$BluetoothRemoteHeadset;)I

    move-result v1

    .line 1003
    .local v1, prevState:I
    iget-object v2, p0, Lcom/android/phone/BluetoothHeadsetService$6;->this$0:Lcom/android/phone/BluetoothHeadsetService;

    #getter for: Lcom/android/phone/BluetoothHeadsetService;->mRemoteHeadsets:Ljava/util/concurrent/ConcurrentHashMap;
    invoke-static {v2}, Lcom/android/phone/BluetoothHeadsetService;->access$600(Lcom/android/phone/BluetoothHeadsetService;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/phone/BluetoothHeadsetService$BluetoothRemoteHeadset;

    #setter for: Lcom/android/phone/BluetoothHeadsetService$BluetoothRemoteHeadset;->mAudioState:I
    invoke-static {v2, p2}, Lcom/android/phone/BluetoothHeadsetService$BluetoothRemoteHeadset;->access$2502(Lcom/android/phone/BluetoothHeadsetService$BluetoothRemoteHeadset;I)I

    .line 1004
    const/16 v2, 0xc

    if-ne p2, v2, :cond_2

    .line 1005
    iget-object v2, p0, Lcom/android/phone/BluetoothHeadsetService$6;->this$0:Lcom/android/phone/BluetoothHeadsetService;

    #setter for: Lcom/android/phone/BluetoothHeadsetService;->mAudioConnectedDevice:Landroid/bluetooth/BluetoothDevice;
    invoke-static {v2, p1}, Lcom/android/phone/BluetoothHeadsetService;->access$2302(Lcom/android/phone/BluetoothHeadsetService;Landroid/bluetooth/BluetoothDevice;)Landroid/bluetooth/BluetoothDevice;

    .line 1009
    :cond_1
    :goto_1
    new-instance v0, Landroid/content/Intent;

    const-string v2, "android.bluetooth.headset.profile.action.AUDIO_STATE_CHANGED"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1010
    .local v0, intent:Landroid/content/Intent;
    const-string v2, "android.bluetooth.profile.extra.STATE"

    invoke-virtual {v0, v2, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1011
    const-string v2, "android.bluetooth.profile.extra.PREVIOUS_STATE"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1012
    const-string v2, "android.bluetooth.device.extra.DEVICE"

    invoke-virtual {v0, v2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 1013
    iget-object v2, p0, Lcom/android/phone/BluetoothHeadsetService$6;->this$0:Lcom/android/phone/BluetoothHeadsetService;

    const-string v3, "android.permission.BLUETOOTH"

    invoke-virtual {v2, v0, v3}, Lcom/android/phone/BluetoothHeadsetService;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    .line 1014
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "AudioStateIntent: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " State: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " PrevState: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    #calls: Lcom/android/phone/BluetoothHeadsetService;->log(Ljava/lang/String;)V
    invoke-static {v2}, Lcom/android/phone/BluetoothHeadsetService;->access$1900(Ljava/lang/String;)V

    .line 1016
    const/4 v2, 0x1

    goto :goto_0

    .line 1006
    .end local v0           #intent:Landroid/content/Intent;
    :cond_2
    const/16 v2, 0xa

    if-ne p2, v2, :cond_1

    .line 1007
    iget-object v2, p0, Lcom/android/phone/BluetoothHeadsetService$6;->this$0:Lcom/android/phone/BluetoothHeadsetService;

    const/4 v3, 0x0

    #setter for: Lcom/android/phone/BluetoothHeadsetService;->mAudioConnectedDevice:Landroid/bluetooth/BluetoothDevice;
    invoke-static {v2, v3}, Lcom/android/phone/BluetoothHeadsetService;->access$2302(Lcom/android/phone/BluetoothHeadsetService;Landroid/bluetooth/BluetoothDevice;)Landroid/bluetooth/BluetoothDevice;

    goto :goto_1
.end method

.method public setPriority(Landroid/bluetooth/BluetoothDevice;I)Z
    .locals 3
    .parameter "device"
    .parameter "priority"

    .prologue
    .line 788
    iget-object v0, p0, Lcom/android/phone/BluetoothHeadsetService$6;->this$0:Lcom/android/phone/BluetoothHeadsetService;

    const-string v1, "android.permission.BLUETOOTH_ADMIN"

    const-string v2, "Need BLUETOOTH_ADMIN permission"

    invoke-virtual {v0, v1, v2}, Lcom/android/phone/BluetoothHeadsetService;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 791
    if-nez p1, :cond_0

    .line 792
    const-string v0, "Bluetooth HSHFP"

    const-string v1, "device is null in setPriority"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 793
    const/4 v0, 0x0

    .line 800
    :goto_0
    return v0

    .line 795
    :cond_0
    iget-object v1, p0, Lcom/android/phone/BluetoothHeadsetService$6;->this$0:Lcom/android/phone/BluetoothHeadsetService;

    monitor-enter v1

    .line 796
    :try_start_0
    iget-object v0, p0, Lcom/android/phone/BluetoothHeadsetService$6;->this$0:Lcom/android/phone/BluetoothHeadsetService;

    invoke-virtual {v0}, Lcom/android/phone/BluetoothHeadsetService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/provider/Settings$Secure;->getBluetoothHeadsetPriorityKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2, p2}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 799
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Saved priority "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    #calls: Lcom/android/phone/BluetoothHeadsetService;->log(Ljava/lang/String;)V
    invoke-static {v0}, Lcom/android/phone/BluetoothHeadsetService;->access$1900(Ljava/lang/String;)V

    .line 800
    const/4 v0, 0x1

    monitor-exit v1

    goto :goto_0

    .line 801
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public startScoUsingVirtualVoiceCall(Landroid/bluetooth/BluetoothDevice;)Z
    .locals 3
    .parameter "device"

    .prologue
    .line 828
    iget-object v0, p0, Lcom/android/phone/BluetoothHeadsetService$6;->this$0:Lcom/android/phone/BluetoothHeadsetService;

    const-string v1, "android.permission.BLUETOOTH"

    const-string v2, "Need BLUETOOTH permission"

    invoke-virtual {v0, v1, v2}, Lcom/android/phone/BluetoothHeadsetService;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 829
    iget-object v1, p0, Lcom/android/phone/BluetoothHeadsetService$6;->this$0:Lcom/android/phone/BluetoothHeadsetService;

    monitor-enter v1

    .line 830
    if-eqz p1, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/android/phone/BluetoothHeadsetService$6;->this$0:Lcom/android/phone/BluetoothHeadsetService;

    #getter for: Lcom/android/phone/BluetoothHeadsetService;->mRemoteHeadsets:Ljava/util/concurrent/ConcurrentHashMap;
    invoke-static {v0}, Lcom/android/phone/BluetoothHeadsetService;->access$600(Lcom/android/phone/BluetoothHeadsetService;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/phone/BluetoothHeadsetService$6;->this$0:Lcom/android/phone/BluetoothHeadsetService;

    #getter for: Lcom/android/phone/BluetoothHeadsetService;->mRemoteHeadsets:Ljava/util/concurrent/ConcurrentHashMap;
    invoke-static {v0}, Lcom/android/phone/BluetoothHeadsetService;->access$600(Lcom/android/phone/BluetoothHeadsetService;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/phone/BluetoothHeadsetService$BluetoothRemoteHeadset;

    #getter for: Lcom/android/phone/BluetoothHeadsetService$BluetoothRemoteHeadset;->mState:I
    invoke-static {v0}, Lcom/android/phone/BluetoothHeadsetService$BluetoothRemoteHeadset;->access$000(Lcom/android/phone/BluetoothHeadsetService$BluetoothRemoteHeadset;)I

    move-result v0

    const/4 v2, 0x2

    if-ne v0, v2, :cond_0

    invoke-virtual {p0, p1}, Lcom/android/phone/BluetoothHeadsetService$6;->getAudioState(Landroid/bluetooth/BluetoothDevice;)I

    move-result v0

    const/16 v2, 0xa

    if-eq v0, v2, :cond_1

    .line 834
    :cond_0
    const/4 v0, 0x0

    monitor-exit v1

    .line 836
    :goto_0
    return v0

    :cond_1
    iget-object v0, p0, Lcom/android/phone/BluetoothHeadsetService$6;->this$0:Lcom/android/phone/BluetoothHeadsetService;

    #getter for: Lcom/android/phone/BluetoothHeadsetService;->mBtHandsfree:Lcom/android/phone/BluetoothHandsfree;
    invoke-static {v0}, Lcom/android/phone/BluetoothHeadsetService;->access$1300(Lcom/android/phone/BluetoothHeadsetService;)Lcom/android/phone/BluetoothHandsfree;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/phone/BluetoothHandsfree;->initiateScoUsingVirtualVoiceCall()Z

    move-result v0

    monitor-exit v1

    goto :goto_0

    .line 837
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public startVoiceRecognition(Landroid/bluetooth/BluetoothDevice;)Z
    .locals 3
    .parameter "device"

    .prologue
    .line 741
    iget-object v0, p0, Lcom/android/phone/BluetoothHeadsetService$6;->this$0:Lcom/android/phone/BluetoothHeadsetService;

    const-string v1, "android.permission.BLUETOOTH"

    const-string v2, "Need BLUETOOTH permission"

    invoke-virtual {v0, v1, v2}, Lcom/android/phone/BluetoothHeadsetService;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 742
    iget-object v1, p0, Lcom/android/phone/BluetoothHeadsetService$6;->this$0:Lcom/android/phone/BluetoothHeadsetService;

    monitor-enter v1

    .line 743
    if-eqz p1, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/android/phone/BluetoothHeadsetService$6;->this$0:Lcom/android/phone/BluetoothHeadsetService;

    #getter for: Lcom/android/phone/BluetoothHeadsetService;->mRemoteHeadsets:Ljava/util/concurrent/ConcurrentHashMap;
    invoke-static {v0}, Lcom/android/phone/BluetoothHeadsetService;->access$600(Lcom/android/phone/BluetoothHeadsetService;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/phone/BluetoothHeadsetService$6;->this$0:Lcom/android/phone/BluetoothHeadsetService;

    #getter for: Lcom/android/phone/BluetoothHeadsetService;->mRemoteHeadsets:Ljava/util/concurrent/ConcurrentHashMap;
    invoke-static {v0}, Lcom/android/phone/BluetoothHeadsetService;->access$600(Lcom/android/phone/BluetoothHeadsetService;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/phone/BluetoothHeadsetService$BluetoothRemoteHeadset;

    #getter for: Lcom/android/phone/BluetoothHeadsetService$BluetoothRemoteHeadset;->mState:I
    invoke-static {v0}, Lcom/android/phone/BluetoothHeadsetService$BluetoothRemoteHeadset;->access$000(Lcom/android/phone/BluetoothHeadsetService$BluetoothRemoteHeadset;)I

    move-result v0

    const/4 v2, 0x2

    if-eq v0, v2, :cond_1

    .line 746
    :cond_0
    const/4 v0, 0x0

    monitor-exit v1

    .line 748
    :goto_0
    return v0

    :cond_1
    iget-object v0, p0, Lcom/android/phone/BluetoothHeadsetService$6;->this$0:Lcom/android/phone/BluetoothHeadsetService;

    #getter for: Lcom/android/phone/BluetoothHeadsetService;->mBtHandsfree:Lcom/android/phone/BluetoothHandsfree;
    invoke-static {v0}, Lcom/android/phone/BluetoothHeadsetService;->access$1300(Lcom/android/phone/BluetoothHeadsetService;)Lcom/android/phone/BluetoothHandsfree;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/phone/BluetoothHandsfree;->startVoiceRecognition()Z

    move-result v0

    monitor-exit v1

    goto :goto_0

    .line 749
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public stopScoUsingVirtualVoiceCall(Landroid/bluetooth/BluetoothDevice;)Z
    .locals 3
    .parameter "device"

    .prologue
    .line 841
    iget-object v0, p0, Lcom/android/phone/BluetoothHeadsetService$6;->this$0:Lcom/android/phone/BluetoothHeadsetService;

    const-string v1, "android.permission.BLUETOOTH"

    const-string v2, "Need BLUETOOTH permission"

    invoke-virtual {v0, v1, v2}, Lcom/android/phone/BluetoothHeadsetService;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 842
    iget-object v1, p0, Lcom/android/phone/BluetoothHeadsetService$6;->this$0:Lcom/android/phone/BluetoothHeadsetService;

    monitor-enter v1

    .line 843
    if-eqz p1, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/android/phone/BluetoothHeadsetService$6;->this$0:Lcom/android/phone/BluetoothHeadsetService;

    #getter for: Lcom/android/phone/BluetoothHeadsetService;->mRemoteHeadsets:Ljava/util/concurrent/ConcurrentHashMap;
    invoke-static {v0}, Lcom/android/phone/BluetoothHeadsetService;->access$600(Lcom/android/phone/BluetoothHeadsetService;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/phone/BluetoothHeadsetService$6;->this$0:Lcom/android/phone/BluetoothHeadsetService;

    #getter for: Lcom/android/phone/BluetoothHeadsetService;->mRemoteHeadsets:Ljava/util/concurrent/ConcurrentHashMap;
    invoke-static {v0}, Lcom/android/phone/BluetoothHeadsetService;->access$600(Lcom/android/phone/BluetoothHeadsetService;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/phone/BluetoothHeadsetService$BluetoothRemoteHeadset;

    #getter for: Lcom/android/phone/BluetoothHeadsetService$BluetoothRemoteHeadset;->mState:I
    invoke-static {v0}, Lcom/android/phone/BluetoothHeadsetService$BluetoothRemoteHeadset;->access$000(Lcom/android/phone/BluetoothHeadsetService$BluetoothRemoteHeadset;)I

    move-result v0

    const/4 v2, 0x2

    if-ne v0, v2, :cond_0

    invoke-virtual {p0, p1}, Lcom/android/phone/BluetoothHeadsetService$6;->getAudioState(Landroid/bluetooth/BluetoothDevice;)I

    move-result v0

    const/16 v2, 0xa

    if-ne v0, v2, :cond_1

    .line 847
    :cond_0
    const/4 v0, 0x0

    monitor-exit v1

    .line 849
    :goto_0
    return v0

    :cond_1
    iget-object v0, p0, Lcom/android/phone/BluetoothHeadsetService$6;->this$0:Lcom/android/phone/BluetoothHeadsetService;

    #getter for: Lcom/android/phone/BluetoothHeadsetService;->mBtHandsfree:Lcom/android/phone/BluetoothHandsfree;
    invoke-static {v0}, Lcom/android/phone/BluetoothHeadsetService;->access$1300(Lcom/android/phone/BluetoothHeadsetService;)Lcom/android/phone/BluetoothHandsfree;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/phone/BluetoothHandsfree;->terminateScoUsingVirtualVoiceCall()Z

    move-result v0

    monitor-exit v1

    goto :goto_0

    .line 850
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public stopVoiceRecognition(Landroid/bluetooth/BluetoothDevice;)Z
    .locals 3
    .parameter "device"

    .prologue
    .line 753
    iget-object v0, p0, Lcom/android/phone/BluetoothHeadsetService$6;->this$0:Lcom/android/phone/BluetoothHeadsetService;

    const-string v1, "android.permission.BLUETOOTH"

    const-string v2, "Need BLUETOOTH permission"

    invoke-virtual {v0, v1, v2}, Lcom/android/phone/BluetoothHeadsetService;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 754
    iget-object v1, p0, Lcom/android/phone/BluetoothHeadsetService$6;->this$0:Lcom/android/phone/BluetoothHeadsetService;

    monitor-enter v1

    .line 755
    if-eqz p1, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/android/phone/BluetoothHeadsetService$6;->this$0:Lcom/android/phone/BluetoothHeadsetService;

    #getter for: Lcom/android/phone/BluetoothHeadsetService;->mRemoteHeadsets:Ljava/util/concurrent/ConcurrentHashMap;
    invoke-static {v0}, Lcom/android/phone/BluetoothHeadsetService;->access$600(Lcom/android/phone/BluetoothHeadsetService;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/phone/BluetoothHeadsetService$6;->this$0:Lcom/android/phone/BluetoothHeadsetService;

    #getter for: Lcom/android/phone/BluetoothHeadsetService;->mRemoteHeadsets:Ljava/util/concurrent/ConcurrentHashMap;
    invoke-static {v0}, Lcom/android/phone/BluetoothHeadsetService;->access$600(Lcom/android/phone/BluetoothHeadsetService;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/phone/BluetoothHeadsetService$BluetoothRemoteHeadset;

    #getter for: Lcom/android/phone/BluetoothHeadsetService$BluetoothRemoteHeadset;->mState:I
    invoke-static {v0}, Lcom/android/phone/BluetoothHeadsetService$BluetoothRemoteHeadset;->access$000(Lcom/android/phone/BluetoothHeadsetService$BluetoothRemoteHeadset;)I

    move-result v0

    const/4 v2, 0x2

    if-eq v0, v2, :cond_1

    .line 758
    :cond_0
    const/4 v0, 0x0

    monitor-exit v1

    .line 761
    :goto_0
    return v0

    :cond_1
    iget-object v0, p0, Lcom/android/phone/BluetoothHeadsetService$6;->this$0:Lcom/android/phone/BluetoothHeadsetService;

    #getter for: Lcom/android/phone/BluetoothHeadsetService;->mBtHandsfree:Lcom/android/phone/BluetoothHandsfree;
    invoke-static {v0}, Lcom/android/phone/BluetoothHeadsetService;->access$1300(Lcom/android/phone/BluetoothHeadsetService;)Lcom/android/phone/BluetoothHandsfree;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/phone/BluetoothHandsfree;->stopVoiceRecognition()Z

    move-result v0

    monitor-exit v1

    goto :goto_0

    .line 762
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
