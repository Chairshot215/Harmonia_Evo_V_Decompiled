.class Lcom/htc/HtcNaviPanel/CarDockService$1;
.super Landroid/os/Handler;
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
    .line 49
    iput-object p1, p0, Lcom/htc/HtcNaviPanel/CarDockService$1;->this$0:Lcom/htc/HtcNaviPanel/CarDockService;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3
    .parameter "msg"

    .prologue
    const/4 v2, 0x0

    .line 53
    iget-object v0, p0, Lcom/htc/HtcNaviPanel/CarDockService$1;->this$0:Lcom/htc/HtcNaviPanel/CarDockService;

    #getter for: Lcom/htc/HtcNaviPanel/CarDockService;->mIgnoreStop:Z
    invoke-static {v0}, Lcom/htc/HtcNaviPanel/CarDockService;->access$000(Lcom/htc/HtcNaviPanel/CarDockService;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 54
    iget-object v0, p0, Lcom/htc/HtcNaviPanel/CarDockService$1;->this$0:Lcom/htc/HtcNaviPanel/CarDockService;

    #setter for: Lcom/htc/HtcNaviPanel/CarDockService;->mIgnoreStop:Z
    invoke-static {v0, v2}, Lcom/htc/HtcNaviPanel/CarDockService;->access$002(Lcom/htc/HtcNaviPanel/CarDockService;Z)Z

    .line 67
    :goto_0
    return-void

    .line 58
    :cond_0
    const-string v0, "CarDockService"

    const-string v1, "stop service"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 59
    iget-object v0, p0, Lcom/htc/HtcNaviPanel/CarDockService$1;->this$0:Lcom/htc/HtcNaviPanel/CarDockService;

    #calls: Lcom/htc/HtcNaviPanel/CarDockService;->unregisteReceiver()V
    invoke-static {v0}, Lcom/htc/HtcNaviPanel/CarDockService;->access$100(Lcom/htc/HtcNaviPanel/CarDockService;)V

    .line 60
    iget-object v0, p0, Lcom/htc/HtcNaviPanel/CarDockService$1;->this$0:Lcom/htc/HtcNaviPanel/CarDockService;

    #calls: Lcom/htc/HtcNaviPanel/CarDockService;->stopBluetoothByState()V
    invoke-static {v0}, Lcom/htc/HtcNaviPanel/CarDockService;->access$200(Lcom/htc/HtcNaviPanel/CarDockService;)V

    .line 61
    iget-object v0, p0, Lcom/htc/HtcNaviPanel/CarDockService$1;->this$0:Lcom/htc/HtcNaviPanel/CarDockService;

    #getter for: Lcom/htc/HtcNaviPanel/CarDockService;->mHeadsetConnector:Lcom/htc/HtcNaviPanel/settings/HtcBluetoothHeadsetConnector;
    invoke-static {v0}, Lcom/htc/HtcNaviPanel/CarDockService;->access$300(Lcom/htc/HtcNaviPanel/CarDockService;)Lcom/htc/HtcNaviPanel/settings/HtcBluetoothHeadsetConnector;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 62
    iget-object v0, p0, Lcom/htc/HtcNaviPanel/CarDockService$1;->this$0:Lcom/htc/HtcNaviPanel/CarDockService;

    #getter for: Lcom/htc/HtcNaviPanel/CarDockService;->mHeadsetConnector:Lcom/htc/HtcNaviPanel/settings/HtcBluetoothHeadsetConnector;
    invoke-static {v0}, Lcom/htc/HtcNaviPanel/CarDockService;->access$300(Lcom/htc/HtcNaviPanel/CarDockService;)Lcom/htc/HtcNaviPanel/settings/HtcBluetoothHeadsetConnector;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/HtcNaviPanel/settings/HtcBluetoothHeadsetConnector;->release()V

    .line 63
    iget-object v0, p0, Lcom/htc/HtcNaviPanel/CarDockService$1;->this$0:Lcom/htc/HtcNaviPanel/CarDockService;

    const/4 v1, 0x0

    #setter for: Lcom/htc/HtcNaviPanel/CarDockService;->mHeadsetConnector:Lcom/htc/HtcNaviPanel/settings/HtcBluetoothHeadsetConnector;
    invoke-static {v0, v1}, Lcom/htc/HtcNaviPanel/CarDockService;->access$302(Lcom/htc/HtcNaviPanel/CarDockService;Lcom/htc/HtcNaviPanel/settings/HtcBluetoothHeadsetConnector;)Lcom/htc/HtcNaviPanel/settings/HtcBluetoothHeadsetConnector;

    .line 65
    :cond_1
    iget-object v0, p0, Lcom/htc/HtcNaviPanel/CarDockService$1;->this$0:Lcom/htc/HtcNaviPanel/CarDockService;

    invoke-virtual {v0}, Lcom/htc/HtcNaviPanel/CarDockService;->stopSelf()V

    .line 66
    iget-object v0, p0, Lcom/htc/HtcNaviPanel/CarDockService$1;->this$0:Lcom/htc/HtcNaviPanel/CarDockService;

    #setter for: Lcom/htc/HtcNaviPanel/CarDockService;->mInit:Z
    invoke-static {v0, v2}, Lcom/htc/HtcNaviPanel/CarDockService;->access$402(Lcom/htc/HtcNaviPanel/CarDockService;Z)Z

    goto :goto_0
.end method
