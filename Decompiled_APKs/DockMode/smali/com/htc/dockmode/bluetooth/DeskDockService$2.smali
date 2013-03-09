.class Lcom/htc/dockmode/bluetooth/DeskDockService$2;
.super Landroid/content/BroadcastReceiver;
.source "DeskDockService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/dockmode/bluetooth/DeskDockService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/dockmode/bluetooth/DeskDockService;


# direct methods
.method constructor <init>(Lcom/htc/dockmode/bluetooth/DeskDockService;)V
    .locals 0
    .parameter

    .prologue
    .line 146
    iput-object p1, p0, Lcom/htc/dockmode/bluetooth/DeskDockService$2;->this$0:Lcom/htc/dockmode/bluetooth/DeskDockService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3
    .parameter "context"
    .parameter "intent"

    .prologue
    const/4 v2, 0x0

    .line 149
    const-string v1, "deskdock_type"

    invoke-virtual {p2, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 156
    .local v0, deskDocktType:I
    packed-switch v0, :pswitch_data_0

    .line 167
    :goto_0
    return-void

    .line 158
    :pswitch_0
    iget-object v1, p0, Lcom/htc/dockmode/bluetooth/DeskDockService$2;->this$0:Lcom/htc/dockmode/bluetooth/DeskDockService;

    #getter for: Lcom/htc/dockmode/bluetooth/DeskDockService;->mHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/htc/dockmode/bluetooth/DeskDockService;->access$400(Lcom/htc/dockmode/bluetooth/DeskDockService;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0

    .line 161
    :pswitch_1
    iget-object v1, p0, Lcom/htc/dockmode/bluetooth/DeskDockService$2;->this$0:Lcom/htc/dockmode/bluetooth/DeskDockService;

    #getter for: Lcom/htc/dockmode/bluetooth/DeskDockService;->mHeadsetConnector:Lcom/htc/dockmode/bluetooth/HtcBluetoothHeadsetConnector;
    invoke-static {v1}, Lcom/htc/dockmode/bluetooth/DeskDockService;->access$200(Lcom/htc/dockmode/bluetooth/DeskDockService;)Lcom/htc/dockmode/bluetooth/HtcBluetoothHeadsetConnector;

    move-result-object v1

    invoke-virtual {v1}, Lcom/htc/dockmode/bluetooth/HtcBluetoothHeadsetConnector;->doBluetoothConnect()V

    goto :goto_0

    .line 164
    :pswitch_2
    iget-object v1, p0, Lcom/htc/dockmode/bluetooth/DeskDockService$2;->this$0:Lcom/htc/dockmode/bluetooth/DeskDockService;

    #getter for: Lcom/htc/dockmode/bluetooth/DeskDockService;->mHeadsetConnector:Lcom/htc/dockmode/bluetooth/HtcBluetoothHeadsetConnector;
    invoke-static {v1}, Lcom/htc/dockmode/bluetooth/DeskDockService;->access$200(Lcom/htc/dockmode/bluetooth/DeskDockService;)Lcom/htc/dockmode/bluetooth/HtcBluetoothHeadsetConnector;

    move-result-object v1

    invoke-virtual {v1}, Lcom/htc/dockmode/bluetooth/HtcBluetoothHeadsetConnector;->doBluetoothDisconnect()V

    goto :goto_0

    .line 156
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
