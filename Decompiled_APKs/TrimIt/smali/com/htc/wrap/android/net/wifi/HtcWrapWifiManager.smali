.class public Lcom/htc/wrap/android/net/wifi/HtcWrapWifiManager;
.super Landroid/net/wifi/WifiManager;
.source "HtcWrapWifiManager.java"


# static fields
.field public static final ACTION_MANAGEMENT_WIFI_CLIENT:Ljava/lang/String; = "android.net.hotspot.management_wifi_client"

.field public static final AKA_INVALID_SIM_CHANGED_ACTION:Ljava/lang/String; = "android.net.wifi.AKA_INVALID_SIM"

.field public static final ASSOC_LIST_CHANGE_ACTION:Ljava/lang/String; = "android.net.hotspot.ASSOCLIST"

.field public static final EAP_NOTIFICATION_CHANGED_ACTION:Ljava/lang/String; = "android.net.wifi.EAP_NOTIFICATION"

.field public static final EXTRA_BLOCK_MAC:Ljava/lang/String; = "hotspot_block_mac"

.field public static final EXTRA_FREQUENCY:Ljava/lang/String; = "frequency"

.field public static final EXTRA_LATEST_TIME_CONNECTION_REQUEST:Ljava/lang/String; = "hotspot_lastest_time_of_request"

.field public static final EXTRA_TYPE_DATA:Ljava/lang/String; = "typeData"

.field public static final HOTSPOT_CONNECTION_REQUEST_NOTIFY:Ljava/lang/String; = "android.net.hotspot.connecitonrequest"

.field public static final SMART_WIFI_STATE_CHANGED_ACTION:Ljava/lang/String; = "android.net.wifi.SMART_WIFI_STATE_CHANGED"

.field public static final SMART_WIFI_STATE_START:I = 0x1

.field public static final SMART_WIFI_STATE_STOP:I = 0x0

.field public static final SMART_WIFI_STATUS_IDEL:I = 0x0

.field public static final SMART_WIFI_STATUS_READY:I = 0x1

.field public static final SMART_WIFI_STATUS_RUNNING:I = 0x2

.field public static final WPS_FAIL_CHANGED_ACTION:Ljava/lang/String; = "android.net.wifi.WPS_FAIL"

.field public static final WPS_OVERLAP_CHANGED_ACTION:Ljava/lang/String; = "android.net.wifi.WPS_OVERLAP"

.field public static final WPS_SUCCESS_CHANGED_ACTION:Ljava/lang/String; = "android.net.wifi.WPS_SUCCESS"


# direct methods
.method private constructor <init>(Landroid/net/wifi/IWifiManager;Landroid/os/Handler;)V
    .locals 0
    .parameter "service"
    .parameter "handler"

    .prologue
    .line 11
    invoke-direct {p0, p1, p2}, Landroid/net/wifi/WifiManager;-><init>(Landroid/net/wifi/IWifiManager;Landroid/os/Handler;)V

    .line 12
    return-void
.end method

.method public static calculateSignalLevel(III)I
    .locals 1
    .parameter "rssi"
    .parameter "numLevels"
    .parameter "frequency"

    .prologue
    .line 188
    invoke-static {p0, p1, p2}, Landroid/net/wifi/WifiManager;->calculateSignalLevel(III)I

    move-result v0

    return v0
.end method

.method public static checkWifiApEnabledMhsRequest(Landroid/net/wifi/WifiManager;)I
    .locals 1
    .parameter "wifiManager"

    .prologue
    .line 208
    invoke-virtual {p0}, Landroid/net/wifi/WifiManager;->checkWifiApEnabledMhsRequest()I

    move-result v0

    return v0
.end method

.method public static disableSsdpPacket(Landroid/net/wifi/WifiManager;)Z
    .locals 1
    .parameter "wifiManager"

    .prologue
    .line 84
    invoke-virtual {p0}, Landroid/net/wifi/WifiManager;->disableSsdpPacket()Z

    move-result v0

    return v0
.end method

.method public static enableAutoIP(Landroid/net/wifi/WifiManager;I)Z
    .locals 1
    .parameter "wifiManager"
    .parameter "state"

    .prologue
    .line 125
    invoke-virtual {p0, p1}, Landroid/net/wifi/WifiManager;->enableAutoIP(I)Z

    move-result v0

    return v0
.end method

.method public static enablePowerActiveForFotaDownload(Landroid/net/wifi/WifiManager;Z)Z
    .locals 1
    .parameter "wifiManager"
    .parameter "enable"

    .prologue
    .line 97
    invoke-virtual {p0, p1}, Landroid/net/wifi/WifiManager;->enablePowerActiveForFotaDownload(Z)Z

    move-result v0

    return v0
.end method

