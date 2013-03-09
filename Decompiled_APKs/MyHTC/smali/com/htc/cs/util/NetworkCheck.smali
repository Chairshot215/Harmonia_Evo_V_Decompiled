.class public Lcom/htc/cs/util/NetworkCheck;
.super Ljava/lang/Object;
.source "NetworkCheck.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static isAirplaneModeOn(Landroid/content/Context;)Z
    .locals 4
    .parameter "context"

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 61
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "airplane_mode_on"

    invoke-static {v2, v3, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-ne v2, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    move v0, v1

    goto :goto_0
.end method

.method public static isConnWhileRoaming(Landroid/content/Context;Z)Z
    .locals 6
    .parameter "context"
    .parameter "syncWhileRoaming"

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 72
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "data_roaming"

    invoke-static {v4, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v4

    if-lez v4, :cond_0

    move v0, v2

    .line 78
    .local v0, ConnWhileRoaming:Z
    :goto_0
    if-eqz v0, :cond_1

    if-eqz p1, :cond_1

    :goto_1
    return v2

    .end local v0           #ConnWhileRoaming:Z
    :cond_0
    move v0, v3

    .line 72
    goto :goto_0

    .line 74
    :catch_0
    move-exception v1

    .line 75
    .local v1, e:Ljava/lang/Exception;
    const/4 v0, 0x0

    .restart local v0       #ConnWhileRoaming:Z
    goto :goto_0

    .end local v1           #e:Ljava/lang/Exception;
    :cond_1
    move v2, v3

    .line 78
    goto :goto_1
.end method

.method private static isDataRoaming(Landroid/content/Context;)Z
    .locals 2
    .parameter "context"

    .prologue
    .line 65
    const-string v1, "phone"

    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    .line 67
    .local v0, telephonyManager:Landroid/telephony/TelephonyManager;
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->isNetworkRoaming()Z

    move-result v1

    return v1
.end method

.method private static isMobileNetwork(Landroid/content/Context;)Z
    .locals 4
    .parameter "context"

    .prologue
    const/4 v2, 0x0

    .line 27
    const-string v3, "connectivity"

    invoke-virtual {p0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 28
    .local v0, cm:Landroid/net/ConnectivityManager;
    invoke-virtual {v0, v2}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v1

    .line 29
    .local v1, mobile:Landroid/net/NetworkInfo;
    if-nez v1, :cond_0

    .line 31
    :goto_0
    return v2

    :cond_0
    invoke-virtual {v1}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v2

    goto :goto_0
.end method

.method public static isNetworkOK(Landroid/content/Context;Z)Z
    .locals 5
    .parameter "context"
    .parameter "syncWhileRoaming"

    .prologue
    .line 48
    const/4 v0, 0x0

    .line 49
    .local v0, connected:Z
    const-string v3, "connectivity"

    invoke-virtual {p0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/ConnectivityManager;

    .line 50
    .local v1, connectivity:Landroid/net/ConnectivityManager;
    if-eqz v1, :cond_0

    .line 51
    invoke-virtual {v1}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v2

    .line 52
    .local v2, info:Landroid/net/NetworkInfo;
    if-eqz v2, :cond_0

    invoke-virtual {v2}, Landroid/net/NetworkInfo;->getState()Landroid/net/NetworkInfo$State;

    move-result-object v3

    sget-object v4, Landroid/net/NetworkInfo$State;->CONNECTED:Landroid/net/NetworkInfo$State;

    if-ne v3, v4, :cond_0

    .line 53
    const/4 v0, 0x1

    .line 57
    .end local v2           #info:Landroid/net/NetworkInfo;
    :cond_0
    return v0
.end method

.method private static isUSBNetwork(Landroid/content/Context;)Z
    .locals 3
    .parameter "context"

    .prologue
    .line 34
    const-string v2, "connectivity"

    invoke-virtual {p0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 35
    .local v0, cm:Landroid/net/ConnectivityManager;
    const/16 v2, 0x12

    invoke-virtual {v0, v2}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v1

    .line 36
    .local v1, usbNet:Landroid/net/NetworkInfo;
    if-nez v1, :cond_0

    .line 37
    const/4 v2, 0x0

    .line 38
    :goto_0
    return v2

    :cond_0
    invoke-virtual {v1}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v2

    goto :goto_0
.end method

.method public static isWifiNetwork(Landroid/content/Context;)Z
    .locals 3
    .parameter "context"

    .prologue
    .line 19
    const-string v2, "connectivity"

    invoke-virtual {p0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 20
    .local v0, cm:Landroid/net/ConnectivityManager;
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v1

    .line 21
    .local v1, wifi:Landroid/net/NetworkInfo;
    if-nez v1, :cond_0

    .line 22
    const/4 v2, 0x0

    .line 23
    :goto_0
    return v2

    :cond_0
    invoke-virtual {v1}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v2

    goto :goto_0
.end method
