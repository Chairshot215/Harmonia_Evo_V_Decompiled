.class public abstract Lcom/android/mms/transport/Transport;
.super Ljava/lang/Object;
.source "Transport.java"


# static fields
.field public static final HTTP:I = 0x0

.field protected static final LOCAL_LOGV:Z = true

.field private static final TAG:Ljava/lang/String; = "Transport"

.field public static final WSP:I = 0x1

.field private static sConnection:Lcom/android/mms/transport/Connection;


# instance fields
.field protected final mContext:Landroid/content/Context;

.field protected mInet4Addr:Ljava/net/InetAddress;

.field protected mInet6Addr:Ljava/net/InetAddress;

.field protected mIsP4RouteToHost:Z

.field protected mIsP6RouteToHost:Z

.field protected mIsProxySet:Z

.field public mMessageCenterUrl:Ljava/lang/String;

.field protected mProxyHost:Ljava/lang/String;

.field protected mProxyPort:I


# direct methods
.method protected constructor <init>(Landroid/content/Context;)V
    .locals 2
    .parameter "context"

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 66
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 60
    iput-object v1, p0, Lcom/android/mms/transport/Transport;->mInet4Addr:Ljava/net/InetAddress;

    .line 61
    iput-object v1, p0, Lcom/android/mms/transport/Transport;->mInet6Addr:Ljava/net/InetAddress;

    .line 62
    iput-boolean v0, p0, Lcom/android/mms/transport/Transport;->mIsP4RouteToHost:Z

    .line 63
    iput-boolean v0, p0, Lcom/android/mms/transport/Transport;->mIsP6RouteToHost:Z

    .line 67
    iput-object p1, p0, Lcom/android/mms/transport/Transport;->mContext:Landroid/content/Context;

    .line 68
    return-void
.end method

.method public static close()V
    .locals 1

    .prologue
    .line 240
    sget-object v0, Lcom/android/mms/transport/Transport;->sConnection:Lcom/android/mms/transport/Connection;

    if-eqz v0, :cond_0

    .line 241
    sget-object v0, Lcom/android/mms/transport/Transport;->sConnection:Lcom/android/mms/transport/Connection;

    invoke-virtual {v0}, Lcom/android/mms/transport/Connection;->close()V

    .line 242
    const/4 v0, 0x0

    sput-object v0, Lcom/android/mms/transport/Transport;->sConnection:Lcom/android/mms/transport/Connection;

    .line 244
    :cond_0
    return-void
.end method

