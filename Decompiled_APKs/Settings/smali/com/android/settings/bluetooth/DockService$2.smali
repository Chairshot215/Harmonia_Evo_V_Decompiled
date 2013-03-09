.class Lcom/android/settings/bluetooth/DockService$2;
.super Landroid/content/BroadcastReceiver;
.source "DockService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/bluetooth/DockService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/bluetooth/DockService;


# direct methods
.method constructor <init>(Lcom/android/settings/bluetooth/DockService;)V
    .locals 0
    .parameter

    .prologue
    .line 209
    iput-object p1, p0, Lcom/android/settings/bluetooth/DockService$2;->this$0:Lcom/android/settings/bluetooth/DockService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 9
    .parameter "context"
    .parameter "intent"

    .prologue
    const/16 v8, 0xd

    const/16 v7, 0xb

    const/4 v6, 0x2

    .line 211
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 213
    .local v0, action:Ljava/lang/String;
    const-string v5, "android.bluetooth.adapter.action.STATE_CHANGED"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 214
    const-string v5, "android.bluetooth.adapter.extra.STATE"

    const/high16 v6, -0x8000

    invoke-virtual {p2, v5, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v4

    .line 217
    .local v4, state:I
    iget-object v5, p0, Lcom/android/settings/bluetooth/DockService$2;->this$0:Lcom/android/settings/bluetooth/DockService;

    #getter for: Lcom/android/settings/bluetooth/DockService;->mDockState:I
    invoke-static {v5}, Lcom/android/settings/bluetooth/DockService;->access$100(Lcom/android/settings/bluetooth/DockService;)I

    move-result v5

    if-ne v5, v7, :cond_2

    .line 218
    const/16 v5, 0xc

    if-ne v4, v5, :cond_1

    .line 219
    iget-object v5, p0, Lcom/android/settings/bluetooth/DockService$2;->this$0:Lcom/android/settings/bluetooth/DockService;

    #calls: Lcom/android/settings/bluetooth/DockService;->handleAutoConnect()V
    invoke-static {v5}, Lcom/android/settings/bluetooth/DockService;->access$200(Lcom/android/settings/bluetooth/DockService;)V

    .line 287
    .end local v4           #state:I
    :cond_0
    :goto_0
    return-void

    .line 220
    .restart local v4       #state:I
    :cond_1
    const/16 v5, 0xa

    if-ne v4, v5, :cond_0

    .line 221
    iget-object v5, p0, Lcom/android/settings/bluetooth/DockService$2;->this$0:Lcom/android/settings/bluetooth/DockService;

    #getter for: Lcom/android/settings/bluetooth/DockService;->mLocalAdapter:Lcom/android/settings/bluetooth/LocalBluetoothAdapter;
    invoke-static {v5}, Lcom/android/settings/bluetooth/DockService;->access$300(Lcom/android/settings/bluetooth/DockService;)Lcom/android/settings/bluetooth/LocalBluetoothAdapter;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/settings/bluetooth/LocalBluetoothAdapter;->enable()Z

    goto :goto_0

    .line 223
    :cond_2
    iget-object v5, p0, Lcom/android/settings/bluetooth/DockService$2;->this$0:Lcom/android/settings/bluetooth/DockService;

    #getter for: Lcom/android/settings/bluetooth/DockService;->mDockState:I
    invoke-static {v5}, Lcom/android/settings/bluetooth/DockService;->access$100(Lcom/android/settings/bluetooth/DockService;)I

    move-result v5

    if-ne v5, v8, :cond_0

    .line 224
    iget-object v5, p0, Lcom/android/settings/bluetooth/DockService$2;->this$0:Lcom/android/settings/bluetooth/DockService;

    const-string v6, "disable_bt_when_undock"

    #calls: Lcom/android/settings/bluetooth/DockService;->getSettingBool(Ljava/lang/String;)Z
    invoke-static {v5, v6}, Lcom/android/settings/bluetooth/DockService;->access$400(Lcom/android/settings/bluetooth/DockService;Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 225
    iget-object v5, p0, Lcom/android/settings/bluetooth/DockService$2;->this$0:Lcom/android/settings/bluetooth/DockService;

    const-string v6, "disable_bt_when_undock"

    #calls: Lcom/android/settings/bluetooth/DockService;->removeSetting(Ljava/lang/String;)V
    invoke-static {v5, v6}, Lcom/android/settings/bluetooth/DockService;->access$500(Lcom/android/settings/bluetooth/DockService;Ljava/lang/String;)V

    .line 226
    iget-object v5, p0, Lcom/android/settings/bluetooth/DockService$2;->this$0:Lcom/android/settings/bluetooth/DockService;

    #getter for: Lcom/android/settings/bluetooth/DockService;->mLocalAdapter:Lcom/android/settings/bluetooth/LocalBluetoothAdapter;
    invoke-static {v5}, Lcom/android/settings/bluetooth/DockService;->access$300(Lcom/android/settings/bluetooth/DockService;)Lcom/android/settings/bluetooth/LocalBluetoothAdapter;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/settings/bluetooth/LocalBluetoothAdapter;->disable()Z

    .line 228
    :cond_3
    iget-object v5, p0, Lcom/android/settings/bluetooth/DockService$2;->this$0:Lcom/android/settings/bluetooth/DockService;

    #calls: Lcom/android/settings/bluetooth/DockService;->checkDockEventComplete()Z
    invoke-static {v5}, Lcom/android/settings/bluetooth/DockService;->access$600(Lcom/android/settings/bluetooth/DockService;)Z

    goto :goto_0

    .line 231
    .end local v4           #state:I
    :cond_4
    const-string v5, "android.bluetooth.headset.profile.action.CONNECTION_STATE_CHANGED"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_6

    .line 232
    const-string v5, "android.bluetooth.device.extra.DEVICE"

    invoke-virtual {p2, v5}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v2

    check-cast v2, Landroid/bluetooth/BluetoothDevice;

    .line 234
    .local v2, device:Landroid/bluetooth/BluetoothDevice;
    const-string v5, "android.bluetooth.profile.extra.STATE"

    invoke-virtual {p2, v5, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    .line 236
    .local v3, newState:I
    iget-object v5, p0, Lcom/android/settings/bluetooth/DockService$2;->this$0:Lcom/android/settings/bluetooth/DockService;

    #getter for: Lcom/android/settings/bluetooth/DockService;->mDevice:Landroid/bluetooth/BluetoothDevice;
    invoke-static {v5}, Lcom/android/settings/bluetooth/DockService;->access$700(Lcom/android/settings/bluetooth/DockService;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v5

    invoke-virtual {v2, v5}, Landroid/bluetooth/BluetoothDevice;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 240
    iget-object v5, p0, Lcom/android/settings/bluetooth/DockService$2;->this$0:Lcom/android/settings/bluetooth/DockService;

    #setter for: Lcom/android/settings/bluetooth/DockService;->mHeadsetState:I
    invoke-static {v5, v3}, Lcom/android/settings/bluetooth/DockService;->access$802(Lcom/android/settings/bluetooth/DockService;I)I

    .line 241
    if-eq v3, v6, :cond_5

    if-nez v3, :cond_0

    .line 242
    :cond_5
    iget-object v5, p0, Lcom/android/settings/bluetooth/DockService$2;->this$0:Lcom/android/settings/bluetooth/DockService;

    #calls: Lcom/android/settings/bluetooth/DockService;->checkDockEventComplete()Z
    invoke-static {v5}, Lcom/android/settings/bluetooth/DockService;->access$600(Lcom/android/settings/bluetooth/DockService;)Z

    goto :goto_0

    .line 245
    .end local v2           #device:Landroid/bluetooth/BluetoothDevice;
    .end local v3           #newState:I
    :cond_6
    const-string v5, "android.bluetooth.a2dp.profile.action.CONNECTION_STATE_CHANGED"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_8

    .line 246
    const-string v5, "android.bluetooth.device.extra.DEVICE"

    invoke-virtual {p2, v5}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v2

    check-cast v2, Landroid/bluetooth/BluetoothDevice;

    .line 248
    .restart local v2       #device:Landroid/bluetooth/BluetoothDevice;
    const-string v5, "android.bluetooth.profile.extra.STATE"

    invoke-virtual {p2, v5, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    .line 250
    .restart local v3       #newState:I
    iget-object v5, p0, Lcom/android/settings/bluetooth/DockService$2;->this$0:Lcom/android/settings/bluetooth/DockService;

    #getter for: Lcom/android/settings/bluetooth/DockService;->mDevice:Landroid/bluetooth/BluetoothDevice;
    invoke-static {v5}, Lcom/android/settings/bluetooth/DockService;->access$700(Lcom/android/settings/bluetooth/DockService;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v5

    invoke-virtual {v2, v5}, Landroid/bluetooth/BluetoothDevice;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 254
    iget-object v5, p0, Lcom/android/settings/bluetooth/DockService$2;->this$0:Lcom/android/settings/bluetooth/DockService;

    #setter for: Lcom/android/settings/bluetooth/DockService;->mA2dpState:I
    invoke-static {v5, v3}, Lcom/android/settings/bluetooth/DockService;->access$902(Lcom/android/settings/bluetooth/DockService;I)I

    .line 255
    if-eq v3, v6, :cond_7

    if-nez v3, :cond_0

    .line 256
    :cond_7
    iget-object v5, p0, Lcom/android/settings/bluetooth/DockService$2;->this$0:Lcom/android/settings/bluetooth/DockService;

    #calls: Lcom/android/settings/bluetooth/DockService;->checkDockEventComplete()Z
    invoke-static {v5}, Lcom/android/settings/bluetooth/DockService;->access$600(Lcom/android/settings/bluetooth/DockService;)Z

    goto/16 :goto_0

    .line 259
    .end local v2           #device:Landroid/bluetooth/BluetoothDevice;
    .end local v3           #newState:I
    :cond_8
    const-string v5, "android.intent.action.DOCK_EVENT"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 260
    const-string v5, "android.bluetooth.device.extra.DEVICE"

    invoke-virtual {p2, v5}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v2

    check-cast v2, Landroid/bluetooth/BluetoothDevice;

    .line 261
    .restart local v2       #device:Landroid/bluetooth/BluetoothDevice;
    const-string v5, "android.intent.extra.DOCK_STATE"

    const/16 v6, -0x4d2

    invoke-virtual {p2, v5, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v4

    .line 262
    .restart local v4       #state:I
    const/4 v1, 0x0

    .line 264
    .local v1, changed:Z
    packed-switch v4, :pswitch_data_0

    .line 282
    :cond_9
    :goto_1
    if-eqz v1, :cond_0

    .line 284
    iget-object v5, p0, Lcom/android/settings/bluetooth/DockService$2;->this$0:Lcom/android/settings/bluetooth/DockService;

    #getter for: Lcom/android/settings/bluetooth/DockService;->mDockState:I
    invoke-static {v5}, Lcom/android/settings/bluetooth/DockService;->access$100(Lcom/android/settings/bluetooth/DockService;)I

    move-result v5

    invoke-static {p1, v5}, Lcom/android/settings/bluetooth/LocalBluetoothPreferences;->saveDockState(Landroid/content/Context;I)V

    goto/16 :goto_0

    .line 266
    :pswitch_0
    const-string v5, "DockService"

    const-string v6, "undocked, remove profile listener & mRunnable!!"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 267
    iget-object v5, p0, Lcom/android/settings/bluetooth/DockService$2;->this$0:Lcom/android/settings/bluetooth/DockService;

    const/4 v6, 0x0

    #setter for: Lcom/android/settings/bluetooth/DockService;->mRunnable:Ljava/lang/Runnable;
    invoke-static {v5, v6}, Lcom/android/settings/bluetooth/DockService;->access$1002(Lcom/android/settings/bluetooth/DockService;Ljava/lang/Runnable;)Ljava/lang/Runnable;

    .line 268
    iget-object v5, p0, Lcom/android/settings/bluetooth/DockService$2;->this$0:Lcom/android/settings/bluetooth/DockService;

    #getter for: Lcom/android/settings/bluetooth/DockService;->mProfileManager:Lcom/android/settings/bluetooth/LocalBluetoothProfileManager;
    invoke-static {v5}, Lcom/android/settings/bluetooth/DockService;->access$1100(Lcom/android/settings/bluetooth/DockService;)Lcom/android/settings/bluetooth/LocalBluetoothProfileManager;

    move-result-object v5

    iget-object v6, p0, Lcom/android/settings/bluetooth/DockService$2;->this$0:Lcom/android/settings/bluetooth/DockService;

    invoke-virtual {v5, v6}, Lcom/android/settings/bluetooth/LocalBluetoothProfileManager;->removeServiceListener(Lcom/android/settings/bluetooth/LocalBluetoothProfileManager$ServiceListener;)V

    .line 269
    iget-object v5, p0, Lcom/android/settings/bluetooth/DockService$2;->this$0:Lcom/android/settings/bluetooth/DockService;

    #getter for: Lcom/android/settings/bluetooth/DockService;->mDockState:I
    invoke-static {v5}, Lcom/android/settings/bluetooth/DockService;->access$100(Lcom/android/settings/bluetooth/DockService;)I

    move-result v5

    if-ne v5, v7, :cond_9

    .line 270
    iget-object v5, p0, Lcom/android/settings/bluetooth/DockService$2;->this$0:Lcom/android/settings/bluetooth/DockService;

    #setter for: Lcom/android/settings/bluetooth/DockService;->mDockState:I
    invoke-static {v5, v8}, Lcom/android/settings/bluetooth/DockService;->access$102(Lcom/android/settings/bluetooth/DockService;I)I

    .line 271
    const/4 v1, 0x1

    goto :goto_1

    .line 276
    :pswitch_1
    iget-object v5, p0, Lcom/android/settings/bluetooth/DockService$2;->this$0:Lcom/android/settings/bluetooth/DockService;

    #getter for: Lcom/android/settings/bluetooth/DockService;->mDockState:I
    invoke-static {v5}, Lcom/android/settings/bluetooth/DockService;->access$100(Lcom/android/settings/bluetooth/DockService;)I

    move-result v5

    if-ne v5, v8, :cond_9

    .line 277
    iget-object v5, p0, Lcom/android/settings/bluetooth/DockService$2;->this$0:Lcom/android/settings/bluetooth/DockService;

    #setter for: Lcom/android/settings/bluetooth/DockService;->mDockState:I
    invoke-static {v5, v7}, Lcom/android/settings/bluetooth/DockService;->access$102(Lcom/android/settings/bluetooth/DockService;I)I

    .line 278
    const/4 v1, 0x1

    goto :goto_1

    .line 264
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method
