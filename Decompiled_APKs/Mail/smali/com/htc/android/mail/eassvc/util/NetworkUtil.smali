.class public Lcom/htc/android/mail/eassvc/util/NetworkUtil;
.super Ljava/lang/Object;
.source "NetworkUtil.java"


# static fields
#the value of this static final field might be set in the static constructor
.field private static final DEBUG:Z = false

.field protected static final TAG:Ljava/lang/String; = "EAS_NetowrkUtil"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 15
    sget-boolean v0, Lcom/htc/android/mail/Mail;->EAS_DEBUG:Z

    sput-boolean v0, Lcom/htc/android/mail/eassvc/util/NetworkUtil;->DEBUG:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 13
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static checkNetwork(Landroid/content/Context;)Z
    .locals 9
    .parameter "context"

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 18
    invoke-static {p0}, Lcom/htc/android/mail/eassvc/util/NetworkUtil;->isWifiNetwork(Landroid/content/Context;)Z

    move-result v3

    .line 19
    .local v3, bWifi:Z
    invoke-static {p0}, Lcom/htc/android/mail/eassvc/util/NetworkUtil;->isMobileNetwork(Landroid/content/Context;)Z

    move-result v0

    .line 20
    .local v0, bMobile:Z
    invoke-static {p0}, Lcom/htc/android/mail/eassvc/util/NetworkUtil;->isUSBNetwork(Landroid/content/Context;)Z

    move-result v1

    .line 21
    .local v1, bUsb:Z
    sget-boolean v4, Lcom/htc/htcjavaflag/HtcBuildFlag;->HTC_WIMAX_flag:Z

    if-eqz v4, :cond_7

    .line 22
    invoke-static {p0}, Lcom/htc/android/mail/eassvc/util/NetworkUtil;->isWiMaxNetwork(Landroid/content/Context;)Z

    move-result v2

    .line 23
    .local v2, bWiMax:Z
    sget-boolean v4, Lcom/htc/android/mail/eassvc/util/NetworkUtil;->DEBUG:Z

    if-eqz v4, :cond_0

    const-string v7, "EAS_NetowrkUtil"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "checkNetwork(): "

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    if-eqz v3, :cond_2

    const-string v4, " Wifi"

    :goto_0
    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    if-eqz v0, :cond_3

    const-string v4, " Mobile"

    :goto_1
    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    if-eqz v2, :cond_4

    const-string v4, " WiMax"

    :goto_2
    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    if-eqz v1, :cond_5

    const-string v4, " USB"

    :goto_3
    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v7, v4}, Lcom/htc/android/mail/eassvc/util/EASLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 24
    :cond_0
    if-nez v3, :cond_1

    if-nez v0, :cond_1

    if-nez v1, :cond_1

    if-eqz v2, :cond_6

    :cond_1
    move v4, v6

    .line 27
    .end local v2           #bWiMax:Z
    :goto_4
    return v4

    .line 23
    .restart local v2       #bWiMax:Z
    :cond_2
    const-string v4, ""

    goto :goto_0

    :cond_3
    const-string v4, ""

    goto :goto_1

    :cond_4
    const-string v4, ""

    goto :goto_2

    :cond_5
    const-string v4, ""

    goto :goto_3

    :cond_6
    move v4, v5

    .line 24
    goto :goto_4

    .line 26
    .end local v2           #bWiMax:Z
    :cond_7
    sget-boolean v4, Lcom/htc/android/mail/eassvc/util/NetworkUtil;->DEBUG:Z

    if-eqz v4, :cond_8

    const-string v7, "EAS_NetowrkUtil"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "checkNetwork(): "

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    if-eqz v3, :cond_b

    const-string v4, " Wifi"

    :goto_5
    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    if-eqz v0, :cond_c

    const-string v4, " Mobile"

    :goto_6
    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    if-eqz v1, :cond_d

    const-string v4, " USB"

    :goto_7
    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v7, v4}, Lcom/htc/android/mail/eassvc/util/EASLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 27
    :cond_8
    if-nez v3, :cond_9

    if-nez v0, :cond_9

    if-eqz v1, :cond_a

    :cond_9
    move v5, v6

    :cond_a
    move v4, v5

    goto :goto_4

    .line 26
    :cond_b
    const-string v4, ""

    goto :goto_5

    :cond_c
    const-string v4, ""

    goto :goto_6

    :cond_d
    const-string v4, ""

    goto :goto_7
