.class public Lcom/android/settings/framework/app/rmi/invocator/HtcRmiWirelessInvocator;
.super Lcom/android/settings/framework/app/rmi/HtcRmiCallback;
.source "HtcRmiWirelessInvocator.java"


# static fields
.field private static final TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 24
    const-class v0, Lcom/android/settings/framework/app/rmi/invocator/HtcRmiWirelessInvocator;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/settings/framework/app/rmi/invocator/HtcRmiWirelessInvocator;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 22
    invoke-direct {p0}, Lcom/android/settings/framework/app/rmi/HtcRmiCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onRequest(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;Landroid/os/Bundle;)V
    .locals 0
    .parameter "context"
    .parameter "methodName"
    .parameter "input"
    .parameter "output"

    .prologue
    .line 32
    return-void
.end method

.method public setBluetoothStatus(Landroid/content/Context;Landroid/os/Bundle;Landroid/os/Bundle;)V
    .locals 5
    .parameter "context"
    .parameter "input"
    .parameter "output"

    .prologue
    .line 104
    const/4 v1, 0x0

    .line 106
    .local v1, result:Z
    const-string v3, "extra_status"

    invoke-virtual {p2, v3}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    if-nez v3, :cond_0

    .line 107
    const-string v3, "extra_successful"

    const/4 v4, 0x0

    invoke-virtual {p3, v3, v4}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 111
    :cond_0
    const-string v3, "extra_status"

    invoke-virtual {p2, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    .line 112
    .local v2, status:Z
    const-string v3, "extra_status"

    invoke-virtual {p3, v3, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 114
    invoke-static {p1}, Lcom/android/settings/bluetooth/LocalBluetoothManager;->getInstance(Landroid/content/Context;)Lcom/android/settings/bluetooth/LocalBluetoothManager;

    move-result-object v0

    .line 117
    .local v0, bluetoothManager:Lcom/android/settings/bluetooth/LocalBluetoothManager;
    if-nez v0, :cond_1

    .line 118
    sget-object v3, Lcom/android/settings/framework/app/rmi/invocator/HtcRmiWirelessInvocator;->TAG:Ljava/lang/String;

    const-string v4, "Got the Bluetooth manager failed!"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 125
    :goto_0
    const-string v3, "extra_successful"

    invoke-virtual {p3, v3, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 126
    return-void

    .line 120
    :cond_1
    invoke-virtual {v0}, Lcom/android/settings/bluetooth/LocalBluetoothManager;->getBluetoothAdapter()Lcom/android/settings/bluetooth/LocalBluetoothAdapter;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/android/settings/bluetooth/LocalBluetoothAdapter;->setBluetoothEnabled(Z)V

    .line 122
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public setMobileNetworkStatus(Landroid/content/Context;Landroid/os/Bundle;Landroid/os/Bundle;)V
    .locals 4
    .parameter "context"
    .parameter "input"
    .parameter "output"

    .prologue
    .line 130
    const/4 v1, 0x0

    .line 132
    .local v1, result:Z
    const-string v3, "extra_status"

    invoke-virtual {p2, v3}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    if-nez v3, :cond_0

    .line 133
    const-string v3, "extra_successful"

    invoke-virtual {p3, v3, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 137
    :cond_0
    const-string v3, "extra_status"

    invoke-virtual {p2, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    .line 138
    .local v2, status:Z
    const-string v3, "extra_status"

    invoke-virtual {p3, v3, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 140
    const-string v3, "connectivity"

    invoke-virtual {p1, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 142
    .local v0, conn:Landroid/net/ConnectivityManager;
    invoke-virtual {v0, v2}, Landroid/net/ConnectivityManager;->setMobileDataEnabled(Z)V

    .line 143
    const/4 v1, 0x1

    .line 145
    const-string v3, "extra_successful"

    invoke-virtual {p3, v3, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 146
    return-void
.end method

.method public setPortableWiFiHotspotStatus(Landroid/content/Context;Landroid/os/Bundle;Landroid/os/Bundle;)V
    .locals 7
    .parameter "context"
    .parameter "input"
    .parameter "output"

    .prologue
    const/4 v5, 0x0

    .line 67
    const/4 v0, 0x0

    .line 69
    .local v0, result:Z
    const-string v4, "extra_status"

    invoke-virtual {p2, v4}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    if-nez v4, :cond_0

    .line 70
    const-string v4, "extra_successful"

    invoke-virtual {p3, v4, v5}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 74
    :cond_0
    const-string v4, "extra_status"

    invoke-virtual {p2, v4}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    .line 75
    .local v1, status:Z
    const-string v4, "extra_status"

    invoke-virtual {p3, v4, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 77
    const-string v4, "wifi"

    invoke-virtual {p1, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/wifi/WifiManager;

    .line 83
    .local v2, wifiManager:Landroid/net/wifi/WifiManager;
    invoke-virtual {v2}, Landroid/net/wifi/WifiManager;->getWifiState()I

    move-result v3

    .line 84
    .local v3, wifiState:I
    if-eqz v1, :cond_2

    const/4 v4, 0x2

    if-eq v3, v4, :cond_1

    const/4 v4, 0x3

    if-ne v3, v4, :cond_2

    .line 87
    :cond_1
    invoke-virtual {v2, v5}, Landroid/net/wifi/WifiManager;->setWifiEnabled(Z)Z

    .line 92
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "wifi_saved_state"

    const/4 v6, 0x1

    invoke-static {v4, v5, v6}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 98
    :cond_2
    const/4 v4, 0x0

    invoke-virtual {v2, v4, v1}, Landroid/net/wifi/WifiManager;->setWifiApEnabled(Landroid/net/wifi/WifiConfiguration;Z)Z

    move-result v0

    .line 99
    const-string v4, "extra_successful"

    invoke-virtual {p3, v4, v0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 100
    return-void
.end method

.method public setWiFiStatus(Landroid/content/Context;Landroid/os/Bundle;Landroid/os/Bundle;)V
    .locals 6
    .parameter "context"
    .parameter "input"
    .parameter "output"

    .prologue
    const/4 v5, 0x0

    .line 36
    const/4 v0, 0x0

    .line 38
    .local v0, result:Z
    const-string v4, "extra_status"

    invoke-virtual {p2, v4}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    if-nez v4, :cond_0

    .line 39
    const-string v4, "extra_successful"

    invoke-virtual {p3, v4, v5}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 43
    :cond_0
    const-string v4, "extra_status"

    invoke-virtual {p2, v4}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    .line 44
    .local v1, status:Z
    const-string v4, "extra_status"

    invoke-virtual {p3, v4, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 46
    const-string v4, "wifi"

    invoke-virtual {p1, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/net/wifi/WifiManager;

    .line 52
    .local v3, wifiManager:Landroid/net/wifi/WifiManager;
    invoke-virtual {v3}, Landroid/net/wifi/WifiManager;->getWifiApState()I

    move-result v2

    .line 53
    .local v2, wifiApState:I
    if-eqz v1, :cond_2

    const/16 v4, 0xc

    if-eq v2, v4, :cond_1

    const/16 v4, 0xd

    if-ne v2, v4, :cond_2

    .line 56
    :cond_1
    const/4 v4, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/net/wifi/WifiManager;->setWifiApEnabled(Landroid/net/wifi/WifiConfiguration;Z)Z

    .line 61
    :cond_2
    invoke-virtual {v3, v1}, Landroid/net/wifi/WifiManager;->setWifiEnabled(Z)Z

    move-result v0

    .line 62
    const-string v4, "extra_successful"

    invoke-virtual {p3, v4, v0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 63
    return-void
.end method
