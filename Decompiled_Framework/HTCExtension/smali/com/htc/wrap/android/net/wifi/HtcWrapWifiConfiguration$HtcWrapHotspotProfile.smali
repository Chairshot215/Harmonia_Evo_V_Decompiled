.class public Lcom/htc/wrap/android/net/wifi/HtcWrapWifiConfiguration$HtcWrapHotspotProfile;
.super Ljava/lang/Object;
.source "HtcWrapWifiConfiguration.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/wrap/android/net/wifi/HtcWrapWifiConfiguration;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "HtcWrapHotspotProfile"
.end annotation


# instance fields
.field hp:Landroid/net/wifi/WifiConfiguration$HotspotProfile;


# direct methods
.method private constructor <init>(Landroid/net/wifi/WifiConfiguration$HotspotProfile;)V
    .locals 2

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/wrap/android/net/wifi/HtcWrapWifiConfiguration$HtcWrapHotspotProfile;->hp:Landroid/net/wifi/WifiConfiguration$HotspotProfile;

    if-nez p1, :cond_0

    const-string v0, "HtcWrapHotspotProfile"

    const-string v1, "hotspotProfile is null"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iput-object p1, p0, Lcom/htc/wrap/android/net/wifi/HtcWrapWifiConfiguration$HtcWrapHotspotProfile;->hp:Landroid/net/wifi/WifiConfiguration$HotspotProfile;

    return-void
.end method

