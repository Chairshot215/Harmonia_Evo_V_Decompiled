.class public Lcom/android/updater/util/UpdaterNetworkCheck;
.super Ljava/lang/Object;
.source "UpdaterNetworkCheck.java"


# static fields
.field private static final LOG:Z = false

.field private static final TAG:Ljava/lang/String; = "UpdaterAPK | UpdaterNetworkCheck"

.field private static final TEST_ACU_DOWNLOAD_PATH:Ljava/lang/String; = "apu-stage.htc.com"

.field private static final TEST_ADDRESS:Ljava/lang/String; = "http://apu-stage.htc.com/apu-stage/"

.field private static final TEST_ADDRESS2:Ljava/lang/String; = "http://masd.htc.com.tw/"

.field private static final TEST_FOTA_DOWNLOAD_PATH:Ljava/lang/String; = "fotastage.htc.com"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 17
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static displayOutIntranetErrorMessage(Landroid/content/Context;)V
    .locals 3
    .parameter "context"

    .prologue
    .line 188
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.android.updater.FOTA_ALERT"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 189
    .local v0, alertIntent:Landroid/content/Intent;
    invoke-static {p0}, Lcom/android/updater/util/NotificationUtil;->cancelUpdateNotification(Landroid/content/Context;)V

    .line 190
    const-string v1, "alert_type"

    const/16 v2, 0x25

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 191
    const/high16 v1, 0x1000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 192
    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 193
    return-void
.end method

