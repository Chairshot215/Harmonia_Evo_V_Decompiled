.class Lcom/android/phone/BluetoothHeadsetService$2;
.super Landroid/content/BroadcastReceiver;
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
    .line 269
    iput-object p1, p0, Lcom/android/phone/BluetoothHeadsetService$2;->this$0:Lcom/android/phone/BluetoothHeadsetService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 13
    .parameter "context"
    .parameter "intent"

    .prologue
    const/4 v12, 0x0

    const/high16 v11, -0x8000

    .line 273
    const-string v8, "Bluetooth HSHFP"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "[U53_BT]mBluetoothReceiver(), Intent = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 274
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 275
    .local v0, action:Ljava/lang/String;
    const-string v8, "android.bluetooth.device.extra.DEVICE"

    invoke-virtual {p2, v8}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v4

    check-cast v4, Landroid/bluetooth/BluetoothDevice;

    .line 278
    .local v4, device:Landroid/bluetooth/BluetoothDevice;
    iget-object v8, p0, Lcom/android/phone/BluetoothHeadsetService$2;->this$0:Lcom/android/phone/BluetoothHeadsetService;

    #calls: Lcom/android/phone/BluetoothHeadsetService;->getCurrentDevice()Landroid/bluetooth/BluetoothDevice;
    invoke-static {v8}, Lcom/android/phone/BluetoothHeadsetService;->access$500(Lcom/android/phone/BluetoothHeadsetService;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v3

    .line 279
    .local v3, currDevice:Landroid/bluetooth/BluetoothDevice;
    const/4 v6, 0x0

    .line 280
    .local v6, state:I
    if-eqz v3, :cond_0

    .line 281
    iget-object v8, p0, Lcom/android/phone/BluetoothHeadsetService$2;->this$0:Lcom/android/phone/BluetoothHeadsetService;

    #getter for: Lcom/android/phone/BluetoothHeadsetService;->mRemoteHeadsets:Ljava/util/concurrent/ConcurrentHashMap;
    invoke-static {v8}, Lcom/android/phone/BluetoothHeadsetService;->access$600(Lcom/android/phone/BluetoothHeadsetService;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/phone/BluetoothHeadsetService$BluetoothRemoteHeadset;

    #getter for: Lcom/android/phone/BluetoothHeadsetService$BluetoothRemoteHeadset;->mState:I
    invoke-static {v8}, Lcom/android/phone/BluetoothHeadsetService$BluetoothRemoteHeadset;->access$000(Lcom/android/phone/BluetoothHeadsetService$BluetoothRemoteHeadset;)I

    move-result v6

    .line 284
    :cond_0
    const/4 v8, 0x2

    if-eq v6, v8, :cond_1

    const/4 v8, 0x1

    if-ne v6, v8, :cond_3

    :cond_1
    const-string v8, "android.bluetooth.device.action.ACL_DISCONNECT_REQUESTED"

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_3

    invoke-virtual {v4, v3}, Landroid/bluetooth/BluetoothDevice;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_3

    .line 289
    :try_start_0
    iget-object v8, p0, Lcom/android/phone/BluetoothHeadsetService$2;->this$0:Lcom/android/phone/BluetoothHeadsetService;

    #getter for: Lcom/android/phone/BluetoothHeadsetService;->mBinder:Landroid/bluetooth/IBluetoothHeadset$Stub;
    invoke-static {v8}, Lcom/android/phone/BluetoothHeadsetService;->access$1000(Lcom/android/phone/BluetoothHeadsetService;)Landroid/bluetooth/IBluetoothHeadset$Stub;

    move-result-object v8

    invoke-virtual {v8, v3}, Landroid/bluetooth/IBluetoothHeadset$Stub;->disconnect(Landroid/bluetooth/BluetoothDevice;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1

    .line 340
    :cond_2
    :goto_0
    return-void

    .line 291
    :cond_3
    const-string v8, "android.bluetooth.adapter.action.STATE_CHANGED"

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_4

    .line 292
    const-string v8, "android.bluetooth.adapter.extra.STATE"

    invoke-virtual {p2, v8, v11}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v8

    packed-switch v8, :pswitch_data_0

    goto :goto_0

    .line 295
    :pswitch_0
    iget-object v8, p0, Lcom/android/phone/BluetoothHeadsetService$2;->this$0:Lcom/android/phone/BluetoothHeadsetService;

    #getter for: Lcom/android/phone/BluetoothHeadsetService;->mAg:Landroid/bluetooth/BluetoothAudioGateway;
    invoke-static {v8}, Lcom/android/phone/BluetoothHeadsetService;->access$1200(Lcom/android/phone/BluetoothHeadsetService;)Landroid/bluetooth/BluetoothAudioGateway;

    move-result-object v8

    iget-object v9, p0, Lcom/android/phone/BluetoothHeadsetService$2;->this$0:Lcom/android/phone/BluetoothHeadsetService;

    #getter for: Lcom/android/phone/BluetoothHeadsetService;->mIncomingConnectionHandler:Landroid/os/Handler;
    invoke-static {v9}, Lcom/android/phone/BluetoothHeadsetService;->access$1100(Lcom/android/phone/BluetoothHeadsetService;)Landroid/os/Handler;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/bluetooth/BluetoothAudioGateway;->start(Landroid/os/Handler;)Z

    .line 296
    iget-object v8, p0, Lcom/android/phone/BluetoothHeadsetService$2;->this$0:Lcom/android/phone/BluetoothHeadsetService;

    #getter for: Lcom/android/phone/BluetoothHeadsetService;->mBtHandsfree:Lcom/android/phone/BluetoothHandsfree;
    invoke-static {v8}, Lcom/android/phone/BluetoothHeadsetService;->access$1300(Lcom/android/phone/BluetoothHeadsetService;)Lcom/android/phone/BluetoothHandsfree;

    move-result-object v8

    invoke-virtual {v8}, Lcom/android/phone/BluetoothHandsfree;->onBluetoothEnabled()V

    goto :goto_0

    .line 299
    :pswitch_1
    iget-object v8, p0, Lcom/android/phone/BluetoothHeadsetService$2;->this$0:Lcom/android/phone/BluetoothHeadsetService;

    #getter for: Lcom/android/phone/BluetoothHeadsetService;->mBtHandsfree:Lcom/android/phone/BluetoothHandsfree;
    invoke-static {v8}, Lcom/android/phone/BluetoothHeadsetService;->access$1300(Lcom/android/phone/BluetoothHeadsetService;)Lcom/android/phone/BluetoothHandsfree;

    move-result-object v8

    invoke-virtual {v8}, Lcom/android/phone/BluetoothHandsfree;->onBluetoothDisabled()V

    .line 300
    iget-object v8, p0, Lcom/android/phone/BluetoothHeadsetService$2;->this$0:Lcom/android/phone/BluetoothHeadsetService;

    #getter for: Lcom/android/phone/BluetoothHeadsetService;->mAg:Landroid/bluetooth/BluetoothAudioGateway;
    invoke-static {v8}, Lcom/android/phone/BluetoothHeadsetService;->access$1200(Lcom/android/phone/BluetoothHeadsetService;)Landroid/bluetooth/BluetoothAudioGateway;

    move-result-object v8

    invoke-virtual {v8}, Landroid/bluetooth/BluetoothAudioGateway;->stop()V

    .line 301
    if-eqz v3, :cond_2

    .line 303
    :try_start_1
    iget-object v8, p0, Lcom/android/phone/BluetoothHeadsetService$2;->this$0:Lcom/android/phone/BluetoothHeadsetService;

    #getter for: Lcom/android/phone/BluetoothHeadsetService;->mBinder:Landroid/bluetooth/IBluetoothHeadset$Stub;
    invoke-static {v8}, Lcom/android/phone/BluetoothHeadsetService;->access$1000(Lcom/android/phone/BluetoothHeadsetService;)Landroid/bluetooth/IBluetoothHeadset$Stub;

    move-result-object v8

    invoke-virtual {v8, v3}, Landroid/bluetooth/IBluetoothHeadset$Stub;->disconnect(Landroid/bluetooth/BluetoothDevice;)Z
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 304
    :catch_0
    move-exception v8

    goto :goto_0

    .line 308
    :cond_4
    const-string v8, "android.bluetooth.device.action.BOND_STATE_CHANGED"

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_6

    .line 309
    const-string v8, "android.bluetooth.device.extra.BOND_STATE"

    invoke-virtual {p2, v8, v11}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 311
    .local v1, bondState:I
    packed-switch v1, :pswitch_data_1

    :pswitch_2
    goto :goto_0

    .line 324
    :pswitch_3
    iget-object v8, p0, Lcom/android/phone/BluetoothHeadsetService$2;->this$0:Lcom/android/phone/BluetoothHeadsetService;

    #calls: Lcom/android/phone/BluetoothHeadsetService;->setPriority(Landroid/bluetooth/BluetoothDevice;I)V
    invoke-static {v8, v4, v12}, Lcom/android/phone/BluetoothHeadsetService;->access$1400(Lcom/android/phone/BluetoothHeadsetService;Landroid/bluetooth/BluetoothDevice;I)V

    goto :goto_0

    .line 313
    :pswitch_4
    const/4 v5, 0x0

    .line 314
    .local v5, priority:I
    invoke-virtual {v4}, Landroid/bluetooth/BluetoothDevice;->getBluetoothClass()Landroid/bluetooth/BluetoothClass;

    move-result-object v2

    .line 315
    .local v2, btClass:Landroid/bluetooth/BluetoothClass;
    if-eqz v2, :cond_5

    .line 316
    invoke-virtual {v2}, Landroid/bluetooth/BluetoothClass;->getMajorDeviceClass()I

    move-result v8

    const/16 v9, 0x100

    if-eq v8, v9, :cond_5

    .line 317
    const-string v8, "Bluetooth HSHFP"

    const-string v9, "Remote device matched connectable priority"

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 318
    const/16 v5, 0x64

    .line 321
    :cond_5
    iget-object v8, p0, Lcom/android/phone/BluetoothHeadsetService$2;->this$0:Lcom/android/phone/BluetoothHeadsetService;

    #calls: Lcom/android/phone/BluetoothHeadsetService;->setPriority(Landroid/bluetooth/BluetoothDevice;I)V
    invoke-static {v8, v4, v5}, Lcom/android/phone/BluetoothHeadsetService;->access$1400(Lcom/android/phone/BluetoothHeadsetService;Landroid/bluetooth/BluetoothDevice;I)V

    goto/16 :goto_0

    .line 327
    .end local v1           #bondState:I
    .end local v2           #btClass:Landroid/bluetooth/BluetoothClass;
    .end local v5           #priority:I
    :cond_6
    const-string v8, "android.media.VOLUME_CHANGED_ACTION"

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_7

    .line 328
    const-string v8, "android.media.EXTRA_VOLUME_STREAM_TYPE"

    const/4 v9, -0x1

    invoke-virtual {p2, v8, v9}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v7

    .line 329
    .local v7, streamType:I
    const/4 v8, 0x6

    if-ne v7, v8, :cond_2

    .line 330
    iget-object v8, p0, Lcom/android/phone/BluetoothHeadsetService$2;->this$0:Lcom/android/phone/BluetoothHeadsetService;

    #getter for: Lcom/android/phone/BluetoothHeadsetService;->mBtHandsfree:Lcom/android/phone/BluetoothHandsfree;
    invoke-static {v8}, Lcom/android/phone/BluetoothHeadsetService;->access$1300(Lcom/android/phone/BluetoothHeadsetService;)Lcom/android/phone/BluetoothHandsfree;

    move-result-object v8

    const-string v9, "android.media.EXTRA_VOLUME_STREAM_VALUE"

    invoke-virtual {p2, v9, v12}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v9

    invoke-virtual {v8, v9}, Lcom/android/phone/BluetoothHandsfree;->sendScoGainUpdate(I)V

    goto/16 :goto_0

    .line 334
    .end local v7           #streamType:I
    :cond_7
    const-string v8, "android.bluetooth.device.action.UUID"

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_2

    .line 335
    iget-object v8, p0, Lcom/android/phone/BluetoothHeadsetService$2;->this$0:Lcom/android/phone/BluetoothHeadsetService;

    #getter for: Lcom/android/phone/BluetoothHeadsetService;->mDeviceSdpQuery:Landroid/bluetooth/BluetoothDevice;
    invoke-static {v8}, Lcom/android/phone/BluetoothHeadsetService;->access$1500(Lcom/android/phone/BluetoothHeadsetService;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v8

    invoke-virtual {v4, v8}, Landroid/bluetooth/BluetoothDevice;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_2

    invoke-virtual {v4, v3}, Landroid/bluetooth/BluetoothDevice;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_2

    .line 337
    iget-object v8, p0, Lcom/android/phone/BluetoothHeadsetService$2;->this$0:Lcom/android/phone/BluetoothHeadsetService;

    #calls: Lcom/android/phone/BluetoothHeadsetService;->getSdpRecordsAndConnect(Landroid/bluetooth/BluetoothDevice;)V
    invoke-static {v8, v4}, Lcom/android/phone/BluetoothHeadsetService;->access$1600(Lcom/android/phone/BluetoothHeadsetService;Landroid/bluetooth/BluetoothDevice;)V

    goto/16 :goto_0

    .line 290
    :catch_1
    move-exception v8

    goto/16 :goto_0

    .line 292
    nop

    :pswitch_data_0
    .packed-switch 0xc
        :pswitch_0
        :pswitch_1
    .end packed-switch

    .line 311
    :pswitch_data_1
    .packed-switch 0xa
        :pswitch_3
        :pswitch_2
        :pswitch_4
    .end packed-switch
.end method