.method synthetic constructor <init>(Landroid/net/wifi/WifiConfiguration$HotspotProfile;Lcom/htc/wrap/android/net/wifi/HtcWrapWifiConfiguration$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/htc/wrap/android/net/wifi/HtcWrapWifiConfiguration$HtcWrapHotspotProfile;-><init>(Landroid/net/wifi/WifiConfiguration$HotspotProfile;)V

    return-void
.end method


# virtual methods
.method public getBlocklist()[Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/htc/wrap/android/net/wifi/HtcWrapWifiConfiguration$HtcWrapHotspotProfile;->hp:Landroid/net/wifi/WifiConfiguration$HotspotProfile;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/htc/wrap/android/net/wifi/HtcWrapWifiConfiguration$HtcWrapHotspotProfile;->hp:Landroid/net/wifi/WifiConfiguration$HotspotProfile;

    iget-object v0, v0, Landroid/net/wifi/WifiConfiguration$HotspotProfile;->blocklist:[Ljava/lang/String;

    goto :goto_0
.end method

.method public getChannel()I
    .locals 1

    iget-object v0, p0, Lcom/htc/wrap/android/net/wifi/HtcWrapWifiConfiguration$HtcWrapHotspotProfile;->hp:Landroid/net/wifi/WifiConfiguration$HotspotProfile;

    if-nez v0, :cond_0

    const/4 v0, -0x1

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/htc/wrap/android/net/wifi/HtcWrapWifiConfiguration$HtcWrapHotspotProfile;->hp:Landroid/net/wifi/WifiConfiguration$HotspotProfile;

    iget v0, v0, Landroid/net/wifi/WifiConfiguration$HotspotProfile;->channel:I

    goto :goto_0
.end method

.method public getConnectionArray()I
    .locals 1

    iget-object v0, p0, Lcom/htc/wrap/android/net/wifi/HtcWrapWifiConfiguration$HtcWrapHotspotProfile;->hp:Landroid/net/wifi/WifiConfiguration$HotspotProfile;

    if-nez v0, :cond_0

    const/4 v0, -0x1

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/htc/wrap/android/net/wifi/HtcWrapWifiConfiguration$HtcWrapHotspotProfile;->hp:Landroid/net/wifi/WifiConfiguration$HotspotProfile;

    iget v0, v0, Landroid/net/wifi/WifiConfiguration$HotspotProfile;->connectionArray:I

    goto :goto_0
.end method

.method public getDhcpEnable()I
    .locals 1

    iget-object v0, p0, Lcom/htc/wrap/android/net/wifi/HtcWrapWifiConfiguration$HtcWrapHotspotProfile;->hp:Landroid/net/wifi/WifiConfiguration$HotspotProfile;

    if-nez v0, :cond_0

    const/4 v0, -0x1

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/htc/wrap/android/net/wifi/HtcWrapWifiConfiguration$HtcWrapHotspotProfile;->hp:Landroid/net/wifi/WifiConfiguration$HotspotProfile;

    iget v0, v0, Landroid/net/wifi/WifiConfiguration$HotspotProfile;->dhcpEnable:I

    goto :goto_0
.end method

.method public getDhcpSubnetMask()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/htc/wrap/android/net/wifi/HtcWrapWifiConfiguration$HtcWrapHotspotProfile;->hp:Landroid/net/wifi/WifiConfiguration$HotspotProfile;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/htc/wrap/android/net/wifi/HtcWrapWifiConfiguration$HtcWrapHotspotProfile;->hp:Landroid/net/wifi/WifiConfiguration$HotspotProfile;

    iget-object v0, v0, Landroid/net/wifi/WifiConfiguration$HotspotProfile;->dhcpSubnetMask:Ljava/lang/String;

    goto :goto_0
.end method

.method public getEnableMacFilter()I
    .locals 1

    iget-object v0, p0, Lcom/htc/wrap/android/net/wifi/HtcWrapWifiConfiguration$HtcWrapHotspotProfile;->hp:Landroid/net/wifi/WifiConfiguration$HotspotProfile;

    if-nez v0, :cond_0

    const/4 v0, -0x1

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/htc/wrap/android/net/wifi/HtcWrapWifiConfiguration$HtcWrapHotspotProfile;->hp:Landroid/net/wifi/WifiConfiguration$HotspotProfile;

    iget v0, v0, Landroid/net/wifi/WifiConfiguration$HotspotProfile;->enableMacFilter:I

    goto :goto_0
.end method

.method public getHiddenSSID()Z
    .locals 1

    iget-object v0, p0, Lcom/htc/wrap/android/net/wifi/HtcWrapWifiConfiguration$HtcWrapHotspotProfile;->hp:Landroid/net/wifi/WifiConfiguration$HotspotProfile;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/htc/wrap/android/net/wifi/HtcWrapWifiConfiguration$HtcWrapHotspotProfile;->hp:Landroid/net/wifi/WifiConfiguration$HotspotProfile;

    iget-boolean v0, v0, Landroid/net/wifi/WifiConfiguration$HotspotProfile;->hiddenSSID:Z

    goto :goto_0
.end method

.method public getIpAddress()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/htc/wrap/android/net/wifi/HtcWrapWifiConfiguration$HtcWrapHotspotProfile;->hp:Landroid/net/wifi/WifiConfiguration$HotspotProfile;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/htc/wrap/android/net/wifi/HtcWrapWifiConfiguration$HtcWrapHotspotProfile;->hp:Landroid/net/wifi/WifiConfiguration$HotspotProfile;

    iget-object v0, v0, Landroid/net/wifi/WifiConfiguration$HotspotProfile;->ipAddress:Ljava/lang/String;

    goto :goto_0
.end method

.method public getKey()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/htc/wrap/android/net/wifi/HtcWrapWifiConfiguration$HtcWrapHotspotProfile;->hp:Landroid/net/wifi/WifiConfiguration$HotspotProfile;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/htc/wrap/android/net/wifi/HtcWrapWifiConfiguration$HtcWrapHotspotProfile;->hp:Landroid/net/wifi/WifiConfiguration$HotspotProfile;

    iget-object v0, v0, Landroid/net/wifi/WifiConfiguration$HotspotProfile;->key:Ljava/lang/String;

    goto :goto_0
.end method

.method public getMaxConns()I
    .locals 1

    iget-object v0, p0, Lcom/htc/wrap/android/net/wifi/HtcWrapWifiConfiguration$HtcWrapHotspotProfile;->hp:Landroid/net/wifi/WifiConfiguration$HotspotProfile;

    if-nez v0, :cond_0

    const/4 v0, -0x1

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/htc/wrap/android/net/wifi/HtcWrapWifiConfiguration$HtcWrapHotspotProfile;->hp:Landroid/net/wifi/WifiConfiguration$HotspotProfile;

    iget v0, v0, Landroid/net/wifi/WifiConfiguration$HotspotProfile;->maxConns:I

    goto :goto_0
.end method

.method public getSSID()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/htc/wrap/android/net/wifi/HtcWrapWifiConfiguration$HtcWrapHotspotProfile;->hp:Landroid/net/wifi/WifiConfiguration$HotspotProfile;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/htc/wrap/android/net/wifi/HtcWrapWifiConfiguration$HtcWrapHotspotProfile;->hp:Landroid/net/wifi/WifiConfiguration$HotspotProfile;

    iget-object v0, v0, Landroid/net/wifi/WifiConfiguration$HotspotProfile;->SSID:Ljava/lang/String;

    goto :goto_0
.end method

.method public getSecureType()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/htc/wrap/android/net/wifi/HtcWrapWifiConfiguration$HtcWrapHotspotProfile;->hp:Landroid/net/wifi/WifiConfiguration$HotspotProfile;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/htc/wrap/android/net/wifi/HtcWrapWifiConfiguration$HtcWrapHotspotProfile;->hp:Landroid/net/wifi/WifiConfiguration$HotspotProfile;

    iget-object v0, v0, Landroid/net/wifi/WifiConfiguration$HotspotProfile;->secureType:Ljava/lang/String;

    goto :goto_0
.end method

.method public getSleepPolicy()I
    .locals 1

    iget-object v0, p0, Lcom/htc/wrap/android/net/wifi/HtcWrapWifiConfiguration$HtcWrapHotspotProfile;->hp:Landroid/net/wifi/WifiConfiguration$HotspotProfile;

    if-nez v0, :cond_0

    const/4 v0, -0x1

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/htc/wrap/android/net/wifi/HtcWrapWifiConfiguration$HtcWrapHotspotProfile;->hp:Landroid/net/wifi/WifiConfiguration$HotspotProfile;

    iget v0, v0, Landroid/net/wifi/WifiConfiguration$HotspotProfile;->sleepPolicy:I

    goto :goto_0
.end method

.method public getStartingIP()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/htc/wrap/android/net/wifi/HtcWrapWifiConfiguration$HtcWrapHotspotProfile;->hp:Landroid/net/wifi/WifiConfiguration$HotspotProfile;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/htc/wrap/android/net/wifi/HtcWrapWifiConfiguration$HtcWrapHotspotProfile;->hp:Landroid/net/wifi/WifiConfiguration$HotspotProfile;

    iget-object v0, v0, Landroid/net/wifi/WifiConfiguration$HotspotProfile;->startingIP:Ljava/lang/String;

    goto :goto_0
.end method

.method public getWhitelist()[Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/htc/wrap/android/net/wifi/HtcWrapWifiConfiguration$HtcWrapHotspotProfile;->hp:Landroid/net/wifi/WifiConfiguration$HotspotProfile;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/htc/wrap/android/net/wifi/HtcWrapWifiConfiguration$HtcWrapHotspotProfile;->hp:Landroid/net/wifi/WifiConfiguration$HotspotProfile;

    iget-object v0, v0, Landroid/net/wifi/WifiConfiguration$HotspotProfile;->whitelist:[Ljava/lang/String;

    goto :goto_0
.end method

.method public setChannel(I)V
    .locals 1

    iget-object v0, p0, Lcom/htc/wrap/android/net/wifi/HtcWrapWifiConfiguration$HtcWrapHotspotProfile;->hp:Landroid/net/wifi/WifiConfiguration$HotspotProfile;

    iput p1, v0, Landroid/net/wifi/WifiConfiguration$HotspotProfile;->channel:I

    return-void
.end method

.method public setConnectionArray(I)V
    .locals 1

    iget-object v0, p0, Lcom/htc/wrap/android/net/wifi/HtcWrapWifiConfiguration$HtcWrapHotspotProfile;->hp:Landroid/net/wifi/WifiConfiguration$HotspotProfile;

    iput p1, v0, Landroid/net/wifi/WifiConfiguration$HotspotProfile;->connectionArray:I

    return-void
.end method

.method public setDhcpEnable(I)V
    .locals 1

    iget-object v0, p0, Lcom/htc/wrap/android/net/wifi/HtcWrapWifiConfiguration$HtcWrapHotspotProfile;->hp:Landroid/net/wifi/WifiConfiguration$HotspotProfile;

    iput p1, v0, Landroid/net/wifi/WifiConfiguration$HotspotProfile;->dhcpEnable:I

    return-void
.end method

.method public setDhcpSubnetMask(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/htc/wrap/android/net/wifi/HtcWrapWifiConfiguration$HtcWrapHotspotProfile;->hp:Landroid/net/wifi/WifiConfiguration$HotspotProfile;

    iput-object p1, v0, Landroid/net/wifi/WifiConfiguration$HotspotProfile;->dhcpSubnetMask:Ljava/lang/String;

    return-void
.end method

.method public setEnableMacFilter(I)V
    .locals 1

    iget-object v0, p0, Lcom/htc/wrap/android/net/wifi/HtcWrapWifiConfiguration$HtcWrapHotspotProfile;->hp:Landroid/net/wifi/WifiConfiguration$HotspotProfile;

    iput p1, v0, Landroid/net/wifi/WifiConfiguration$HotspotProfile;->enableMacFilter:I

    return-void
.end method

.method public setHiddenSSID(Z)V
    .locals 1

    iget-object v0, p0, Lcom/htc/wrap/android/net/wifi/HtcWrapWifiConfiguration$HtcWrapHotspotProfile;->hp:Landroid/net/wifi/WifiConfiguration$HotspotProfile;

    iput-boolean p1, v0, Landroid/net/wifi/WifiConfiguration$HotspotProfile;->hiddenSSID:Z

    return-void
.end method

.method public setIpAddress(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/htc/wrap/android/net/wifi/HtcWrapWifiConfiguration$HtcWrapHotspotProfile;->hp:Landroid/net/wifi/WifiConfiguration$HotspotProfile;

    iput-object p1, v0, Landroid/net/wifi/WifiConfiguration$HotspotProfile;->ipAddress:Ljava/lang/String;

    return-void
.end method

.method public setKey(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/htc/wrap/android/net/wifi/HtcWrapWifiConfiguration$HtcWrapHotspotProfile;->hp:Landroid/net/wifi/WifiConfiguration$HotspotProfile;

    iput-object p1, v0, Landroid/net/wifi/WifiConfiguration$HotspotProfile;->key:Ljava/lang/String;

    return-void
.end method

.method public setMaxConns(I)V
    .locals 1

    iget-object v0, p0, Lcom/htc/wrap/android/net/wifi/HtcWrapWifiConfiguration$HtcWrapHotspotProfile;->hp:Landroid/net/wifi/WifiConfiguration$HotspotProfile;

    iput p1, v0, Landroid/net/wifi/WifiConfiguration$HotspotProfile;->maxConns:I

    return-void
.end method

.method public setSSID(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/htc/wrap/android/net/wifi/HtcWrapWifiConfiguration$HtcWrapHotspotProfile;->hp:Landroid/net/wifi/WifiConfiguration$HotspotProfile;

    iput-object p1, v0, Landroid/net/wifi/WifiConfiguration$HotspotProfile;->SSID:Ljava/lang/String;

    return-void
.end method

.method public setSecureType(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/htc/wrap/android/net/wifi/HtcWrapWifiConfiguration$HtcWrapHotspotProfile;->hp:Landroid/net/wifi/WifiConfiguration$HotspotProfile;

    iput-object p1, v0, Landroid/net/wifi/WifiConfiguration$HotspotProfile;->secureType:Ljava/lang/String;

    return-void
.end method

.method public setSleepPolicy(I)V
    .locals 1

    iget-object v0, p0, Lcom/htc/wrap/android/net/wifi/HtcWrapWifiConfiguration$HtcWrapHotspotProfile;->hp:Landroid/net/wifi/WifiConfiguration$HotspotProfile;

    iput p1, v0, Landroid/net/wifi/WifiConfiguration$HotspotProfile;->sleepPolicy:I

    return-void
.end method

.method public setStartingIP(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/htc/wrap/android/net/wifi/HtcWrapWifiConfiguration$HtcWrapHotspotProfile;->hp:Landroid/net/wifi/WifiConfiguration$HotspotProfile;

    iput-object p1, v0, Landroid/net/wifi/WifiConfiguration$HotspotProfile;->startingIP:Ljava/lang/String;

    return-void
.end method
