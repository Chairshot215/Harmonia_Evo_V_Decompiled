.class Landroid/server/BluetoothPanProfileHandler$2;
.super Landroid/content/BroadcastReceiver;
.source "BluetoothPanProfileHandler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/server/BluetoothPanProfileHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/server/BluetoothPanProfileHandler;


# direct methods
.method constructor <init>(Landroid/server/BluetoothPanProfileHandler;)V
    .locals 0

    iput-object p1, p0, Landroid/server/BluetoothPanProfileHandler$2;->this$0:Landroid/server/BluetoothPanProfileHandler;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 8

    const/4 v7, 0x1

    const/4 v6, 0x0

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    iget-object v3, p0, Landroid/server/BluetoothPanProfileHandler$2;->this$0:Landroid/server/BluetoothPanProfileHandler;

    #getter for: Landroid/server/BluetoothPanProfileHandler;->mProcessingMhsRequest:Z
    invoke-static {v3}, Landroid/server/BluetoothPanProfileHandler;->access$800(Landroid/server/BluetoothPanProfileHandler;)Z

    move-result v3

    if-eqz v3, :cond_0

    const-string v3, "android.net.conn.HTC_PERMITTED_TETHER_CHANGE"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const-string v3, "BluetoothPanProfileHandler"

    const-string v4, "GOT ConnectivityManager.HTC_PERMITTED_TETHER_ACTION"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v3, p0, Landroid/server/BluetoothPanProfileHandler$2;->this$0:Landroid/server/BluetoothPanProfileHandler;

    #getter for: Landroid/server/BluetoothPanProfileHandler;->mContext:Landroid/content/Context;
    invoke-static {v3}, Landroid/server/BluetoothPanProfileHandler;->access$300(Landroid/server/BluetoothPanProfileHandler;)Landroid/content/Context;

    move-result-object v3

    const-string v4, "connectivity"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/ConnectivityManager;

    if-nez v1, :cond_1

    const-string v3, "BluetoothPanProfileHandler"

    const-string v4, "cm = null ! return!"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    return-void

    :cond_1
    const/16 v3, -0x24

    const/4 v4, -0x1

    const/4 v5, 0x0

    invoke-virtual {v1, v3, v4, v5}, Landroid/net/ConnectivityManager;->htcRequestPermittedTether(IILjava/lang/String;)I

    move-result v2

    const-string v3, "BluetoothPanProfileHandler"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Now MhsStatus: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-nez v2, :cond_2

    const-string v3, "BluetoothPanProfileHandler"

    const-string v4, "MHS HTC_PERMITTED_TETHER_ALLOW"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v3, p0, Landroid/server/BluetoothPanProfileHandler$2;->this$0:Landroid/server/BluetoothPanProfileHandler;

    #setter for: Landroid/server/BluetoothPanProfileHandler;->mBtMhsPermission:Z
    invoke-static {v3, v7}, Landroid/server/BluetoothPanProfileHandler;->access$902(Landroid/server/BluetoothPanProfileHandler;Z)Z

    iget-object v3, p0, Landroid/server/BluetoothPanProfileHandler$2;->this$0:Landroid/server/BluetoothPanProfileHandler;

    #setter for: Landroid/server/BluetoothPanProfileHandler;->mProcessingMhsRequest:Z
    invoke-static {v3, v6}, Landroid/server/BluetoothPanProfileHandler;->access$802(Landroid/server/BluetoothPanProfileHandler;Z)Z

    goto :goto_0

    :cond_2
    if-ne v2, v7, :cond_0

    const-string v3, "BluetoothPanProfileHandler"

    const-string v4, "MHS HTC_PERMITTED_TETHER_DENY"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v3, p0, Landroid/server/BluetoothPanProfileHandler$2;->this$0:Landroid/server/BluetoothPanProfileHandler;

    #setter for: Landroid/server/BluetoothPanProfileHandler;->mBtMhsPermission:Z
    invoke-static {v3, v6}, Landroid/server/BluetoothPanProfileHandler;->access$902(Landroid/server/BluetoothPanProfileHandler;Z)Z

    iget-object v3, p0, Landroid/server/BluetoothPanProfileHandler$2;->this$0:Landroid/server/BluetoothPanProfileHandler;

    #setter for: Landroid/server/BluetoothPanProfileHandler;->mProcessingMhsRequest:Z
    invoke-static {v3, v6}, Landroid/server/BluetoothPanProfileHandler;->access$802(Landroid/server/BluetoothPanProfileHandler;Z)Z

    iget-object v3, p0, Landroid/server/BluetoothPanProfileHandler$2;->this$0:Landroid/server/BluetoothPanProfileHandler;

    #calls: Landroid/server/BluetoothPanProfileHandler;->disconnectPanServerDevices()Z
    invoke-static {v3}, Landroid/server/BluetoothPanProfileHandler;->access$1000(Landroid/server/BluetoothPanProfileHandler;)Z

    goto :goto_0
.end method
