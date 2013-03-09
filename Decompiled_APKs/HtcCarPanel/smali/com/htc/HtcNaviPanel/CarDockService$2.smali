.class Lcom/htc/HtcNaviPanel/CarDockService$2;
.super Landroid/content/BroadcastReceiver;
.source "CarDockService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/HtcNaviPanel/CarDockService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/HtcNaviPanel/CarDockService;


# direct methods
.method constructor <init>(Lcom/htc/HtcNaviPanel/CarDockService;)V
    .locals 0
    .parameter

    .prologue
    .line 150
    iput-object p1, p0, Lcom/htc/HtcNaviPanel/CarDockService$2;->this$0:Lcom/htc/HtcNaviPanel/CarDockService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 153
    const-string v1, "cardock_type"

    const/4 v2, 0x1

    invoke-virtual {p2, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 155
    .local v0, carDocktType:I
    const-string v1, "CarDockService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "receive carDocktType = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 157
    packed-switch v0, :pswitch_data_0

    .line 168
    :goto_0
    return-void

    .line 159
    :pswitch_0
    iget-object v1, p0, Lcom/htc/HtcNaviPanel/CarDockService$2;->this$0:Lcom/htc/HtcNaviPanel/CarDockService;

    #getter for: Lcom/htc/HtcNaviPanel/CarDockService;->mHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/htc/HtcNaviPanel/CarDockService;->access$500(Lcom/htc/HtcNaviPanel/CarDockService;)Landroid/os/Handler;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0

    .line 162
    :pswitch_1
    iget-object v1, p0, Lcom/htc/HtcNaviPanel/CarDockService$2;->this$0:Lcom/htc/HtcNaviPanel/CarDockService;

    #getter for: Lcom/htc/HtcNaviPanel/CarDockService;->mHeadsetConnector:Lcom/htc/HtcNaviPanel/settings/HtcBluetoothHeadsetConnector;
    invoke-static {v1}, Lcom/htc/HtcNaviPanel/CarDockService;->access$300(Lcom/htc/HtcNaviPanel/CarDockService;)Lcom/htc/HtcNaviPanel/settings/HtcBluetoothHeadsetConnector;

    move-result-object v1

    invoke-virtual {v1}, Lcom/htc/HtcNaviPanel/settings/HtcBluetoothHeadsetConnector;->doBluetoothConnect()V

    goto :goto_0

    .line 165
    :pswitch_2
    iget-object v1, p0, Lcom/htc/HtcNaviPanel/CarDockService$2;->this$0:Lcom/htc/HtcNaviPanel/CarDockService;

    #getter for: Lcom/htc/HtcNaviPanel/CarDockService;->mHeadsetConnector:Lcom/htc/HtcNaviPanel/settings/HtcBluetoothHeadsetConnector;
    invoke-static {v1}, Lcom/htc/HtcNaviPanel/CarDockService;->access$300(Lcom/htc/HtcNaviPanel/CarDockService;)Lcom/htc/HtcNaviPanel/settings/HtcBluetoothHeadsetConnector;

    move-result-object v1

    invoke-virtual {v1}, Lcom/htc/HtcNaviPanel/settings/HtcBluetoothHeadsetConnector;->doBluetoothDisconnect()V

    goto :goto_0

    .line 157
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
