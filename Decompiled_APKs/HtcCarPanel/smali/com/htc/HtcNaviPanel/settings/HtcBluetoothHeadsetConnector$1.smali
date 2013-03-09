.class Lcom/htc/HtcNaviPanel/settings/HtcBluetoothHeadsetConnector$1;
.super Ljava/lang/Object;
.source "HtcBluetoothHeadsetConnector.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/HtcNaviPanel/settings/HtcBluetoothHeadsetConnector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/HtcNaviPanel/settings/HtcBluetoothHeadsetConnector;


# direct methods
.method constructor <init>(Lcom/htc/HtcNaviPanel/settings/HtcBluetoothHeadsetConnector;)V
    .locals 0
    .parameter

    .prologue
    .line 218
    iput-object p1, p0, Lcom/htc/HtcNaviPanel/settings/HtcBluetoothHeadsetConnector$1;->this$0:Lcom/htc/HtcNaviPanel/settings/HtcBluetoothHeadsetConnector;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    .prologue
    const-wide/16 v6, 0xc8

    const/4 v5, 0x1

    .line 223
    iget-object v1, p0, Lcom/htc/HtcNaviPanel/settings/HtcBluetoothHeadsetConnector$1;->this$0:Lcom/htc/HtcNaviPanel/settings/HtcBluetoothHeadsetConnector;

    #getter for: Lcom/htc/HtcNaviPanel/settings/HtcBluetoothHeadsetConnector;->mHeadsetService:Landroid/bluetooth/BluetoothHeadset;
    invoke-static {v1}, Lcom/htc/HtcNaviPanel/settings/HtcBluetoothHeadsetConnector;->access$100(Lcom/htc/HtcNaviPanel/settings/HtcBluetoothHeadsetConnector;)Landroid/bluetooth/BluetoothHeadset;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/HtcNaviPanel/settings/HtcBluetoothHeadsetConnector$1;->this$0:Lcom/htc/HtcNaviPanel/settings/HtcBluetoothHeadsetConnector;

    #getter for: Lcom/htc/HtcNaviPanel/settings/HtcBluetoothHeadsetConnector;->mCurrentHeadset:Landroid/bluetooth/BluetoothDevice;
    invoke-static {v2}, Lcom/htc/HtcNaviPanel/settings/HtcBluetoothHeadsetConnector;->access$000(Lcom/htc/HtcNaviPanel/settings/HtcBluetoothHeadsetConnector;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/bluetooth/BluetoothHeadset;->getConnectionState(Landroid/bluetooth/BluetoothDevice;)I

    move-result v1

    if-nez v1, :cond_3

    .line 226
    const/4 v0, 0x0

    .local v0, t:I
    :goto_0
    const/16 v1, 0x19

    if-ge v0, v1, :cond_1

    .line 228
    iget-object v1, p0, Lcom/htc/HtcNaviPanel/settings/HtcBluetoothHeadsetConnector$1;->this$0:Lcom/htc/HtcNaviPanel/settings/HtcBluetoothHeadsetConnector;

    #getter for: Lcom/htc/HtcNaviPanel/settings/HtcBluetoothHeadsetConnector;->mHeadsetService:Landroid/bluetooth/BluetoothHeadset;
    invoke-static {v1}, Lcom/htc/HtcNaviPanel/settings/HtcBluetoothHeadsetConnector;->access$100(Lcom/htc/HtcNaviPanel/settings/HtcBluetoothHeadsetConnector;)Landroid/bluetooth/BluetoothHeadset;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/HtcNaviPanel/settings/HtcBluetoothHeadsetConnector$1;->this$0:Lcom/htc/HtcNaviPanel/settings/HtcBluetoothHeadsetConnector;

    #getter for: Lcom/htc/HtcNaviPanel/settings/HtcBluetoothHeadsetConnector;->mUserDefaultDevice:Landroid/bluetooth/BluetoothDevice;
    invoke-static {v2}, Lcom/htc/HtcNaviPanel/settings/HtcBluetoothHeadsetConnector;->access$200(Lcom/htc/HtcNaviPanel/settings/HtcBluetoothHeadsetConnector;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/bluetooth/BluetoothHeadset;->connect(Landroid/bluetooth/BluetoothDevice;)Z

    .line 233
    const-wide/16 v1, 0xc8

    :try_start_0
    invoke-static {v1, v2}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 237
    :goto_1
    iget-object v1, p0, Lcom/htc/HtcNaviPanel/settings/HtcBluetoothHeadsetConnector$1;->this$0:Lcom/htc/HtcNaviPanel/settings/HtcBluetoothHeadsetConnector;

    #getter for: Lcom/htc/HtcNaviPanel/settings/HtcBluetoothHeadsetConnector;->mHeadsetService:Landroid/bluetooth/BluetoothHeadset;
    invoke-static {v1}, Lcom/htc/HtcNaviPanel/settings/HtcBluetoothHeadsetConnector;->access$100(Lcom/htc/HtcNaviPanel/settings/HtcBluetoothHeadsetConnector;)Landroid/bluetooth/BluetoothHeadset;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/HtcNaviPanel/settings/HtcBluetoothHeadsetConnector$1;->this$0:Lcom/htc/HtcNaviPanel/settings/HtcBluetoothHeadsetConnector;

    #getter for: Lcom/htc/HtcNaviPanel/settings/HtcBluetoothHeadsetConnector;->mCurrentHeadset:Landroid/bluetooth/BluetoothDevice;
    invoke-static {v2}, Lcom/htc/HtcNaviPanel/settings/HtcBluetoothHeadsetConnector;->access$000(Lcom/htc/HtcNaviPanel/settings/HtcBluetoothHeadsetConnector;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/bluetooth/BluetoothHeadset;->getConnectionState(Landroid/bluetooth/BluetoothDevice;)I

    move-result v1

    if-eq v1, v5, :cond_0

    iget-object v1, p0, Lcom/htc/HtcNaviPanel/settings/HtcBluetoothHeadsetConnector$1;->this$0:Lcom/htc/HtcNaviPanel/settings/HtcBluetoothHeadsetConnector;

    #getter for: Lcom/htc/HtcNaviPanel/settings/HtcBluetoothHeadsetConnector;->mHeadsetService:Landroid/bluetooth/BluetoothHeadset;
    invoke-static {v1}, Lcom/htc/HtcNaviPanel/settings/HtcBluetoothHeadsetConnector;->access$100(Lcom/htc/HtcNaviPanel/settings/HtcBluetoothHeadsetConnector;)Landroid/bluetooth/BluetoothHeadset;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/HtcNaviPanel/settings/HtcBluetoothHeadsetConnector$1;->this$0:Lcom/htc/HtcNaviPanel/settings/HtcBluetoothHeadsetConnector;

    #getter for: Lcom/htc/HtcNaviPanel/settings/HtcBluetoothHeadsetConnector;->mCurrentHeadset:Landroid/bluetooth/BluetoothDevice;
    invoke-static {v2}, Lcom/htc/HtcNaviPanel/settings/HtcBluetoothHeadsetConnector;->access$000(Lcom/htc/HtcNaviPanel/settings/HtcBluetoothHeadsetConnector;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/bluetooth/BluetoothHeadset;->getConnectionState(Landroid/bluetooth/BluetoothDevice;)I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_2

    .line 239
    :cond_0
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/HtcNaviPanel/settings/HtcBluetoothHeadsetConnector$1;->this$0:Lcom/htc/HtcNaviPanel/settings/HtcBluetoothHeadsetConnector;

    #getter for: Lcom/htc/HtcNaviPanel/settings/HtcBluetoothHeadsetConnector;->mHeadsetService:Landroid/bluetooth/BluetoothHeadset;
    invoke-static {v2}, Lcom/htc/HtcNaviPanel/settings/HtcBluetoothHeadsetConnector;->access$100(Lcom/htc/HtcNaviPanel/settings/HtcBluetoothHeadsetConnector;)Landroid/bluetooth/BluetoothHeadset;

    move-result-object v2

    invoke-virtual {v1, v5, v2}, Landroid/bluetooth/BluetoothAdapter;->closeProfileProxy(ILandroid/bluetooth/BluetoothProfile;)V

    .line 256
    .end local v0           #t:I
    :cond_1
    :goto_2
    return-void

    .line 226
    .restart local v0       #t:I
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 249
    .end local v0           #t:I
    :cond_3
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    iget-object v3, p0, Lcom/htc/HtcNaviPanel/settings/HtcBluetoothHeadsetConnector$1;->this$0:Lcom/htc/HtcNaviPanel/settings/HtcBluetoothHeadsetConnector;

    #getter for: Lcom/htc/HtcNaviPanel/settings/HtcBluetoothHeadsetConnector;->mElapsedRealtime:J
    invoke-static {v3}, Lcom/htc/HtcNaviPanel/settings/HtcBluetoothHeadsetConnector;->access$300(Lcom/htc/HtcNaviPanel/settings/HtcBluetoothHeadsetConnector;)J

    move-result-wide v3

    sub-long/2addr v1, v3

    const-wide/16 v3, 0x1388

    cmp-long v1, v1, v3

    if-gez v1, :cond_4

    .line 250
    iget-object v1, p0, Lcom/htc/HtcNaviPanel/settings/HtcBluetoothHeadsetConnector$1;->this$0:Lcom/htc/HtcNaviPanel/settings/HtcBluetoothHeadsetConnector;

    #getter for: Lcom/htc/HtcNaviPanel/settings/HtcBluetoothHeadsetConnector;->mConnectionLoop:Landroid/os/Handler;
    invoke-static {v1}, Lcom/htc/HtcNaviPanel/settings/HtcBluetoothHeadsetConnector;->access$500(Lcom/htc/HtcNaviPanel/settings/HtcBluetoothHeadsetConnector;)Landroid/os/Handler;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/HtcNaviPanel/settings/HtcBluetoothHeadsetConnector$1;->this$0:Lcom/htc/HtcNaviPanel/settings/HtcBluetoothHeadsetConnector;

    #getter for: Lcom/htc/HtcNaviPanel/settings/HtcBluetoothHeadsetConnector;->mConnectionRunnable:Ljava/lang/Runnable;
    invoke-static {v2}, Lcom/htc/HtcNaviPanel/settings/HtcBluetoothHeadsetConnector;->access$400(Lcom/htc/HtcNaviPanel/settings/HtcBluetoothHeadsetConnector;)Ljava/lang/Runnable;

    move-result-object v2

    invoke-virtual {v1, v2, v6, v7}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_2

    .line 253
    :cond_4
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/HtcNaviPanel/settings/HtcBluetoothHeadsetConnector$1;->this$0:Lcom/htc/HtcNaviPanel/settings/HtcBluetoothHeadsetConnector;

    #getter for: Lcom/htc/HtcNaviPanel/settings/HtcBluetoothHeadsetConnector;->mHeadsetService:Landroid/bluetooth/BluetoothHeadset;
    invoke-static {v2}, Lcom/htc/HtcNaviPanel/settings/HtcBluetoothHeadsetConnector;->access$100(Lcom/htc/HtcNaviPanel/settings/HtcBluetoothHeadsetConnector;)Landroid/bluetooth/BluetoothHeadset;

    move-result-object v2

    invoke-virtual {v1, v5, v2}, Landroid/bluetooth/BluetoothAdapter;->closeProfileProxy(ILandroid/bluetooth/BluetoothProfile;)V

    goto :goto_2

    .line 234
    .restart local v0       #t:I
    :catch_0
    move-exception v1

    goto :goto_1
.end method
