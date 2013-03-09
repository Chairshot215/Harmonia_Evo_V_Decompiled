.class Lcom/futuredial/service/DMIBTScanModule$2;
.super Landroid/content/BroadcastReceiver;
.source "DMIBTScanModule.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/futuredial/service/DMIBTScanModule;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/futuredial/service/DMIBTScanModule;


# direct methods
.method constructor <init>(Lcom/futuredial/service/DMIBTScanModule;)V
    .locals 0
    .parameter

    .prologue
    .line 168
    iput-object p1, p0, Lcom/futuredial/service/DMIBTScanModule$2;->this$0:Lcom/futuredial/service/DMIBTScanModule;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 20
    .parameter "context"
    .parameter "ii"

    .prologue
    .line 172
    new-instance v11, Landroid/content/Intent;

    move-object/from16 v0, p2

    invoke-direct {v11, v0}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    .line 173
    .local v11, intent:Landroid/content/Intent;
    invoke-virtual {v11}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    .line 174
    .local v2, action:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/futuredial/service/DMIBTScanModule$2;->this$0:Lcom/futuredial/service/DMIBTScanModule;

    iget-object v15, v15, Lcom/futuredial/service/DMIBTScanModule;->TAG:Ljava/lang/String;

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "coming action: "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 175
    const-string v15, "android.bluetooth.adapter.action.DISCOVERY_STARTED"

    invoke-virtual {v2, v15}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v15

    if-eqz v15, :cond_1

    .line 177
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/futuredial/service/DMIBTScanModule$2;->this$0:Lcom/futuredial/service/DMIBTScanModule;

    iget-object v15, v15, Lcom/futuredial/service/DMIBTScanModule;->TAG:Ljava/lang/String;

    const-string v16, "scan started"

    invoke-static/range {v15 .. v16}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 178
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/futuredial/service/DMIBTScanModule$2;->this$0:Lcom/futuredial/service/DMIBTScanModule;

    iget-object v15, v15, Lcom/futuredial/service/DMIBTScanModule;->m_btDeviceList:Ljava/util/ArrayList;

    invoke-virtual {v15}, Ljava/util/ArrayList;->clear()V

    .line 179
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/futuredial/service/DMIBTScanModule$2;->this$0:Lcom/futuredial/service/DMIBTScanModule;

    const/16 v16, 0x66

    invoke-virtual/range {v15 .. v16}, Lcom/futuredial/service/DMIBTScanModule;->SendMsg(I)Z

    .line 293
    :cond_0
    :goto_0
    return-void

    .line 181
    :cond_1
    const-string v15, "android.bluetooth.adapter.action.DISCOVERY_FINISHED"

    invoke-virtual {v2, v15}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v15

    if-eqz v15, :cond_2

    .line 183
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/futuredial/service/DMIBTScanModule$2;->this$0:Lcom/futuredial/service/DMIBTScanModule;

    iget-object v15, v15, Lcom/futuredial/service/DMIBTScanModule;->TAG:Ljava/lang/String;

    const-string v16, "scan completed"

    invoke-static/range {v15 .. v16}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 184
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/futuredial/service/DMIBTScanModule$2;->this$0:Lcom/futuredial/service/DMIBTScanModule;

    const/16 v16, 0x68

    invoke-virtual/range {v15 .. v16}, Lcom/futuredial/service/DMIBTScanModule;->SendMsg(I)Z

    .line 185
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/futuredial/service/DMIBTScanModule$2;->this$0:Lcom/futuredial/service/DMIBTScanModule;

    const/16 v16, 0x1

    move/from16 v0, v16

    iput-boolean v0, v15, Lcom/futuredial/service/DMIBTScanModule;->m_bstopped:Z

    goto :goto_0

    .line 187
    :cond_2
    const-string v15, "android.bluetooth.device.action.FOUND"

    invoke-virtual {v2, v15}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v15

    if-eqz v15, :cond_6

    .line 192
    :try_start_0
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/futuredial/service/DMIBTScanModule$2;->this$0:Lcom/futuredial/service/DMIBTScanModule;

    iget-object v15, v15, Lcom/futuredial/service/DMIBTScanModule;->TAG:Ljava/lang/String;

    const-string v16, "device found"

    invoke-static/range {v15 .. v16}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 193
    const-string v15, "android.bluetooth.device.extra.DEVICE"

    invoke-virtual {v11, v15}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v13

    check-cast v13, Landroid/bluetooth/BluetoothDevice;

    .line 194
    .local v13, rmtBT:Landroid/bluetooth/BluetoothDevice;
    if-eqz v13, :cond_0

    .line 196
    invoke-virtual {v13}, Landroid/bluetooth/BluetoothDevice;->getBluetoothClass()Landroid/bluetooth/BluetoothClass;

    move-result-object v4

    .line 197
    .local v4, btclass:Landroid/bluetooth/BluetoothClass;
    if-nez v4, :cond_3

    .line 199
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/futuredial/service/DMIBTScanModule$2;->this$0:Lcom/futuredial/service/DMIBTScanModule;

    iget-object v15, v15, Lcom/futuredial/service/DMIBTScanModule;->TAG:Ljava/lang/String;

    const-string v16, "BluetoothClass is null!!!!!"

    invoke-static/range {v15 .. v16}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 229
    .end local v4           #btclass:Landroid/bluetooth/BluetoothClass;
    .end local v13           #rmtBT:Landroid/bluetooth/BluetoothDevice;
    :catch_0
    move-exception v7

    .line 231
    .local v7, e:Ljava/lang/Exception;
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/futuredial/service/DMIBTScanModule$2;->this$0:Lcom/futuredial/service/DMIBTScanModule;

    iget-object v15, v15, Lcom/futuredial/service/DMIBTScanModule;->TAG:Ljava/lang/String;

    const-string v16, "BluetoothDevice.ACTION_FOUND Exception !!!!!!!!!!!"

    invoke-static/range {v15 .. v16}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 202
    .end local v7           #e:Ljava/lang/Exception;
    .restart local v4       #btclass:Landroid/bluetooth/BluetoothClass;
    .restart local v13       #rmtBT:Landroid/bluetooth/BluetoothDevice;
    :cond_3
    :try_start_1
    invoke-virtual {v4}, Landroid/bluetooth/BluetoothClass;->getMajorDeviceClass()I

    move-result v9

    .line 203
    .local v9, iMajorDeviceClass:I
    invoke-virtual {v13}, Landroid/bluetooth/BluetoothDevice;->getName()Ljava/lang/String;

    move-result-object v6

    .line 204
    .local v6, devName:Ljava/lang/String;
    invoke-virtual {v13}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v5

    .line 205
    .local v5, devAddress:Ljava/lang/String;
    if-eqz v5, :cond_0

    .line 206
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/futuredial/service/DMIBTScanModule$2;->this$0:Lcom/futuredial/service/DMIBTScanModule;

    iget-object v15, v15, Lcom/futuredial/service/DMIBTScanModule;->TAG:Ljava/lang/String;

    const-string v16, "device major class:%d, address: %s, name: %s"

    const/16 v17, 0x3

    move/from16 v0, v17

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v19

    aput-object v19, v17, v18

    const/16 v18, 0x1

    aput-object v5, v17, v18

    const/16 v18, 0x2

    aput-object v6, v17, v18

    invoke-static/range {v16 .. v17}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 208
    const/16 v15, 0x200

    if-eq v9, v15, :cond_4

    const/16 v15, 0x100

    if-ne v9, v15, :cond_0

    :cond_4
    if-eqz v6, :cond_0

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v15

    if-eqz v15, :cond_0

    .line 212
    new-instance v3, Lcom/futuredial/service/DMIBTDevice;

    invoke-direct {v3, v13, v6, v5}, Lcom/futuredial/service/DMIBTDevice;-><init>(Landroid/bluetooth/BluetoothDevice;Ljava/lang/String;Ljava/lang/String;)V

    .line 213
    .local v3, btDevice:Lcom/futuredial/service/DMIBTDevice;
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/futuredial/service/DMIBTScanModule$2;->this$0:Lcom/futuredial/service/DMIBTScanModule;

    iget-object v15, v15, Lcom/futuredial/service/DMIBTScanModule;->m_btDeviceList:Ljava/util/ArrayList;

    invoke-virtual {v15, v3}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v15

    if-nez v15, :cond_5

    .line 215
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/futuredial/service/DMIBTScanModule$2;->this$0:Lcom/futuredial/service/DMIBTScanModule;

    iget-object v15, v15, Lcom/futuredial/service/DMIBTScanModule;->m_btDeviceList:Ljava/util/ArrayList;

    invoke-virtual {v15, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 217
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/futuredial/service/DMIBTScanModule$2;->this$0:Lcom/futuredial/service/DMIBTScanModule;

    const/16 v16, 0x67

    move/from16 v0, v16

    invoke-virtual {v15, v0, v3}, Lcom/futuredial/service/DMIBTScanModule;->SendMsg(ILjava/lang/Object;)Z

    goto/16 :goto_0

    .line 221
    :cond_5
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/futuredial/service/DMIBTScanModule$2;->this$0:Lcom/futuredial/service/DMIBTScanModule;

    iget-object v15, v15, Lcom/futuredial/service/DMIBTScanModule;->TAG:Ljava/lang/String;

    const-string v16, "duplicate DEVICE ADD message -> update name (BT issue)"

    invoke-static/range {v15 .. v16}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 222
    new-instance v8, Landroid/content/Intent;

    invoke-direct {v8}, Landroid/content/Intent;-><init>()V

    .line 223
    .local v8, i:Landroid/content/Intent;
    const-string v15, "android.bluetooth.device.action.NAME_CHANGED"

    invoke-virtual {v8, v15}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 224
    const-string v15, "android.bluetooth.device.extra.DEVICE"

    invoke-virtual {v8, v15, v13}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 225
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual {v0, v1, v8}, Lcom/futuredial/service/DMIBTScanModule$2;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0

    .line 234
    .end local v3           #btDevice:Lcom/futuredial/service/DMIBTDevice;
    .end local v4           #btclass:Landroid/bluetooth/BluetoothClass;
    .end local v5           #devAddress:Ljava/lang/String;
    .end local v6           #devName:Ljava/lang/String;
    .end local v8           #i:Landroid/content/Intent;
    .end local v9           #iMajorDeviceClass:I
    .end local v13           #rmtBT:Landroid/bluetooth/BluetoothDevice;
    :cond_6
    const-string v15, "android.bluetooth.device.action.NAME_CHANGED"

    invoke-virtual {v2, v15}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v15

    if-eqz v15, :cond_8

    .line 236
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/futuredial/service/DMIBTScanModule$2;->this$0:Lcom/futuredial/service/DMIBTScanModule;

    iget-object v15, v15, Lcom/futuredial/service/DMIBTScanModule;->TAG:Ljava/lang/String;

    const-string v16, "name changed"

    invoke-static/range {v15 .. v16}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 237
    const-string v15, "android.bluetooth.device.extra.DEVICE"

    invoke-virtual {v11, v15}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v13

    check-cast v13, Landroid/bluetooth/BluetoothDevice;

    .line 238
    .restart local v13       #rmtBT:Landroid/bluetooth/BluetoothDevice;
    if-eqz v13, :cond_0

    .line 240
    invoke-virtual {v13}, Landroid/bluetooth/BluetoothDevice;->getName()Ljava/lang/String;

    move-result-object v15

    if-eqz v15, :cond_0

    invoke-virtual {v13}, Landroid/bluetooth/BluetoothDevice;->getName()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/String;->length()I

    move-result v15

    if-eqz v15, :cond_0

    .line 242
    new-instance v3, Lcom/futuredial/service/DMIBTDevice;

    invoke-virtual {v13}, Landroid/bluetooth/BluetoothDevice;->getName()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v13}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-direct {v3, v13, v15, v0}, Lcom/futuredial/service/DMIBTDevice;-><init>(Landroid/bluetooth/BluetoothDevice;Ljava/lang/String;Ljava/lang/String;)V

    .line 245
    .restart local v3       #btDevice:Lcom/futuredial/service/DMIBTDevice;
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/futuredial/service/DMIBTScanModule$2;->this$0:Lcom/futuredial/service/DMIBTScanModule;

    iget-object v15, v15, Lcom/futuredial/service/DMIBTScanModule;->m_btDeviceList:Ljava/util/ArrayList;

    invoke-virtual {v15, v3}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v10

    .line 246
    .local v10, idx:I
    const/4 v15, -0x1

    if-eq v15, v10, :cond_7

    .line 248
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/futuredial/service/DMIBTScanModule$2;->this$0:Lcom/futuredial/service/DMIBTScanModule;

    iget-object v0, v15, Lcom/futuredial/service/DMIBTScanModule;->TAG:Ljava/lang/String;

    move-object/from16 v16, v0

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "name change"

    move-object/from16 v0, v17

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/futuredial/service/DMIBTScanModule$2;->this$0:Lcom/futuredial/service/DMIBTScanModule;

    iget-object v15, v15, Lcom/futuredial/service/DMIBTScanModule;->m_btDeviceList:Ljava/util/ArrayList;

    invoke-virtual {v15, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/futuredial/service/DMIBTDevice;

    iget-object v15, v15, Lcom/futuredial/service/DMIBTDevice;->m_name:Ljava/lang/String;

    move-object/from16 v0, v17

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v17, " -> "

    move-object/from16 v0, v17

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v13}, Landroid/bluetooth/BluetoothDevice;->getName()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    move-object/from16 v0, v16

    invoke-static {v0, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 249
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/futuredial/service/DMIBTScanModule$2;->this$0:Lcom/futuredial/service/DMIBTScanModule;

    iget-object v15, v15, Lcom/futuredial/service/DMIBTScanModule;->m_btDeviceList:Ljava/util/ArrayList;

    invoke-virtual {v15, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/futuredial/service/DMIBTDevice;

    invoke-virtual {v13}, Landroid/bluetooth/BluetoothDevice;->getName()Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v16

    iput-object v0, v15, Lcom/futuredial/service/DMIBTDevice;->m_name:Ljava/lang/String;

    .line 252
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/futuredial/service/DMIBTScanModule$2;->this$0:Lcom/futuredial/service/DMIBTScanModule;

    const/16 v16, 0x69

    move/from16 v0, v16

    invoke-virtual {v15, v0, v3}, Lcom/futuredial/service/DMIBTScanModule;->SendMsg(ILjava/lang/Object;)Z

    goto/16 :goto_0

    .line 256
    :cond_7
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/futuredial/service/DMIBTScanModule$2;->this$0:Lcom/futuredial/service/DMIBTScanModule;

    iget-object v15, v15, Lcom/futuredial/service/DMIBTScanModule;->TAG:Ljava/lang/String;

    const-string v16, "DEVICE name change message -> add device"

    invoke-static/range {v15 .. v16}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 257
    new-instance v8, Landroid/content/Intent;

    invoke-direct {v8}, Landroid/content/Intent;-><init>()V

    .line 258
    .restart local v8       #i:Landroid/content/Intent;
    const-string v15, "android.bluetooth.device.action.FOUND"

    invoke-virtual {v8, v15}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 259
    const-string v15, "android.bluetooth.device.extra.DEVICE"

    invoke-virtual {v8, v15, v13}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 260
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual {v0, v1, v8}, Lcom/futuredial/service/DMIBTScanModule$2;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 264
    .end local v3           #btDevice:Lcom/futuredial/service/DMIBTDevice;
    .end local v8           #i:Landroid/content/Intent;
    .end local v10           #idx:I
    .end local v13           #rmtBT:Landroid/bluetooth/BluetoothDevice;
    :cond_8
    const-string v15, "android.bluetooth.adapter.action.STATE_CHANGED"

    invoke-virtual {v2, v15}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v15

    if-eqz v15, :cond_a

    .line 266
    const-string v15, "android.bluetooth.adapter.extra.PREVIOUS_STATE"

    const/high16 v16, -0x8000

    move/from16 v0, v16

    invoke-virtual {v11, v15, v0}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v12

    .line 267
    .local v12, preState:I
    const-string v15, "android.bluetooth.adapter.extra.STATE"

    const/high16 v16, -0x8000

    move/from16 v0, v16

    invoke-virtual {v11, v15, v0}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v14

    .line 268
    .local v14, state:I
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/futuredial/service/DMIBTScanModule$2;->this$0:Lcom/futuredial/service/DMIBTScanModule;

    iget-object v15, v15, Lcom/futuredial/service/DMIBTScanModule;->TAG:Ljava/lang/String;

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "bt status changed"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, " - > "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 270
    const/16 v15, 0xb

    if-ne v12, v15, :cond_9

    const/16 v15, 0xa

    if-ne v14, v15, :cond_9

    .line 271
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/futuredial/service/DMIBTScanModule$2;->this$0:Lcom/futuredial/service/DMIBTScanModule;

    iget-object v15, v15, Lcom/futuredial/service/DMIBTScanModule;->TAG:Ljava/lang/String;

    const-string v16, "open bt failed"

    invoke-static/range {v15 .. v16}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 273
    :cond_9
    packed-switch v14, :pswitch_data_0

    :pswitch_0
    goto/16 :goto_0

    .line 280
    :pswitch_1
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/futuredial/service/DMIBTScanModule$2;->this$0:Lcom/futuredial/service/DMIBTScanModule;

    const/16 v16, 0x68

    invoke-virtual/range {v15 .. v16}, Lcom/futuredial/service/DMIBTScanModule;->SendMsg(I)Z

    .line 281
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/futuredial/service/DMIBTScanModule$2;->this$0:Lcom/futuredial/service/DMIBTScanModule;

    iget-object v15, v15, Lcom/futuredial/service/DMIBTScanModule;->TAG:Ljava/lang/String;

    const-string v16, "off"

    invoke-static/range {v15 .. v16}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 276
    :pswitch_2
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/futuredial/service/DMIBTScanModule$2;->this$0:Lcom/futuredial/service/DMIBTScanModule;

    iget-object v15, v15, Lcom/futuredial/service/DMIBTScanModule;->TAG:Ljava/lang/String;

    const-string v16, "on"

    invoke-static/range {v15 .. v16}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 290
    .end local v12           #preState:I
    .end local v14           #state:I
    :cond_a
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/futuredial/service/DMIBTScanModule$2;->this$0:Lcom/futuredial/service/DMIBTScanModule;

    iget-object v15, v15, Lcom/futuredial/service/DMIBTScanModule;->TAG:Ljava/lang/String;

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "igonre action: "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 273
    nop

    :pswitch_data_0
    .packed-switch 0xa
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method
