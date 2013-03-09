.class public Lcom/htc/android/mail/easdp/util/HttpClientFactory;
.super Ljava/lang/Object;
.source "HttpClientFactory.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/android/mail/easdp/util/HttpClientFactory$DpSSLSocketFactory;
    }
.end annotation


# static fields
.field private static final DEBUG:Z = false

.field private static final PASS_ALL_CERTIFICATE:Ljava/lang/String; = "eas_pass_certificate"

.field private static final TAG:Ljava/lang/String; = "EAS_HTTP"

.field private static blockProxyList:[Ljava/lang/String;

.field private static mContext:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 34
    const/4 v0, 0x0

    sput-object v0, Lcom/htc/android/mail/easdp/util/HttpClientFactory;->mContext:Landroid/content/Context;

    .line 35
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "web.wireless.bell.ca"

    aput-object v2, v0, v1

    sput-object v0, Lcom/htc/android/mail/easdp/util/HttpClientFactory;->blockProxyList:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 26
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 104
    return-void
.end method

.method public static createHttpClient(Ljava/lang/String;J)Landroid/net/http/AndroidHttpClient;
    .locals 1
    .parameter "userAgent"
    .parameter "accountId"

    .prologue
    .line 42
    const/4 v0, 0x0

    invoke-static {p0, p1, p2, v0}, Lcom/htc/android/mail/easdp/util/HttpClientFactory;->createHttpClient(Ljava/lang/String;JLcom/htc/android/mail/easdp/util/ConnectCallback;)Landroid/net/http/AndroidHttpClient;

    move-result-object v0

    return-object v0
.end method

.method public static createHttpClient(Ljava/lang/String;JLcom/htc/android/mail/easdp/util/ConnectCallback;)Landroid/net/http/AndroidHttpClient;
    .locals 13
    .parameter "userAgent"
    .parameter "accountId"
    .parameter "callback"

    .prologue
    .line 46
    invoke-static {p0}, Landroid/net/http/AndroidHttpClient;->newInstance(Ljava/lang/String;)Landroid/net/http/AndroidHttpClient;

    move-result-object v1

    .line 47
    .local v1, httpClient:Landroid/net/http/AndroidHttpClient;
    const/4 v3, 0x0

    .line 49
    .local v3, passAllCertificate:Z
    invoke-virtual {v1}, Landroid/net/http/AndroidHttpClient;->getParams()Lorg/apache/http/params/HttpParams;

    move-result-object v9

    const-string v10, "http.connection.timeout"

    new-instance v11, Ljava/lang/Integer;

    const/16 v12, 0x7530

    invoke-direct {v11, v12}, Ljava/lang/Integer;-><init>(I)V

    invoke-interface {v9, v10, v11}, Lorg/apache/http/params/HttpParams;->setParameter(Ljava/lang/String;Ljava/lang/Object;)Lorg/apache/http/params/HttpParams;

    .line 53
    invoke-virtual {v1}, Landroid/net/http/AndroidHttpClient;->getParams()Lorg/apache/http/params/HttpParams;

    move-result-object v9

    const-string v10, "http.socket.timeout"

    new-instance v11, Ljava/lang/Integer;

    const/16 v12, 0x7530

    invoke-direct {v11, v12}, Ljava/lang/Integer;-><init>(I)V

    invoke-interface {v9, v10, v11}, Lorg/apache/http/params/HttpParams;->setParameter(Ljava/lang/String;Ljava/lang/Object;)Lorg/apache/http/params/HttpParams;

    .line 57
    sget-object v9, Lcom/htc/android/mail/easdp/util/HttpClientFactory;->mContext:Landroid/content/Context;

    invoke-static {v9, p1, p2}, Lcom/htc/android/mail/easdp/util/HttpClientFactory;->isUseProxy(Landroid/content/Context;J)Z

    move-result v9

    if-eqz v9, :cond_0

    .line 58
    sget-object v9, Lcom/htc/android/mail/easdp/util/HttpClientFactory;->mContext:Landroid/content/Context;

    invoke-static {v9}, Landroid/net/Proxy;->getHost(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v5

    .line 59
    .local v5, proxyHost:Ljava/lang/String;
    sget-object v9, Lcom/htc/android/mail/easdp/util/HttpClientFactory;->mContext:Landroid/content/Context;

    invoke-static {v9}, Landroid/net/Proxy;->getPort(Landroid/content/Context;)I

    move-result v6

    .line 60
    .local v6, proxyPort:I
    if-eqz v5, :cond_0

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v9

    if-lez v9, :cond_0

    .line 61
    const-string v9, "EAS_HTTP"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Use proxy - "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ":"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/htc/android/mail/eassvc/util/EASLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 62
    new-instance v4, Lorg/apache/http/HttpHost;

    invoke-direct {v4, v5, v6}, Lorg/apache/http/HttpHost;-><init>(Ljava/lang/String;I)V

    .line 63
    .local v4, proxy:Lorg/apache/http/HttpHost;
    invoke-virtual {v1}, Landroid/net/http/AndroidHttpClient;->getParams()Lorg/apache/http/params/HttpParams;

    move-result-object v9

    const-string v10, "http.route.default-proxy"

    invoke-interface {v9, v10, v4}, Lorg/apache/http/params/HttpParams;->setParameter(Ljava/lang/String;Ljava/lang/Object;)Lorg/apache/http/params/HttpParams;

    .line 75
    .end local v4           #proxy:Lorg/apache/http/HttpHost;
    .end local v5           #proxyHost:Ljava/lang/String;
    .end local v6           #proxyPort:I
    :cond_0
    const/4 v3, 0x1

    .line 76
    if-eqz v3, :cond_1

    .line 77
    const-string v9, "EAS_HTTP"

    const-string v10, "createHttpClient(): trust all certificate"

    invoke-static {v9, p1, p2, v10}, Lcom/htc/android/mail/eassvc/util/EASLog;->v(Ljava/lang/String;JLjava/lang/String;)V

    .line 79
    :try_start_0
    new-instance v7, Lcom/htc/android/mail/ssl/SSLSocketFactory;

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-static {v9, v10}, Landroid/net/SSLCertificateSocketFactory;->getInsecure(ILandroid/net/SSLSessionCache;)Ljavax/net/ssl/SSLSocketFactory;

    move-result-object v9

    invoke-direct {v7, v9}, Lcom/htc/android/mail/ssl/SSLSocketFactory;-><init>(Ljavax/net/ssl/SSLSocketFactory;)V

    .line 80
    .local v7, sf:Lcom/htc/android/mail/ssl/SSLSocketFactory;
    sget-object v9, Lcom/htc/android/mail/ssl/SSLSocketFactory;->ALLOW_ALL_HOSTNAME_VERIFIER:Lorg/apache/http/conn/ssl/X509HostnameVerifier;

    invoke-virtual {v7, v9}, Lcom/htc/android/mail/ssl/SSLSocketFactory;->setHostnameVerifier(Lorg/apache/http/conn/ssl/X509HostnameVerifier;)V

    .line 81
    new-instance v2, Lcom/htc/android/mail/easdp/util/HttpClientFactory$DpSSLSocketFactory;

    invoke-direct {v2}, Lcom/htc/android/mail/easdp/util/HttpClientFactory$DpSSLSocketFactory;-><init>()V

    .line 82
    .local v2, mysslsk:Lcom/htc/android/mail/easdp/util/HttpClientFactory$DpSSLSocketFactory;
    invoke-virtual {v2, v7}, Lcom/htc/android/mail/easdp/util/HttpClientFactory$DpSSLSocketFactory;->setSocketFactory(Lcom/htc/android/mail/ssl/SSLSocketFactory;)V

    .line 84
    invoke-virtual {v1}, Landroid/net/http/AndroidHttpClient;->getConnectionManager()Lorg/apache/http/conn/ClientConnectionManager;

    move-result-object v9

    invoke-interface {v9}, Lorg/apache/http/conn/ClientConnectionManager;->getSchemeRegistry()Lorg/apache/http/conn/scheme/SchemeRegistry;

    move-result-object v9

    new-instance v10, Lorg/apache/http/conn/scheme/Scheme;

    const-string v11, "https"

    const/16 v12, 0x1bb

    invoke-direct {v10, v11, v2, v12}, Lorg/apache/http/conn/scheme/Scheme;-><init>(Ljava/lang/String;Lorg/apache/http/conn/scheme/SocketFactory;I)V

    invoke-virtual {v9, v10}, Lorg/apache/http/conn/scheme/SchemeRegistry;->register(Lorg/apache/http/conn/scheme/Scheme;)Lorg/apache/http/conn/scheme/Scheme;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 101
    .end local v2           #mysslsk:Lcom/htc/android/mail/easdp/util/HttpClientFactory$DpSSLSocketFactory;
    .end local v7           #sf:Lcom/htc/android/mail/ssl/SSLSocketFactory;
    :goto_0
    return-object v1

    .line 85
    :catch_0
    move-exception v0

    .line 86
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 90
    .end local v0           #e:Ljava/lang/Exception;
    :cond_1
    invoke-virtual {v1}, Landroid/net/http/AndroidHttpClient;->getConnectionManager()Lorg/apache/http/conn/ClientConnectionManager;

    move-result-object v9

    invoke-interface {v9}, Lorg/apache/http/conn/ClientConnectionManager;->getSchemeRegistry()Lorg/apache/http/conn/scheme/SchemeRegistry;

    move-result-object v9

    const-string v10, "https"

    invoke-virtual {v9, v10}, Lorg/apache/http/conn/scheme/SchemeRegistry;->getScheme(Ljava/lang/String;)Lorg/apache/http/conn/scheme/Scheme;

    move-result-object v9

    invoke-virtual {v9}, Lorg/apache/http/conn/scheme/Scheme;->getSocketFactory()Lorg/apache/http/conn/scheme/SocketFactory;

    move-result-object v7

    .line 91
    .local v7, sf:Lorg/apache/http/conn/scheme/SocketFactory;
    instance-of v9, v7, Lorg/apache/http/conn/ssl/SSLSocketFactory;

    if-eqz v9, :cond_2

    move-object v8, v7

    .line 92
    check-cast v8, Lorg/apache/http/conn/ssl/SSLSocketFactory;

    .line 93
    .local v8, sslsf:Lorg/apache/http/conn/ssl/SSLSocketFactory;
    sget-object v9, Lcom/htc/android/mail/ssl/SSLSocketFactory;->ALLOW_ALL_HOSTNAME_VERIFIER:Lorg/apache/http/conn/ssl/X509HostnameVerifier;

    invoke-virtual {v8, v9}, Lorg/apache/http/conn/ssl/SSLSocketFactory;->setHostnameVerifier(Lorg/apache/http/conn/ssl/X509HostnameVerifier;)V

    .line 94
    new-instance v2, Lcom/htc/android/mail/easdp/util/HttpClientFactory$DpSSLSocketFactory;

    invoke-direct {v2}, Lcom/htc/android/mail/easdp/util/HttpClientFactory$DpSSLSocketFactory;-><init>()V

    .line 95
    .restart local v2       #mysslsk:Lcom/htc/android/mail/easdp/util/HttpClientFactory$DpSSLSocketFactory;
    invoke-virtual {v2, v8}, Lcom/htc/android/mail/easdp/util/HttpClientFactory$DpSSLSocketFactory;->setSocketFactory(Lorg/apache/http/conn/ssl/SSLSocketFactory;)V

    .line 96
    invoke-virtual {v1}, Landroid/net/http/AndroidHttpClient;->getConnectionManager()Lorg/apache/http/conn/ClientConnectionManager;

    move-result-object v9

    invoke-interface {v9}, Lorg/apache/http/conn/ClientConnectionManager;->getSchemeRegistry()Lorg/apache/http/conn/scheme/SchemeRegistry;

    move-result-object v9

    new-instance v10, Lorg/apache/http/conn/scheme/Scheme;

    const-string v11, "https"

    const/16 v12, 0x1bb

    invoke-direct {v10, v11, v2, v12}, Lorg/apache/http/conn/scheme/Scheme;-><init>(Ljava/lang/String;Lorg/apache/http/conn/scheme/SocketFactory;I)V

    invoke-virtual {v9, v10}, Lorg/apache/http/conn/scheme/SchemeRegistry;->register(Lorg/apache/http/conn/scheme/Scheme;)Lorg/apache/http/conn/scheme/Scheme;

    goto :goto_0

    .line 98
    .end local v2           #mysslsk:Lcom/htc/android/mail/easdp/util/HttpClientFactory$DpSSLSocketFactory;
    .end local v8           #sslsf:Lorg/apache/http/conn/ssl/SSLSocketFactory;
    :cond_2
    const-string v9, "EAS_HTTP"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "createHttpClient() error, the socketFactory is "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/htc/android/mail/eassvc/util/EASLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static getCertificate(Ljavax/net/ssl/SSLSession;Z)Ljava/security/cert/X509Certificate;
    .locals 8
    .parameter "session"
    .parameter "log"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 364
    const/4 v2, 0x0

    .line 365
    .local v2, cert:Ljava/security/cert/X509Certificate;
    if-nez p0, :cond_0

    .line 366
    const/4 v7, 0x0

    .line 381
    :goto_0
    return-object v7

    .line 368
    :cond_0
    :try_start_0
    invoke-interface {p0}, Ljavax/net/ssl/SSLSession;->getPeerCertificates()[Ljava/security/cert/Certificate;

    move-result-object v6

    .line 370
    .local v6, peerCertificates:[Ljava/security/cert/Certificate;
    const/4 v7, 0x0

    aget-object v7, v6, v7

    move-object v0, v7

    check-cast v0, Ljava/security/cert/X509Certificate;

    move-object v2, v0

    .line 372
    if-eqz p1, :cond_1

    .line 374
    move-object v1, v6

    .local v1, arr$:[Ljava/security/cert/Certificate;
    array-length v5, v1

    .local v5, len$:I
    const/4 v4, 0x0

    .local v4, i$:I
    :goto_1
    if-ge v4, v5, :cond_1

    aget-object v7, v1, v4
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 378
    .end local v1           #arr$:[Ljava/security/cert/Certificate;
    .end local v4           #i$:I
    .end local v5           #len$:I
    .end local v6           #peerCertificates:[Ljava/security/cert/Certificate;
    :catch_0
    move-exception v3

    .line 379
    .local v3, e:Ljava/lang/Exception;
    throw v3

    .end local v3           #e:Ljava/lang/Exception;
    .restart local v6       #peerCertificates:[Ljava/security/cert/Certificate;
    :cond_1
    move-object v7, v2

    .line 381
    goto :goto_0
.end method

.method private static getPassAllCertificatePath(J)Ljava/io/File;
    .locals 5
    .parameter "accountId"

    .prologue
    .line 185
    const-wide/16 v2, 0x0

    cmp-long v2, p0, v2

    if-lez v2, :cond_0

    .line 186
    sget-object v2, Lcom/htc/android/mail/easdp/util/HttpClientFactory;->mContext:Landroid/content/Context;

    invoke-static {v2, p0, p1}, Lcom/htc/android/mail/eassvc/util/AccountUtil;->getAccountConfigPath(Landroid/content/Context;J)Ljava/io/File;

    move-result-object v0

    .line 187
    .local v0, dataFilePath:Ljava/io/File;
    new-instance v1, Ljava/io/File;

    const-string v2, "eas_pass_certificate"

    invoke-direct {v1, v0, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 192
    .local v1, file:Ljava/io/File;
    :goto_0
    return-object v1

    .line 189
    .end local v0           #dataFilePath:Ljava/io/File;
    .end local v1           #file:Ljava/io/File;
    :cond_0
    sget-object v2, Lcom/htc/android/mail/easdp/util/HttpClientFactory;->mContext:Landroid/content/Context;

    const-string v3, "config"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->getDir(Ljava/lang/String;I)Ljava/io/File;

    move-result-object v0

    .line 190
    .restart local v0       #dataFilePath:Ljava/io/File;
    new-instance v1, Ljava/io/File;

    const-string v2, "eas_pass_certificate"

    invoke-direct {v1, v0, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .restart local v1       #file:Ljava/io/File;
    goto :goto_0
.end method

.method public static isDeviceSetProxy(Landroid/content/Context;)Z
    .locals 4
    .parameter "context"

    .prologue
    const/4 v2, 0x0

    .line 403
    invoke-static {p0}, Lcom/htc/android/mail/easdp/util/HttpClientFactory;->proxyInBlockList(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 411
    :cond_0
    :goto_0
    return v2

    .line 406
    :cond_1
    invoke-static {p0}, Landroid/net/Proxy;->getHost(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 407
    .local v0, proxyHost:Ljava/lang/String;
    invoke-static {p0}, Landroid/net/Proxy;->getPort(Landroid/content/Context;)I

    move-result v1

    .line 408
    .local v1, proxyPort:I
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_0

    .line 409
    const/4 v2, 0x1

    goto :goto_0
.end method

.method public static isUseProxy(Landroid/content/Context;J)Z
    .locals 5
    .parameter "context"
    .parameter "accountId"

    .prologue
    const/4 v2, 0x0

    .line 385
    invoke-static {p0}, Lcom/htc/android/mail/easdp/util/HttpClientFactory;->proxyInBlockList(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 399
    :cond_0
    :goto_0
    return v2

    .line 388
    :cond_1
    const-wide/16 v3, 0x0

    cmp-long v3, p1, v3

    if-ltz v3, :cond_0

    .line 391
    const/4 v2, 0x0

    .line 392
    .local v2, useProxy:Z
    const-string v4, "eas_use_proxy"

    monitor-enter v4

    .line 393
    :try_start_0
    invoke-static {p0, p1, p2}, Lcom/htc/android/mail/eassvc/util/AccountUtil;->getAccountConfigPath(Landroid/content/Context;J)Ljava/io/File;

    move-result-object v0

    .line 394
    .local v0, dataFilePath:Ljava/io/File;
    new-instance v1, Ljava/io/File;

    const-string v3, "eas_use_proxy"

    invoke-direct {v1, v0, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 395
    .local v1, proxyFile:Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 396
    const/4 v2, 0x1

    .line 398
    :cond_2
    monitor-exit v4

    goto :goto_0

    .end local v0           #dataFilePath:Ljava/io/File;
    .end local v1           #proxyFile:Ljava/io/File;
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3
.end method

.method public static proxyInBlockList(Landroid/content/Context;)Z
    .locals 6
    .parameter "context"

    .prologue
    .line 415
    invoke-static {p0}, Landroid/net/Proxy;->getHost(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    .line 416
    .local v4, proxyHost:Ljava/lang/String;
    sget-object v0, Lcom/htc/android/mail/easdp/util/HttpClientFactory;->blockProxyList:[Ljava/lang/String;

    .local v0, arr$:[Ljava/lang/String;
    array-length v2, v0

    .local v2, len$:I
    const/4 v1, 0x0

    .local v1, i$:I
    :goto_0
    if-ge v1, v2, :cond_1

    aget-object v3, v0, v1

    .line 417
    .local v3, proxy:Ljava/lang/String;
    invoke-virtual {v3, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 418
    const/4 v5, 0x1

    .line 421
    .end local v3           #proxy:Ljava/lang/String;
    :goto_1
    return v5

    .line 416
    .restart local v3       #proxy:Ljava/lang/String;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 421
    .end local v3           #proxy:Ljava/lang/String;
    :cond_1
    const/4 v5, 0x0

    goto :goto_1
.end method

.method public static setContext(Landroid/content/Context;)V
    .locals 0
    .parameter "context"

    .prologue
    .line 38
    sput-object p0, Lcom/htc/android/mail/easdp/util/HttpClientFactory;->mContext:Landroid/content/Context;

    .line 39
    return-void
.end method
