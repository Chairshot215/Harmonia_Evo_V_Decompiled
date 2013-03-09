.class public Lcom/google/android/finsky/remoting/RadioConnectionImpl;
.super Ljava/lang/Object;
.source "RadioConnectionImpl.java"

# interfaces
.implements Lcom/google/android/finsky/remoting/RadioConnection;


# instance fields
.field private final mConnMgr:Landroid/net/ConnectivityManager;

.field private final mConnectionType:I

.field private final mPhoneFeature:Lcom/google/android/finsky/remoting/PhoneFeature;


# direct methods
.method public constructor <init>(Landroid/net/ConnectivityManager;ILcom/google/android/finsky/remoting/PhoneFeature;)V
    .locals 0
    .parameter "connMgr"
    .parameter "connectionType"
    .parameter "phoneFeature"

    .prologue
    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    iput p2, p0, Lcom/google/android/finsky/remoting/RadioConnectionImpl;->mConnectionType:I

    .line 32
    iput-object p3, p0, Lcom/google/android/finsky/remoting/RadioConnectionImpl;->mPhoneFeature:Lcom/google/android/finsky/remoting/PhoneFeature;

    .line 33
    iput-object p1, p0, Lcom/google/android/finsky/remoting/RadioConnectionImpl;->mConnMgr:Landroid/net/ConnectivityManager;

    .line 34
    return-void
.end method

.method private isRadioActive()Z
    .locals 3

    .prologue
    .line 128
    iget-object v1, p0, Lcom/google/android/finsky/remoting/RadioConnectionImpl;->mConnMgr:Landroid/net/ConnectivityManager;

    iget v2, p0, Lcom/google/android/finsky/remoting/RadioConnectionImpl;->mConnectionType:I

    invoke-virtual {v1, v2}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v0

    .line 129
    .local v0, info:Landroid/net/NetworkInfo;
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v1

    return v1
.end method