.method public static createTransport(Landroid/content/Context;)Lcom/android/mms/transport/Transport;
    .locals 4
    .parameter "context"

    .prologue
    const/4 v3, 0x1

    .line 71
    sget-object v2, Lcom/android/mms/transport/Transport;->sConnection:Lcom/android/mms/transport/Connection;

    if-nez v2, :cond_0

    sget-object v2, Lcom/android/mms/transport/Transport;->sConnection:Lcom/android/mms/transport/Connection;

    invoke-virtual {v2}, Lcom/android/mms/transport/Connection;->getStatus()I

    move-result v2

    if-eqz v2, :cond_0

    .line 72
    new-instance v2, Ljava/lang/IllegalStateException;

    const-string v3, "Mms connectiviy\'s not ready"

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 75
    :cond_0
    sget-object v2, Lcom/android/mms/transport/Transport;->sConnection:Lcom/android/mms/transport/Connection;

    invoke-virtual {v2}, Lcom/android/mms/transport/Connection;->getNetworkSettings()Lcom/android/mms/transport/NetworkSettings;

    move-result-object v0

    .line 78
    .local v0, settings:Lcom/android/mms/transport/NetworkSettings;
    invoke-virtual {v0}, Lcom/android/mms/transport/NetworkSettings;->getProtocolType()I

    move-result v2

    if-ne v2, v3, :cond_2

    .line 79
    new-instance v1, Lcom/android/mms/transport/WspTransport;

    invoke-direct {v1, p0}, Lcom/android/mms/transport/WspTransport;-><init>(Landroid/content/Context;)V

    .line 84
    .local v1, transport:Lcom/android/mms/transport/Transport;
    :goto_0
    invoke-virtual {v0}, Lcom/android/mms/transport/NetworkSettings;->getMmscUrl()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/android/mms/transport/Transport;->mMessageCenterUrl:Ljava/lang/String;

    .line 85
    invoke-virtual {v0}, Lcom/android/mms/transport/NetworkSettings;->isProxySet()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 86
    iput-boolean v3, v1, Lcom/android/mms/transport/Transport;->mIsProxySet:Z

    .line 87
    invoke-virtual {v0}, Lcom/android/mms/transport/NetworkSettings;->getProxyAddress()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/android/mms/transport/Transport;->mProxyHost:Ljava/lang/String;

    .line 88
    invoke-virtual {v0}, Lcom/android/mms/transport/NetworkSettings;->getProxyPort()I

    move-result v2

    iput v2, v1, Lcom/android/mms/transport/Transport;->mProxyPort:I

    .line 91
    :cond_1
    return-object v1

    .line 81
    .end local v1           #transport:Lcom/android/mms/transport/Transport;
    :cond_2
    new-instance v1, Lcom/android/mms/transport/HttpTransport;

    invoke-direct {v1, p0}, Lcom/android/mms/transport/HttpTransport;-><init>(Landroid/content/Context;)V

    .restart local v1       #transport:Lcom/android/mms/transport/Transport;
    goto :goto_0
.end method

.method public static requestConnection(Landroid/content/Context;)I
    .locals 1
    .parameter "context"

    .prologue
    .line 95
    invoke-static {p0}, Lcom/android/mms/transport/Connection;->createConnection(Landroid/content/Context;)Lcom/android/mms/transport/Connection;

    move-result-object v0

    sput-object v0, Lcom/android/mms/transport/Transport;->sConnection:Lcom/android/mms/transport/Connection;

    .line 96
    sget-object v0, Lcom/android/mms/transport/Transport;->sConnection:Lcom/android/mms/transport/Connection;

    invoke-virtual {v0}, Lcom/android/mms/transport/Connection;->getStatus()I

    move-result v0

    return v0
.end method


# virtual methods
.method protected changeHostNametoIPAddress(Ljava/lang/String;Ljava/net/InetAddress;)Ljava/lang/String;
    .locals 6
    .parameter "urlString"
    .parameter "addr"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 249
    move-object v1, p1

    .line 252
    .local v1, newURLString:Ljava/lang/String;
    iget-boolean v4, p0, Lcom/android/mms/transport/Transport;->mIsP4RouteToHost:Z

    if-eqz v4, :cond_1

    iget-boolean v4, p0, Lcom/android/mms/transport/Transport;->mIsP6RouteToHost:Z

    if-eqz v4, :cond_1

    .line 254
    const/4 v2, 0x0

    .line 256
    .local v2, url:Ljava/net/URL;
    :try_start_0
    new-instance v3, Ljava/net/URL;

    invoke-direct {v3, p1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_0

    .line 257
    .end local v2           #url:Ljava/net/URL;
    .local v3, url:Ljava/net/URL;
    :try_start_1
    instance-of v4, p2, Ljava/net/Inet6Address;

    if-eqz v4, :cond_2

    .line 258
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3}, Ljava/net/URL;->getProtocol()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "://["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p2}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "]"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 262
    :goto_0
    invoke-virtual {v3}, Ljava/net/URL;->getPort()I

    move-result v4

    if-lez v4, :cond_0

    .line 263
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ":"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v3}, Ljava/net/URL;->getPort()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 265
    :cond_0
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v3}, Ljava/net/URL;->getPath()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 268
    invoke-virtual {v3}, Ljava/net/URL;->getQuery()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_1

    .line 269
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "?"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v3}, Ljava/net/URL;->getQuery()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 280
    .end local v3           #url:Ljava/net/URL;
    :cond_1
    return-object v1

    .line 260
    .restart local v3       #url:Ljava/net/URL;
    :cond_2
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3}, Ljava/net/URL;->getProtocol()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "://"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p2}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_1
    .catch Ljava/net/MalformedURLException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v1

    goto :goto_0

    .line 272
    .end local v3           #url:Ljava/net/URL;
    .restart local v2       #url:Ljava/net/URL;
    :catch_0
    move-exception v0

    .line 274
    .local v0, e:Ljava/net/MalformedURLException;
    :goto_1
    invoke-virtual {v0}, Ljava/net/MalformedURLException;->printStackTrace()V

    .line 275
    new-instance v4, Ljava/io/IOException;

    invoke-virtual {v0}, Ljava/net/MalformedURLException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 272
    .end local v0           #e:Ljava/net/MalformedURLException;
    .end local v2           #url:Ljava/net/URL;
    .restart local v3       #url:Ljava/net/URL;
    :catch_1
    move-exception v0

    move-object v2, v3

    .end local v3           #url:Ljava/net/URL;
    .restart local v2       #url:Ljava/net/URL;
    goto :goto_1
