.class Lcom/htc/android/mail/easdp/EASDirectpush$NetworkCheck;
.super Ljava/lang/Object;
.source "EASDirectpush.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/android/mail/easdp/EASDirectpush;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "NetworkCheck"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 384
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static dumpNetworkInfo(Landroid/content/Context;)V
    .locals 4
    .parameter "context"

    .prologue
    .line 470
    const-string v2, "connectivity"

    invoke-virtual {p0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 473
    .local v0, cm:Landroid/net/ConnectivityManager;
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v1

    .line 474
    .local v1, info:Landroid/net/NetworkInfo;
    if-eqz v1, :cond_0

    .line 475
    const-string v2, "EASDirectpush"

    invoke-virtual {v1}, Landroid/net/NetworkInfo;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/android/mail/eassvc/util/EASLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 477
    :cond_0
    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v1

    .line 478
    if-eqz v1, :cond_1

    .line 479
    const-string v2, "EASDirectpush"

    invoke-virtual {v1}, Landroid/net/NetworkInfo;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/android/mail/eassvc/util/EASLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 481
    :cond_1
    return-void
.end method

.method public static isConnWhileRoaming(Landroid/content/Context;Z)Z
    .locals 9
    .parameter "context"
    .parameter "syncWhileRoaming"

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 449
    :try_start_0
    const-string v6, "phone"

    invoke-virtual {p0, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telephony/TelephonyManager;

    .line 450
    .local v2, mTelephonyManager:Landroid/telephony/TelephonyManager;
    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->getCurrentPhoneType()I

    move-result v6

    const/4 v7, 0x2

    if-ne v6, v7, :cond_1

    .line 451
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v7, "data_roaming_allowed"

    invoke-static {v6, v7}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 453
    .local v3, roamingType:Ljava/lang/String;
    if-eqz v3, :cond_0

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v6

    const-string v7, ""

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_0

    .line 454
    const/4 v0, 0x1

    .line 466
    .end local v2           #mTelephonyManager:Landroid/telephony/TelephonyManager;
    .end local v3           #roamingType:Ljava/lang/String;
    .local v0, ConnWhileRoaming:Z
    :goto_0
    if-eqz v0, :cond_3

    if-eqz p1, :cond_3

    :goto_1
    return v4

    .line 456
    .end local v0           #ConnWhileRoaming:Z
    .restart local v2       #mTelephonyManager:Landroid/telephony/TelephonyManager;
    .restart local v3       #roamingType:Ljava/lang/String;
    :cond_0
    const/4 v0, 0x0

    .restart local v0       #ConnWhileRoaming:Z
    goto :goto_0

    .line 459
    .end local v0           #ConnWhileRoaming:Z
    .end local v3           #roamingType:Ljava/lang/String;
    :cond_1
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v7, "data_roaming"

    invoke-static {v6, v7}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v6

    if-lez v6, :cond_2

    move v0, v4

    .restart local v0       #ConnWhileRoaming:Z
    :goto_2
    goto :goto_0

    .end local v0           #ConnWhileRoaming:Z
    :cond_2
    move v0, v5

    goto :goto_2

    .line 461
    .end local v2           #mTelephonyManager:Landroid/telephony/TelephonyManager;
    :catch_0
    move-exception v1

    .line 462
    .local v1, e:Ljava/lang/Exception;
    const-string v6, "EASDirectpush"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Cannot get System.DATA_ROAMING value:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/htc/android/mail/eassvc/util/EASLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 463
    const/4 v0, 0x0

    .restart local v0       #ConnWhileRoaming:Z
    goto :goto_0

    .end local v1           #e:Ljava/lang/Exception;
    :cond_3
    move v4, v5

    .line 466
    goto :goto_1
.end method

.method private static isDataRoaming(Landroid/content/Context;)Z
    .locals 5
    .parameter "context"

    .prologue
    .line 440
    const-string v2, "phone"

    invoke-virtual {p0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/TelephonyManager;

    .line 442
    .local v1, telephonyManager:Landroid/telephony/TelephonyManager;
    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->isNetworkRoaming()Z

    move-result v0

    .line 443
    .local v0, isRoaming:Z
    const-string v2, "EASDirectpush"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "isDataRoaming = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/android/mail/eassvc/util/EASLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 444
    return v0
.end method

.method private static isMobileNetwork(Landroid/content/Context;Landroid/net/ConnectivityManager;Z)Z
    .locals 7
    .parameter "context"
    .parameter "cm"
    .parameter "syncWhileRoaming"

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 398
    invoke-virtual {p1, v4}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v1

    .line 399
    .local v1, mobile:Landroid/net/NetworkInfo;
    if-nez v1, :cond_1

    .line 406
    :cond_0
    :goto_0
    return v4

    .line 401
    :cond_1
    invoke-virtual {v1}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v2

    .line 402
    .local v2, mobileNetwork:Z
    invoke-virtual {v1}, Landroid/net/NetworkInfo;->getState()Landroid/net/NetworkInfo$State;

    move-result-object v5

    sget-object v6, Landroid/net/NetworkInfo$State;->SUSPENDED:Landroid/net/NetworkInfo$State;

    if-ne v5, v6, :cond_3

    move v0, v3

    .line 403
    .local v0, isSuspend:Z
    :goto_1
    if-eqz v2, :cond_5

    invoke-static {p0}, Lcom/htc/android/mail/easdp/EASDirectpush$NetworkCheck;->isDataRoaming(Landroid/content/Context;)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 404
    invoke-static {p0, p2}, Lcom/htc/android/mail/easdp/EASDirectpush$NetworkCheck;->isConnWhileRoaming(Landroid/content/Context;Z)Z

    move-result v5

    if-eqz v5, :cond_4

    if-nez v2, :cond_2

    if-eqz v0, :cond_4

    :cond_2
    :goto_2
    move v4, v3

    goto :goto_0

    .end local v0           #isSuspend:Z
    :cond_3
    move v0, v4

    .line 402
    goto :goto_1

    .restart local v0       #isSuspend:Z
    :cond_4
    move v3, v4

    .line 404
    goto :goto_2

    .line 406
    :cond_5
    if-nez v2, :cond_6

    if-eqz v0, :cond_0

    :cond_6
    move v4, v3

    goto :goto_0
.end method

.method public static isNetworkOK(Landroid/content/Context;Z)Z
    .locals 2
    .parameter "context"
    .parameter "syncWhileRoaming"

    .prologue
    .line 431
    const-string v1, "connectivity"

    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 432
    .local v0, cm:Landroid/net/ConnectivityManager;
    invoke-static {p0, v0}, Lcom/htc/android/mail/easdp/EASDirectpush$NetworkCheck;->isWifiNetwork(Landroid/content/Context;Landroid/net/ConnectivityManager;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {p0, v0}, Lcom/htc/android/mail/easdp/EASDirectpush$NetworkCheck;->isWiMaxNetwork(Landroid/content/Context;Landroid/net/ConnectivityManager;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {p0, v0}, Lcom/htc/android/mail/easdp/EASDirectpush$NetworkCheck;->isUSBNetwork(Landroid/content/Context;Landroid/net/ConnectivityManager;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {p0, v0, p1}, Lcom/htc/android/mail/easdp/EASDirectpush$NetworkCheck;->isMobileNetwork(Landroid/content/Context;Landroid/net/ConnectivityManager;Z)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 433
    :cond_0
    const/4 v1, 0x1

    .line 435
    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private static isUSBNetwork(Landroid/content/Context;Landroid/net/ConnectivityManager;)Z
    .locals 2
    .parameter "context"
    .parameter "cm"

    .prologue
    .line 422
    const/16 v1, 0x12

    invoke-virtual {p1, v1}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v0

    .line 423
    .local v0, usbNet:Landroid/net/NetworkInfo;
    if-nez v0, :cond_0

    .line 424
    const/4 v1, 0x0

    .line 427
    :goto_0
    return v1

    :cond_0
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v1

    goto :goto_0
.end method

.method private static isWiMaxNetwork(Landroid/content/Context;Landroid/net/ConnectivityManager;)Z
    .locals 4
    .parameter "context"
    .parameter "cm"

    .prologue
    const/4 v1, 0x0

    .line 411
    sget-boolean v2, Lcom/htc/htcjavaflag/HtcBuildFlag;->HTC_WIMAX_flag:Z

    if-nez v2, :cond_1

    .line 418
    :cond_0
    :goto_0
    return v1

    .line 414
    :cond_1
    const/4 v2, 0x6

    invoke-virtual {p1, v2}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v0

    .line 415
    .local v0, wimax:Landroid/net/NetworkInfo;
    if-eqz v0, :cond_0

    .line 418
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getDetailedState()Landroid/net/NetworkInfo$DetailedState;

    move-result-object v2

    sget-object v3, Landroid/net/NetworkInfo$DetailedState;->CONNECTED:Landroid/net/NetworkInfo$DetailedState;

    if-ne v2, v3, :cond_0

    const/4 v1, 0x1

    goto :goto_0
.end method

.method private static isWifiNetwork(Landroid/content/Context;Landroid/net/ConnectivityManager;)Z
    .locals 2
    .parameter "context"
    .parameter "cm"

    .prologue
    .line 391
    const/4 v1, 0x1

    invoke-virtual {p1, v1}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v0

    .line 392
    .local v0, wifi:Landroid/net/NetworkInfo;
    if-nez v0, :cond_0

    .line 393
    const/4 v1, 0x0

    .line 394
    :goto_0
    return v1

    :cond_0
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v1

    goto :goto_0
.end method
