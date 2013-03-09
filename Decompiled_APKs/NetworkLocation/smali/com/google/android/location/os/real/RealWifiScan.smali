.class Lcom/google/android/location/os/real/RealWifiScan;
.super Lcom/google/android/location/data/WifiScan;
.source "RealWifiScan.java"


# direct methods
.method private constructor <init>(JLjava/util/ArrayList;)V
    .locals 0
    .parameter "timestamp"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/google/android/location/data/WifiScan$Device;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 32
    .local p3, devices:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/google/android/location/data/WifiScan$Device;>;"
    invoke-direct {p0, p1, p2, p3}, Lcom/google/android/location/data/WifiScan;-><init>(JLjava/util/ArrayList;)V

    .line 33
    return-void
.end method

.method public static create(JLjava/util/List;)Lcom/google/android/location/os/real/RealWifiScan;
    .locals 8
    .parameter "timestamp"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/List",
            "<",
            "Landroid/net/wifi/ScanResult;",
            ">;)",
            "Lcom/google/android/location/os/real/RealWifiScan;"
        }
    .end annotation

    .prologue
    .line 21
    .local p2, scan:Ljava/util/List;,"Ljava/util/List<Landroid/net/wifi/ScanResult;>;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v5

    invoke-direct {v0, v5}, Ljava/util/ArrayList;-><init>(I)V

    .line 22
    .local v0, devices:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/google/android/location/data/WifiScan$Device;>;"
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/net/wifi/ScanResult;

    .line 23
    .local v4, s:Landroid/net/wifi/ScanResult;
    iget-object v5, v4, Landroid/net/wifi/ScanResult;->BSSID:Ljava/lang/String;

    invoke-static {v5}, Lcom/google/android/location/data/WifiUtils;->macToLong(Ljava/lang/String;)J

    move-result-wide v2

    .line 24
    .local v2, mac:J
    const-wide/16 v5, -0x1

    cmp-long v5, v2, v5

    if-eqz v5, :cond_0

    .line 25
    new-instance v5, Lcom/google/android/location/data/WifiScan$Device;

    iget v6, v4, Landroid/net/wifi/ScanResult;->level:I

    iget-object v7, v4, Landroid/net/wifi/ScanResult;->SSID:Ljava/lang/String;

    invoke-direct {v5, v2, v3, v6, v7}, Lcom/google/android/location/data/WifiScan$Device;-><init>(JILjava/lang/String;)V

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 28
    .end local v2           #mac:J
    .end local v4           #s:Landroid/net/wifi/ScanResult;
    :cond_1
    new-instance v5, Lcom/google/android/location/os/real/RealWifiScan;

    invoke-direct {v5, p0, p1, v0}, Lcom/google/android/location/os/real/RealWifiScan;-><init>(JLjava/util/ArrayList;)V

    return-object v5
.end method