.end method

.method protected ensureRouteToHost(Ljava/lang/String;)V
    .locals 14
    .parameter "url"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/UnknownHostException;,
            Ljava/net/NoRouteToHostException;
        }
    .end annotation

    .prologue
    .line 105
    const/4 v10, 0x0

    .line 106
    .local v10, tHost:Ljava/lang/String;
    iget-object v11, p0, Lcom/android/mms/transport/Transport;->mProxyHost:Ljava/lang/String;

    if-eqz v11, :cond_0

    .line 107
    iget-object v11, p0, Lcom/android/mms/transport/Transport;->mProxyHost:Ljava/lang/String;

    invoke-static {v11}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v11

    invoke-virtual {v11}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object v10

    .line 108
    if-nez v10, :cond_0

    .line 109
    iget-object v10, p0, Lcom/android/mms/transport/Transport;->mProxyHost:Ljava/lang/String;

    .line 112
    :cond_0
    iget-boolean v11, p0, Lcom/android/mms/transport/Transport;->mIsProxySet:Z

    if-eqz v11, :cond_2

    move-object v2, v10

    .line 114
    .local v2, dest:Ljava/lang/String;
    :goto_0
    sget-short v11, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    const/16 v12, 0xa8

    if-ne v11, v12, :cond_3

    .line 117
    const-string v11, "Transport"

    const-string v12, "Do not set networkaddress.cache.ttl"

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 135
    :cond_1
    :goto_1
    invoke-static {}, Lcom/android/mms/MmsApp;->isSupportIPv6()Z

    move-result v11

    if-eqz v11, :cond_10

    .line 139
    invoke-static {v2}, Ljava/net/InetAddress;->getAllByName(Ljava/lang/String;)[Ljava/net/InetAddress;

    move-result-object v8

    .line 140
    .local v8, inetAddresses:[Ljava/net/InetAddress;
    if-nez v8, :cond_7

    .line 141
    new-instance v11, Ljava/net/UnknownHostException;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Unknown host: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-direct {v11, v12}, Ljava/net/UnknownHostException;-><init>(Ljava/lang/String;)V

    throw v11

    .line 112
    .end local v2           #dest:Ljava/lang/String;
    .end local v8           #inetAddresses:[Ljava/net/InetAddress;
    :cond_2
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v11

    invoke-virtual {v11}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    .line 121
    .restart local v2       #dest:Ljava/lang/String;
    :cond_3
    invoke-static {}, Lcom/android/mms/MmsApp;->isACGProject()Z

    move-result v11

    if-nez v11, :cond_6

    invoke-static {}, Lcom/android/mms/MmsApp;->getCarrierID()Ljava/lang/Integer;

    move-result-object v11

    if-eqz v11, :cond_4

    invoke-static {}, Lcom/android/mms/MmsApp;->getCarrierID()Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/Integer;->intValue()I

    move-result v11

    const/16 v12, 0xd

    if-eq v11, v12, :cond_6

    :cond_4
    invoke-static {}, Lcom/android/mms/MmsApp;->getCarrierID()Ljava/lang/Integer;

    move-result-object v11

    if-eqz v11, :cond_5

    invoke-static {}, Lcom/android/mms/MmsApp;->getCarrierID()Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/Integer;->intValue()I

    move-result v11

    const/16 v12, 0xb

    if-eq v11, v12, :cond_6

    :cond_5
    sget-short v11, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    const/16 v12, 0xa1

    if-eq v11, v12, :cond_6

    sget-short v11, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    const/4 v12, 0x4

    if-eq v11, v12, :cond_6

    sget-short v11, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    const/4 v12, 0x5

    if-eq v11, v12, :cond_6

    sget-short v11, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    const/16 v12, 0x14

    if-eq v11, v12, :cond_6

    sget-short v11, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v12, 0xb

    if-ne v11, v12, :cond_1

    .line 130
    :cond_6
    const-string v11, "Transport"

    const-string v12, "set networkaddress.cache.ttl = 1"

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 131
    const-string v11, "networkaddress.cache.ttl"

    const-string v12, "1"

    invoke-static {v11, v12}, Ljava/lang/System;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    goto/16 :goto_1

    .line 144
    .restart local v8       #inetAddresses:[Ljava/net/InetAddress;
    :cond_7
    const/4 v5, 0x0

    .local v5, i:I
    :goto_2
    array-length v11, v8

    if-ge v5, v11, :cond_a

    .line 146
    aget-object v6, v8, v5

    .line 147
    .local v6, inetAddr:Ljava/net/InetAddress;
    if-nez v6, :cond_8

    .line 144
    :goto_3
    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    .line 150
    :cond_8
    instance-of v11, v6, Ljava/net/Inet6Address;

    if-eqz v11, :cond_9

    .line 151
    iput-object v6, p0, Lcom/android/mms/transport/Transport;->mInet6Addr:Ljava/net/InetAddress;

    .line 155
    :goto_4
    const-string v11, "Transport"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "inetAddr: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    .line 153
    :cond_9
    iput-object v6, p0, Lcom/android/mms/transport/Transport;->mInet4Addr:Ljava/net/InetAddress;

    goto :goto_4

    .line 158
    .end local v6           #inetAddr:Ljava/net/InetAddress;
    :cond_a
    iget-object v11, p0, Lcom/android/mms/transport/Transport;->mInet6Addr:Ljava/net/InetAddress;

    if-nez v11, :cond_b

    iget-object v11, p0, Lcom/android/mms/transport/Transport;->mInet4Addr:Ljava/net/InetAddress;

    if-nez v11, :cond_b

    .line 159
    new-instance v11, Ljava/net/UnknownHostException;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Unknown host: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-direct {v11, v12}, Ljava/net/UnknownHostException;-><init>(Ljava/lang/String;)V

    throw v11

    .line 162
    :cond_b
    invoke-static {}, Lcom/android/mms/transport/Connection;->runOnWifi()Z

    move-result v11

    if-nez v11, :cond_12

    invoke-static {}, Lcom/android/mms/transport/Connection;->runOnWiMax()Z

    move-result v11

    if-nez v11, :cond_12

    .line 163
    iget-object v11, p0, Lcom/android/mms/transport/Transport;->mContext:Landroid/content/Context;

    const-string v12, "connectivity"

    invoke-virtual {v11, v12}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v9

    .local v9, service:Ljava/lang/Object;
    move-object v1, v9

    .line 164
    check-cast v1, Landroid/net/ConnectivityManager;

    .line 165
    .local v1, connMgr:Landroid/net/ConnectivityManager;
    const-string v4, ""

    .line 166
    .local v4, error:Ljava/lang/String;
    const/4 v11, 0x0

    iput-boolean v11, p0, Lcom/android/mms/transport/Transport;->mIsP6RouteToHost:Z

    .line 167
    iget-object v11, p0, Lcom/android/mms/transport/Transport;->mInet6Addr:Ljava/net/InetAddress;

    if-eqz v11, :cond_c

    invoke-static {}, Lcom/android/mms/transport/Connection;->runOnIPv6()Z

    move-result v11

    if-eqz v11, :cond_c

    .line 169
    const/4 v11, 0x2

    iget-object v12, p0, Lcom/android/mms/transport/Transport;->mInet6Addr:Ljava/net/InetAddress;

    invoke-virtual {v1, v11, v12}, Landroid/net/ConnectivityManager;->requestRouteToHost(ILjava/net/InetAddress;)Z

    move-result v11

    iput-boolean v11, p0, Lcom/android/mms/transport/Transport;->mIsP6RouteToHost:Z

    if-nez v11, :cond_e

    .line 171
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-object v12, p0, Lcom/android/mms/transport/Transport;->mInet6Addr:Ljava/net/InetAddress;

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ","

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 172
    const-string v11, "Transport"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "No route to host: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 181
    :cond_c
    :goto_5
    const/4 v11, 0x0

    iput-boolean v11, p0, Lcom/android/mms/transport/Transport;->mIsP4RouteToHost:Z

    .line 182
    iget-object v11, p0, Lcom/android/mms/transport/Transport;->mInet4Addr:Ljava/net/InetAddress;

    if-eqz v11, :cond_d

    invoke-static {}, Lcom/android/mms/transport/Connection;->runOnIPv4()Z

    move-result v11

    if-eqz v11, :cond_d

    .line 183
    const/4 v11, 0x2

    iget-object v12, p0, Lcom/android/mms/transport/Transport;->mInet4Addr:Ljava/net/InetAddress;

    invoke-virtual {v1, v11, v12}, Landroid/net/ConnectivityManager;->requestRouteToHost(ILjava/net/InetAddress;)Z

    move-result v11

    iput-boolean v11, p0, Lcom/android/mms/transport/Transport;->mIsP4RouteToHost:Z

    if-nez v11, :cond_f

    .line 185
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-object v12, p0, Lcom/android/mms/transport/Transport;->mInet4Addr:Ljava/net/InetAddress;

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 186
    const-string v11, "Transport"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "No route to host: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 195
    :cond_d
    :goto_6
    iget-boolean v11, p0, Lcom/android/mms/transport/Transport;->mIsP6RouteToHost:Z

    if-nez v11, :cond_12

    iget-boolean v11, p0, Lcom/android/mms/transport/Transport;->mIsP4RouteToHost:Z

    if-nez v11, :cond_12

    .line 197
    new-instance v11, Ljava/net/NoRouteToHostException;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "No route to host: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-direct {v11, v12}, Ljava/net/NoRouteToHostException;-><init>(Ljava/lang/String;)V

    throw v11

    .line 176
    :cond_e
    const-string v11, "Transport"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Route to host: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    iget-object v13, p0, Lcom/android/mms/transport/Transport;->mInet6Addr:Ljava/net/InetAddress;

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5

    .line 190
    :cond_f
    const-string v11, "Transport"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Route to host: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    iget-object v13, p0, Lcom/android/mms/transport/Transport;->mInet4Addr:Ljava/net/InetAddress;

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_6

    .line 209
    .end local v1           #connMgr:Landroid/net/ConnectivityManager;
    .end local v4           #error:Ljava/lang/String;
    .end local v5           #i:I
    .end local v8           #inetAddresses:[Ljava/net/InetAddress;
    .end local v9           #service:Ljava/lang/Object;
    :cond_10
    :try_start_0
    invoke-static {v2}, Ljava/net/InetAddress;->getByName(Ljava/lang/String;)Ljava/net/InetAddress;
    :try_end_0
    .catch Ljava/net/UnknownHostException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v7

    .line 215
    .local v7, inetAddress:Ljava/net/InetAddress;
    invoke-virtual {v7}, Ljava/net/InetAddress;->getAddress()[B

    move-result-object v0

    .line 216
    .local v0, addrBytes:[B
    const/4 v11, 0x3

    aget-byte v11, v0, v11

    and-int/lit16 v11, v11, 0xff

    shl-int/lit8 v11, v11, 0x18

    const/4 v12, 0x2

    aget-byte v12, v0, v12

    and-int/lit16 v12, v12, 0xff

    shl-int/lit8 v12, v12, 0x10

    or-int/2addr v11, v12

    const/4 v12, 0x1

    aget-byte v12, v0, v12

    and-int/lit16 v12, v12, 0xff

    shl-int/lit8 v12, v12, 0x8

    or-int/2addr v11, v12

    const/4 v12, 0x0

    aget-byte v12, v0, v12

    and-int/lit16 v12, v12, 0xff

    or-int v6, v11, v12

    .line 221
    .local v6, inetAddr:I
    const/4 v11, -0x1

    if-ne v6, v11, :cond_11

    .line 222
    new-instance v11, Ljava/net/UnknownHostException;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Unknown host: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-direct {v11, v12}, Ljava/net/UnknownHostException;-><init>(Ljava/lang/String;)V

    throw v11

    .line 210
    .end local v0           #addrBytes:[B
    .end local v6           #inetAddr:I
    .end local v7           #inetAddress:Ljava/net/InetAddress;
    :catch_0
    move-exception v3

    .line 211
    .local v3, e:Ljava/net/UnknownHostException;
    new-instance v11, Ljava/net/UnknownHostException;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Unknown host: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-direct {v11, v12}, Ljava/net/UnknownHostException;-><init>(Ljava/lang/String;)V

    throw v11

    .line 227
    .end local v3           #e:Ljava/net/UnknownHostException;
    .restart local v0       #addrBytes:[B
    .restart local v6       #inetAddr:I
    .restart local v7       #inetAddress:Ljava/net/InetAddress;
    :cond_11
    invoke-static {}, Lcom/android/mms/transport/Connection;->runOnWifi()Z

    move-result v11

    if-nez v11, :cond_12

    invoke-static {}, Lcom/android/mms/transport/Connection;->runOnWiMax()Z

    move-result v11

    if-nez v11, :cond_12

    .line 228
    iget-object v11, p0, Lcom/android/mms/transport/Transport;->mContext:Landroid/content/Context;

    const-string v12, "connectivity"

    invoke-virtual {v11, v12}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v9

    .restart local v9       #service:Ljava/lang/Object;
    move-object v1, v9

    .line 229
    check-cast v1, Landroid/net/ConnectivityManager;

    .line 230
    .restart local v1       #connMgr:Landroid/net/ConnectivityManager;
    const/4 v11, 0x2

    invoke-virtual {v1, v11, v6}, Landroid/net/ConnectivityManager;->requestRouteToHost(II)Z

    move-result v11

    if-nez v11, :cond_12

    .line 231
    new-instance v11, Ljava/net/NoRouteToHostException;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "No route to host: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-direct {v11, v12}, Ljava/net/NoRouteToHostException;-><init>(Ljava/lang/String;)V

    throw v11

    .line 237
    .end local v0           #addrBytes:[B
    .end local v1           #connMgr:Landroid/net/ConnectivityManager;
    .end local v6           #inetAddr:I
    .end local v7           #inetAddress:Ljava/net/InetAddress;
    .end local v9           #service:Ljava/lang/Object;
    :cond_12
    return-void
.end method

.method public abstract retrieve(Ljava/lang/String;)[B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/util/concurrent/TimeoutException;
        }
    .end annotation
.end method

.method public abstract send([BJ)[B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/util/concurrent/TimeoutException;
        }
    .end annotation
.end method
