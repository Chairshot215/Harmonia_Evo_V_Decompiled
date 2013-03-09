.class public Lcom/htc/util/http/NetworkUtil;
.super Ljava/lang/Object;
.source "NetworkUtil.java"


# static fields
.field private static WIFI_SIGNAL_LEVEL:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 68
    const/16 v0, 0x2e

    sput v0, Lcom/htc/util/http/NetworkUtil;->WIFI_SIGNAL_LEVEL:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static calculateSignalLevel(Landroid/content/Context;I)I
    .locals 4
    .parameter "context"
    .parameter "numLevel"

    .prologue
    .line 61
    const-string v3, "wifi"

    invoke-virtual {p0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/wifi/WifiManager;

    .line 62
    .local v2, wifiManager:Landroid/net/wifi/WifiManager;
    invoke-virtual {v2}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v1

    .line 64
    .local v1, wifiInfo:Landroid/net/wifi/WifiInfo;
    invoke-virtual {v1}, Landroid/net/wifi/WifiInfo;->getRssi()I

    move-result v0

    .line 65
    .local v0, rssi:I
    invoke-static {v0, p1}, Landroid/net/wifi/WifiManager;->calculateSignalLevel(II)I

    move-result v3

    return v3
.end method

.method public static calculateTimeoutByWifiSignalLevel(Landroid/content/Context;III)I
    .locals 5
    .parameter "context"
    .parameter "wifiStrongSignalTimeout"
    .parameter "wifiWeakSignalTimeout"
    .parameter "defaultTimeout"

    .prologue
    .line 79
    invoke-static {p0}, Lcom/htc/util/http/NetworkUtil;->getActiveNetworkInfo(Landroid/content/Context;)Landroid/net/NetworkInfo;

    move-result-object v0

    .line 80
    .local v0, networkInfo:Landroid/net/NetworkInfo;
    if-nez v0, :cond_1

    .line 95
    .end local p3
    :cond_0
    :goto_0
    return p3

    .line 84
    .restart local p3
    :cond_1
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getType()I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    .line 88
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getDetailedState()Landroid/net/NetworkInfo$DetailedState;

    move-result-object v2

    sget-object v3, Landroid/net/NetworkInfo$DetailedState;->CONNECTED:Landroid/net/NetworkInfo$DetailedState;

    if-ne v2, v3, :cond_0

    .line 93
    sget v2, Lcom/htc/util/http/NetworkUtil;->WIFI_SIGNAL_LEVEL:I

    invoke-static {p0, v2}, Lcom/htc/util/http/NetworkUtil;->calculateSignalLevel(Landroid/content/Context;I)I

    move-result v1

    .line 95
    .local v1, signalLevel:I
    sget v2, Lcom/htc/util/http/NetworkUtil;->WIFI_SIGNAL_LEVEL:I

    add-int/lit8 v2, v2, -0x1

    sub-int/2addr v2, v1

    sub-int v3, p2, p1

    sget v4, Lcom/htc/util/http/NetworkUtil;->WIFI_SIGNAL_LEVEL:I

    div-int/2addr v3, v4

    mul-int/2addr v2, v3

    add-int p3, p1, v2

    goto :goto_0
.end method

.method public static getActiveNetworkInfo(Landroid/content/Context;)Landroid/net/NetworkInfo;
    .locals 2
    .parameter "context"

    .prologue
    .line 30
    invoke-static {p0}, Lcom/htc/util/http/NetworkUtil;->getConnectivityManager(Landroid/content/Context;)Landroid/net/ConnectivityManager;

    move-result-object v0

    .line 31
    .local v0, connectivityManager:Landroid/net/ConnectivityManager;
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v1

    return-object v1
.end method

.method public static getConnectivityManager(Landroid/content/Context;)Landroid/net/ConnectivityManager;
    .locals 1
    .parameter "context"

    .prologue
    .line 21
    const-string v0, "connectivity"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    return-object v0
.end method

.method public static isActiveNetwork(Landroid/content/Context;)Z
    .locals 2
    .parameter "context"

    .prologue
    .line 40
    invoke-static {p0}, Lcom/htc/util/http/NetworkUtil;->getActiveNetworkInfo(Landroid/content/Context;)Landroid/net/NetworkInfo;

    move-result-object v0

    .line 41
    .local v0, networkInfo:Landroid/net/NetworkInfo;
    if-eqz v0, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static isRoaming(Landroid/content/Context;)Z
    .locals 2
    .parameter "context"

    .prologue
    .line 50
    invoke-static {p0}, Lcom/htc/util/http/NetworkUtil;->getActiveNetworkInfo(Landroid/content/Context;)Landroid/net/NetworkInfo;

    move-result-object v0

    .line 51
    .local v0, networkInfo:Landroid/net/NetworkInfo;
    if-nez v0, :cond_0

    const/4 v1, 0x0

    :goto_0
    return v1

    :cond_0
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isRoaming()Z

    move-result v1

    goto :goto_0
.end method
