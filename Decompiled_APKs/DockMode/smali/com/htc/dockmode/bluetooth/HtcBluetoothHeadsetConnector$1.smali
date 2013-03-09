.class Lcom/htc/dockmode/bluetooth/HtcBluetoothHeadsetConnector$1;
.super Ljava/lang/Object;
.source "HtcBluetoothHeadsetConnector.java"

# interfaces
.implements Landroid/bluetooth/BluetoothProfile$ServiceListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/dockmode/bluetooth/HtcBluetoothHeadsetConnector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/dockmode/bluetooth/HtcBluetoothHeadsetConnector;


# direct methods
.method constructor <init>(Lcom/htc/dockmode/bluetooth/HtcBluetoothHeadsetConnector;)V
    .locals 0
    .parameter

    .prologue
    .line 130
    iput-object p1, p0, Lcom/htc/dockmode/bluetooth/HtcBluetoothHeadsetConnector$1;->this$0:Lcom/htc/dockmode/bluetooth/HtcBluetoothHeadsetConnector;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(ILandroid/bluetooth/BluetoothProfile;)V
    .locals 1
    .parameter "profile"
    .parameter "proxy"

    .prologue
    .line 132
    iget-object v0, p0, Lcom/htc/dockmode/bluetooth/HtcBluetoothHeadsetConnector$1;->this$0:Lcom/htc/dockmode/bluetooth/HtcBluetoothHeadsetConnector;

    check-cast p2, Landroid/bluetooth/BluetoothHeadset;

    .end local p2
    #setter for: Lcom/htc/dockmode/bluetooth/HtcBluetoothHeadsetConnector;->mHeadsetService:Landroid/bluetooth/BluetoothHeadset;
    invoke-static {v0, p2}, Lcom/htc/dockmode/bluetooth/HtcBluetoothHeadsetConnector;->access$002(Lcom/htc/dockmode/bluetooth/HtcBluetoothHeadsetConnector;Landroid/bluetooth/BluetoothHeadset;)Landroid/bluetooth/BluetoothHeadset;

    .line 133
    iget-object v0, p0, Lcom/htc/dockmode/bluetooth/HtcBluetoothHeadsetConnector$1;->this$0:Lcom/htc/dockmode/bluetooth/HtcBluetoothHeadsetConnector;

    invoke-virtual {v0}, Lcom/htc/dockmode/bluetooth/HtcBluetoothHeadsetConnector;->headsetOnServiceConnected()V

    .line 134
    return-void
.end method

.method public onServiceDisconnected(I)V
    .locals 2
    .parameter "profile"

    .prologue
    .line 137
    iget-object v0, p0, Lcom/htc/dockmode/bluetooth/HtcBluetoothHeadsetConnector$1;->this$0:Lcom/htc/dockmode/bluetooth/HtcBluetoothHeadsetConnector;

    invoke-virtual {v0}, Lcom/htc/dockmode/bluetooth/HtcBluetoothHeadsetConnector;->headsetOnServiceDisconnected()V

    .line 138
    iget-object v0, p0, Lcom/htc/dockmode/bluetooth/HtcBluetoothHeadsetConnector$1;->this$0:Lcom/htc/dockmode/bluetooth/HtcBluetoothHeadsetConnector;

    const/4 v1, 0x0

    #setter for: Lcom/htc/dockmode/bluetooth/HtcBluetoothHeadsetConnector;->mHeadsetService:Landroid/bluetooth/BluetoothHeadset;
    invoke-static {v0, v1}, Lcom/htc/dockmode/bluetooth/HtcBluetoothHeadsetConnector;->access$002(Lcom/htc/dockmode/bluetooth/HtcBluetoothHeadsetConnector;Landroid/bluetooth/BluetoothHeadset;)Landroid/bluetooth/BluetoothHeadset;

    .line 139
    return-void
.end method
