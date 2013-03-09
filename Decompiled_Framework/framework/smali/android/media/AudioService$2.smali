.class Landroid/media/AudioService$2;
.super Ljava/lang/Object;
.source "AudioService.java"

# interfaces
.implements Landroid/bluetooth/BluetoothProfile$ServiceListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/AudioService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/media/AudioService;


# direct methods
.method constructor <init>(Landroid/media/AudioService;)V
    .locals 0

    iput-object p1, p0, Landroid/media/AudioService$2;->this$0:Landroid/media/AudioService;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(ILandroid/bluetooth/BluetoothProfile;)V
    .locals 13

    const/4 v1, 0x0

    packed-switch p1, :pswitch_data_0

    :cond_0
    :goto_0
    return-void

    :pswitch_0
    move-object v8, p2

    check-cast v8, Landroid/bluetooth/BluetoothA2dp;

    invoke-virtual {v8}, Landroid/bluetooth/BluetoothA2dp;->getConnectedDevices()Ljava/util/List;

    move-result-object v10

    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    invoke-interface {v10, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/bluetooth/BluetoothDevice;

    iget-object v0, p0, Landroid/media/AudioService$2;->this$0:Landroid/media/AudioService;

    invoke-virtual {v8, v9}, Landroid/bluetooth/BluetoothA2dp;->getConnectionState(Landroid/bluetooth/BluetoothDevice;)I

    move-result v1

    #calls: Landroid/media/AudioService;->handleA2dpConnectionStateChange(Landroid/bluetooth/BluetoothDevice;I)V
    invoke-static {v0, v9, v1}, Landroid/media/AudioService;->access$2900(Landroid/media/AudioService;Landroid/bluetooth/BluetoothDevice;I)V

    goto :goto_0

    :pswitch_1
    iget-object v0, p0, Landroid/media/AudioService$2;->this$0:Landroid/media/AudioService;

    #getter for: Landroid/media/AudioService;->mScoClients:Ljava/util/ArrayList;
    invoke-static {v0}, Landroid/media/AudioService;->access$2200(Landroid/media/AudioService;)Ljava/util/ArrayList;

    move-result-object v12

    monitor-enter v12

    :try_start_0
    iget-object v0, p0, Landroid/media/AudioService$2;->this$0:Landroid/media/AudioService;

    #getter for: Landroid/media/AudioService;->mAudioHandler:Landroid/media/AudioService$AudioHandler;
    invoke-static {v0}, Landroid/media/AudioService;->access$100(Landroid/media/AudioService;)Landroid/media/AudioService$AudioHandler;

    move-result-object v0

    const/16 v1, 0xc

    invoke-virtual {v0, v1}, Landroid/media/AudioService$AudioHandler;->removeMessages(I)V

    iget-object v0, p0, Landroid/media/AudioService$2;->this$0:Landroid/media/AudioService;

    check-cast p2, Landroid/bluetooth/BluetoothHeadset;

    #setter for: Landroid/media/AudioService;->mBluetoothHeadset:Landroid/bluetooth/BluetoothHeadset;
    invoke-static {v0, p2}, Landroid/media/AudioService;->access$2602(Landroid/media/AudioService;Landroid/bluetooth/BluetoothHeadset;)Landroid/bluetooth/BluetoothHeadset;

    iget-object v0, p0, Landroid/media/AudioService$2;->this$0:Landroid/media/AudioService;

    #getter for: Landroid/media/AudioService;->mBluetoothHeadset:Landroid/bluetooth/BluetoothHeadset;
    invoke-static {v0}, Landroid/media/AudioService;->access$2600(Landroid/media/AudioService;)Landroid/bluetooth/BluetoothHeadset;

    move-result-object v0

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothHeadset;->getConnectedDevices()Ljava/util/List;

    move-result-object v10

    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_4

    iget-object v1, p0, Landroid/media/AudioService$2;->this$0:Landroid/media/AudioService;

    const/4 v0, 0x0

    invoke-interface {v10, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/bluetooth/BluetoothDevice;

    #setter for: Landroid/media/AudioService;->mBluetoothHeadsetDevice:Landroid/bluetooth/BluetoothDevice;
    invoke-static {v1, v0}, Landroid/media/AudioService;->access$2702(Landroid/media/AudioService;Landroid/bluetooth/BluetoothDevice;)Landroid/bluetooth/BluetoothDevice;

    :goto_1
    iget-object v0, p0, Landroid/media/AudioService$2;->this$0:Landroid/media/AudioService;

    #calls: Landroid/media/AudioService;->checkScoAudioState()V
    invoke-static {v0}, Landroid/media/AudioService;->access$2300(Landroid/media/AudioService;)V

    iget-object v0, p0, Landroid/media/AudioService$2;->this$0:Landroid/media/AudioService;

    #getter for: Landroid/media/AudioService;->mScoAudioState:I
    invoke-static {v0}, Landroid/media/AudioService;->access$2500(Landroid/media/AudioService;)I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    iget-object v0, p0, Landroid/media/AudioService$2;->this$0:Landroid/media/AudioService;

    #getter for: Landroid/media/AudioService;->mScoAudioState:I
    invoke-static {v0}, Landroid/media/AudioService;->access$2500(Landroid/media/AudioService;)I

    move-result v0

    const/4 v1, 0x5

    if-eq v0, v1, :cond_1

    iget-object v0, p0, Landroid/media/AudioService$2;->this$0:Landroid/media/AudioService;

    #getter for: Landroid/media/AudioService;->mScoAudioState:I
    invoke-static {v0}, Landroid/media/AudioService;->access$2500(Landroid/media/AudioService;)I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_3

    :cond_1
    const/4 v11, 0x0

    iget-object v0, p0, Landroid/media/AudioService$2;->this$0:Landroid/media/AudioService;

    #getter for: Landroid/media/AudioService;->mBluetoothHeadsetDevice:Landroid/bluetooth/BluetoothDevice;
    invoke-static {v0}, Landroid/media/AudioService;->access$2700(Landroid/media/AudioService;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Landroid/media/AudioService$2;->this$0:Landroid/media/AudioService;

    #getter for: Landroid/media/AudioService;->mScoAudioState:I
    invoke-static {v0}, Landroid/media/AudioService;->access$2500(Landroid/media/AudioService;)I

    move-result v0

    packed-switch v0, :pswitch_data_1

    :cond_2
    :goto_2
    :pswitch_2
    if-nez v11, :cond_3

    iget-object v0, p0, Landroid/media/AudioService$2;->this$0:Landroid/media/AudioService;

    #getter for: Landroid/media/AudioService;->mAudioHandler:Landroid/media/AudioService$AudioHandler;
    invoke-static {v0}, Landroid/media/AudioService;->access$100(Landroid/media/AudioService;)Landroid/media/AudioService$AudioHandler;

    move-result-object v0

    const/16 v1, 0xc

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    #calls: Landroid/media/AudioService;->sendMsg(Landroid/os/Handler;IIIIILjava/lang/Object;I)V
    invoke-static/range {v0 .. v7}, Landroid/media/AudioService;->access$200(Landroid/os/Handler;IIIIILjava/lang/Object;I)V

    :cond_3
    monitor-exit v12

    goto/16 :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v12
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_4
    :try_start_1
    iget-object v0, p0, Landroid/media/AudioService$2;->this$0:Landroid/media/AudioService;

    const/4 v1, 0x0

    #setter for: Landroid/media/AudioService;->mBluetoothHeadsetDevice:Landroid/bluetooth/BluetoothDevice;
    invoke-static {v0, v1}, Landroid/media/AudioService;->access$2702(Landroid/media/AudioService;Landroid/bluetooth/BluetoothDevice;)Landroid/bluetooth/BluetoothDevice;

    goto :goto_1

    :pswitch_3
    iget-object v0, p0, Landroid/media/AudioService$2;->this$0:Landroid/media/AudioService;

    const/4 v1, 0x3

    #setter for: Landroid/media/AudioService;->mScoAudioState:I
    invoke-static {v0, v1}, Landroid/media/AudioService;->access$2502(Landroid/media/AudioService;I)I

    iget-object v0, p0, Landroid/media/AudioService$2;->this$0:Landroid/media/AudioService;

    #getter for: Landroid/media/AudioService;->mBluetoothHeadset:Landroid/bluetooth/BluetoothHeadset;
    invoke-static {v0}, Landroid/media/AudioService;->access$2600(Landroid/media/AudioService;)Landroid/bluetooth/BluetoothHeadset;

    move-result-object v0

    iget-object v1, p0, Landroid/media/AudioService$2;->this$0:Landroid/media/AudioService;

    #getter for: Landroid/media/AudioService;->mBluetoothHeadsetDevice:Landroid/bluetooth/BluetoothDevice;
    invoke-static {v1}, Landroid/media/AudioService;->access$2700(Landroid/media/AudioService;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/bluetooth/BluetoothHeadset;->startScoUsingVirtualVoiceCall(Landroid/bluetooth/BluetoothDevice;)Z

    move-result v11

    goto :goto_2

    :pswitch_4
    iget-object v0, p0, Landroid/media/AudioService$2;->this$0:Landroid/media/AudioService;

    #getter for: Landroid/media/AudioService;->mBluetoothHeadset:Landroid/bluetooth/BluetoothHeadset;
    invoke-static {v0}, Landroid/media/AudioService;->access$2600(Landroid/media/AudioService;)Landroid/bluetooth/BluetoothHeadset;

    move-result-object v0

    iget-object v1, p0, Landroid/media/AudioService$2;->this$0:Landroid/media/AudioService;

    #getter for: Landroid/media/AudioService;->mBluetoothHeadsetDevice:Landroid/bluetooth/BluetoothDevice;
    invoke-static {v1}, Landroid/media/AudioService;->access$2700(Landroid/media/AudioService;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/bluetooth/BluetoothHeadset;->stopScoUsingVirtualVoiceCall(Landroid/bluetooth/BluetoothDevice;)Z

    move-result v11

    goto :goto_2

    :pswitch_5
    iget-object v0, p0, Landroid/media/AudioService$2;->this$0:Landroid/media/AudioService;

    #getter for: Landroid/media/AudioService;->mBluetoothHeadset:Landroid/bluetooth/BluetoothHeadset;
    invoke-static {v0}, Landroid/media/AudioService;->access$2600(Landroid/media/AudioService;)Landroid/bluetooth/BluetoothHeadset;

    move-result-object v0

    iget-object v1, p0, Landroid/media/AudioService$2;->this$0:Landroid/media/AudioService;

    #getter for: Landroid/media/AudioService;->mBluetoothHeadsetDevice:Landroid/bluetooth/BluetoothDevice;
    invoke-static {v1}, Landroid/media/AudioService;->access$2700(Landroid/media/AudioService;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/bluetooth/BluetoothHeadset;->stopVoiceRecognition(Landroid/bluetooth/BluetoothDevice;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v11

    goto :goto_2

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_3
        :pswitch_2
        :pswitch_2
        :pswitch_5
        :pswitch_4
    .end packed-switch
.end method

.method public onServiceDisconnected(I)V
    .locals 4

    packed-switch p1, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    iget-object v0, p0, Landroid/media/AudioService$2;->this$0:Landroid/media/AudioService;

    #getter for: Landroid/media/AudioService;->mConnectedDevices:Ljava/util/HashMap;
    invoke-static {v0}, Landroid/media/AudioService;->access$3000(Landroid/media/AudioService;)Ljava/util/HashMap;

    move-result-object v1

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Landroid/media/AudioService$2;->this$0:Landroid/media/AudioService;

    #getter for: Landroid/media/AudioService;->mConnectedDevices:Ljava/util/HashMap;
    invoke-static {v0}, Landroid/media/AudioService;->access$3000(Landroid/media/AudioService;)Ljava/util/HashMap;

    move-result-object v0

    const/16 v2, 0x80

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v2, p0, Landroid/media/AudioService$2;->this$0:Landroid/media/AudioService;

    iget-object v0, p0, Landroid/media/AudioService$2;->this$0:Landroid/media/AudioService;

    #getter for: Landroid/media/AudioService;->mConnectedDevices:Ljava/util/HashMap;
    invoke-static {v0}, Landroid/media/AudioService;->access$3000(Landroid/media/AudioService;)Ljava/util/HashMap;

    move-result-object v0

    const/16 v3, 0x80

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    #calls: Landroid/media/AudioService;->makeA2dpDeviceUnavailableNow(Ljava/lang/String;)V
    invoke-static {v2, v0}, Landroid/media/AudioService;->access$3100(Landroid/media/AudioService;Ljava/lang/String;)V

    :cond_0
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :pswitch_1
    iget-object v0, p0, Landroid/media/AudioService$2;->this$0:Landroid/media/AudioService;

    #getter for: Landroid/media/AudioService;->mScoClients:Ljava/util/ArrayList;
    invoke-static {v0}, Landroid/media/AudioService;->access$2200(Landroid/media/AudioService;)Ljava/util/ArrayList;

    move-result-object v1

    monitor-enter v1

    :try_start_1
    iget-object v0, p0, Landroid/media/AudioService$2;->this$0:Landroid/media/AudioService;

    const/4 v2, 0x0

    #setter for: Landroid/media/AudioService;->mBluetoothHeadset:Landroid/bluetooth/BluetoothHeadset;
    invoke-static {v0, v2}, Landroid/media/AudioService;->access$2602(Landroid/media/AudioService;Landroid/bluetooth/BluetoothHeadset;)Landroid/bluetooth/BluetoothHeadset;

    monitor-exit v1

    goto :goto_0

    :catchall_1
    move-exception v0

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    throw v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
