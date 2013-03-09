.class Lcom/htc/dmc/DmrListActivity$13;
.super Landroid/content/BroadcastReceiver;
.source "DmrListActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/dmc/DmrListActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/dmc/DmrListActivity;


# direct methods
.method constructor <init>(Lcom/htc/dmc/DmrListActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 1569
    iput-object p1, p0, Lcom/htc/dmc/DmrListActivity$13;->this$0:Lcom/htc/dmc/DmrListActivity;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 15
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 1572
    const-string v12, "[DmrListActivity]"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Received "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Lcom/htc/dmc/utils/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 1574
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    .line 1575
    .local v1, action:Ljava/lang/String;
    const/4 v4, 0x0

    .line 1578
    .local v4, device:Landroid/bluetooth/BluetoothDevice;
    const-string v12, "android.bluetooth.adapter.action.STATE_CHANGED"

    invoke-virtual {v1, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_2

    .line 1579
    const-string v12, "android.bluetooth.adapter.extra.STATE"

    const/high16 v13, -0x8000

    move-object/from16 v0, p2

    invoke-virtual {v0, v12, v13}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v9

    .line 1580
    .local v9, state:I
    const-string v12, "[DmrListActivity]"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "EXTRA_STATE = "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Lcom/htc/dmc/utils/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1583
    const/16 v12, 0xc

    if-eq v9, v12, :cond_0

    const/16 v12, 0xa

    if-eq v9, v12, :cond_0

    const/16 v12, 0xb

    if-eq v9, v12, :cond_0

    const/16 v12, 0xd

    if-ne v9, v12, :cond_1

    .line 1587
    :cond_0
    iget-object v12, p0, Lcom/htc/dmc/DmrListActivity$13;->this$0:Lcom/htc/dmc/DmrListActivity;

    const/4 v13, 0x1

    #calls: Lcom/htc/dmc/DmrListActivity;->refreshUIBT(Z)V
    invoke-static {v12, v13}, Lcom/htc/dmc/DmrListActivity;->access$200(Lcom/htc/dmc/DmrListActivity;Z)V

    .line 1741
    .end local v9           #state:I
    :cond_1
    :goto_0
    return-void

    .line 1589
    :cond_2
    const-string v12, "android.bluetooth.adapter.action.DISCOVERY_STARTED"

    invoke-virtual {v1, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_3

    .line 1590
    const-string v12, "[DmrListActivity]"

    const-string v13, "BT Disccovery started ..."

    invoke-static {v12, v13}, Lcom/htc/dmc/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1591
    iget-object v12, p0, Lcom/htc/dmc/DmrListActivity$13;->this$0:Lcom/htc/dmc/DmrListActivity;

    const/4 v13, 0x0

    #calls: Lcom/htc/dmc/DmrListActivity;->refreshUIBT(Z)V
    invoke-static {v12, v13}, Lcom/htc/dmc/DmrListActivity;->access$200(Lcom/htc/dmc/DmrListActivity;Z)V

    goto :goto_0

    .line 1592
    :cond_3
    const-string v12, "android.bluetooth.adapter.action.DISCOVERY_FINISHED"

    invoke-virtual {v1, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_4

    .line 1593
    const-string v12, "[DmrListActivity]"

    const-string v13, "BT Disccovery finished..."

    invoke-static {v12, v13}, Lcom/htc/dmc/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1594
    iget-object v12, p0, Lcom/htc/dmc/DmrListActivity$13;->this$0:Lcom/htc/dmc/DmrListActivity;

    const/4 v13, 0x0

    #calls: Lcom/htc/dmc/DmrListActivity;->refreshUIBT(Z)V
    invoke-static {v12, v13}, Lcom/htc/dmc/DmrListActivity;->access$200(Lcom/htc/dmc/DmrListActivity;Z)V

    goto :goto_0

    .line 1595
    :cond_4
    const-string v12, "android.bluetooth.device.action.FOUND"

    invoke-virtual {v1, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_9

    .line 1596
    iget-object v12, p0, Lcom/htc/dmc/DmrListActivity$13;->this$0:Lcom/htc/dmc/DmrListActivity;

    #getter for: Lcom/htc/dmc/DmrListActivity;->mCookie:I
    invoke-static {v12}, Lcom/htc/dmc/DmrListActivity;->access$1800(Lcom/htc/dmc/DmrListActivity;)I

    move-result v12

    const/4 v13, 0x1

    if-ne v12, v13, :cond_1

    .line 1597
    const-string v12, "[DmrListActivity]"

    const-string v13, "BT Device Found ..."

    invoke-static {v12, v13}, Lcom/htc/dmc/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1598
    const-string v12, "android.bluetooth.device.extra.DEVICE"

    move-object/from16 v0, p2

    invoke-virtual {v0, v12}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v4

    .end local v4           #device:Landroid/bluetooth/BluetoothDevice;
    check-cast v4, Landroid/bluetooth/BluetoothDevice;

    .line 1600
    .restart local v4       #device:Landroid/bluetooth/BluetoothDevice;
    if-eqz v4, :cond_1

    iget-object v12, p0, Lcom/htc/dmc/DmrListActivity$13;->this$0:Lcom/htc/dmc/DmrListActivity;

    #calls: Lcom/htc/dmc/DmrListActivity;->isBTMusicSupported(Landroid/bluetooth/BluetoothDevice;)Z
    invoke-static {v12, v4}, Lcom/htc/dmc/DmrListActivity;->access$2400(Lcom/htc/dmc/DmrListActivity;Landroid/bluetooth/BluetoothDevice;)Z

    move-result v12

    if-eqz v12, :cond_1

    iget-object v12, p0, Lcom/htc/dmc/DmrListActivity$13;->this$0:Lcom/htc/dmc/DmrListActivity;

    #calls: Lcom/htc/dmc/DmrListActivity;->isBTInPairedList(Landroid/bluetooth/BluetoothDevice;)Z
    invoke-static {v12, v4}, Lcom/htc/dmc/DmrListActivity;->access$2500(Lcom/htc/dmc/DmrListActivity;Landroid/bluetooth/BluetoothDevice;)Z

    move-result v12

    if-nez v12, :cond_1

    .line 1602
    invoke-virtual {v4}, Landroid/bluetooth/BluetoothDevice;->getName()Ljava/lang/String;

    move-result-object v3

    .line 1603
    .local v3, btName:Ljava/lang/String;
    invoke-virtual {v4}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v2

    .line 1604
    .local v2, btAddr:Ljava/lang/String;
    if-eqz v3, :cond_5

    if-nez v2, :cond_7

    .line 1606
    :cond_5
    const-string v12, "[DmrListActivity]"

    const-string v13, "BT dev name/addr null, try to get from extra"

    invoke-static {v12, v13}, Lcom/htc/dmc/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1607
    const-string v12, "android.bluetooth.device.extra.NAME"

    move-object/from16 v0, p2

    invoke-virtual {v0, v12}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 1608
    if-eqz v3, :cond_6

    if-nez v2, :cond_7

    .line 1609
    :cond_6
    const-string v12, "[DmrListActivity]"

    const-string v13, "BT dev name/addr null again from extra. bypass..."

    invoke-static {v12, v13}, Lcom/htc/dmc/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1614
    :cond_7
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "BT.Adr."

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    .line 1615
    .local v11, uniqueID:Ljava/lang/String;
    move-object v8, v3

    .line 1616
    .local v8, rendererName:Ljava/lang/String;
    const/4 v10, 0x5

    .line 1619
    .local v10, thumbIconType:I
    iget-object v12, p0, Lcom/htc/dmc/DmrListActivity$13;->this$0:Lcom/htc/dmc/DmrListActivity;

    #getter for: Lcom/htc/dmc/DmrListActivity;->mA2dpPMan:Lcom/htc/dmc/DmrListActivity$A2dpProfileManager;
    invoke-static {v12}, Lcom/htc/dmc/DmrListActivity;->access$2600(Lcom/htc/dmc/DmrListActivity;)Lcom/htc/dmc/DmrListActivity$A2dpProfileManager;

    move-result-object v12

    invoke-virtual {v12, v4}, Lcom/htc/dmc/DmrListActivity$A2dpProfileManager;->isBoseDevice(Landroid/bluetooth/BluetoothDevice;)Z

    move-result v12

    if-eqz v12, :cond_8

    .line 1620
    const/16 v10, 0x3e9

    .line 1625
    :cond_8
    const-string v12, "[DmrListActivity]"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "supported BT found: ADDR = "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Lcom/htc/dmc/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1626
    const-string v12, "[DmrListActivity]"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "supported BT found: NAME = "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Lcom/htc/dmc/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1627
    const-string v12, "[DmrListActivity]"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "supported BT found: ICONTYPE = "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Lcom/htc/dmc/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1629
    iget-object v12, p0, Lcom/htc/dmc/DmrListActivity$13;->this$0:Lcom/htc/dmc/DmrListActivity;

    #getter for: Lcom/htc/dmc/DmrListActivity;->mHandler:Landroid/os/Handler;
    invoke-static {v12}, Lcom/htc/dmc/DmrListActivity;->access$1400(Lcom/htc/dmc/DmrListActivity;)Landroid/os/Handler;

    move-result-object v12

    const/4 v13, 0x7

    invoke-virtual {v12, v13}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v5

    .line 1631
    .local v5, msg:Landroid/os/Message;
    invoke-virtual {v5}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v12

    const-string v13, "uniqueID"

    invoke-virtual {v12, v13, v11}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1632
    invoke-virtual {v5}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v12

    const-string v13, "rendererName"

    invoke-virtual {v12, v13, v8}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1633
    invoke-virtual {v5}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v12

    const-string v13, "thumbIconType"

    invoke-virtual {v12, v13, v10}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1635
    invoke-virtual {v5}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v12

    const-string v13, "btDevice"

    invoke-virtual {v12, v13, v4}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 1639
    iget-object v12, p0, Lcom/htc/dmc/DmrListActivity$13;->this$0:Lcom/htc/dmc/DmrListActivity;

    #getter for: Lcom/htc/dmc/DmrListActivity;->mHandler:Landroid/os/Handler;
    invoke-static {v12}, Lcom/htc/dmc/DmrListActivity;->access$1400(Lcom/htc/dmc/DmrListActivity;)Landroid/os/Handler;

    move-result-object v12

    invoke-virtual {v12, v5}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 1640
    iget-object v12, p0, Lcom/htc/dmc/DmrListActivity$13;->this$0:Lcom/htc/dmc/DmrListActivity;

    #getter for: Lcom/htc/dmc/DmrListActivity;->mHandler:Landroid/os/Handler;
    invoke-static {v12}, Lcom/htc/dmc/DmrListActivity;->access$1400(Lcom/htc/dmc/DmrListActivity;)Landroid/os/Handler;

    move-result-object v12

    iget-object v13, p0, Lcom/htc/dmc/DmrListActivity$13;->this$0:Lcom/htc/dmc/DmrListActivity;

    #getter for: Lcom/htc/dmc/DmrListActivity;->mHandler:Landroid/os/Handler;
    invoke-static {v13}, Lcom/htc/dmc/DmrListActivity;->access$1400(Lcom/htc/dmc/DmrListActivity;)Landroid/os/Handler;

    move-result-object v13

    const/4 v14, 0x0

    invoke-virtual {v13, v14}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v13

    invoke-virtual {v12, v13}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto/16 :goto_0

    .line 1650
    .end local v2           #btAddr:Ljava/lang/String;
    .end local v3           #btName:Ljava/lang/String;
    .end local v5           #msg:Landroid/os/Message;
    .end local v8           #rendererName:Ljava/lang/String;
    .end local v10           #thumbIconType:I
    .end local v11           #uniqueID:Ljava/lang/String;
    :cond_9
    const-string v12, "android.bluetooth.device.action.DISAPPEARED"

    invoke-virtual {v1, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_1

    .line 1652
    const-string v12, "android.bluetooth.device.action.NAME_CHANGED"

    invoke-virtual {v1, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_1

    .line 1676
    const-string v12, "android.bluetooth.a2dp.profile.action.CONNECTION_STATE_CHANGED"

    invoke-virtual {v1, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_b

    .line 1678
    const-string v12, "android.bluetooth.device.extra.DEVICE"

    move-object/from16 v0, p2

    invoke-virtual {v0, v12}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v4

    .end local v4           #device:Landroid/bluetooth/BluetoothDevice;
    check-cast v4, Landroid/bluetooth/BluetoothDevice;

    .line 1679
    .restart local v4       #device:Landroid/bluetooth/BluetoothDevice;
    const-string v12, "android.bluetooth.profile.extra.STATE"

    const/4 v13, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v0, v12, v13}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v6

    .line 1680
    .local v6, nNewState:I
    const-string v12, "android.bluetooth.profile.extra.PREVIOUS_STATE"

    const/4 v13, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v0, v12, v13}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v7

    .line 1681
    .local v7, nOldState:I
    packed-switch v6, :pswitch_data_0

    .line 1706
    :goto_1
    iget-object v12, p0, Lcom/htc/dmc/DmrListActivity$13;->this$0:Lcom/htc/dmc/DmrListActivity;

    #calls: Lcom/htc/dmc/DmrListActivity;->HandleBTSink()V
    invoke-static {v12}, Lcom/htc/dmc/DmrListActivity;->access$2700(Lcom/htc/dmc/DmrListActivity;)V

    goto/16 :goto_0

    .line 1684
    :pswitch_0
    const/4 v12, 0x1

    if-ne v7, v12, :cond_a

    .line 1685
    iget-object v12, p0, Lcom/htc/dmc/DmrListActivity$13;->this$0:Lcom/htc/dmc/DmrListActivity;

    invoke-virtual {v12}, Lcom/htc/dmc/DmrListActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v12

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4}, Landroid/bluetooth/BluetoothDevice;->getName()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, " connecting failed"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    const/4 v14, 0x0

    invoke-static {v12, v13, v14}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v12

    invoke-virtual {v12}, Landroid/widget/Toast;->show()V

    goto :goto_1

    .line 1688
    :cond_a
    const-string v12, "[DmrListActivity]"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "BT:"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v4}, Landroid/bluetooth/BluetoothDevice;->getName()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, " disconnected"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Lcom/htc/dmc/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 1693
    :pswitch_1
    const-string v12, "[DmrListActivity]"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "BT:"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v4}, Landroid/bluetooth/BluetoothDevice;->getName()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, " connecting..."

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Lcom/htc/dmc/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 1697
    :pswitch_2
    const-string v12, "[DmrListActivity]"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "BT:"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v4}, Landroid/bluetooth/BluetoothDevice;->getName()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, " connected"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Lcom/htc/dmc/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 1701
    :pswitch_3
    const-string v12, "[DmrListActivity]"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "BT:"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v4}, Landroid/bluetooth/BluetoothDevice;->getName()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, " disconnecting..."

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Lcom/htc/dmc/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 1721
    .end local v6           #nNewState:I
    .end local v7           #nOldState:I
    :cond_b
    const-string v12, "android.bluetooth.device.action.CLASS_CHANGED"

    invoke-virtual {v1, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_1

    .line 1724
    const-string v12, "android.bluetooth.device.action.UUID"

    invoke-virtual {v1, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_1

    .line 1727
    const-string v12, "android.bluetooth.device.action.PAIRING_CANCEL"

    invoke-virtual {v1, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_1

    .line 1735
    const-string v12, "android.net.wifi.WIFI_STATE_CHANGED"

    invoke-virtual {v1, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_1

    .line 1736
    const-string v12, "[DmrListActivity]"

    const-string v13, "Wifi State Changed..."

    invoke-static {v12, v13}, Lcom/htc/dmc/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1737
    iget-object v12, p0, Lcom/htc/dmc/DmrListActivity$13;->this$0:Lcom/htc/dmc/DmrListActivity;

    #calls: Lcom/htc/dmc/DmrListActivity;->refreshUIWifi()V
    invoke-static {v12}, Lcom/htc/dmc/DmrListActivity;->access$2800(Lcom/htc/dmc/DmrListActivity;)V

    goto/16 :goto_0

    .line 1681
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method