.method public static enablePowerActiveMode(Landroid/net/wifi/WifiManager;Z)Z
    .locals 1
    .parameter "wifiManager"
    .parameter "enable"

    .prologue
    .line 121
    invoke-virtual {p0, p1}, Landroid/net/wifi/WifiManager;->enablePowerActiveMode(Z)Z

    move-result v0

    return v0
.end method

.method public static enableSsdpPacket(Landroid/net/wifi/WifiManager;)Z
    .locals 1
    .parameter "wifiManager"

    .prologue
    .line 80
    invoke-virtual {p0}, Landroid/net/wifi/WifiManager;->enableSsdpPacket()Z

    move-result v0

    return v0
.end method

.method public static getAssocListStr(Landroid/net/wifi/WifiManager;)Ljava/lang/String;
    .locals 1
    .parameter "wifiManager"

    .prologue
    .line 160
    invoke-virtual {p0}, Landroid/net/wifi/WifiManager;->getAssocListStr()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getClientInfo(Landroid/net/wifi/WifiManager;)Ljava/lang/String;
    .locals 1
    .parameter "wifiManager"

    .prologue
    .line 164
    invoke-virtual {p0}, Landroid/net/wifi/WifiManager;->getClientInfo()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getConnectionPolicyEnabled(Landroid/net/wifi/WifiManager;)Z
    .locals 1
    .parameter "wifiManager"

    .prologue
    .line 200
    invoke-virtual {p0}, Landroid/net/wifi/WifiManager;->getConnectionPolicyEnabled()Z

    move-result v0

    return v0
.end method

.method public static getDockWifiApAutoEnabled(Landroid/net/wifi/WifiManager;)Z
    .locals 1
    .parameter "wifiManager"

    .prologue
    .line 192
    invoke-virtual {p0}, Landroid/net/wifi/WifiManager;->getDockWifiApAutoEnabled()Z

    move-result v0

    return v0
.end method

.method public static getHotspotNumAllowedChannels(Landroid/net/wifi/WifiManager;)I
    .locals 1
    .parameter "wifiManager"

    .prologue
    .line 168
    invoke-virtual {p0}, Landroid/net/wifi/WifiManager;->getHotspotNumAllowedChannels()I

    move-result v0

    return v0
.end method

.method public static getMostPreferredNetwork(Landroid/net/wifi/WifiManager;)I
    .locals 1
    .parameter "wifiManager"

    .prologue
    .line 152
    invoke-virtual {p0}, Landroid/net/wifi/WifiManager;->getMostPreferredNetwork()I

    move-result v0

    return v0
.end method

.method public static getRequestedList(Landroid/net/wifi/WifiManager;)Ljava/lang/String;
    .locals 1
    .parameter "wifiManager"

    .prologue
    .line 172
    invoke-virtual {p0}, Landroid/net/wifi/WifiManager;->getRequestedList()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getSmartWifiState(Landroid/net/wifi/WifiManager;)I
    .locals 1
    .parameter "wifiManager"

    .prologue
    .line 93
    invoke-virtual {p0}, Landroid/net/wifi/WifiManager;->getSmartWifiState()I

    move-result v0

    return v0
.end method

.method public static getWagAddress(Landroid/net/wifi/WifiManager;)Ljava/lang/String;
    .locals 1
    .parameter "wifiManager"

    .prologue
    .line 117
    invoke-virtual {p0}, Landroid/net/wifi/WifiManager;->getWagAddress()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getWagAsUserDefined(Landroid/net/wifi/WifiManager;)Z
    .locals 1
    .parameter "wifiManager"

    .prologue
    .line 113
    invoke-virtual {p0}, Landroid/net/wifi/WifiManager;->getWagAsUserDefined()Z

    move-result v0

    return v0
.end method

.method public static getWifiOffloadEnabled(Landroid/net/wifi/WifiManager;)Z
    .locals 1
    .parameter "wifiManager"

    .prologue
    .line 105
    invoke-virtual {p0}, Landroid/net/wifi/WifiManager;->getWifiOffloadEnabled()Z

    move-result v0

    return v0
.end method

.method public static isWifiPowerModeNormal(Landroid/net/wifi/WifiManager;)Z
    .locals 1
    .parameter "wifiManager"

    .prologue
    .line 76
    invoke-virtual {p0}, Landroid/net/wifi/WifiManager;->isWifiPowerModeNormal()Z

    move-result v0

    return v0
.end method

.method public static resetDhcpConfig(Landroid/net/wifi/WifiManager;)V
    .locals 0
    .parameter "wifiManager"

    .prologue
    .line 176
    invoke-virtual {p0}, Landroid/net/wifi/WifiManager;->resetDhcpConfig()V

    .line 177
    return-void
.end method