.method public static isAnyNetworkConnected(Landroid/content/Context;)Z
    .locals 6
    .parameter "context"

    .prologue
    .line 85
    const/4 v2, 0x0

    .line 87
    .local v2, isAnyNetworkConnected:Z
    :try_start_0
    const-string v3, "connectivity"

    invoke-virtual {p0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 88
    .local v0, cm:Landroid/net/ConnectivityManager;
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v3

    if-eqz v3, :cond_0

    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v3

    invoke-virtual {v3}, Landroid/net/NetworkInfo;->isConnected()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    if-eqz v3, :cond_0

    .line 89
    const/4 v2, 0x1

    .line 96
    .end local v0           #cm:Landroid/net/ConnectivityManager;
    :cond_0
    :goto_0
    return v2

    .line 92
    :catch_0
    move-exception v1

    .line 93
    .local v1, e:Ljava/lang/Exception;
    const-string v3, "UpdaterAPK | UpdaterNetworkCheck"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "isAnyNetworkConnected() exception! "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 94
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private static isDataConnected(Landroid/content/Context;)Z
    .locals 6
    .parameter "context"

    .prologue
    .line 139
    const/4 v2, 0x0

    .line 141
    .local v2, network:Landroid/net/NetworkInfo;
    :try_start_0
    const-string v3, "connectivity"

    invoke-virtual {p0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/net/ConnectivityManager;

    invoke-virtual {v3}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 146
    :goto_0
    if-eqz v2, :cond_0

    invoke-virtual {v2}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v1, 0x1

    .line 148
    .local v1, isDataConnection:Z
    :goto_1
    return v1

    .line 142
    .end local v1           #isDataConnection:Z
    :catch_0
    move-exception v0

    .line 143
    .local v0, e:Ljava/lang/Exception;
    const-string v3, "UpdaterAPK | UpdaterNetworkCheck"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "isDataConnected() exception! "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 144
    const/4 v2, 0x0

    goto :goto_0

    .line 146
    .end local v0           #e:Ljava/lang/Exception;
    :cond_0
    const/4 v1, 0x0

    goto :goto_1
.end method

.method private static isDeviceOutsideIntranet(Landroid/content/Context;)Z
    .locals 9
    .parameter "context"

    .prologue
    const/16 v7, 0xc8

    .line 152
    const/4 v3, 0x0

    .line 154
    .local v3, isOutside:Z
    :try_start_0
    new-instance v5, Ljava/net/URL;

    const-string v6, "http://apu-stage.htc.com/apu-stage/"

    invoke-direct {v5, v6}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 155
    .local v5, url:Ljava/net/URL;
    invoke-virtual {v5}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v0

    check-cast v0, Ljava/net/HttpURLConnection;

    .line 156
    .local v0, connection:Ljava/net/HttpURLConnection;
    const/16 v6, 0x2710

    invoke-virtual {v0, v6}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    .line 157
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getResponseCode()I
    :try_end_0
    .catch Ljava/net/SocketTimeoutException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    move-result v4

    .line 158
    .local v4, state:I
    if-eq v4, v7, :cond_0

    .line 160
    const/4 v3, 0x1

    .line 183
    .end local v0           #connection:Ljava/net/HttpURLConnection;
    .end local v4           #state:I
    .end local v5           #url:Ljava/net/URL;
    :cond_0
    :goto_0
    return v3

    .line 162
    :catch_0
    move-exception v1

    .line 165
    .local v1, e:Ljava/net/SocketTimeoutException;
    :try_start_1
    new-instance v5, Ljava/net/URL;

    const-string v6, "http://masd.htc.com.tw/"

    invoke-direct {v5, v6}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 166
    .restart local v5       #url:Ljava/net/URL;
    invoke-virtual {v5}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v0

    check-cast v0, Ljava/net/HttpURLConnection;

    .line 167
    .restart local v0       #connection:Ljava/net/HttpURLConnection;
    const/16 v6, 0x2710

    invoke-virtual {v0, v6}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    .line 168
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getResponseCode()I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result v4

    .line 169
    .restart local v4       #state:I
    if-eq v4, v7, :cond_0

    .line 171
    const/4 v3, 0x1

    goto :goto_0

    .line 173
    .end local v0           #connection:Ljava/net/HttpURLConnection;
    .end local v4           #state:I
    .end local v5           #url:Ljava/net/URL;
    :catch_1
    move-exception v2

    .line 175
    .local v2, e1:Ljava/lang/Exception;
    const/4 v3, 0x1

    goto :goto_0

    .line 178
    .end local v1           #e:Ljava/net/SocketTimeoutException;
    .end local v2           #e1:Ljava/lang/Exception;
    :catch_2
    move-exception v1

    .line 179
    .local v1, e:Ljava/lang/Exception;
    const-string v6, "UpdaterAPK | UpdaterNetworkCheck"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "isDeviceOutsideIntranet() connect exception! "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 180
    const/4 v3, 0x1

    goto :goto_0
.end method

.method public static isDownloadPathInsideIntranet(Ljava/lang/String;Z)Z
    .locals 4
    .parameter "downloadPath"
    .parameter "isFOTA"

    .prologue
    const/4 v3, -0x1

    .line 110
    const/4 v0, 0x0

    .line 111
    .local v0, isInside:Z
    if-nez p0, :cond_0

    move v1, v0

    .line 124
    .end local v0           #isInside:Z
    .local v1, isInside:I
    :goto_0
    return v1

    .line 114
    .end local v1           #isInside:I
    .restart local v0       #isInside:Z
    :cond_0
    if-eqz p1, :cond_2

    .line 115
    const-string v2, "fotastage.htc.com"

    invoke-virtual {p0, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    if-eq v2, v3, :cond_1

    .line 116
    const/4 v0, 0x1

    :cond_1
    :goto_1
    move v1, v0

    .line 124
    .restart local v1       #isInside:I
    goto :goto_0

    .line 119
    .end local v1           #isInside:I
    :cond_2
    const-string v2, "apu-stage.htc.com"

    invoke-virtual {p0, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    if-eq v2, v3, :cond_1

    .line 120
    const/4 v0, 0x1

    goto :goto_1
.end method

.method public static isIPTOn(Landroid/content/Context;)Z
    .locals 7
    .parameter "context"

    .prologue
    .line 42
    const/4 v3, 0x0

    .line 44
    .local v3, isIPTOn:Z
    :try_start_0
    const-string v4, "connectivity"

    invoke-virtual {p0, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/ConnectivityManager;

    .line 46
    .local v1, cm:Landroid/net/ConnectivityManager;
    const/16 v4, 0x12

    invoke-virtual {v1, v4}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v0

    .line 47
    .local v0, IPTInfo:Landroid/net/NetworkInfo;
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isConnected()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    .line 53
    .end local v0           #IPTInfo:Landroid/net/NetworkInfo;
    .end local v1           #cm:Landroid/net/ConnectivityManager;
    :goto_0
    return v3

    .line 49
    :catch_0
    move-exception v2

    .line 50
    .local v2, e:Ljava/lang/Exception;
    const-string v4, "UpdaterAPK | UpdaterNetworkCheck"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "isIPTOn() exception! "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 51
    const/4 v3, 0x0

    goto :goto_0
.end method

.method public static isMobileDataOn(Landroid/content/Context;)Z
    .locals 7
    .parameter "context"

    .prologue
    .line 57
    const/4 v3, 0x0

    .line 59
    .local v3, isMobileDataOn:Z
    :try_start_0
    const-string v4, "connectivity"

    invoke-virtual {p0, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/ConnectivityManager;

    .line 60
    .local v1, cm:Landroid/net/ConnectivityManager;
    const/4 v4, 0x0

    invoke-virtual {v1, v4}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v0

    .line 61
    .local v0, MobileDataInfo:Landroid/net/NetworkInfo;
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isConnected()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    .line 67
    .end local v0           #MobileDataInfo:Landroid/net/NetworkInfo;
    .end local v1           #cm:Landroid/net/ConnectivityManager;
    :goto_0
    return v3

    .line 63
    :catch_0
    move-exception v2

    .line 64
    .local v2, e:Ljava/lang/Exception;
    const-string v4, "UpdaterAPK | UpdaterNetworkCheck"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "isMobileDataOn() exception! "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 65
    const/4 v3, 0x0

    goto :goto_0
.end method

.method public static isOutIntranetError(Landroid/content/Context;)Z
    .locals 2
    .parameter "context"

    .prologue
    .line 128
    const/4 v0, 0x0

    .line 130
    .local v0, isError:Z
    invoke-static {}, Lcom/android/updater/util/UpdaterUtil;->isEndWithTestKey()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {p0}, Lcom/android/updater/util/UpdaterNetworkCheck;->isDataConnected(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {p0}, Lcom/android/updater/util/UpdaterNetworkCheck;->isDeviceOutsideIntranet(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 132
    const/4 v0, 0x1

    .line 134
    :cond_0
    return v0
.end method

.method public static isRoaming(Landroid/content/Context;)Z
    .locals 7
    .parameter "context"

    .prologue
    .line 71
    const/4 v3, 0x0

    .line 73
    .local v3, isRoaming:Z
    :try_start_0
    const-string v4, "connectivity"

    invoke-virtual {p0, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/ConnectivityManager;

    .line 74
    .local v1, cm:Landroid/net/ConnectivityManager;
    const/4 v4, 0x0

    invoke-virtual {v1, v4}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v0

    .line 75
    .local v0, MobileDataInfo:Landroid/net/NetworkInfo;
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isRoaming()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    .line 81
    .end local v0           #MobileDataInfo:Landroid/net/NetworkInfo;
    .end local v1           #cm:Landroid/net/ConnectivityManager;
    :goto_0
    return v3

    .line 77
    :catch_0
    move-exception v2

    .line 78
    .local v2, e:Ljava/lang/Exception;
    const-string v4, "UpdaterAPK | UpdaterNetworkCheck"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "isRoaming() exception! "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 79
    const/4 v3, 0x0

    goto :goto_0
.end method

.method public static isWifiOn(Landroid/content/Context;)Z
    .locals 7
    .parameter "context"

    .prologue
    .line 28
    const/4 v2, 0x0

    .line 30
    .local v2, isWifiOn:Z
    :try_start_0
    const-string v4, "connectivity"

    invoke-virtual {p0, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 31
    .local v0, cm:Landroid/net/ConnectivityManager;
    const/4 v4, 0x1

    invoke-virtual {v0, v4}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v3

    .line 32
    .local v3, wifi:Landroid/net/NetworkInfo;
    invoke-virtual {v3}, Landroid/net/NetworkInfo;->isConnected()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    .line 38
    .end local v0           #cm:Landroid/net/ConnectivityManager;
    .end local v3           #wifi:Landroid/net/NetworkInfo;
    :goto_0
    return v2

    .line 34
    :catch_0
    move-exception v1

    .line 35
    .local v1, e:Ljava/lang/Exception;
    const-string v4, "UpdaterAPK | UpdaterNetworkCheck"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "isWifiOn() exception! "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 36
    const/4 v2, 0x0

    goto :goto_0
.end method
