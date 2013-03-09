.class Lcom/htc/dockmode/bluetooth/HtcBluetoothHeadsetConnector$6;
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
    .line 356
    iput-object p1, p0, Lcom/htc/dockmode/bluetooth/HtcBluetoothHeadsetConnector$6;->this$0:Lcom/htc/dockmode/bluetooth/HtcBluetoothHeadsetConnector;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 360
    iget-object v0, p0, Lcom/htc/dockmode/bluetooth/HtcBluetoothHeadsetConnector$6;->this$0:Lcom/htc/dockmode/bluetooth/HtcBluetoothHeadsetConnector;

    #getter for: Lcom/htc/dockmode/bluetooth/HtcBluetoothHeadsetConnector;->mHeadsetService:Landroid/bluetooth/BluetoothHeadset;
    invoke-static {v0}, Lcom/htc/dockmode/bluetooth/HtcBluetoothHeadsetConnector;->access$000(Lcom/htc/dockmode/bluetooth/HtcBluetoothHeadsetConnector;)Landroid/bluetooth/BluetoothHeadset;

    move-result-object v0

    iget-object v1, p0, Lcom/htc/dockmode/bluetooth/HtcBluetoothHeadsetConnector$6;->this$0:Lcom/htc/dockmode/bluetooth/HtcBluetoothHeadsetConnector;

    #getter for: Lcom/htc/dockmode/bluetooth/HtcBluetoothHeadsetConnector;->mUserDefaultDevice:Landroid/bluetooth/BluetoothDevice;
    invoke-static {v1}, Lcom/htc/dockmode/bluetooth/HtcBluetoothHeadsetConnector;->access$400(Lcom/htc/dockmode/bluetooth/HtcBluetoothHeadsetConnector;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/bluetooth/BluetoothHeadset;->getConnectionState(Landroid/bluetooth/BluetoothDevice;)I

    move-result v0

    if-nez v0, :cond_1

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iget-object v2, p0, Lcom/htc/dockmode/bluetooth/HtcBluetoothHeadsetConnector$6;->this$0:Lcom/htc/dockmode/bluetooth/HtcBluetoothHeadsetConnector;

    #getter for: Lcom/htc/dockmode/bluetooth/HtcBluetoothHeadsetConnector;->mHeadsetElapsedRealtime:J
    invoke-static {v2}, Lcom/htc/dockmode/bluetooth/HtcBluetoothHeadsetConnector;->access$800(Lcom/htc/dockmode/bluetooth/HtcBluetoothHeadsetConnector;)J

    move-result-wide v2

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x1f4

    cmp-long v0, v0, v2

    if-gez v0, :cond_1

    .line 362
    iget-object v0, p0, Lcom/htc/dockmode/bluetooth/HtcBluetoothHeadsetConnector$6;->this$0:Lcom/htc/dockmode/bluetooth/HtcBluetoothHeadsetConnector;

    #getter for: Lcom/htc/dockmode/bluetooth/HtcBluetoothHeadsetConnector;->mHeadsetService:Landroid/bluetooth/BluetoothHeadset;
    invoke-static {v0}, Lcom/htc/dockmode/bluetooth/HtcBluetoothHeadsetConnector;->access$000(Lcom/htc/dockmode/bluetooth/HtcBluetoothHeadsetConnector;)Landroid/bluetooth/BluetoothHeadset;

    move-result-object v0

    iget-object v1, p0, Lcom/htc/dockmode/bluetooth/HtcBluetoothHeadsetConnector$6;->this$0:Lcom/htc/dockmode/bluetooth/HtcBluetoothHeadsetConnector;

    #getter for: Lcom/htc/dockmode/bluetooth/HtcBluetoothHeadsetConnector;->mUserDefaultDevice:Landroid/bluetooth/BluetoothDevice;
    invoke-static {v1}, Lcom/htc/dockmode/bluetooth/HtcBluetoothHeadsetConnector;->access$400(Lcom/htc/dockmode/bluetooth/HtcBluetoothHeadsetConnector;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/bluetooth/BluetoothHeadset;->connect(Landroid/bluetooth/BluetoothDevice;)Z

    .line 363
    iget-object v0, p0, Lcom/htc/dockmode/bluetooth/HtcBluetoothHeadsetConnector$6;->this$0:Lcom/htc/dockmode/bluetooth/HtcBluetoothHeadsetConnector;

    #getter for: Lcom/htc/dockmode/bluetooth/HtcBluetoothHeadsetConnector;->mConnectionLoop:Landroid/os/Handler;
    invoke-static {v0}, Lcom/htc/dockmode/bluetooth/HtcBluetoothHeadsetConnector;->access$600(Lcom/htc/dockmode/bluetooth/HtcBluetoothHeadsetConnector;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/htc/dockmode/bluetooth/HtcBluetoothHeadsetConnector$6;->this$0:Lcom/htc/dockmode/bluetooth/HtcBluetoothHeadsetConnector;

    #getter for: Lcom/htc/dockmode/bluetooth/HtcBluetoothHeadsetConnector;->mHeadsetLoopRunnable:Ljava/lang/Runnable;
    invoke-static {v1}, Lcom/htc/dockmode/bluetooth/HtcBluetoothHeadsetConnector;->access$900(Lcom/htc/dockmode/bluetooth/HtcBluetoothHeadsetConnector;)Ljava/lang/Runnable;

    move-result-object v1

    const-wide/16 v2, 0xc8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 369
    :cond_0
    :goto_0
    return-void

    .line 365
    :cond_1
    iget-object v0, p0, Lcom/htc/dockmode/bluetooth/HtcBluetoothHeadsetConnector$6;->this$0:Lcom/htc/dockmode/bluetooth/HtcBluetoothHeadsetConnector;

    #getter for: Lcom/htc/dockmode/bluetooth/HtcBluetoothHeadsetConnector;->mAdapter:Landroid/bluetooth/BluetoothAdapter;
    invoke-static {v0}, Lcom/htc/dockmode/bluetooth/HtcBluetoothHeadsetConnector;->access$1100(Lcom/htc/dockmode/bluetooth/HtcBluetoothHeadsetConnector;)Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/dockmode/bluetooth/HtcBluetoothHeadsetConnector$6;->this$0:Lcom/htc/dockmode/bluetooth/HtcBluetoothHeadsetConnector;

    #getter for: Lcom/htc/dockmode/bluetooth/HtcBluetoothHeadsetConnector;->mHeadsetService:Landroid/bluetooth/BluetoothHeadset;
    invoke-static {v0}, Lcom/htc/dockmode/bluetooth/HtcBluetoothHeadsetConnector;->access$000(Lcom/htc/dockmode/bluetooth/HtcBluetoothHeadsetConnector;)Landroid/bluetooth/BluetoothHeadset;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 366
    iget-object v0, p0, Lcom/htc/dockmode/bluetooth/HtcBluetoothHeadsetConnector$6;->this$0:Lcom/htc/dockmode/bluetooth/HtcBluetoothHeadsetConnector;

    #getter for: Lcom/htc/dockmode/bluetooth/HtcBluetoothHeadsetConnector;->mAdapter:Landroid/bluetooth/BluetoothAdapter;
    invoke-static {v0}, Lcom/htc/dockmode/bluetooth/HtcBluetoothHeadsetConnector;->access$1100(Lcom/htc/dockmode/bluetooth/HtcBluetoothHeadsetConnector;)Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/htc/dockmode/bluetooth/HtcBluetoothHeadsetConnector$6;->this$0:Lcom/htc/dockmode/bluetooth/HtcBluetoothHeadsetConnector;

    #getter for: Lcom/htc/dockmode/bluetooth/HtcBluetoothHeadsetConnector;->mHeadsetService:Landroid/bluetooth/BluetoothHeadset;
    invoke-static {v2}, Lcom/htc/dockmode/bluetooth/HtcBluetoothHeadsetConnector;->access$000(Lcom/htc/dockmode/bluetooth/HtcBluetoothHeadsetConnector;)Landroid/bluetooth/BluetoothHeadset;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/bluetooth/BluetoothAdapter;->closeProfileProxy(ILandroid/bluetooth/BluetoothProfile;)V

    goto :goto_0
.end method