.method public static setConnectionPolicyEnabled(Landroid/net/wifi/WifiManager;Z)Z
    .locals 1
    .parameter "wifiManager"
    .parameter "enable"

    .prologue
    .line 196
    invoke-virtual {p0, p1}, Landroid/net/wifi/WifiManager;->setConnectionPolicyEnabled(Z)Z

    move-result v0

    return v0
.end method

.method public static setDockWifiApAutoEnabled(Landroid/net/wifi/WifiManager;Z)Z
    .locals 1
    .parameter "wifiManager"
    .parameter "enabled"

    .prologue
    .line 109
    invoke-virtual {p0, p1}, Landroid/net/wifi/WifiManager;->setDockWifiApAutoEnabled(Z)Z

    move-result v0

    return v0
.end method

.method public static setMostPreferredNetwork(Landroid/net/wifi/WifiManager;I)Z
    .locals 1
    .parameter "wifiManager"
    .parameter "networkId"

    .prologue
    .line 156
    invoke-virtual {p0, p1}, Landroid/net/wifi/WifiManager;->setMostPreferredNetwork(I)Z

    move-result v0

    return v0
.end method

.method public static setWagAddress(Landroid/net/wifi/WifiManager;Ljava/lang/String;)Z
    .locals 1
    .parameter "wifiManager"
    .parameter "addr"

    .prologue
    .line 144
    invoke-virtual {p0, p1}, Landroid/net/wifi/WifiManager;->setWagAddress(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static setWagAsUserDefined(Landroid/net/wifi/WifiManager;Z)Z
    .locals 1
    .parameter "wifiManager"
    .parameter "set"

    .prologue
    .line 148
    invoke-virtual {p0, p1}, Landroid/net/wifi/WifiManager;->setWagAsUserDefined(Z)Z

    move-result v0

    return v0
.end method

.method public static setWifiApConfig(Landroid/net/wifi/WifiManager;Landroid/net/wifi/WifiConfiguration;)I
    .locals 1
    .parameter "wifiManager"
    .parameter "config"

    .prologue
    .line 180
    invoke-virtual {p0, p1}, Landroid/net/wifi/WifiManager;->setWifiApConfig(Landroid/net/wifi/WifiConfiguration;)I

    move-result v0

    return v0
.end method

.method public static setWifiApEnabledMhsRequest(Landroid/net/wifi/WifiManager;Landroid/net/wifi/WifiConfiguration;Z)Z
    .locals 1
    .parameter "wifiManager"
    .parameter "wifiConfig"
    .parameter "enabled"

    .prologue
    .line 204
    invoke-virtual {p0, p1, p2}, Landroid/net/wifi/WifiManager;->setWifiApEnabledMhsRequest(Landroid/net/wifi/WifiConfiguration;Z)Z

    move-result v0

    return v0
.end method

.method public static setWifiApMacList(Landroid/net/wifi/WifiManager;Landroid/net/wifi/WifiConfiguration;)I
    .locals 1
    .parameter "wifiManager"
    .parameter "config"

    .prologue
    .line 184
    invoke-virtual {p0, p1}, Landroid/net/wifi/WifiManager;->setWifiApMacList(Landroid/net/wifi/WifiConfiguration;)I

    move-result v0

    return v0
.end method

.method public static setWifiOffloadEnabled(Landroid/net/wifi/WifiManager;Z)Z
    .locals 1
    .parameter "wifiManager"
    .parameter "enabled"

    .prologue
    .line 101
    invoke-virtual {p0, p1}, Landroid/net/wifi/WifiManager;->setWifiOffloadEnabled(Z)Z

    move-result v0

    return v0
.end method

.method public static setWifiPowerSavingMode(Landroid/net/wifi/WifiManager;I)Z
    .locals 1
    .parameter "wifiManager"
    .parameter "status"

    .prologue
    .line 72
    invoke-virtual {p0, p1}, Landroid/net/wifi/WifiManager;->setWifiPowerSavingMode(I)Z

    move-result v0

    return v0
.end method

.method public static setWpsPbcMode(Landroid/net/wifi/WifiManager;)Z
    .locals 1
    .parameter "wifiManager"

    .prologue
    .line 136
    invoke-virtual {p0}, Landroid/net/wifi/WifiManager;->setWpsPbcMode()Z

    move-result v0

    return v0
.end method

.method public static setWpsPinMode(Landroid/net/wifi/WifiManager;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter "wifiManager"
    .parameter "bssid"

    .prologue
    .line 140
    invoke-virtual {p0, p1}, Landroid/net/wifi/WifiManager;->setWpsPinMode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static stopWps(Landroid/net/wifi/WifiManager;)V
    .locals 0
    .parameter "wifiManager"

    .prologue
    .line 132
    invoke-virtual {p0}, Landroid/net/wifi/WifiManager;->stopWps()V

    .line 133
    return-void
.end method
