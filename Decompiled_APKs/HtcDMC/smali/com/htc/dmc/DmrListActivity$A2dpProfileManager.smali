.class Lcom/htc/dmc/DmrListActivity$A2dpProfileManager;
.super Ljava/lang/Object;
.source "DmrListActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/dmc/DmrListActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "A2dpProfileManager"
.end annotation


# instance fields
.field private mBTSvcListener:Landroid/bluetooth/BluetoothProfile$ServiceListener;

.field private mService:Landroid/bluetooth/BluetoothA2dp;

.field final synthetic this$0:Lcom/htc/dmc/DmrListActivity;


# direct methods
.method public constructor <init>(Lcom/htc/dmc/DmrListActivity;Landroid/content/Context;Landroid/bluetooth/BluetoothAdapter;)V
    .locals 2
    .parameter
    .parameter "c"
    .parameter "btAdapter"

    .prologue
    .line 822
    iput-object p1, p0, Lcom/htc/dmc/DmrListActivity$A2dpProfileManager;->this$0:Lcom/htc/dmc/DmrListActivity;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 837
    new-instance v0, Lcom/htc/dmc/DmrListActivity$A2dpProfileManager$1;

    invoke-direct {v0, p0}, Lcom/htc/dmc/DmrListActivity$A2dpProfileManager$1;-><init>(Lcom/htc/dmc/DmrListActivity$A2dpProfileManager;)V

    iput-object v0, p0, Lcom/htc/dmc/DmrListActivity$A2dpProfileManager;->mBTSvcListener:Landroid/bluetooth/BluetoothProfile$ServiceListener;

    .line 823
    const-string v0, "[DmrListActivity]"

    const-string v1, "getProfileProxy()+"

    invoke-static {v0, v1}, Lcom/htc/dmc/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 824
    iget-object v0, p0, Lcom/htc/dmc/DmrListActivity$A2dpProfileManager;->mBTSvcListener:Landroid/bluetooth/BluetoothProfile$ServiceListener;

    const/4 v1, 0x2

    invoke-virtual {p3, p2, v0, v1}, Landroid/bluetooth/BluetoothAdapter;->getProfileProxy(Landroid/content/Context;Landroid/bluetooth/BluetoothProfile$ServiceListener;I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 825
    const-string v0, "[DmrListActivity]"

    const-string v1, "getProfileProxy() - (btSvc connect) Success"

    invoke-static {v0, v1}, Lcom/htc/dmc/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 828
    :goto_0
    const-string v0, "[DmrListActivity]"

    const-string v1, "getProfileProxy()-"

    invoke-static {v0, v1}, Lcom/htc/dmc/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 829
    return-void

    .line 827
    :cond_0
    const-string v0, "[DmrListActivity]"

    const-string v1, "getProfileProxy() - (btSvc connect) failed"

    invoke-static {v0, v1}, Lcom/htc/dmc/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method static synthetic access$102(Lcom/htc/dmc/DmrListActivity$A2dpProfileManager;Landroid/bluetooth/BluetoothA2dp;)Landroid/bluetooth/BluetoothA2dp;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 819
    iput-object p1, p0, Lcom/htc/dmc/DmrListActivity$A2dpProfileManager;->mService:Landroid/bluetooth/BluetoothA2dp;

    return-object p1
.end method


# virtual methods
.method public connect(Landroid/bluetooth/BluetoothDevice;)Z
    .locals 5
    .parameter "device"

    .prologue
    .line 867
    iget-object v3, p0, Lcom/htc/dmc/DmrListActivity$A2dpProfileManager;->mService:Landroid/bluetooth/BluetoothA2dp;

    if-nez v3, :cond_0

    .line 868
    const-string v3, "[DmrListActivity]"

    const-string v4, "Bluetooth a2dp service null"

    invoke-static {v3, v4}, Lcom/htc/dmc/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 869
    const/4 v3, 0x0

    .line 877
    :goto_0
    return v3

    .line 871
    :cond_0
    iget-object v3, p0, Lcom/htc/dmc/DmrListActivity$A2dpProfileManager;->mService:Landroid/bluetooth/BluetoothA2dp;

    invoke-virtual {v3}, Landroid/bluetooth/BluetoothA2dp;->getConnectedDevices()Ljava/util/List;

    move-result-object v2

    .line 872
    .local v2, sinks:Ljava/util/List;,"Ljava/util/List<Landroid/bluetooth/BluetoothDevice;>;"
    if-eqz v2, :cond_1

    .line 873
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/bluetooth/BluetoothDevice;

    .line 874
    .local v1, sink:Landroid/bluetooth/BluetoothDevice;
    iget-object v3, p0, Lcom/htc/dmc/DmrListActivity$A2dpProfileManager;->mService:Landroid/bluetooth/BluetoothA2dp;

    invoke-virtual {v3, v1}, Landroid/bluetooth/BluetoothA2dp;->disconnect(Landroid/bluetooth/BluetoothDevice;)Z

    goto :goto_1

    .line 877
    .end local v0           #i$:Ljava/util/Iterator;
    .end local v1           #sink:Landroid/bluetooth/BluetoothDevice;
    :cond_1
    iget-object v3, p0, Lcom/htc/dmc/DmrListActivity$A2dpProfileManager;->mService:Landroid/bluetooth/BluetoothA2dp;

    invoke-virtual {v3, p1}, Landroid/bluetooth/BluetoothA2dp;->connect(Landroid/bluetooth/BluetoothDevice;)Z

    move-result v3

    goto :goto_0
.end method

.method public disconnect(Landroid/bluetooth/BluetoothDevice;)Z
    .locals 2
    .parameter "device"

    .prologue
    .line 886
    iget-object v0, p0, Lcom/htc/dmc/DmrListActivity$A2dpProfileManager;->mService:Landroid/bluetooth/BluetoothA2dp;

    if-nez v0, :cond_0

    .line 887
    const-string v0, "[DmrListActivity]"

    const-string v1, "Bluetooth a2dp service null"

    invoke-static {v0, v1}, Lcom/htc/dmc/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 888
    const/4 v0, 0x0

    .line 890
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/htc/dmc/DmrListActivity$A2dpProfileManager;->mService:Landroid/bluetooth/BluetoothA2dp;

    invoke-virtual {v0, p1}, Landroid/bluetooth/BluetoothA2dp;->disconnect(Landroid/bluetooth/BluetoothDevice;)Z

    move-result v0

    goto :goto_0
.end method

.method public getConnectedDevices()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/bluetooth/BluetoothDevice;",
            ">;"
        }
    .end annotation

    .prologue
    .line 858
    iget-object v0, p0, Lcom/htc/dmc/DmrListActivity$A2dpProfileManager;->mService:Landroid/bluetooth/BluetoothA2dp;

    if-nez v0, :cond_0

    .line 859
    const-string v0, "[DmrListActivity]"

    const-string v1, "Bluetooth a2dp service null"

    invoke-static {v0, v1}, Lcom/htc/dmc/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 860
    const/4 v0, 0x0

    .line 862
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/htc/dmc/DmrListActivity$A2dpProfileManager;->mService:Landroid/bluetooth/BluetoothA2dp;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothA2dp;->getConnectedDevices()Ljava/util/List;

    move-result-object v0

    goto :goto_0
