.class Lcom/android/bluetooth/pbap/BluetoothPbapService$1;
.super Landroid/os/Handler;
.source "BluetoothPbapService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/bluetooth/pbap/BluetoothPbapService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/bluetooth/pbap/BluetoothPbapService;


# direct methods
.method constructor <init>(Lcom/android/bluetooth/pbap/BluetoothPbapService;)V
    .locals 0
    .parameter

    .prologue
    .line 578
    iput-object p1, p0, Lcom/android/bluetooth/pbap/BluetoothPbapService$1;->this$0:Lcom/android/bluetooth/pbap/BluetoothPbapService;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 6
    .parameter "msg"

    .prologue
    .line 583
    iget v2, p1, Landroid/os/Message;->what:I

    sparse-switch v2, :sswitch_data_0

    .line 620
    :goto_0
    :sswitch_0
    return-void

    .line 585
    :sswitch_1
    iget-object v2, p0, Lcom/android/bluetooth/pbap/BluetoothPbapService$1;->this$0:Lcom/android/bluetooth/pbap/BluetoothPbapService;

    #getter for: Lcom/android/bluetooth/pbap/BluetoothPbapService;->mAdapter:Landroid/bluetooth/BluetoothAdapter;
    invoke-static {v2}, Lcom/android/bluetooth/pbap/BluetoothPbapService;->access$800(Lcom/android/bluetooth/pbap/BluetoothPbapService;)Landroid/bluetooth/BluetoothAdapter;

    move-result-object v2

    invoke-virtual {v2}, Landroid/bluetooth/BluetoothAdapter;->isEnabled()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 586
    iget-object v2, p0, Lcom/android/bluetooth/pbap/BluetoothPbapService$1;->this$0:Lcom/android/bluetooth/pbap/BluetoothPbapService;

    #calls: Lcom/android/bluetooth/pbap/BluetoothPbapService;->startRfcommSocketListener()V
    invoke-static {v2}, Lcom/android/bluetooth/pbap/BluetoothPbapService;->access$900(Lcom/android/bluetooth/pbap/BluetoothPbapService;)V

    goto :goto_0

    .line 588
    :cond_0
    iget-object v2, p0, Lcom/android/bluetooth/pbap/BluetoothPbapService$1;->this$0:Lcom/android/bluetooth/pbap/BluetoothPbapService;

    #calls: Lcom/android/bluetooth/pbap/BluetoothPbapService;->closeService()V
    invoke-static {v2}, Lcom/android/bluetooth/pbap/BluetoothPbapService;->access$1000(Lcom/android/bluetooth/pbap/BluetoothPbapService;)V

    goto :goto_0

    .line 592
    :sswitch_2
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.bluetooth.device.action.CONNECTION_ACCESS_CANCEL"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 593
    .local v1, intent:Landroid/content/Intent;
    const-string v2, "com.android.settings"

    const-string v3, "com.android.settings.bluetooth.BluetoothPermissionRequest"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 594
    iget-object v2, p0, Lcom/android/bluetooth/pbap/BluetoothPbapService$1;->this$0:Lcom/android/bluetooth/pbap/BluetoothPbapService;

    invoke-virtual {v2, v1}, Lcom/android/bluetooth/pbap/BluetoothPbapService;->sendBroadcast(Landroid/content/Intent;)V

    .line 595
    iget-object v2, p0, Lcom/android/bluetooth/pbap/BluetoothPbapService$1;->this$0:Lcom/android/bluetooth/pbap/BluetoothPbapService;

    const/4 v3, 0x0

    #setter for: Lcom/android/bluetooth/pbap/BluetoothPbapService;->isWaitingAuthorization:Z
    invoke-static {v2, v3}, Lcom/android/bluetooth/pbap/BluetoothPbapService;->access$602(Lcom/android/bluetooth/pbap/BluetoothPbapService;Z)Z

    .line 596
    iget-object v2, p0, Lcom/android/bluetooth/pbap/BluetoothPbapService$1;->this$0:Lcom/android/bluetooth/pbap/BluetoothPbapService;

    #calls: Lcom/android/bluetooth/pbap/BluetoothPbapService;->stopObexServerSession()V
    invoke-static {v2}, Lcom/android/bluetooth/pbap/BluetoothPbapService;->access$1100(Lcom/android/bluetooth/pbap/BluetoothPbapService;)V

    goto :goto_0

    .line 599
    .end local v1           #intent:Landroid/content/Intent;
    :sswitch_3
    new-instance v0, Landroid/content/Intent;

    const-string v2, "com.android.bluetooth.pbap.userconfirmtimeout"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 600
    .local v0, i:Landroid/content/Intent;
    iget-object v2, p0, Lcom/android/bluetooth/pbap/BluetoothPbapService$1;->this$0:Lcom/android/bluetooth/pbap/BluetoothPbapService;

    invoke-virtual {v2, v0}, Lcom/android/bluetooth/pbap/BluetoothPbapService;->sendBroadcast(Landroid/content/Intent;)V

    .line 601
    iget-object v2, p0, Lcom/android/bluetooth/pbap/BluetoothPbapService$1;->this$0:Lcom/android/bluetooth/pbap/BluetoothPbapService;

    const v3, -0xf4242

    #calls: Lcom/android/bluetooth/pbap/BluetoothPbapService;->removePbapNotification(I)V
    invoke-static {v2, v3}, Lcom/android/bluetooth/pbap/BluetoothPbapService;->access$1200(Lcom/android/bluetooth/pbap/BluetoothPbapService;I)V

    .line 602
    iget-object v2, p0, Lcom/android/bluetooth/pbap/BluetoothPbapService$1;->this$0:Lcom/android/bluetooth/pbap/BluetoothPbapService;

    #calls: Lcom/android/bluetooth/pbap/BluetoothPbapService;->notifyAuthCancelled()V
    invoke-static {v2}, Lcom/android/bluetooth/pbap/BluetoothPbapService;->access$1300(Lcom/android/bluetooth/pbap/BluetoothPbapService;)V

    goto :goto_0

    .line 605
    .end local v0           #i:Landroid/content/Intent;
    :sswitch_4
    iget-object v2, p0, Lcom/android/bluetooth/pbap/BluetoothPbapService$1;->this$0:Lcom/android/bluetooth/pbap/BluetoothPbapService;

    #calls: Lcom/android/bluetooth/pbap/BluetoothPbapService;->stopObexServerSession()V
    invoke-static {v2}, Lcom/android/bluetooth/pbap/BluetoothPbapService;->access$1100(Lcom/android/bluetooth/pbap/BluetoothPbapService;)V

    goto :goto_0

    .line 613
    :sswitch_5
    iget-object v2, p0, Lcom/android/bluetooth/pbap/BluetoothPbapService$1;->this$0:Lcom/android/bluetooth/pbap/BluetoothPbapService;

    const-string v3, "com.android.bluetooth.pbap.authchall"

    #calls: Lcom/android/bluetooth/pbap/BluetoothPbapService;->createPbapNotification(Ljava/lang/String;)V
    invoke-static {v2, v3}, Lcom/android/bluetooth/pbap/BluetoothPbapService;->access$1400(Lcom/android/bluetooth/pbap/BluetoothPbapService;Ljava/lang/String;)V

    .line 614
    iget-object v2, p0, Lcom/android/bluetooth/pbap/BluetoothPbapService$1;->this$0:Lcom/android/bluetooth/pbap/BluetoothPbapService;

    #getter for: Lcom/android/bluetooth/pbap/BluetoothPbapService;->mSessionStatusHandler:Landroid/os/Handler;
    invoke-static {v2}, Lcom/android/bluetooth/pbap/BluetoothPbapService;->access$700(Lcom/android/bluetooth/pbap/BluetoothPbapService;)Landroid/os/Handler;

    move-result-object v2

    iget-object v3, p0, Lcom/android/bluetooth/pbap/BluetoothPbapService$1;->this$0:Lcom/android/bluetooth/pbap/BluetoothPbapService;

    #getter for: Lcom/android/bluetooth/pbap/BluetoothPbapService;->mSessionStatusHandler:Landroid/os/Handler;
    invoke-static {v3}, Lcom/android/bluetooth/pbap/BluetoothPbapService;->access$700(Lcom/android/bluetooth/pbap/BluetoothPbapService;)Landroid/os/Handler;

    move-result-object v3

    const/4 v4, 0x3

    invoke-virtual {v3, v4}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v3

    const-wide/16 v4, 0x7530

    invoke-virtual {v2, v3, v4, v5}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_0

    .line 583
    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_1
        0x2 -> :sswitch_2
        0x3 -> :sswitch_3
        0x1388 -> :sswitch_4
        0x1389 -> :sswitch_0
        0x138a -> :sswitch_0
        0x138b -> :sswitch_5
    .end sparse-switch
.end method