.method private startRadio()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/finsky/remoting/RadioConnectionException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 43
    iget-object v1, p0, Lcom/google/android/finsky/remoting/RadioConnectionImpl;->mConnMgr:Landroid/net/ConnectivityManager;

    iget-object v2, p0, Lcom/google/android/finsky/remoting/RadioConnectionImpl;->mPhoneFeature:Lcom/google/android/finsky/remoting/PhoneFeature;

    invoke-virtual {v2}, Lcom/google/android/finsky/remoting/PhoneFeature;->getValue()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v3, v2}, Landroid/net/ConnectivityManager;->startUsingNetworkFeature(ILjava/lang/String;)I

    move-result v0

    .line 45
    .local v0, result:I
    packed-switch v0, :pswitch_data_0

    .line 54
    new-instance v1, Lcom/google/android/finsky/remoting/RadioConnectionException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/google/android/finsky/remoting/RadioConnectionImpl;->mPhoneFeature:Lcom/google/android/finsky/remoting/PhoneFeature;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ": Start network failed - "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/google/android/finsky/remoting/RadioConnectionException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 49
    :pswitch_0
    sget-boolean v1, Lcom/google/android/finsky/utils/FinskyLog;->DEBUG:Z

    if-eqz v1, :cond_0

    .line 50
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/google/android/finsky/remoting/RadioConnectionImpl;->mPhoneFeature:Lcom/google/android/finsky/remoting/PhoneFeature;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ": APN request started: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-array v2, v3, [Ljava/lang/Object;

    invoke-static {v1, v2}, Lcom/google/android/finsky/utils/FinskyLog;->v(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 52
    :cond_0
    :pswitch_1
    return-void

    .line 45
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private waitForRadio(II)Z
    .locals 9
    .parameter "pollTimeoutMs"
    .parameter "pollIntervalMs"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/finsky/remoting/RadioConnectionException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 70
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    .line 71
    .local v1, startTime:J
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    int-to-long v7, p1

    add-long/2addr v7, v1

    cmp-long v5, v5, v7

    if-gez v5, :cond_2

    .line 73
    int-to-long v5, p2

    :try_start_0
    invoke-static {v5, v6}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 77
    invoke-direct {p0}, Lcom/google/android/finsky/remoting/RadioConnectionImpl;->isRadioActive()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 78
    sget-boolean v5, Lcom/google/android/finsky/utils/FinskyLog;->DEBUG:Z

    if-eqz v5, :cond_1

    .line 79
    const-string v5, "Radio came up after %dms (timeoutMs=%d, pollIntervalMs=%d)."

    const/4 v6, 0x3

    new-array v6, v6, [Ljava/lang/Object;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    sub-long/2addr v7, v1

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    aput-object v7, v6, v4

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v6, v3

    const/4 v4, 0x2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v4

    invoke-static {v5, v6}, Lcom/google/android/finsky/utils/FinskyLog;->v(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 85
    :cond_1
    :goto_0
    return v3

    .line 74
    :catch_0
    move-exception v0

    .line 75
    .local v0, e:Ljava/lang/InterruptedException;
    new-instance v3, Lcom/google/android/finsky/remoting/RadioConnectionException;

    invoke-direct {v3, v0}, Lcom/google/android/finsky/remoting/RadioConnectionException;-><init>(Ljava/lang/Throwable;)V

    throw v3

    .end local v0           #e:Ljava/lang/InterruptedException;
    :cond_2
    move v3, v4

    .line 85
    goto :goto_0
.end method


# virtual methods
.method public ensureRouteToHost(Ljava/lang/String;)V
    .locals 9
    .parameter "url"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/finsky/remoting/RadioConnectionException;
        }
    .end annotation

    .prologue
    .line 96
    const-string v6, "http://"

    invoke-virtual {p1, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_0

    const-string v6, "https://"

    invoke-virtual {p1, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_0

    .line 98
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "http://"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 100
    :cond_0
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    .line 104
    .local v5, uri:Landroid/net/Uri;
    :try_start_0
    invoke-virtual {v5}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/net/InetAddress;->getByName(Ljava/lang/String;)Ljava/net/InetAddress;
    :try_end_0
    .catch Ljava/net/UnknownHostException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    .line 110
    .local v3, inetAddr:Ljava/net/InetAddress;
    invoke-virtual {v3}, Ljava/net/InetAddress;->getAddress()[B

    move-result-object v1

    .line 111
    .local v1, addrBytes:[B
    const/4 v6, 0x3

    aget-byte v6, v1, v6

    and-int/lit16 v6, v6, 0xff

    shl-int/lit8 v6, v6, 0x18

    const/4 v7, 0x2

    aget-byte v7, v1, v7

    and-int/lit16 v7, v7, 0xff

    shl-int/lit8 v7, v7, 0x10

    or-int/2addr v6, v7

    const/4 v7, 0x1

    aget-byte v7, v1, v7

    and-int/lit16 v7, v7, 0xff

    shl-int/lit8 v7, v7, 0x8

    or-int/2addr v6, v7

    const/4 v7, 0x0

    aget-byte v7, v1, v7

    and-int/lit16 v7, v7, 0xff

    or-int v0, v6, v7

    .line 116
    .local v0, addrAsInt:I
    iget-object v6, p0, Lcom/google/android/finsky/remoting/RadioConnectionImpl;->mConnMgr:Landroid/net/ConnectivityManager;

    iget v7, p0, Lcom/google/android/finsky/remoting/RadioConnectionImpl;->mConnectionType:I

    invoke-virtual {v6, v7, v0}, Landroid/net/ConnectivityManager;->requestRouteToHost(II)Z

    move-result v4

    .line 118
    .local v4, routeToHost:Z
    if-nez v4, :cond_1

    .line 119
    new-instance v6, Lcom/google/android/finsky/remoting/RadioConnectionException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Cannot establish route to "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " for "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Lcom/google/android/finsky/remoting/RadioConnectionException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 105
    .end local v0           #addrAsInt:I
    .end local v1           #addrBytes:[B
    .end local v3           #inetAddr:Ljava/net/InetAddress;
    .end local v4           #routeToHost:Z
    :catch_0
    move-exception v2

    .line 106
    .local v2, e:Ljava/net/UnknownHostException;
    new-instance v6, Lcom/google/android/finsky/remoting/RadioConnectionException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Cannot establish route for "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ": Unknown host"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Lcom/google/android/finsky/remoting/RadioConnectionException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 122
    .end local v2           #e:Ljava/net/UnknownHostException;
    .restart local v0       #addrAsInt:I
    .restart local v1       #addrBytes:[B
    .restart local v3       #inetAddr:Ljava/net/InetAddress;
    .restart local v4       #routeToHost:Z
    :cond_1
    return-void
.end method

.method public start()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/finsky/remoting/RadioConnectionException;
        }
    .end annotation

    .prologue
    .line 135
    invoke-direct {p0}, Lcom/google/android/finsky/remoting/RadioConnectionImpl;->isRadioActive()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 138
    iget-object v0, p0, Lcom/google/android/finsky/remoting/RadioConnectionImpl;->mConnMgr:Landroid/net/ConnectivityManager;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/google/android/finsky/remoting/RadioConnectionImpl;->mPhoneFeature:Lcom/google/android/finsky/remoting/PhoneFeature;

    invoke-virtual {v2}, Lcom/google/android/finsky/remoting/PhoneFeature;->getValue()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/net/ConnectivityManager;->startUsingNetworkFeature(ILjava/lang/String;)I

    .line 149
    :cond_0
    return-void

    .line 143
    :cond_1
    invoke-direct {p0}, Lcom/google/android/finsky/remoting/RadioConnectionImpl;->startRadio()V

    .line 146
    sget-object v0, Lcom/google/android/finsky/config/G;->vendingDcbPollTimeoutMs:Lcom/google/android/finsky/config/GservicesValue;

    invoke-virtual {v0}, Lcom/google/android/finsky/config/GservicesValue;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/16 v1, 0x1f4

    invoke-direct {p0, v0, v1}, Lcom/google/android/finsky/remoting/RadioConnectionImpl;->waitForRadio(II)Z

    move-result v0

    if-nez v0, :cond_0

    .line 147
    new-instance v0, Lcom/google/android/finsky/remoting/RadioConnectionException;

    const-string v1, "Timeout waiting for radio to come up"

    invoke-direct {v0, v1}, Lcom/google/android/finsky/remoting/RadioConnectionException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public stop()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 153
    const-string v0, "Giving back radio."

    new-array v1, v2, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/google/android/finsky/utils/FinskyLog;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 154
    iget-object v0, p0, Lcom/google/android/finsky/remoting/RadioConnectionImpl;->mConnMgr:Landroid/net/ConnectivityManager;

    iget-object v1, p0, Lcom/google/android/finsky/remoting/RadioConnectionImpl;->mPhoneFeature:Lcom/google/android/finsky/remoting/PhoneFeature;

    invoke-virtual {v1}, Lcom/google/android/finsky/remoting/PhoneFeature;->getValue()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Landroid/net/ConnectivityManager;->stopUsingNetworkFeature(ILjava/lang/String;)I

    .line 155
    return-void
.end method
