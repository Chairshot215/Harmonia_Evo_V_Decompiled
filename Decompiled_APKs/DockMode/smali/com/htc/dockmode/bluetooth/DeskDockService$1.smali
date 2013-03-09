.class Lcom/htc/dockmode/bluetooth/DeskDockService$1;
.super Landroid/os/Handler;
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
    .line 48
    iput-object p1, p0, Lcom/htc/dockmode/bluetooth/DeskDockService$1;->this$0:Lcom/htc/dockmode/bluetooth/DeskDockService;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2
    .parameter "msg"

    .prologue
    .line 54
    iget-object v0, p0, Lcom/htc/dockmode/bluetooth/DeskDockService$1;->this$0:Lcom/htc/dockmode/bluetooth/DeskDockService;

    #calls: Lcom/htc/dockmode/bluetooth/DeskDockService;->unregisteReceiver()V
    invoke-static {v0}, Lcom/htc/dockmode/bluetooth/DeskDockService;->access$000(Lcom/htc/dockmode/bluetooth/DeskDockService;)V

    .line 55
    iget-object v0, p0, Lcom/htc/dockmode/bluetooth/DeskDockService$1;->this$0:Lcom/htc/dockmode/bluetooth/DeskDockService;

    #calls: Lcom/htc/dockmode/bluetooth/DeskDockService;->stopBluetoothByState()V
    invoke-static {v0}, Lcom/htc/dockmode/bluetooth/DeskDockService;->access$100(Lcom/htc/dockmode/bluetooth/DeskDockService;)V

    .line 56
    iget-object v0, p0, Lcom/htc/dockmode/bluetooth/DeskDockService$1;->this$0:Lcom/htc/dockmode/bluetooth/DeskDockService;

    #getter for: Lcom/htc/dockmode/bluetooth/DeskDockService;->mHeadsetConnector:Lcom/htc/dockmode/bluetooth/HtcBluetoothHeadsetConnector;
    invoke-static {v0}, Lcom/htc/dockmode/bluetooth/DeskDockService;->access$200(Lcom/htc/dockmode/bluetooth/DeskDockService;)Lcom/htc/dockmode/bluetooth/HtcBluetoothHeadsetConnector;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 57
    iget-object v0, p0, Lcom/htc/dockmode/bluetooth/DeskDockService$1;->this$0:Lcom/htc/dockmode/bluetooth/DeskDockService;

    #getter for: Lcom/htc/dockmode/bluetooth/DeskDockService;->mHeadsetConnector:Lcom/htc/dockmode/bluetooth/HtcBluetoothHeadsetConnector;
    invoke-static {v0}, Lcom/htc/dockmode/bluetooth/DeskDockService;->access$200(Lcom/htc/dockmode/bluetooth/DeskDockService;)Lcom/htc/dockmode/bluetooth/HtcBluetoothHeadsetConnector;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/dockmode/bluetooth/HtcBluetoothHeadsetConnector;->release()V

    .line 58
    iget-object v0, p0, Lcom/htc/dockmode/bluetooth/DeskDockService$1;->this$0:Lcom/htc/dockmode/bluetooth/DeskDockService;

    const/4 v1, 0x0

    #setter for: Lcom/htc/dockmode/bluetooth/DeskDockService;->mHeadsetConnector:Lcom/htc/dockmode/bluetooth/HtcBluetoothHeadsetConnector;
    invoke-static {v0, v1}, Lcom/htc/dockmode/bluetooth/DeskDockService;->access$202(Lcom/htc/dockmode/bluetooth/DeskDockService;Lcom/htc/dockmode/bluetooth/HtcBluetoothHeadsetConnector;)Lcom/htc/dockmode/bluetooth/HtcBluetoothHeadsetConnector;

    .line 60
    :cond_0
    iget-object v0, p0, Lcom/htc/dockmode/bluetooth/DeskDockService$1;->this$0:Lcom/htc/dockmode/bluetooth/DeskDockService;

    invoke-virtual {v0}, Lcom/htc/dockmode/bluetooth/DeskDockService;->stopSelf()V

    .line 61
    iget-object v0, p0, Lcom/htc/dockmode/bluetooth/DeskDockService$1;->this$0:Lcom/htc/dockmode/bluetooth/DeskDockService;

    const/4 v1, 0x0

    #setter for: Lcom/htc/dockmode/bluetooth/DeskDockService;->mInit:Z
    invoke-static {v0, v1}, Lcom/htc/dockmode/bluetooth/DeskDockService;->access$302(Lcom/htc/dockmode/bluetooth/DeskDockService;Z)Z

    .line 62
    return-void
.end method
