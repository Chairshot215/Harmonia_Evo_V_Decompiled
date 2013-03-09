.class Lcom/htc/dockmode/bluetooth/HtcBluetoothHeadsetConnector$5;
.super Ljava/lang/Object;
.source "HtcBluetoothHeadsetConnector.java"

# interfaces
.implements Ljava/lang/Runnable;


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
    .line 343
    iput-object p1, p0, Lcom/htc/dockmode/bluetooth/HtcBluetoothHeadsetConnector$5;->this$0:Lcom/htc/dockmode/bluetooth/HtcBluetoothHeadsetConnector;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 347
    iget-object v0, p0, Lcom/htc/dockmode/bluetooth/HtcBluetoothHeadsetConnector$5;->this$0:Lcom/htc/dockmode/bluetooth/HtcBluetoothHeadsetConnector;

    #getter for: Lcom/htc/dockmode/bluetooth/HtcBluetoothHeadsetConnector;->mA2dpService:Landroid/bluetooth/BluetoothA2dp;
    invoke-static {v0}, Lcom/htc/dockmode/bluetooth/HtcBluetoothHeadsetConnector;->access$100(Lcom/htc/dockmode/bluetooth/HtcBluetoothHeadsetConnector;)Landroid/bluetooth/BluetoothA2dp;

    move-result-object v0

    iget-object v1, p0, Lcom/htc/dockmode/bluetooth/HtcBluetoothHeadsetConnector$5;->this$0:Lcom/htc/dockmode/bluetooth/HtcBluetoothHeadsetConnector;

    #getter for: Lcom/htc/dockmode/bluetooth/HtcBluetoothHeadsetConnector;->mUserDefaultDevice:Landroid/bluetooth/BluetoothDevice;
    invoke-static {v1}, Lcom/htc/dockmode/bluetooth/HtcBluetoothHeadsetConnector;->access$400(Lcom/htc/dockmode/bluetooth/HtcBluetoothHeadsetConnector;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/bluetooth/BluetoothA2dp;->getConnectionState(Landroid/bluetooth/BluetoothDevice;)I

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iget-object v2, p0, Lcom/htc/dockmode/bluetooth/HtcBluetoothHeadsetConnector$5;->this$0:Lcom/htc/dockmode/bluetooth/HtcBluetoothHeadsetConnector;

    #getter for: Lcom/htc/dockmode/bluetooth/HtcBluetoothHeadsetConnector;->mA2dpElapsedRealtime:J
    invoke-static {v2}, Lcom/htc/dockmode/bluetooth/HtcBluetoothHeadsetConnector;->access$300(Lcom/htc/dockmode/bluetooth/HtcBluetoothHeadsetConnector;)J

    move-result-wide v2

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x1f4

    cmp-long v0, v0, v2

    if-gez v0, :cond_0

    .line 349
    iget-object v0, p0, Lcom/htc/dockmode/bluetooth/HtcBluetoothHeadsetConnector$5;->this$0:Lcom/htc/dockmode/bluetooth/HtcBluetoothHeadsetConnector;

    #getter for: Lcom/htc/dockmode/bluetooth/HtcBluetoothHeadsetConnector;->mA2dpService:Landroid/bluetooth/BluetoothA2dp;
    invoke-static {v0}, Lcom/htc/dockmode/bluetooth/HtcBluetoothHeadsetConnector;->access$100(Lcom/htc/dockmode/bluetooth/HtcBluetoothHeadsetConnector;)Landroid/bluetooth/BluetoothA2dp;

    move-result-object v0

    iget-object v1, p0, Lcom/htc/dockmode/bluetooth/HtcBluetoothHeadsetConnector$5;->this$0:Lcom/htc/dockmode/bluetooth/HtcBluetoothHeadsetConnector;

    #getter for: Lcom/htc/dockmode/bluetooth/HtcBluetoothHeadsetConnector;->mUserDefaultDevice:Landroid/bluetooth/BluetoothDevice;
    invoke-static {v1}, Lcom/htc/dockmode/bluetooth/HtcBluetoothHeadsetConnector;->access$400(Lcom/htc/dockmode/bluetooth/HtcBluetoothHeadsetConnector;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/bluetooth/BluetoothA2dp;->connect(Landroid/bluetooth/BluetoothDevice;)Z

    .line 350
    iget-object v0, p0, Lcom/htc/dockmode/bluetooth/HtcBluetoothHeadsetConnector$5;->this$0:Lcom/htc/dockmode/bluetooth/HtcBluetoothHeadsetConnector;

    #getter for: Lcom/htc/dockmode/bluetooth/HtcBluetoothHeadsetConnector;->mConnectionLoop:Landroid/os/Handler;
    invoke-static {v0}, Lcom/htc/dockmode/bluetooth/HtcBluetoothHeadsetConnector;->access$600(Lcom/htc/dockmode/bluetooth/HtcBluetoothHeadsetConnector;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/htc/dockmode/bluetooth/HtcBluetoothHeadsetConnector$5;->this$0:Lcom/htc/dockmode/bluetooth/HtcBluetoothHeadsetConnector;

    #getter for: Lcom/htc/dockmode/bluetooth/HtcBluetoothHeadsetConnector;->mA2dpLoopRunnable:Ljava/lang/Runnable;
    invoke-static {v1}, Lcom/htc/dockmode/bluetooth/HtcBluetoothHeadsetConnector;->access$500(Lcom/htc/dockmode/bluetooth/HtcBluetoothHeadsetConnector;)Ljava/lang/Runnable;

    move-result-object v1

    const-wide/16 v2, 0xc8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 353
    :cond_0
    return-void
.end method
