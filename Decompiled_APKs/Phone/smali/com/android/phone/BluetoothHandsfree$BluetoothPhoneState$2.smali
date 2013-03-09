.class Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState$2;
.super Landroid/content/BroadcastReceiver;
.source "BluetoothHandsfree.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;


# direct methods
.method constructor <init>(Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;)V
    .locals 0
    .parameter

    .prologue
    .line 1272
    iput-object p1, p0, Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState$2;->this$1:Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 7
    .parameter "context"
    .parameter "intent"

    .prologue
    const/4 v6, 0x0

    .line 1276
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v4

    const-string v5, "android.intent.action.BATTERY_CHANGED"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 1277
    iget-object v4, p0, Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState$2;->this$1:Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;

    iget-object v4, v4, Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;->this$0:Lcom/android/phone/BluetoothHandsfree;

    #getter for: Lcom/android/phone/BluetoothHandsfree;->mHandler:Lcom/android/phone/BluetoothHandsfree$HandsfreeMessageHandler;
    invoke-static {v4}, Lcom/android/phone/BluetoothHandsfree;->access$1700(Lcom/android/phone/BluetoothHandsfree;)Lcom/android/phone/BluetoothHandsfree$HandsfreeMessageHandler;

    move-result-object v4

    const/16 v5, 0xd

    invoke-virtual {v4, v5, p2}, Lcom/android/phone/BluetoothHandsfree$HandsfreeMessageHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    .line 1278
    .local v1, msg:Landroid/os/Message;
    iget-object v4, p0, Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState$2;->this$1:Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;

    iget-object v4, v4, Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;->this$0:Lcom/android/phone/BluetoothHandsfree;

    #getter for: Lcom/android/phone/BluetoothHandsfree;->mHandler:Lcom/android/phone/BluetoothHandsfree$HandsfreeMessageHandler;
    invoke-static {v4}, Lcom/android/phone/BluetoothHandsfree;->access$1700(Lcom/android/phone/BluetoothHandsfree;)Lcom/android/phone/BluetoothHandsfree$HandsfreeMessageHandler;

    move-result-object v4

    invoke-virtual {v4, v1}, Lcom/android/phone/BluetoothHandsfree$HandsfreeMessageHandler;->sendMessage(Landroid/os/Message;)Z

    .line 1328
    .end local v1           #msg:Landroid/os/Message;
    :cond_0
    :goto_0
    return-void

    .line 1279
    :cond_1
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v4

    const-string v5, "android.intent.action.SIG_STR"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 1280
    iget-object v4, p0, Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState$2;->this$1:Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;

    iget-object v4, v4, Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;->this$0:Lcom/android/phone/BluetoothHandsfree;

    #getter for: Lcom/android/phone/BluetoothHandsfree;->mHandler:Lcom/android/phone/BluetoothHandsfree$HandsfreeMessageHandler;
    invoke-static {v4}, Lcom/android/phone/BluetoothHandsfree;->access$1700(Lcom/android/phone/BluetoothHandsfree;)Lcom/android/phone/BluetoothHandsfree$HandsfreeMessageHandler;

    move-result-object v4

    const/16 v5, 0xe

    invoke-virtual {v4, v5, p2}, Lcom/android/phone/BluetoothHandsfree$HandsfreeMessageHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    .line 1282
    .restart local v1       #msg:Landroid/os/Message;
    iget-object v4, p0, Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState$2;->this$1:Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;

    iget-object v4, v4, Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;->this$0:Lcom/android/phone/BluetoothHandsfree;

    #getter for: Lcom/android/phone/BluetoothHandsfree;->mHandler:Lcom/android/phone/BluetoothHandsfree$HandsfreeMessageHandler;
    invoke-static {v4}, Lcom/android/phone/BluetoothHandsfree;->access$1700(Lcom/android/phone/BluetoothHandsfree;)Lcom/android/phone/BluetoothHandsfree$HandsfreeMessageHandler;

    move-result-object v4

    invoke-virtual {v4, v1}, Lcom/android/phone/BluetoothHandsfree$HandsfreeMessageHandler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0

    .line 1283
    .end local v1           #msg:Landroid/os/Message;
    :cond_2
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v4

    const-string v5, "android.bluetooth.a2dp.profile.action.CONNECTION_STATE_CHANGED"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_9

    .line 1285
    const-string v4, "android.bluetooth.profile.extra.STATE"

    invoke-virtual {p2, v4, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    .line 1287
    .local v3, state:I
    const-string v4, "android.bluetooth.profile.extra.PREVIOUS_STATE"

    invoke-virtual {p2, v4, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    .line 1289
    .local v2, oldState:I
    const-string v4, "android.bluetooth.device.extra.DEVICE"

    invoke-virtual {p2, v4}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/bluetooth/BluetoothDevice;

    .line 1295
    .local v0, device:Landroid/bluetooth/BluetoothDevice;
    if-eqz v0, :cond_0

    iget-object v4, p0, Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState$2;->this$1:Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;

    iget-object v4, v4, Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;->this$0:Lcom/android/phone/BluetoothHandsfree;

    #getter for: Lcom/android/phone/BluetoothHandsfree;->mA2dpDevice:Landroid/bluetooth/BluetoothDevice;
    invoke-static {v4}, Lcom/android/phone/BluetoothHandsfree;->access$3500(Lcom/android/phone/BluetoothHandsfree;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v4

    if-eqz v4, :cond_3

    iget-object v4, p0, Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState$2;->this$1:Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;

    iget-object v4, v4, Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;->this$0:Lcom/android/phone/BluetoothHandsfree;

    #getter for: Lcom/android/phone/BluetoothHandsfree;->mA2dpDevice:Landroid/bluetooth/BluetoothDevice;
    invoke-static {v4}, Lcom/android/phone/BluetoothHandsfree;->access$3500(Lcom/android/phone/BluetoothHandsfree;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/bluetooth/BluetoothDevice;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 1299
    :cond_3
    iget-object v4, p0, Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState$2;->this$1:Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;

    iget-object v5, v4, Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;->this$0:Lcom/android/phone/BluetoothHandsfree;

    monitor-enter v5

    .line 1300
    :try_start_0
    iget-object v4, p0, Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState$2;->this$1:Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;

    iget-object v4, v4, Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;->this$0:Lcom/android/phone/BluetoothHandsfree;

    #setter for: Lcom/android/phone/BluetoothHandsfree;->mA2dpState:I
    invoke-static {v4, v3}, Lcom/android/phone/BluetoothHandsfree;->access$3602(Lcom/android/phone/BluetoothHandsfree;I)I

    .line 1301
    if-nez v3, :cond_8

    .line 1302
    iget-object v4, p0, Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState$2;->this$1:Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;

    iget-object v4, v4, Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;->this$0:Lcom/android/phone/BluetoothHandsfree;

    const/4 v6, 0x0

    #setter for: Lcom/android/phone/BluetoothHandsfree;->mA2dpDevice:Landroid/bluetooth/BluetoothDevice;
    invoke-static {v4, v6}, Lcom/android/phone/BluetoothHandsfree;->access$3502(Lcom/android/phone/BluetoothHandsfree;Landroid/bluetooth/BluetoothDevice;)Landroid/bluetooth/BluetoothDevice;

    .line 1306
    :goto_1
    const/16 v4, 0xa

    if-ne v2, v4, :cond_7

    iget-object v4, p0, Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState$2;->this$1:Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;

    iget-object v4, v4, Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;->this$0:Lcom/android/phone/BluetoothHandsfree;

    #getter for: Lcom/android/phone/BluetoothHandsfree;->mA2dpState:I
    invoke-static {v4}, Lcom/android/phone/BluetoothHandsfree;->access$3600(Lcom/android/phone/BluetoothHandsfree;)I

    move-result v4

    const/4 v6, 0x2

    if-ne v4, v6, :cond_7

    .line 1309
    iget-object v4, p0, Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState$2;->this$1:Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;

    iget-object v4, v4, Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;->this$0:Lcom/android/phone/BluetoothHandsfree;

    #getter for: Lcom/android/phone/BluetoothHandsfree;->mPendingCIEV:Z
    invoke-static {v4}, Lcom/android/phone/BluetoothHandsfree;->access$3700(Lcom/android/phone/BluetoothHandsfree;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 1310
    iget-object v4, p0, Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState$2;->this$1:Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;

    iget-object v4, v4, Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;->this$0:Lcom/android/phone/BluetoothHandsfree;

    #getter for: Lcom/android/phone/BluetoothHandsfree;->mHandler:Lcom/android/phone/BluetoothHandsfree$HandsfreeMessageHandler;
    invoke-static {v4}, Lcom/android/phone/BluetoothHandsfree;->access$1700(Lcom/android/phone/BluetoothHandsfree;)Lcom/android/phone/BluetoothHandsfree$HandsfreeMessageHandler;

    move-result-object v4

    const/4 v6, 0x7

    invoke-virtual {v4, v6}, Lcom/android/phone/BluetoothHandsfree$HandsfreeMessageHandler;->removeMessages(I)V

    .line 1311
    invoke-static {}, Lcom/android/phone/BluetoothHandsfree;->access$2100()Z

    move-result v4

    if-eqz v4, :cond_4

    const-string v4, "A2DP suspended, sending CIEV: 3,1"

    #calls: Lcom/android/phone/BluetoothHandsfree;->log(Ljava/lang/String;)V
    invoke-static {v4}, Lcom/android/phone/BluetoothHandsfree;->access$3800(Ljava/lang/String;)V

    .line 1312
    :cond_4
    iget-object v4, p0, Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState$2;->this$1:Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;

    iget-object v4, v4, Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;->this$0:Lcom/android/phone/BluetoothHandsfree;

    const-string v6, "CIEV: 3,1"

    #calls: Lcom/android/phone/BluetoothHandsfree;->sendURC(Ljava/lang/String;)V
    invoke-static {v4, v6}, Lcom/android/phone/BluetoothHandsfree;->access$1200(Lcom/android/phone/BluetoothHandsfree;Ljava/lang/String;)V

    .line 1313
    iget-object v4, p0, Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState$2;->this$1:Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;

    iget-object v4, v4, Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;->this$0:Lcom/android/phone/BluetoothHandsfree;

    const/4 v6, 0x0

    #setter for: Lcom/android/phone/BluetoothHandsfree;->mPendingCIEV:Z
    invoke-static {v4, v6}, Lcom/android/phone/BluetoothHandsfree;->access$3702(Lcom/android/phone/BluetoothHandsfree;Z)Z

    .line 1315
    :cond_5
    iget-object v4, p0, Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState$2;->this$1:Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;

    iget-object v4, v4, Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;->this$0:Lcom/android/phone/BluetoothHandsfree;

    #getter for: Lcom/android/phone/BluetoothHandsfree;->mPendingSco:Z
    invoke-static {v4}, Lcom/android/phone/BluetoothHandsfree;->access$3900(Lcom/android/phone/BluetoothHandsfree;)Z

    move-result v4

    if-eqz v4, :cond_7

    .line 1316
    iget-object v4, p0, Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState$2;->this$1:Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;

    iget-object v4, v4, Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;->this$0:Lcom/android/phone/BluetoothHandsfree;

    #getter for: Lcom/android/phone/BluetoothHandsfree;->mHandler:Lcom/android/phone/BluetoothHandsfree$HandsfreeMessageHandler;
    invoke-static {v4}, Lcom/android/phone/BluetoothHandsfree;->access$1700(Lcom/android/phone/BluetoothHandsfree;)Lcom/android/phone/BluetoothHandsfree$HandsfreeMessageHandler;

    move-result-object v4

    const/4 v6, 0x6

    invoke-virtual {v4, v6}, Lcom/android/phone/BluetoothHandsfree$HandsfreeMessageHandler;->removeMessages(I)V

    .line 1317
    invoke-static {}, Lcom/android/phone/BluetoothHandsfree;->access$2100()Z

    move-result v4

    if-eqz v4, :cond_6

    const-string v4, "A2DP suspended, completing SCO"

    #calls: Lcom/android/phone/BluetoothHandsfree;->log(Ljava/lang/String;)V
    invoke-static {v4}, Lcom/android/phone/BluetoothHandsfree;->access$3800(Ljava/lang/String;)V

    .line 1318
    :cond_6
    iget-object v4, p0, Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState$2;->this$1:Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;

    iget-object v4, v4, Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;->this$0:Lcom/android/phone/BluetoothHandsfree;

    #calls: Lcom/android/phone/BluetoothHandsfree;->connectScoThread()V
    invoke-static {v4}, Lcom/android/phone/BluetoothHandsfree;->access$4000(Lcom/android/phone/BluetoothHandsfree;)V

    .line 1319
    iget-object v4, p0, Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState$2;->this$1:Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;

    iget-object v4, v4, Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;->this$0:Lcom/android/phone/BluetoothHandsfree;

    const/4 v6, 0x0

    #setter for: Lcom/android/phone/BluetoothHandsfree;->mPendingSco:Z
    invoke-static {v4, v6}, Lcom/android/phone/BluetoothHandsfree;->access$3902(Lcom/android/phone/BluetoothHandsfree;Z)Z

    .line 1323
    :cond_7
    monitor-exit v5

    goto/16 :goto_0

    :catchall_0
    move-exception v4

    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v4

    .line 1304
    :cond_8
    :try_start_1
    iget-object v4, p0, Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState$2;->this$1:Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;

    iget-object v4, v4, Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;->this$0:Lcom/android/phone/BluetoothHandsfree;

    #setter for: Lcom/android/phone/BluetoothHandsfree;->mA2dpDevice:Landroid/bluetooth/BluetoothDevice;
    invoke-static {v4, v0}, Lcom/android/phone/BluetoothHandsfree;->access$3502(Lcom/android/phone/BluetoothHandsfree;Landroid/bluetooth/BluetoothDevice;)Landroid/bluetooth/BluetoothDevice;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 1324
    .end local v0           #device:Landroid/bluetooth/BluetoothDevice;
    .end local v2           #oldState:I
    .end local v3           #state:I
    :cond_9
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v4

    const-string v5, "android.bluetooth.device.action.CONNECTION_ACCESS_REPLY"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 1326
    iget-object v4, p0, Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState$2;->this$1:Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;

    iget-object v4, v4, Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;->this$0:Lcom/android/phone/BluetoothHandsfree;

    #getter for: Lcom/android/phone/BluetoothHandsfree;->mPhonebook:Lcom/android/phone/BluetoothAtPhonebook;
    invoke-static {v4}, Lcom/android/phone/BluetoothHandsfree;->access$000(Lcom/android/phone/BluetoothHandsfree;)Lcom/android/phone/BluetoothAtPhonebook;

    move-result-object v4

    invoke-virtual {v4, p2}, Lcom/android/phone/BluetoothAtPhonebook;->handleAccessPermissionResult(Landroid/content/Intent;)V

    goto/16 :goto_0
.end method
