.class public Lcom/android/mms/transport/HttpTransport;
.super Lcom/android/mms/transport/Transport;
.source "HttpTransport.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "HttpTransport"


# direct methods
.method protected constructor <init>(Landroid/content/Context;)V
    .locals 0
    .parameter "context"

    .prologue
    .line 42
    invoke-direct {p0, p1}, Lcom/android/mms/transport/Transport;-><init>(Landroid/content/Context;)V

    .line 43
    return-void
.end method


# virtual methods
.method public retrieve(Ljava/lang/String;)[B
    .locals 23
    .parameter "url"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/util/concurrent/TimeoutException;
        }
    .end annotation

    .prologue
    .line 48
    if-eqz p1, :cond_0

    .line 49
    invoke-virtual/range {p0 .. p1}, Lcom/android/mms/transport/HttpTransport;->ensureRouteToHost(Ljava/lang/String;)V

    .line 51
    :cond_0
    const/16 v2, 0x94

    invoke-static {v2}, Lcom/android/mms/MmsApp;->isProjectFlag(S)Z

    move-result v2

    if-nez v2, :cond_1

    const/16 v2, 0xaf

    invoke-static {v2}, Lcom/android/mms/MmsApp;->isProjectFlag(S)Z

    move-result v2

    if-nez v2, :cond_1

    const/16 v2, 0xc

    invoke-static {v2}, Lcom/android/mms/MmsApp;->isProjectFlag(S)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 54
    :cond_1
    invoke-static {}, Lcom/android/mms/transport/Connection;->runOnWifi()Z

    move-result v2

    if-nez v2, :cond_2

    invoke-static {}, Lcom/android/mms/transport/Connection;->runOnWiMax()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 55
    :cond_2
    const-string v2, ""

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/mms/transport/Transport;->mProxyHost:Ljava/lang/String;

    .line 56
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/mms/transport/Transport;->mProxyPort:I

    .line 57
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/mms/transport/Transport;->mIsProxySet:Z

    .line 58
    const-string v2, "Jerry"

    const-string v3, "retrieve() runOnWifi don\'t use proxy server"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 63
    :cond_3
    invoke-static {}, Lcom/android/mms/MmsApp;->isSupportIPv6()Z

    move-result v2

    if-eqz v2, :cond_9

    .line 65
    const/16 v21, 0x0

    .line 66
    .local v21, body:[B
    const/16 v19, 0x0

    .line 67
    .local v19, bIsIPV6ConnectFail:Z
    const/16 v20, 0x0

    .line 69
    .local v20, bIsIPV6Successful:Z
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/transport/Transport;->mInet6Addr:Ljava/net/InetAddress;

    if-eqz v2, :cond_4

    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/mms/transport/Transport;->mIsP6RouteToHost:Z

    if-eqz v2, :cond_4

    .line 71
    move-object/from16 v5, p1

    .line 72
    .local v5, urlString:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/android/mms/transport/Transport;->mProxyHost:Ljava/lang/String;

    .line 74
    .local v9, proxyHost:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/mms/transport/Transport;->mIsProxySet:Z

    if-eqz v2, :cond_7

    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/mms/transport/Transport;->mIsP4RouteToHost:Z

    if-eqz v2, :cond_7

    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/mms/transport/Transport;->mIsP6RouteToHost:Z

    if-eqz v2, :cond_7

    .line 76
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/transport/Transport;->mInet6Addr:Ljava/net/InetAddress;

    invoke-virtual {v2}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v9

    .line 82
    :goto_0
    :try_start_0
    const-string v2, "HttpTransport"

    const-string v3, "retrieve/IPv6 httpConnection"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 83
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/transport/Transport;->mContext:Landroid/content/Context;

    const-wide/16 v3, -0x1

    const/4 v6, 0x0

    const/4 v7, 0x2

    move-object/from16 v0, p0

    iget-boolean v8, v0, Lcom/android/mms/transport/Transport;->mIsProxySet:Z

    move-object/from16 v0, p0

    iget v10, v0, Lcom/android/mms/transport/Transport;->mProxyPort:I

    invoke-static/range {v2 .. v10}, Lcom/android/mms/transport/HttpUtils;->httpConnection(Landroid/content/Context;JLjava/lang/String;[BIZLjava/lang/String;I)[B
    :try_end_0
    .catch Ljava/net/ConnectException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/net/SocketException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v21

    .line 85
    const/16 v20, 0x1

    .line 99
    .end local v5           #urlString:Ljava/lang/String;
    .end local v9           #proxyHost:Ljava/lang/String;
    :cond_4
    :goto_1
    if-nez v19, :cond_5

    if-nez v20, :cond_6

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/transport/Transport;->mInet4Addr:Ljava/net/InetAddress;

    if-eqz v2, :cond_6

    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/mms/transport/Transport;->mIsP4RouteToHost:Z

    if-eqz v2, :cond_6

    .line 102
    :cond_5
    move-object/from16 v5, p1

    .line 103
    .restart local v5       #urlString:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/android/mms/transport/Transport;->mProxyHost:Ljava/lang/String;

    .line 105
    .restart local v9       #proxyHost:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/mms/transport/Transport;->mIsProxySet:Z

    if-eqz v2, :cond_8

    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/mms/transport/Transport;->mIsP4RouteToHost:Z

    if-eqz v2, :cond_8

    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/mms/transport/Transport;->mIsP6RouteToHost:Z

    if-eqz v2, :cond_8

    .line 107
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/transport/Transport;->mInet4Addr:Ljava/net/InetAddress;

    invoke-virtual {v2}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v9

    .line 113
    :goto_2
    :try_start_1
    const-string v2, "HttpTransport"

    const-string v3, "retrieve/IPv4 httpConnection"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 114
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/transport/Transport;->mContext:Landroid/content/Context;

    const-wide/16 v3, -0x1

    const/4 v6, 0x0

    const/4 v7, 0x2

    move-object/from16 v0, p0

    iget-boolean v8, v0, Lcom/android/mms/transport/Transport;->mIsProxySet:Z

    move-object/from16 v0, p0

    iget v10, v0, Lcom/android/mms/transport/Transport;->mProxyPort:I

    invoke-static/range {v2 .. v10}, Lcom/android/mms/transport/HttpUtils;->httpConnection(Landroid/content/Context;JLjava/lang/String;[BIZLjava/lang/String;I)[B
    :try_end_1
    .catch Ljava/net/ConnectException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/net/SocketException; {:try_start_1 .. :try_end_1} :catch_3

    move-result-object v21

    .line 133
    .end local v5           #urlString:Ljava/lang/String;
    .end local v9           #proxyHost:Ljava/lang/String;
    .end local v19           #bIsIPV6ConnectFail:Z
    .end local v20           #bIsIPV6Successful:Z
    .end local v21           #body:[B
    :cond_6
    :goto_3
    return-object v21

    .line 78
    .restart local v5       #urlString:Ljava/lang/String;
    .restart local v9       #proxyHost:Ljava/lang/String;
    .restart local v19       #bIsIPV6ConnectFail:Z
    .restart local v20       #bIsIPV6Successful:Z
    .restart local v21       #body:[B
    :cond_7
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/transport/Transport;->mInet6Addr:Ljava/net/InetAddress;

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual {v0, v1, v2}, Lcom/android/mms/transport/HttpTransport;->changeHostNametoIPAddress(Ljava/lang/String;Ljava/net/InetAddress;)Ljava/lang/String;

    move-result-object v5

    goto :goto_0

    .line 86
    :catch_0
    move-exception v22

    .line 88
    .local v22, e:Ljava/net/ConnectException;
    const-string v2, "HttpTransport"

    const-string v3, "retrieve/IPv6 ConnectException"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 89
    invoke-virtual/range {v22 .. v22}, Ljava/net/ConnectException;->printStackTrace()V

    .line 90
    const/16 v19, 0x1

    .line 96
    goto :goto_1

    .line 91
    .end local v22           #e:Ljava/net/ConnectException;
    :catch_1
    move-exception v22

    .line 93
    .local v22, e:Ljava/net/SocketException;
    const-string v2, "HttpTransport"

    const-string v3, "retrieve/IPv6 SocketException"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 94
    invoke-virtual/range {v22 .. v22}, Ljava/net/SocketException;->printStackTrace()V

    .line 95
    const/16 v19, 0x1

    goto :goto_1

    .line 109
    .end local v22           #e:Ljava/net/SocketException;
    :cond_8
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/transport/Transport;->mInet4Addr:Ljava/net/InetAddress;

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual {v0, v1, v2}, Lcom/android/mms/transport/HttpTransport;->changeHostNametoIPAddress(Ljava/lang/String;Ljava/net/InetAddress;)Ljava/lang/String;

    move-result-object v5

    goto :goto_2

    .line 116
    :catch_2
    move-exception v22

    .line 118
    .local v22, e:Ljava/net/ConnectException;
    const-string v2, "HttpTransport"

    const-string v3, "retrieve/IPv4 ConnectException"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 119
    new-instance v2, Ljava/io/IOException;

    invoke-virtual/range {v22 .. v22}, Ljava/net/ConnectException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 120
    .end local v22           #e:Ljava/net/ConnectException;
    :catch_3
    move-exception v22

    .line 122
    .local v22, e:Ljava/net/SocketException;
    const-string v2, "HttpTransport"

    const-string v3, "retrieve/IPv4 SocketException"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 123
    new-instance v2, Ljava/io/IOException;

    invoke-virtual/range {v22 .. v22}, Ljava/net/SocketException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 133
    .end local v5           #urlString:Ljava/lang/String;
    .end local v9           #proxyHost:Ljava/lang/String;
    .end local v19           #bIsIPV6ConnectFail:Z
    .end local v20           #bIsIPV6Successful:Z
    .end local v21           #body:[B
    .end local v22           #e:Ljava/net/SocketException;
    :cond_9
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/mms/transport/Transport;->mContext:Landroid/content/Context;

    const-wide/16 v11, -0x1

    const/4 v14, 0x0

    const/4 v15, 0x2

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/mms/transport/Transport;->mIsProxySet:Z

    move/from16 v16, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/transport/Transport;->mProxyHost:Ljava/lang/String;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/mms/transport/Transport;->mProxyPort:I

    move/from16 v18, v0

    move-object/from16 v13, p1

    invoke-static/range {v10 .. v18}, Lcom/android/mms/transport/HttpUtils;->httpConnection(Landroid/content/Context;JLjava/lang/String;[BIZLjava/lang/String;I)[B

    move-result-object v21

    goto :goto_3
.end method

.method public send([BJ)[B
    .locals 22
    .parameter "data"
    .parameter "token"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/UnknownHostException;,
            Ljava/net/NoRouteToHostException;,
            Ljava/io/IOException;,
            Ljava/util/concurrent/TimeoutException;
        }
    .end annotation

    .prologue
    .line 141
    const/16 v1, 0x94

    invoke-static {v1}, Lcom/android/mms/MmsApp;->isProjectFlag(S)Z

    move-result v1

    if-nez v1, :cond_0

    const/16 v1, 0xaf

    invoke-static {v1}, Lcom/android/mms/MmsApp;->isProjectFlag(S)Z

    move-result v1

    if-nez v1, :cond_0

    const/16 v1, 0xc

    invoke-static {v1}, Lcom/android/mms/MmsApp;->isProjectFlag(S)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 144
    :cond_0
    invoke-static {}, Lcom/android/mms/transport/Connection;->runOnWifi()Z

    move-result v1

    if-nez v1, :cond_1

    invoke-static {}, Lcom/android/mms/transport/Connection;->runOnWiMax()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 145
    :cond_1
    const-string v1, ""

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/android/mms/transport/Transport;->mProxyHost:Ljava/lang/String;

    .line 146
    const/4 v1, 0x0

    move-object/from16 v0, p0

    iput v1, v0, Lcom/android/mms/transport/Transport;->mProxyPort:I

    .line 147
    const/4 v1, 0x0

    move-object/from16 v0, p0

    iput-boolean v1, v0, Lcom/android/mms/transport/Transport;->mIsProxySet:Z

    .line 148
    const-string v1, "Jerry"

    const-string v2, "send() runOnWifi don\'t use proxy server"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 152
    :cond_2
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/mms/transport/Transport;->mMessageCenterUrl:Ljava/lang/String;

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Lcom/android/mms/transport/HttpTransport;->ensureRouteToHost(Ljava/lang/String;)V

    .line 155
    invoke-static {}, Lcom/android/mms/MmsApp;->isSupportIPv6()Z

    move-result v1

    if-eqz v1, :cond_8

    .line 157
    const/16 v20, 0x0

    .line 158
    .local v20, body:[B
    const/16 v18, 0x0

    .line 159
    .local v18, bIsIPV6ConnectFail:Z
    const/16 v19, 0x0

    .line 161
    .local v19, bIsIPV6Successful:Z
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/mms/transport/Transport;->mInet6Addr:Ljava/net/InetAddress;

    if-eqz v1, :cond_3

    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/android/mms/transport/Transport;->mIsP6RouteToHost:Z

    if-eqz v1, :cond_3

    .line 163
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/mms/transport/Transport;->mMessageCenterUrl:Ljava/lang/String;

    .line 164
    .local v4, urlString:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/mms/transport/Transport;->mProxyHost:Ljava/lang/String;

    .line 166
    .local v8, proxyHost:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/android/mms/transport/Transport;->mIsProxySet:Z

    if-eqz v1, :cond_6

    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/android/mms/transport/Transport;->mIsP4RouteToHost:Z

    if-eqz v1, :cond_6

    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/android/mms/transport/Transport;->mIsP6RouteToHost:Z

    if-eqz v1, :cond_6

    .line 168
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/mms/transport/Transport;->mInet6Addr:Ljava/net/InetAddress;

    invoke-virtual {v1}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v8

    .line 174
    :goto_0
    :try_start_0
    const-string v1, "HttpTransport"

    const-string v2, "send/IPv6 httpConnection"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 175
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/mms/transport/Transport;->mContext:Landroid/content/Context;

    const/4 v6, 0x1

    move-object/from16 v0, p0

    iget-boolean v7, v0, Lcom/android/mms/transport/Transport;->mIsProxySet:Z

    move-object/from16 v0, p0

    iget v9, v0, Lcom/android/mms/transport/Transport;->mProxyPort:I

    move-wide/from16 v2, p2

    move-object/from16 v5, p1

    invoke-static/range {v1 .. v9}, Lcom/android/mms/transport/HttpUtils;->httpConnection(Landroid/content/Context;JLjava/lang/String;[BIZLjava/lang/String;I)[B
    :try_end_0
    .catch Ljava/net/ConnectException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/net/SocketException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v20

    .line 177
    const/16 v19, 0x1

    .line 191
    .end local v4           #urlString:Ljava/lang/String;
    .end local v8           #proxyHost:Ljava/lang/String;
    :cond_3
    :goto_1
    if-nez v18, :cond_4

    if-nez v19, :cond_5

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/mms/transport/Transport;->mInet4Addr:Ljava/net/InetAddress;

    if-eqz v1, :cond_5

    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/android/mms/transport/Transport;->mIsP4RouteToHost:Z

    if-eqz v1, :cond_5

    .line 194
    :cond_4
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/mms/transport/Transport;->mMessageCenterUrl:Ljava/lang/String;

    .line 195
    .restart local v4       #urlString:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/mms/transport/Transport;->mProxyHost:Ljava/lang/String;

    .line 197
    .restart local v8       #proxyHost:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/android/mms/transport/Transport;->mIsProxySet:Z

    if-eqz v1, :cond_7

    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/android/mms/transport/Transport;->mIsP4RouteToHost:Z

    if-eqz v1, :cond_7

    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/android/mms/transport/Transport;->mIsP6RouteToHost:Z

    if-eqz v1, :cond_7

    .line 199
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/mms/transport/Transport;->mInet4Addr:Ljava/net/InetAddress;

    invoke-virtual {v1}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v8

    .line 205
    :goto_2
    :try_start_1
    const-string v1, "HttpTransport"

    const-string v2, "send/IPv4 httpConnection"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 206
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/mms/transport/Transport;->mContext:Landroid/content/Context;

    const/4 v6, 0x1

    move-object/from16 v0, p0

    iget-boolean v7, v0, Lcom/android/mms/transport/Transport;->mIsProxySet:Z

    move-object/from16 v0, p0

    iget v9, v0, Lcom/android/mms/transport/Transport;->mProxyPort:I

    move-wide/from16 v2, p2

    move-object/from16 v5, p1

    invoke-static/range {v1 .. v9}, Lcom/android/mms/transport/HttpUtils;->httpConnection(Landroid/content/Context;JLjava/lang/String;[BIZLjava/lang/String;I)[B
    :try_end_1
    .catch Ljava/net/ConnectException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/net/SocketException; {:try_start_1 .. :try_end_1} :catch_3

    move-result-object v20

    .line 225
    .end local v4           #urlString:Ljava/lang/String;
    .end local v8           #proxyHost:Ljava/lang/String;
    .end local v18           #bIsIPV6ConnectFail:Z
    .end local v19           #bIsIPV6Successful:Z
    .end local v20           #body:[B
    :cond_5
    :goto_3
    return-object v20

    .line 170
    .restart local v4       #urlString:Ljava/lang/String;
    .restart local v8       #proxyHost:Ljava/lang/String;
    .restart local v18       #bIsIPV6ConnectFail:Z
    .restart local v19       #bIsIPV6Successful:Z
    .restart local v20       #body:[B
    :cond_6
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/mms/transport/Transport;->mMessageCenterUrl:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/transport/Transport;->mInet6Addr:Ljava/net/InetAddress;

    move-object/from16 v0, p0

    invoke-virtual {v0, v1, v2}, Lcom/android/mms/transport/HttpTransport;->changeHostNametoIPAddress(Ljava/lang/String;Ljava/net/InetAddress;)Ljava/lang/String;

    move-result-object v4

    goto :goto_0

    .line 178
    :catch_0
    move-exception v21

    .line 180
    .local v21, e:Ljava/net/ConnectException;
    const-string v1, "HttpTransport"

    const-string v2, "send/IPv6 ConnectException"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 181
    invoke-virtual/range {v21 .. v21}, Ljava/net/ConnectException;->printStackTrace()V

    .line 182
    const/16 v18, 0x1

    .line 188
    goto :goto_1

    .line 183
    .end local v21           #e:Ljava/net/ConnectException;
    :catch_1
    move-exception v21

    .line 185
    .local v21, e:Ljava/net/SocketException;
    const-string v1, "HttpTransport"

    const-string v2, "send/IPv6 SocketException"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 186
    invoke-virtual/range {v21 .. v21}, Ljava/net/SocketException;->printStackTrace()V

    .line 187
    const/16 v18, 0x1

    goto :goto_1

    .line 201
    .end local v21           #e:Ljava/net/SocketException;
    :cond_7
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/mms/transport/Transport;->mMessageCenterUrl:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/transport/Transport;->mInet4Addr:Ljava/net/InetAddress;

    move-object/from16 v0, p0

    invoke-virtual {v0, v1, v2}, Lcom/android/mms/transport/HttpTransport;->changeHostNametoIPAddress(Ljava/lang/String;Ljava/net/InetAddress;)Ljava/lang/String;

    move-result-object v4

    goto :goto_2

    .line 208
    :catch_2
    move-exception v21

    .line 210
    .local v21, e:Ljava/net/ConnectException;
    const-string v1, "HttpTransport"

    const-string v2, "send/IPv4 ConnectException"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 211
    new-instance v1, Ljava/io/IOException;

    invoke-virtual/range {v21 .. v21}, Ljava/net/ConnectException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 212
    .end local v21           #e:Ljava/net/ConnectException;
    :catch_3
    move-exception v21

    .line 214
    .local v21, e:Ljava/net/SocketException;
    const-string v1, "HttpTransport"

    const-string v2, "send/IPv4 SocketException"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 215
    new-instance v1, Ljava/io/IOException;

    invoke-virtual/range {v21 .. v21}, Ljava/net/SocketException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 225
    .end local v4           #urlString:Ljava/lang/String;
    .end local v8           #proxyHost:Ljava/lang/String;
    .end local v18           #bIsIPV6ConnectFail:Z
    .end local v19           #bIsIPV6Successful:Z
    .end local v20           #body:[B
    .end local v21           #e:Ljava/net/SocketException;
    :cond_8
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/android/mms/transport/Transport;->mContext:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/mms/transport/Transport;->mMessageCenterUrl:Ljava/lang/String;

    const/4 v14, 0x1

    move-object/from16 v0, p0

    iget-boolean v15, v0, Lcom/android/mms/transport/Transport;->mIsProxySet:Z

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/transport/Transport;->mProxyHost:Ljava/lang/String;

    move-object/from16 v16, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/mms/transport/Transport;->mProxyPort:I

    move/from16 v17, v0

    move-wide/from16 v10, p2

    move-object/from16 v13, p1

    invoke-static/range {v9 .. v17}, Lcom/android/mms/transport/HttpUtils;->httpConnection(Landroid/content/Context;JLjava/lang/String;[BIZLjava/lang/String;I)[B

    move-result-object v20

    goto :goto_3
.end method