.end method

.method public static isAirplaneModeOn(Landroid/content/Context;)Z
    .locals 4
    .parameter "context"

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 75
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

.method public static isDataRoaming(Landroid/content/Context;)Z
    .locals 6
    .parameter "context"

    .prologue
    .line 78
    const-string v3, "connectivity"

    invoke-virtual {p0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 79
    .local v0, cm:Landroid/net/ConnectivityManager;
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v1

    .line 80
    .local v1, netInfo:Landroid/net/NetworkInfo;
    if-nez v1, :cond_1

    .line 81
    const/4 v2, 0x0

    .line 85
    :cond_0
    :goto_0
    return v2

    .line 83
    :cond_1
    invoke-virtual {v1}, Landroid/net/NetworkInfo;->isRoaming()Z

    move-result v2

    .line 84
    .local v2, roaming:Z
    sget-boolean v3, Lcom/htc/android/mail/eassvc/util/NetworkUtil;->DEBUG:Z

    if-eqz v3, :cond_0

    const-string v4, "EAS_NetowrkUtil"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "isDataRoaming(): "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Landroid/net/NetworkInfo;->getTypeName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    if-eqz v2, :cond_2

    const-string v3, " roaming"

    :goto_1
    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Lcom/htc/android/mail/eassvc/util/EASLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    const-string v3, ""

    goto :goto_1
.end method

.method public static isMobileNetwork(Landroid/content/Context;)Z
    .locals 8
    .parameter "context"

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 45
    const-string v6, "connectivity"

    invoke-virtual {p0, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 46
    .local v0, cm:Landroid/net/ConnectivityManager;
    invoke-virtual {v0, v4}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v3

    .line 47
    .local v3, mobile:Landroid/net/NetworkInfo;
    if-nez v3, :cond_1

    .line 54
    :cond_0
    :goto_0
    return v4

    .line 49
    :cond_1
    invoke-virtual {v3}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v1

    .line 50
    .local v1, isConnected:Z
    invoke-virtual {v3}, Landroid/net/NetworkInfo;->getState()Landroid/net/NetworkInfo$State;

    move-result-object v6

    sget-object v7, Landroid/net/NetworkInfo$State;->SUSPENDED:Landroid/net/NetworkInfo$State;

    if-ne v6, v7, :cond_4

    move v2, v5

    .line 51
    .local v2, isSuspend:Z
    :goto_1
    if-eqz v2, :cond_2

    .line 52
    const-string v6, "EAS_NetowrkUtil"

    const-string v7, "isMobileNetwork: suspended"

    invoke-static {v6, v7}, Lcom/htc/android/mail/eassvc/util/EASLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 54
    :cond_2
    if-nez v1, :cond_3

    if-eqz v2, :cond_0

    :cond_3
    move v4, v5

    goto :goto_0

    .end local v2           #isSuspend:Z
    :cond_4
    move v2, v4

    .line 50
    goto :goto_1
.end method

.method public static isNetworkAllowAutosync(Landroid/content/Context;JZ)Z
    .locals 8
    .parameter "context"
    .parameter "accountId"
    .parameter "isConnectWhileRoaming"

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 90
    invoke-static {p0}, Lcom/htc/android/mail/eassvc/util/NetworkUtil;->isAirplaneModeOn(Landroid/content/Context;)Z

    move-result v0

    .line 91
    .local v0, bAirplaneMode:Z
    invoke-static {p0}, Lcom/htc/android/mail/eassvc/util/NetworkUtil;->isWifiNetwork(Landroid/content/Context;)Z

    move-result v2

    .line 92
    .local v2, bWifiNetwork:Z
    invoke-static {p0}, Lcom/htc/android/mail/eassvc/util/NetworkUtil;->isUSBNetwork(Landroid/content/Context;)Z

    move-result v1

    .line 93
    .local v1, bUsbNetwork:Z
    if-eqz v0, :cond_1

    if-nez v2, :cond_1

    if-nez v1, :cond_1

    .line 94
    sget-boolean v3, Lcom/htc/android/mail/eassvc/util/NetworkUtil;->DEBUG:Z

    if-eqz v3, :cond_0

    const-string v3, "EAS_NetowrkUtil"

    const-string v5, "isNetworkAllowAutosync(): AirplaneMode & no syncable network."

    invoke-static {v3, p1, p2, v5}, Lcom/htc/android/mail/eassvc/util/EASLog;->d(Ljava/lang/String;JLjava/lang/String;)V

    .line 101
    :cond_0
    :goto_0
    return v4

    .line 96
    :cond_1
    invoke-static {p0}, Lcom/htc/android/mail/eassvc/util/NetworkUtil;->isDataRoaming(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_8

    .line 97
    sget-boolean v3, Lcom/htc/android/mail/eassvc/util/NetworkUtil;->DEBUG:Z

    if-eqz v3, :cond_2

    const-string v6, "EAS_NetowrkUtil"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "isNetworkAllowAutosync(): Roaming "

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    if-eqz v2, :cond_4

    const-string v3, ", Wifi"

    :goto_1
    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    if-eqz p3, :cond_5

    const-string v3, ", Connect while roaming"

    :goto_2
    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    if-eqz v1, :cond_6

    const-string v3, ", USBNet"

    :goto_3
    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v6, p1, p2, v3}, Lcom/htc/android/mail/eassvc/util/EASLog;->d(Ljava/lang/String;JLjava/lang/String;)V

    .line 99
    :cond_2
    if-nez v2, :cond_3

    if-nez v1, :cond_3

    if-eqz p3, :cond_7

    :cond_3
    move v3, v5

    :goto_4
    move v4, v3

    goto :goto_0

    .line 97
    :cond_4
    const-string v3, ""

    goto :goto_1

    :cond_5
    const-string v3, ""

    goto :goto_2

    :cond_6
    const-string v3, ""

    goto :goto_3

    :cond_7
    move v3, v4

    .line 99
    goto :goto_4

    :cond_8
    move v4, v5

    .line 101
    goto :goto_0
.end method

.method public static isUSBNetwork(Landroid/content/Context;)Z
    .locals 3
    .parameter "context"

    .prologue
    .line 66
    const-string v2, "connectivity"

    invoke-virtual {p0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 67
    .local v0, cm:Landroid/net/ConnectivityManager;
    const/16 v2, 0x12

    invoke-virtual {v0, v2}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v1

    .line 68
    .local v1, usbNet:Landroid/net/NetworkInfo;
    if-nez v1, :cond_0

    .line 69
    const/4 v2, 0x0

    .line 71
    :goto_0
    return v2

    :cond_0
    invoke-virtual {v1}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v2

    goto :goto_0
.end method

.method public static isWiMaxNetwork(Landroid/content/Context;)Z
    .locals 3
    .parameter "context"

    .prologue
    .line 58
    const-string v2, "connectivity"

    invoke-virtual {p0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 59
    .local v0, cm:Landroid/net/ConnectivityManager;
    const/4 v2, 0x6

    invoke-virtual {v0, v2}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v1

    .line 60
    .local v1, wimax:Landroid/net/NetworkInfo;
    if-nez v1, :cond_0

    .line 61
    const/4 v2, 0x0

    .line 62
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
    .line 37
    const-string v2, "connectivity"

    invoke-virtual {p0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 38
    .local v0, cm:Landroid/net/ConnectivityManager;
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v1

    .line 39
    .local v1, wifi:Landroid/net/NetworkInfo;
    if-nez v1, :cond_0

    .line 40
    const/4 v2, 0x0

    .line 41
    :goto_0
    return v2

    :cond_0
    invoke-virtual {v1}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v2

    goto :goto_0
.end method