.end method

.method public getConnectionStatus(Landroid/bluetooth/BluetoothDevice;)I
    .locals 2
    .parameter "device"

    .prologue
    .line 894
    iget-object v0, p0, Lcom/htc/dmc/DmrListActivity$A2dpProfileManager;->mService:Landroid/bluetooth/BluetoothA2dp;

    if-nez v0, :cond_0

    .line 895
    const-string v0, "[DmrListActivity]"

    const-string v1, "Bluetooth a2dp service null"

    invoke-static {v0, v1}, Lcom/htc/dmc/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 896
    const/4 v0, -0x1

    .line 898
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/htc/dmc/DmrListActivity$A2dpProfileManager;->mService:Landroid/bluetooth/BluetoothA2dp;

    invoke-virtual {v0, p1}, Landroid/bluetooth/BluetoothA2dp;->getConnectionState(Landroid/bluetooth/BluetoothDevice;)I

    move-result v0

    goto :goto_0
.end method

.method public isBoseDevice(Landroid/bluetooth/BluetoothDevice;)Z
    .locals 1
    .parameter "device"

    .prologue
    .line 902
    iget-object v0, p0, Lcom/htc/dmc/DmrListActivity$A2dpProfileManager;->mService:Landroid/bluetooth/BluetoothA2dp;

    invoke-virtual {v0, p1}, Landroid/bluetooth/BluetoothA2dp;->doesDeviceMatchBose(Landroid/bluetooth/BluetoothDevice;)Z

    move-result v0

    return v0
.end method

.method public isServiceReady()Z
    .locals 1

    .prologue
    .line 833
    iget-object v0, p0, Lcom/htc/dmc/DmrListActivity$A2dpProfileManager;->mService:Landroid/bluetooth/BluetoothA2dp;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 834
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method
