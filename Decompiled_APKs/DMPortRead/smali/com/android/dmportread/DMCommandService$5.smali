.class Lcom/android/dmportread/DMCommandService$5;
.super Landroid/content/BroadcastReceiver;
.source "DMCommandService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/dmportread/DMCommandService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/dmportread/DMCommandService;


# direct methods
.method constructor <init>(Lcom/android/dmportread/DMCommandService;)V
    .locals 0
    .parameter

    .prologue
    .line 3597
    iput-object p1, p0, Lcom/android/dmportread/DMCommandService$5;->this$0:Lcom/android/dmportread/DMCommandService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 9
    .parameter "context"
    .parameter "intent"

    .prologue
    const/16 v8, 0x17

    .line 3600
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 3602
    .local v0, action:Ljava/lang/String;
    :try_start_0
    const-string v5, "android.intent.action.BATTERY_CHANGED"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 3603
    iget-object v5, p0, Lcom/android/dmportread/DMCommandService$5;->this$0:Lcom/android/dmportread/DMCommandService;

    const-string v6, "plugged"

    const/4 v7, 0x0

    invoke-virtual {p2, v6, v7}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v6

    #setter for: Lcom/android/dmportread/DMCommandService;->plugType:I
    invoke-static {v5, v6}, Lcom/android/dmportread/DMCommandService;->access$1902(Lcom/android/dmportread/DMCommandService;I)I

    .line 3604
    iget-object v5, p0, Lcom/android/dmportread/DMCommandService$5;->this$0:Lcom/android/dmportread/DMCommandService;

    const-string v6, "level"

    const/4 v7, 0x0

    invoke-virtual {p2, v6, v7}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v6

    #setter for: Lcom/android/dmportread/DMCommandService;->level:I
    invoke-static {v5, v6}, Lcom/android/dmportread/DMCommandService;->access$2002(Lcom/android/dmportread/DMCommandService;I)I

    .line 3605
    iget-object v5, p0, Lcom/android/dmportread/DMCommandService$5;->this$0:Lcom/android/dmportread/DMCommandService;

    const-string v6, "scale"

    const/4 v7, 0x0

    invoke-virtual {p2, v6, v7}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v6

    #setter for: Lcom/android/dmportread/DMCommandService;->scale:I
    invoke-static {v5, v6}, Lcom/android/dmportread/DMCommandService;->access$2102(Lcom/android/dmportread/DMCommandService;I)I

    .line 3608
    iget-object v5, p0, Lcom/android/dmportread/DMCommandService$5;->this$0:Lcom/android/dmportread/DMCommandService;

    const-string v6, "status"

    const/4 v7, 0x0

    invoke-virtual {p2, v6, v7}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v6

    #setter for: Lcom/android/dmportread/DMCommandService;->status:I
    invoke-static {v5, v6}, Lcom/android/dmportread/DMCommandService;->access$2202(Lcom/android/dmportread/DMCommandService;I)I

    .line 3609
    iget-object v5, p0, Lcom/android/dmportread/DMCommandService$5;->this$0:Lcom/android/dmportread/DMCommandService;

    const-string v6, "present"

    const/4 v7, 0x0

    invoke-virtual {p2, v6, v7}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v6

    #setter for: Lcom/android/dmportread/DMCommandService;->present:Z
    invoke-static {v5, v6}, Lcom/android/dmportread/DMCommandService;->access$2302(Lcom/android/dmportread/DMCommandService;Z)Z

    .line 3610
    iget-object v5, p0, Lcom/android/dmportread/DMCommandService$5;->this$0:Lcom/android/dmportread/DMCommandService;

    const-string v6, "technology"

    invoke-virtual {p2, v6}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    #setter for: Lcom/android/dmportread/DMCommandService;->tech:Ljava/lang/String;
    invoke-static {v5, v6}, Lcom/android/dmportread/DMCommandService;->access$2402(Lcom/android/dmportread/DMCommandService;Ljava/lang/String;)Ljava/lang/String;

    .line 3642
    :cond_0
    :goto_0
    return-void

    .line 3617
    :cond_1
    const-string v5, "android.bluetooth.adapter.action.STATE_CHANGED"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 3618
    iget-object v5, p0, Lcom/android/dmportread/DMCommandService$5;->this$0:Lcom/android/dmportread/DMCommandService;

    #getter for: Lcom/android/dmportread/DMCommandService;->mBTAdapter:Landroid/bluetooth/BluetoothAdapter;
    invoke-static {v5}, Lcom/android/dmportread/DMCommandService;->access$2500(Lcom/android/dmportread/DMCommandService;)Landroid/bluetooth/BluetoothAdapter;

    move-result-object v5

    if-nez v5, :cond_2

    .line 3619
    iget-object v5, p0, Lcom/android/dmportread/DMCommandService$5;->this$0:Lcom/android/dmportread/DMCommandService;

    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v6

    #setter for: Lcom/android/dmportread/DMCommandService;->mBTAdapter:Landroid/bluetooth/BluetoothAdapter;
    invoke-static {v5, v6}, Lcom/android/dmportread/DMCommandService;->access$2502(Lcom/android/dmportread/DMCommandService;Landroid/bluetooth/BluetoothAdapter;)Landroid/bluetooth/BluetoothAdapter;

    .line 3621
    :cond_2
    iget-object v5, p0, Lcom/android/dmportread/DMCommandService$5;->this$0:Lcom/android/dmportread/DMCommandService;

    #getter for: Lcom/android/dmportread/DMCommandService;->mBTAdapter:Landroid/bluetooth/BluetoothAdapter;
    invoke-static {v5}, Lcom/android/dmportread/DMCommandService;->access$2500(Lcom/android/dmportread/DMCommandService;)Landroid/bluetooth/BluetoothAdapter;

    move-result-object v5

    invoke-virtual {v5}, Landroid/bluetooth/BluetoothAdapter;->getState()I

    move-result v4

    .line 3622
    .local v4, state:I
    const-string v5, "DMCmdSvs"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "state:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 3623
    iget-object v5, p0, Lcom/android/dmportread/DMCommandService$5;->this$0:Lcom/android/dmportread/DMCommandService;

    #getter for: Lcom/android/dmportread/DMCommandService;->mHasPendingBtIntent:Z
    invoke-static {v5}, Lcom/android/dmportread/DMCommandService;->access$2600(Lcom/android/dmportread/DMCommandService;)Z

    move-result v5

    if-eqz v5, :cond_0

    const/16 v5, 0xc

    if-ne v4, v5, :cond_0

    .line 3624
    iget-object v5, p0, Lcom/android/dmportread/DMCommandService$5;->this$0:Lcom/android/dmportread/DMCommandService;

    #getter for: Lcom/android/dmportread/DMCommandService;->mBTAdapter:Landroid/bluetooth/BluetoothAdapter;
    invoke-static {v5}, Lcom/android/dmportread/DMCommandService;->access$2500(Lcom/android/dmportread/DMCommandService;)Landroid/bluetooth/BluetoothAdapter;

    move-result-object v5

    const/16 v6, 0x17

    invoke-virtual {v5, v6}, Landroid/bluetooth/BluetoothAdapter;->setScanMode(I)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 3639
    .end local v4           #state:I
    :catch_0
    move-exception v1

    .line 3640
    .local v1, e:Ljava/lang/Exception;
    const-string v5, "DMCmdSvs"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "exception"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 3626
    .end local v1           #e:Ljava/lang/Exception;
    :cond_3
    :try_start_1
    const-string v5, "android.bluetooth.adapter.action.SCAN_MODE_CHANGED"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 3627
    iget-object v5, p0, Lcom/android/dmportread/DMCommandService$5;->this$0:Lcom/android/dmportread/DMCommandService;

    #getter for: Lcom/android/dmportread/DMCommandService;->mBTAdapter:Landroid/bluetooth/BluetoothAdapter;
    invoke-static {v5}, Lcom/android/dmportread/DMCommandService;->access$2500(Lcom/android/dmportread/DMCommandService;)Landroid/bluetooth/BluetoothAdapter;

    move-result-object v5

    if-nez v5, :cond_4

    .line 3628
    iget-object v5, p0, Lcom/android/dmportread/DMCommandService$5;->this$0:Lcom/android/dmportread/DMCommandService;

    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v6

    #setter for: Lcom/android/dmportread/DMCommandService;->mBTAdapter:Landroid/bluetooth/BluetoothAdapter;
    invoke-static {v5, v6}, Lcom/android/dmportread/DMCommandService;->access$2502(Lcom/android/dmportread/DMCommandService;Landroid/bluetooth/BluetoothAdapter;)Landroid/bluetooth/BluetoothAdapter;

    .line 3630
    :cond_4
    iget-object v5, p0, Lcom/android/dmportread/DMCommandService$5;->this$0:Lcom/android/dmportread/DMCommandService;

    #getter for: Lcom/android/dmportread/DMCommandService;->mBTAdapter:Landroid/bluetooth/BluetoothAdapter;
    invoke-static {v5}, Lcom/android/dmportread/DMCommandService;->access$2500(Lcom/android/dmportread/DMCommandService;)Landroid/bluetooth/BluetoothAdapter;

    move-result-object v5

    invoke-virtual {v5}, Landroid/bluetooth/BluetoothAdapter;->getScanMode()I

    move-result v3

    .line 3631
    .local v3, mode:I
    const-string v5, "DMCmdSvs"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "mode:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 3632
    iget-object v5, p0, Lcom/android/dmportread/DMCommandService$5;->this$0:Lcom/android/dmportread/DMCommandService;

    #getter for: Lcom/android/dmportread/DMCommandService;->mHasPendingBtIntent:Z
    invoke-static {v5}, Lcom/android/dmportread/DMCommandService;->access$2600(Lcom/android/dmportread/DMCommandService;)Z

    move-result v5

    if-eqz v5, :cond_0

    if-ne v3, v8, :cond_0

    .line 3633
    new-instance v2, Landroid/content/Intent;

    const-string v5, "com.htc.intent.action.SETTINGS_SET_BLUETOOTH_DISCOVERABLE_TIMEOUT"

    invoke-direct {v2, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 3634
    .local v2, i:Landroid/content/Intent;
    invoke-virtual {p1, v2}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 3635
    iget-object v5, p0, Lcom/android/dmportread/DMCommandService$5;->this$0:Lcom/android/dmportread/DMCommandService;

    const/4 v6, 0x0

    #setter for: Lcom/android/dmportread/DMCommandService;->mHasPendingBtIntent:Z
    invoke-static {v5, v6}, Lcom/android/dmportread/DMCommandService;->access$2602(Lcom/android/dmportread/DMCommandService;Z)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0
.end method
