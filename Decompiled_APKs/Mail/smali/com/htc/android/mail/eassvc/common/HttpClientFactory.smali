.class public Lcom/htc/android/mail/eassvc/common/HttpClientFactory;
.super Ljava/lang/Object;
.source "HttpClientFactory.java"


# static fields
#the value of this static final field might be set in the static constructor
.field private static final DEBUG:Z = false

.field public static final DEFAULT_HTTP_TIMEOUT:I = 0x7530

.field public static final EAS_USE_PROXY_FILE_GLOBAL:Ljava/lang/String; = "/data/data/com.htc.android.mail/app_config/eas_use_proxy_global"

.field public static final HTTP_RETRY_TIMEOUT:I = 0xea60

.field private static final PASS_ALL_CERTIFICATE:Ljava/lang/String; = "eas_pass_certificate"

.field private static final TAG:Ljava/lang/String; = "EAS_HTTP"

.field private static final USER_AGENT:Ljava/lang/String;

.field private static blockProxyList:[Ljava/lang/String;

.field public static tempCertificate:Lcom/htc/android/mail/eassvc/common/EASCommon$CertificateError;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 41
    sget-boolean v0, Lcom/htc/android/mail/Mail;->EAS_DEBUG:Z

    sput-boolean v0, Lcom/htc/android/mail/eassvc/common/HttpClientFactory;->DEBUG:Z

    .line 44
    sget-object v0, Lcom/htc/android/mail/eassvc/common/EASSyncCommon;->EAS_HTTP_AGENT:Ljava/lang/String;

    sput-object v0, Lcom/htc/android/mail/eassvc/common/HttpClientFactory;->USER_AGENT:Ljava/lang/String;

    .line 47
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "web.wireless.bell.ca"

    aput-object v2, v0, v1

    sput-object v0, Lcom/htc/android/mail/eassvc/common/HttpClientFactory;->blockProxyList:[Ljava/lang/String;

    .line 48
    const/4 v0, 0x0

    sput-object v0, Lcom/htc/android/mail/eassvc/common/HttpClientFactory;->tempCertificate:Lcom/htc/android/mail/eassvc/common/EASCommon$CertificateError;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 36
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static createHttpClient(Landroid/content/Context;)Landroid/net/http/AndroidHttpClient;
    .locals 2
    .parameter "context"

    .prologue
    .line 52
    const-wide/16 v0, -0x1

    invoke-static {p0, v0, v1}, Lcom/htc/android/mail/eassvc/common/HttpClientFactory;->createHttpClient(Landroid/content/Context;J)Landroid/net/http/AndroidHttpClient;

    move-result-object v0

    return-object v0
.end method

.method public static createHttpClient(Landroid/content/Context;J)Landroid/net/http/AndroidHttpClient;
    .locals 12
    .parameter "context"
    .parameter "accountId"

    .prologue
    const/16 v10, 0x7530

    const/16 v11, 0x1bb

    .line 55
    sget-boolean v8, Lcom/htc/android/mail/eassvc/common/HttpClientFactory;->DEBUG:Z

    if-eqz v8, :cond_0

    const-string v8, "EAS_HTTP"

    const-string v9, "createHttpClient()"

    invoke-static {v8, p1, p2, v9}, Lcom/htc/android/mail/eassvc/util/EASLog;->d(Ljava/lang/String;JLjava/lang/String;)V

    .line 56
    :cond_0
    const/4 v2, 0x0

    .line 57
    .local v2, passAllCertificate:Z
    sget-object v8, Lcom/htc/android/mail/eassvc/common/HttpClientFactory;->USER_AGENT:Ljava/lang/String;

    invoke-static {v8}, Landroid/net/http/AndroidHttpClient;->newInstance(Ljava/lang/String;)Landroid/net/http/AndroidHttpClient;

    move-result-object v1

    .line 59
    .local v1, httpClient:Landroid/net/http/AndroidHttpClient;
    invoke-virtual {v1}, Landroid/net/http/AndroidHttpClient;->getParams()Lorg/apache/http/params/HttpParams;

    move-result-object v8

    const-string v9, "http.connection.timeout"

    invoke-interface {v8, v9, v10}, Lorg/apache/http/params/HttpParams;->setIntParameter(Ljava/lang/String;I)Lorg/apache/http/params/HttpParams;

    .line 63
    invoke-virtual {v1}, Landroid/net/http/AndroidHttpClient;->getParams()Lorg/apache/http/params/HttpParams;

    move-result-object v8

    const-string v9, "http.socket.timeout"

    invoke-interface {v8, v9, v10}, Lorg/apache/http/params/HttpParams;->setIntParameter(Ljava/lang/String;I)Lorg/apache/http/params/HttpParams;

    .line 67
    invoke-static {p0, p1, p2}, Lcom/htc/android/mail/eassvc/common/HttpClientFactory;->isUseProxy(Landroid/content/Context;J)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 68
    invoke-static {p0}, Landroid/net/Proxy;->getHost(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    .line 69
    .local v4, proxyHost:Ljava/lang/String;
    invoke-static {p0}, Landroid/net/Proxy;->getPort(Landroid/content/Context;)I

    move-result v5

    .line 70
    .local v5, proxyPort:I
    if-eqz v4, :cond_1

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v8

    if-lez v8, :cond_1

    .line 71
    const-string v8, "EAS_HTTP"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Use proxy - "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ":"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, p1, p2, v9}, Lcom/htc/android/mail/eassvc/util/EASLog;->d(Ljava/lang/String;JLjava/lang/String;)V

    .line 72
    new-instance v3, Lorg/apache/http/HttpHost;

    invoke-direct {v3, v4, v5}, Lorg/apache/http/HttpHost;-><init>(Ljava/lang/String;I)V

    .line 73
    .local v3, proxy:Lorg/apache/http/HttpHost;
    invoke-virtual {v1}, Landroid/net/http/AndroidHttpClient;->getParams()Lorg/apache/http/params/HttpParams;

    move-result-object v8

    const-string v9, "http.route.default-proxy"

    invoke-interface {v8, v9, v3}, Lorg/apache/http/params/HttpParams;->setParameter(Ljava/lang/String;Ljava/lang/Object;)Lorg/apache/http/params/HttpParams;

    .line 85
    .end local v3           #proxy:Lorg/apache/http/HttpHost;
    .end local v4           #proxyHost:Ljava/lang/String;
    .end local v5           #proxyPort:I
    :cond_1
    const/4 v2, 0x1

    .line 86
    if-eqz v2, :cond_2

    .line 87
    const-string v8, "EAS_HTTP"

    const-string v9, "createHttpClient(): trust all certificate"

    invoke-static {v8, p1, p2, v9}, Lcom/htc/android/mail/eassvc/util/EASLog;->v(Ljava/lang/String;JLjava/lang/String;)V

    .line 89
    :try_start_0
    new-instance v6, Lcom/htc/android/mail/eassvc/util/SSLSocketFactory;

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-static {v8, v9}, Landroid/net/SSLCertificateSocketFactory;->getInsecure(ILandroid/net/SSLSessionCache;)Ljavax/net/ssl/SSLSocketFactory;

    move-result-object v8

    invoke-direct {v6, v8}, Lcom/htc/android/mail/eassvc/util/SSLSocketFactory;-><init>(Ljavax/net/ssl/SSLSocketFactory;)V

    .line 90
    .local v6, sf:Lcom/htc/android/mail/eassvc/util/SSLSocketFactory;
    sget-object v8, Lcom/htc/android/mail/eassvc/util/SSLSocketFactory;->ALLOW_ALL_HOSTNAME_VERIFIER:Lorg/apache/http/conn/ssl/X509HostnameVerifier;

    invoke-virtual {v6, v8}, Lcom/htc/android/mail/eassvc/util/SSLSocketFactory;->setHostnameVerifier(Lorg/apache/http/conn/ssl/X509HostnameVerifier;)V

    .line 92
    invoke-virtual {v1}, Landroid/net/http/AndroidHttpClient;->getConnectionManager()Lorg/apache/http/conn/ClientConnectionManager;

    move-result-object v8

    invoke-interface {v8}, Lorg/apache/http/conn/ClientConnectionManager;->getSchemeRegistry()Lorg/apache/http/conn/scheme/SchemeRegistry;

    move-result-object v8

    new-instance v9, Lorg/apache/http/conn/scheme/Scheme;

    const-string v10, "https"

    const/16 v11, 0x1bb

    invoke-direct {v9, v10, v6, v11}, Lorg/apache/http/conn/scheme/Scheme;-><init>(Ljava/lang/String;Lorg/apache/http/conn/scheme/SocketFactory;I)V

    invoke-virtual {v8, v9}, Lorg/apache/http/conn/scheme/SchemeRegistry;->register(Lorg/apache/http/conn/scheme/Scheme;)Lorg/apache/http/conn/scheme/Scheme;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 108
    .end local v6           #sf:Lcom/htc/android/mail/eassvc/util/SSLSocketFactory;
    :goto_0
    return-object v1

    .line 93
    :catch_0
    move-exception v0

    .line 94
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 98
    .end local v0           #e:Ljava/lang/Exception;
    :cond_2
    invoke-virtual {v1}, Landroid/net/http/AndroidHttpClient;->getConnectionManager()Lorg/apache/http/conn/ClientConnectionManager;

    move-result-object v8

    invoke-interface {v8}, Lorg/apache/http/conn/ClientConnectionManager;->getSchemeRegistry()Lorg/apache/http/conn/scheme/SchemeRegistry;

    move-result-object v8

    const-string v9, "https"

    invoke-virtual {v8, v9}, Lorg/apache/http/conn/scheme/SchemeRegistry;->getScheme(Ljava/lang/String;)Lorg/apache/http/conn/scheme/Scheme;

    move-result-object v8

    invoke-virtual {v8}, Lorg/apache/http/conn/scheme/Scheme;->getSocketFactory()Lorg/apache/http/conn/scheme/SocketFactory;

    move-result-object v6

    .line 99
    .local v6, sf:Lorg/apache/http/conn/scheme/SocketFactory;
    instance-of v8, v6, Lorg/apache/http/conn/ssl/SSLSocketFactory;

    if-eqz v8, :cond_3

    move-object v7, v6

    .line 100
    check-cast v7, Lorg/apache/http/conn/ssl/SSLSocketFactory;

    .line 101
    .local v7, sslsf:Lorg/apache/http/conn/ssl/SSLSocketFactory;
    sget-object v8, Lcom/htc/android/mail/eassvc/util/SSLSocketFactory;->ALLOW_ALL_HOSTNAME_VERIFIER:Lorg/apache/http/conn/ssl/X509HostnameVerifier;

    invoke-virtual {v7, v8}, Lorg/apache/http/conn/ssl/SSLSocketFactory;->setHostnameVerifier(Lorg/apache/http/conn/ssl/X509HostnameVerifier;)V

    .line 102
    invoke-virtual {v1}, Landroid/net/http/AndroidHttpClient;->getConnectionManager()Lorg/apache/http/conn/ClientConnectionManager;

    move-result-object v8

    invoke-interface {v8}, Lorg/apache/http/conn/ClientConnectionManager;->getSchemeRegistry()Lorg/apache/http/conn/scheme/SchemeRegistry;

    move-result-object v8

    new-instance v9, Lorg/apache/http/conn/scheme/Scheme;

    const-string v10, "https"

    invoke-direct {v9, v10, v7, v11}, Lorg/apache/http/conn/scheme/Scheme;-><init>(Ljava/lang/String;Lorg/apache/http/conn/scheme/SocketFactory;I)V

    invoke-virtual {v8, v9}, Lorg/apache/http/conn/scheme/SchemeRegistry;->register(Lorg/apache/http/conn/scheme/Scheme;)Lorg/apache/http/conn/scheme/Scheme;

    goto :goto_0

    .line 104
    .end local v7           #sslsf:Lorg/apache/http/conn/ssl/SSLSocketFactory;
    :cond_3
    const-string v8, "EAS_HTTP"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "createHttpClient() error, the socketFactory is "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/htc/android/mail/eassvc/util/EASLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static getCertificate(Landroid/content/Context;Ljava/lang/String;)Lcom/htc/android/mail/eassvc/common/EASCommon$CertificateError;
    .locals 12
    .parameter "context"
    .parameter "server"

    .prologue
    const/16 v11, -0xd

    const/4 v0, 0x0

    const/4 v10, 0x0

    .line 390
    const/4 v3, 0x0

    .line 392
    .local v3, mSslError:Lcom/htc/android/mail/ssl/MailSslError;
    const/4 v5, 0x0

    .line 394
    .local v5, trustManagers:[Ljavax/net/ssl/TrustManager;
    :try_start_0
    const-string v7, "TLS"

    invoke-static {v7}, Ljavax/net/ssl/SSLContext;->getInstance(Ljava/lang/String;)Ljavax/net/ssl/SSLContext;

    move-result-object v4

    .line 395
    .local v4, sslContext:Ljavax/net/ssl/SSLContext;
    const/4 v7, 0x1

    new-array v6, v7, [Ljavax/net/ssl/TrustManager;

    const/4 v7, 0x0

    new-instance v8, Lcom/htc/android/mail/ssl/SimpleX509TrustManager;

    invoke-direct {v8}, Lcom/htc/android/mail/ssl/SimpleX509TrustManager;-><init>()V

    aput-object v8, v6, v7
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 396
    .end local v5           #trustManagers:[Ljavax/net/ssl/TrustManager;
    .local v6, trustManagers:[Ljavax/net/ssl/TrustManager;
    const/4 v7, 0x0

    :try_start_1
    new-instance v8, Ljava/security/SecureRandom;

    invoke-direct {v8}, Ljava/security/SecureRandom;-><init>()V

    invoke-virtual {v4, v7, v6, v8}, Ljavax/net/ssl/SSLContext;->init([Ljavax/net/ssl/KeyManager;[Ljavax/net/ssl/TrustManager;Ljava/security/SecureRandom;)V

    .line 397
    invoke-virtual {v4}, Ljavax/net/ssl/SSLContext;->getSocketFactory()Ljavax/net/ssl/SSLSocketFactory;

    move-result-object v7

    invoke-virtual {v7}, Ljavax/net/ssl/SSLSocketFactory;->createSocket()Ljava/net/Socket;

    move-result-object v2

    .line 398
    .local v2, mSocket:Ljava/net/Socket;
    new-instance v7, Ljava/net/InetSocketAddress;

    const/16 v8, 0x1bb

    invoke-direct {v7, p1, v8}, Ljava/net/InetSocketAddress;-><init>(Ljava/lang/String;I)V

    const/16 v8, 0x7530

    invoke-virtual {v2, v7, v8}, Ljava/net/Socket;->connect(Ljava/net/SocketAddress;I)V

    .line 399
    const/4 v3, 0x0

    .line 400
    const/16 v7, 0x7530

    invoke-virtual {v2, v7}, Ljava/net/Socket;->setSoTimeout(I)V

    .line 401
    invoke-static {p0}, Lcom/htc/android/mail/eassvc/util/CertificateChainValidator;->getInstance(Landroid/content/Context;)Lcom/htc/android/mail/eassvc/util/CertificateChainValidator;

    move-result-object v7

    const/4 v8, 0x0

    check-cast v2, Ljavax/net/ssl/SSLSocket;

    .end local v2           #mSocket:Ljava/net/Socket;
    invoke-virtual {v7, v8, v2, p1}, Lcom/htc/android/mail/eassvc/util/CertificateChainValidator;->doHandshakeAndValidateServerCertificates(Lcom/htc/android/mail/server/Server;Ljavax/net/ssl/SSLSocket;Ljava/lang/String;)Lcom/htc/android/mail/ssl/MailSslError;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v3

    move-object v5, v6

    .line 406
    .end local v4           #sslContext:Ljavax/net/ssl/SSLContext;
    .end local v6           #trustManagers:[Ljavax/net/ssl/TrustManager;
    .restart local v5       #trustManagers:[Ljavax/net/ssl/TrustManager;
    :goto_0
    if-nez v3, :cond_1

    .line 407
    if-eqz v5, :cond_0

    aget-object v7, v5, v10

    check-cast v7, Lcom/htc/android/mail/ssl/SimpleX509TrustManager;

    iget-object v7, v7, Lcom/htc/android/mail/ssl/SimpleX509TrustManager;->chain:[Ljava/security/cert/X509Certificate;

    if-eqz v7, :cond_0

    .line 408
    const-string v7, "EAS_HTTP"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "getCertificate(): trustManagers="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/htc/android/mail/eassvc/util/EASLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 409
    new-instance v0, Lcom/htc/android/mail/eassvc/common/EASCommon$CertificateError;

    invoke-direct {v0}, Lcom/htc/android/mail/eassvc/common/EASCommon$CertificateError;-><init>()V

    .line 410
    .local v0, cerError:Lcom/htc/android/mail/eassvc/common/EASCommon$CertificateError;
    aget-object v7, v5, v10

    check-cast v7, Lcom/htc/android/mail/ssl/SimpleX509TrustManager;

    iget-object v7, v7, Lcom/htc/android/mail/ssl/SimpleX509TrustManager;->chain:[Ljava/security/cert/X509Certificate;

    aget-object v7, v7, v10

    iput-object v7, v0, Lcom/htc/android/mail/eassvc/common/EASCommon$CertificateError;->certificate:Ljava/security/cert/X509Certificate;

    .line 411
    iput v11, v0, Lcom/htc/android/mail/eassvc/common/EASCommon$CertificateError;->errorCode:I

    .line 435
    .end local v0           #cerError:Lcom/htc/android/mail/eassvc/common/EASCommon$CertificateError;
    :cond_0
    :goto_1
    return-object v0

    .line 403
    :catch_0
    move-exception v1

    .line 404
    .local v1, e:Ljava/lang/Exception;
    :goto_2
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 415
    .end local v1           #e:Ljava/lang/Exception;
    :cond_1
    const-string v7, "EAS_HTTP"

    invoke-virtual {v3}, Lcom/htc/android/mail/ssl/MailSslError;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/htc/android/mail/eassvc/util/EASLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 416
    new-instance v0, Lcom/htc/android/mail/eassvc/common/EASCommon$CertificateError;

    invoke-direct {v0}, Lcom/htc/android/mail/eassvc/common/EASCommon$CertificateError;-><init>()V

    .line 417
    .restart local v0       #cerError:Lcom/htc/android/mail/eassvc/common/EASCommon$CertificateError;
    invoke-virtual {v3}, Lcom/htc/android/mail/ssl/MailSslError;->getCertificate()Lcom/htc/android/mail/ssl/MailSslCertificate;

    move-result-object v7

    invoke-virtual {v7}, Lcom/htc/android/mail/ssl/MailSslCertificate;->getX509Certificate()Ljava/security/cert/X509Certificate;

    move-result-object v7

    iput-object v7, v0, Lcom/htc/android/mail/eassvc/common/EASCommon$CertificateError;->certificate:Ljava/security/cert/X509Certificate;

    .line 418
    invoke-virtual {v3}, Lcom/htc/android/mail/ssl/MailSslError;->getPrimaryError()I

    move-result v7

    packed-switch v7, :pswitch_data_0

    .line 430
    iput v11, v0, Lcom/htc/android/mail/eassvc/common/EASCommon$CertificateError;->errorCode:I

    goto :goto_1

    .line 420
    :pswitch_0
    const/16 v7, -0xa

    iput v7, v0, Lcom/htc/android/mail/eassvc/common/EASCommon$CertificateError;->errorCode:I

    goto :goto_1

    .line 423
    :pswitch_1
    const/16 v7, -0xc

    iput v7, v0, Lcom/htc/android/mail/eassvc/common/EASCommon$CertificateError;->errorCode:I

    goto :goto_1

    .line 426
    :pswitch_2
    const/16 v7, -0xb

    iput v7, v0, Lcom/htc/android/mail/eassvc/common/EASCommon$CertificateError;->errorCode:I

    goto :goto_1

    .line 403
    .end local v0           #cerError:Lcom/htc/android/mail/eassvc/common/EASCommon$CertificateError;
    .end local v5           #trustManagers:[Ljavax/net/ssl/TrustManager;
    .restart local v4       #sslContext:Ljavax/net/ssl/SSLContext;
    .restart local v6       #trustManagers:[Ljavax/net/ssl/TrustManager;
    :catch_1
    move-exception v1

    move-object v5, v6

    .end local v6           #trustManagers:[Ljavax/net/ssl/TrustManager;
    .restart local v5       #trustManagers:[Ljavax/net/ssl/TrustManager;
    goto :goto_2

    .line 418
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method public static getCertificate(Ljavax/net/ssl/SSLSession;Z)Ljava/security/cert/X509Certificate;
    .locals 11
    .parameter "session"
    .parameter "log"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 226
    const/4 v3, 0x0

    .line 227
    .local v3, cert:Ljava/security/cert/X509Certificate;
    if-nez p0, :cond_0

    .line 228
    const/4 v8, 0x0

    .line 243
    :goto_0
    return-object v8

    .line 230
    :cond_0
    :try_start_0
    invoke-interface {p0}, Ljavax/net/ssl/SSLSession;->getPeerCertificates()[Ljava/security/cert/Certificate;

    move-result-object v7

    .line 232
    .local v7, peerCertificates:[Ljava/security/cert/Certificate;
    const/4 v8, 0x0

    aget-object v8, v7, v8

    move-object v0, v8

    check-cast v0, Ljava/security/cert/X509Certificate;

    move-object v3, v0

    .line 234
    if-eqz p1, :cond_3

    .line 235
    sget-boolean v8, Lcom/htc/android/mail/eassvc/common/HttpClientFactory;->DEBUG:Z

    if-eqz v8, :cond_1

    const-string v8, "EAS_HTTP"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "certificate length: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    array-length v10, v7

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/htc/android/mail/eassvc/util/EASLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 236
    :cond_1
    move-object v1, v7

    .local v1, arr$:[Ljava/security/cert/Certificate;
    array-length v6, v1

    .local v6, len$:I
    const/4 v5, 0x0

    .local v5, i$:I
    :goto_1
    if-ge v5, v6, :cond_3

    aget-object v2, v1, v5

    .line 237
    .local v2, c:Ljava/security/cert/Certificate;
    sget-boolean v8, Lcom/htc/android/mail/eassvc/common/HttpClientFactory;->DEBUG:Z

    if-eqz v8, :cond_2

    const-string v8, "EAS_HTTP"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "certificate: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v2}, Ljava/security/cert/Certificate;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/htc/android/mail/eassvc/util/EASLog;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 236
    :cond_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 240
    .end local v1           #arr$:[Ljava/security/cert/Certificate;
    .end local v2           #c:Ljava/security/cert/Certificate;
    .end local v5           #i$:I
    .end local v6           #len$:I
    .end local v7           #peerCertificates:[Ljava/security/cert/Certificate;
    :catch_0
    move-exception v4

    .line 241
    .local v4, e:Ljava/lang/Exception;
    throw v4

    .end local v4           #e:Ljava/lang/Exception;
    .restart local v7       #peerCertificates:[Ljava/security/cert/Certificate;
    :cond_3
    move-object v8, v3

    .line 243
    goto :goto_0
.end method

.method private static getPassAllCertificatePath(Landroid/content/Context;J)Ljava/io/File;
    .locals 4
    .parameter "context"
    .parameter "accountId"

    .prologue
    .line 113
    const-wide/16 v2, 0x0

    cmp-long v2, p1, v2

    if-lez v2, :cond_0

    .line 114
    invoke-static {p0, p1, p2}, Lcom/htc/android/mail/eassvc/util/AccountUtil;->getAccountConfigPath(Landroid/content/Context;J)Ljava/io/File;

    move-result-object v0

    .line 115
    .local v0, dataFilePath:Ljava/io/File;
    new-instance v1, Ljava/io/File;

    const-string v2, "eas_pass_certificate"

    invoke-direct {v1, v0, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 120
    .local v1, file:Ljava/io/File;
    :goto_0
    return-object v1

    .line 117
    .end local v0           #dataFilePath:Ljava/io/File;
    .end local v1           #file:Ljava/io/File;
    :cond_0
    const-string v2, "config"

    const/4 v3, 0x0

    invoke-virtual {p0, v2, v3}, Landroid/content/Context;->getDir(Ljava/lang/String;I)Ljava/io/File;

    move-result-object v0

    .line 118
    .restart local v0       #dataFilePath:Ljava/io/File;
    new-instance v1, Ljava/io/File;

    const-string v2, "eas_pass_certificate"

    invoke-direct {v1, v0, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .restart local v1       #file:Ljava/io/File;
    goto :goto_0
.end method

.method public static getPassCertificateAccount(Landroid/content/Context;)Ljava/lang/String;
    .locals 9
    .parameter "context"

    .prologue
    .line 129
    const-string v6, "eas_pass_certificate"

    monitor-enter v6

    .line 130
    const-wide/16 v7, -0x1

    :try_start_0
    invoke-static {p0, v7, v8}, Lcom/htc/android/mail/eassvc/common/HttpClientFactory;->getPassAllCertificatePath(Landroid/content/Context;J)Ljava/io/File;

    move-result-object v4

    .line 131
    .local v4, passCertFile:Ljava/io/File;
    if-eqz v4, :cond_1

    invoke-virtual {v4}, Ljava/io/File;->exists()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v5

    if-eqz v5, :cond_1

    .line 132
    const/4 v0, 0x0

    .line 134
    .local v0, bis:Ljava/io/BufferedInputStream;
    :try_start_1
    invoke-virtual {v4}, Ljava/io/File;->length()J

    move-result-wide v7

    long-to-int v5, v7

    new-array v2, v5, [B

    .line 135
    .local v2, buffer:[B
    new-instance v1, Ljava/io/BufferedInputStream;

    new-instance v5, Ljava/io/FileInputStream;

    invoke-direct {v5, v4}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v1, v5}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 136
    .end local v0           #bis:Ljava/io/BufferedInputStream;
    .local v1, bis:Ljava/io/BufferedInputStream;
    :try_start_2
    invoke-virtual {v1, v2}, Ljava/io/BufferedInputStream;->read([B)I

    .line 137
    new-instance v5, Ljava/lang/String;

    invoke-direct {v5, v2}, Ljava/lang/String;-><init>([B)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_4

    .line 141
    if-eqz v1, :cond_0

    .line 143
    :try_start_3
    invoke-virtual {v1}, Ljava/io/BufferedInputStream;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_3

    .line 137
    :cond_0
    :goto_0
    :try_start_4
    monitor-exit v6
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 150
    .end local v1           #bis:Ljava/io/BufferedInputStream;
    .end local v2           #buffer:[B
    :goto_1
    return-object v5

    .line 138
    .restart local v0       #bis:Ljava/io/BufferedInputStream;
    :catch_0
    move-exception v3

    .line 139
    .local v3, e:Ljava/lang/Exception;
    :goto_2
    :try_start_5
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 141
    if-eqz v0, :cond_1

    .line 143
    :try_start_6
    invoke-virtual {v0}, Ljava/io/BufferedInputStream;->close()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_2

    .line 150
    .end local v0           #bis:Ljava/io/BufferedInputStream;
    .end local v3           #e:Ljava/lang/Exception;
    :cond_1
    :goto_3
    const/4 v5, 0x0

    :try_start_7
    monitor-exit v6

    goto :goto_1

    .line 151
    .end local v4           #passCertFile:Ljava/io/File;
    :catchall_0
    move-exception v5

    monitor-exit v6
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    throw v5

    .line 141
    .restart local v0       #bis:Ljava/io/BufferedInputStream;
    .restart local v4       #passCertFile:Ljava/io/File;
    :catchall_1
    move-exception v5

    :goto_4
    if-eqz v0, :cond_2

    .line 143
    :try_start_8
    invoke-virtual {v0}, Ljava/io/BufferedInputStream;->close()V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_1

    .line 141
    :cond_2
    :goto_5
    :try_start_9
    throw v5

    .line 144
    :catch_1
    move-exception v3

    .line 145
    .local v3, e:Ljava/io/IOException;
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_5

    .line 144
    .local v3, e:Ljava/lang/Exception;
    :catch_2
    move-exception v3

    .line 145
    .local v3, e:Ljava/io/IOException;
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_3

    .line 144
    .end local v0           #bis:Ljava/io/BufferedInputStream;
    .end local v3           #e:Ljava/io/IOException;
    .restart local v1       #bis:Ljava/io/BufferedInputStream;
    .restart local v2       #buffer:[B
    :catch_3
    move-exception v3

    .line 145
    .restart local v3       #e:Ljava/io/IOException;
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    goto :goto_0

    .line 141
    .end local v3           #e:Ljava/io/IOException;
    :catchall_2
    move-exception v5

    move-object v0, v1

    .end local v1           #bis:Ljava/io/BufferedInputStream;
    .restart local v0       #bis:Ljava/io/BufferedInputStream;
    goto :goto_4

    .line 138
    .end local v0           #bis:Ljava/io/BufferedInputStream;
    .restart local v1       #bis:Ljava/io/BufferedInputStream;
    :catch_4
    move-exception v3

    move-object v0, v1

    .end local v1           #bis:Ljava/io/BufferedInputStream;
    .restart local v0       #bis:Ljava/io/BufferedInputStream;
    goto :goto_2
.end method

.method public static isDeviceSetProxy(Landroid/content/Context;)Z
    .locals 4
    .parameter "context"

    .prologue
    const/4 v2, 0x0

    .line 376
    invoke-static {p0}, Lcom/htc/android/mail/eassvc/common/HttpClientFactory;->proxyInBlockList(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 384
    :cond_0
    :goto_0
    return v2

    .line 379
    :cond_1
    invoke-static {p0}, Landroid/net/Proxy;->getHost(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 380
    .local v0, proxyHost:Ljava/lang/String;
    invoke-static {p0}, Landroid/net/Proxy;->getPort(Landroid/content/Context;)I

    move-result v1

    .line 381
    .local v1, proxyPort:I
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_0

    .line 382
    const/4 v2, 0x1

    goto :goto_0
.end method

.method public static isPassAllCertificate(Landroid/content/Context;J)Z
    .locals 2
    .parameter "context"
    .parameter "accountId"

    .prologue
    .line 124
    invoke-static {p0, p1, p2}, Lcom/htc/android/mail/eassvc/common/HttpClientFactory;->getPassAllCertificatePath(Landroid/content/Context;J)Ljava/io/File;

    move-result-object v0

    .line 125
    .local v0, passCertFile:Ljava/io/File;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static isUseProxy(Landroid/content/Context;)Z
    .locals 5
    .parameter "context"

    .prologue
    .line 309
    invoke-static {p0}, Lcom/htc/android/mail/eassvc/common/HttpClientFactory;->proxyInBlockList(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 310
    const/4 v2, 0x0

    .line 323
    :goto_0
    return v2

    .line 313
    :cond_0
    const/4 v2, 0x0

    .line 314
    .local v2, useProxy:Z
    const-string v4, "eas_use_proxy"

    monitor-enter v4

    .line 315
    :try_start_0
    new-instance v0, Ljava/io/File;

    const-string v3, "/data/data/com.htc.android.mail/app_config/eas_use_proxy_global"

    invoke-direct {v0, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 316
    .local v0, proxyFile:Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 317
    invoke-static {p0}, Landroid/net/Proxy;->getHost(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    .line 318
    .local v1, proxyHost:Ljava/lang/String;
    if-eqz v1, :cond_1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_1

    .line 319
    const/4 v2, 0x1

    .line 322
    .end local v1           #proxyHost:Ljava/lang/String;
    :cond_1
    monitor-exit v4

    goto :goto_0

    .end local v0           #proxyFile:Ljava/io/File;
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3
.end method

.method public static isUseProxy(Landroid/content/Context;J)Z
    .locals 6
    .parameter "context"
    .parameter "accountId"

    .prologue
    .line 346
    invoke-static {p0}, Lcom/htc/android/mail/eassvc/common/HttpClientFactory;->proxyInBlockList(Landroid/content/Context;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 347
    const/4 v3, 0x0

    .line 363
    :goto_0
    return v3

    .line 349
    :cond_0
    const-wide/16 v4, 0x0

    cmp-long v4, p1, v4

    if-gez v4, :cond_1

    .line 350
    invoke-static {p0}, Lcom/htc/android/mail/eassvc/common/HttpClientFactory;->isUseProxy(Landroid/content/Context;)Z

    move-result v3

    goto :goto_0

    .line 352
    :cond_1
    const/4 v3, 0x0

    .line 353
    .local v3, useProxy:Z
    const-string v5, "eas_use_proxy"

    monitor-enter v5

    .line 354
    :try_start_0
    invoke-static {p0, p1, p2}, Lcom/htc/android/mail/eassvc/util/AccountUtil;->getAccountConfigPath(Landroid/content/Context;J)Ljava/io/File;

    move-result-object v0

    .line 355
    .local v0, dataFilePath:Ljava/io/File;
    new-instance v1, Ljava/io/File;

    const-string v4, "eas_use_proxy"

    invoke-direct {v1, v0, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 356
    .local v1, proxyFile:Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 357
    invoke-static {p0}, Landroid/net/Proxy;->getHost(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    .line 358
    .local v2, proxyHost:Ljava/lang/String;
    if-eqz v2, :cond_2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_2

    .line 359
    const/4 v3, 0x1

    .line 362
    .end local v2           #proxyHost:Ljava/lang/String;
    :cond_2
    monitor-exit v5

    goto :goto_0

    .end local v0           #dataFilePath:Ljava/io/File;
    .end local v1           #proxyFile:Ljava/io/File;
    :catchall_0
    move-exception v4

    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v4
.end method

.method public static proxyInBlockList(Landroid/content/Context;)Z
    .locals 6
    .parameter "context"

    .prologue
    .line 366
    invoke-static {p0}, Landroid/net/Proxy;->getHost(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    .line 367
    .local v4, proxyHost:Ljava/lang/String;
    sget-object v0, Lcom/htc/android/mail/eassvc/common/HttpClientFactory;->blockProxyList:[Ljava/lang/String;

    .local v0, arr$:[Ljava/lang/String;
    array-length v2, v0

    .local v2, len$:I
    const/4 v1, 0x0

    .local v1, i$:I
    :goto_0
    if-ge v1, v2, :cond_1

    aget-object v3, v0, v1

    .line 368
    .local v3, proxy:Ljava/lang/String;
    invoke-virtual {v3, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 369
    const/4 v5, 0x1

    .line 372
    .end local v3           #proxy:Ljava/lang/String;
    :goto_1
    return v5

    .line 367
    .restart local v3       #proxy:Ljava/lang/String;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 372
    .end local v3           #proxy:Ljava/lang/String;
    :cond_1
    const/4 v5, 0x0

    goto :goto_1
.end method

.method public static saveCertificateError(Landroid/net/http/AndroidHttpClient;Landroid/content/Context;Ljava/lang/String;ILjava/lang/Exception;)V
    .locals 7
    .parameter "httpClient"
    .parameter "context"
    .parameter "server"
    .parameter "errorCode"
    .parameter "e"

    .prologue
    .line 185
    invoke-virtual {p0}, Landroid/net/http/AndroidHttpClient;->getConnectionManager()Lorg/apache/http/conn/ClientConnectionManager;

    move-result-object v4

    invoke-interface {v4}, Lorg/apache/http/conn/ClientConnectionManager;->getSchemeRegistry()Lorg/apache/http/conn/scheme/SchemeRegistry;

    move-result-object v4

    const-string v5, "https"

    invoke-virtual {v4, v5}, Lorg/apache/http/conn/scheme/SchemeRegistry;->get(Ljava/lang/String;)Lorg/apache/http/conn/scheme/Scheme;

    move-result-object v2

    .line 186
    .local v2, scheme:Lorg/apache/http/conn/scheme/Scheme;
    if-nez v2, :cond_0

    .line 187
    const-string v4, "EAS_HTTP"

    const-string v5, "saveCertificateError(): Error! https scheme is null."

    invoke-static {v4, v5}, Lcom/htc/android/mail/eassvc/util/EASLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 188
    invoke-virtual {p4}, Ljava/lang/Exception;->printStackTrace()V

    .line 223
    :goto_0
    return-void

    .line 190
    :cond_0
    const/4 v3, 0x0

    .line 191
    .local v3, verifier:Lcom/htc/android/mail/eassvc/common/EASHostnameVerifier;
    invoke-virtual {v2}, Lorg/apache/http/conn/scheme/Scheme;->getSocketFactory()Lorg/apache/http/conn/scheme/SocketFactory;

    move-result-object v4

    instance-of v4, v4, Lorg/apache/http/conn/ssl/SSLSocketFactory;

    if-eqz v4, :cond_2

    .line 192
    invoke-virtual {v2}, Lorg/apache/http/conn/scheme/Scheme;->getSocketFactory()Lorg/apache/http/conn/scheme/SocketFactory;

    move-result-object v1

    check-cast v1, Lorg/apache/http/conn/ssl/SSLSocketFactory;

    .line 193
    .local v1, factory:Lorg/apache/http/conn/ssl/SSLSocketFactory;
    invoke-virtual {v1}, Lorg/apache/http/conn/ssl/SSLSocketFactory;->getHostnameVerifier()Lorg/apache/http/conn/ssl/X509HostnameVerifier;

    move-result-object v4

    instance-of v4, v4, Lcom/htc/android/mail/eassvc/common/EASHostnameVerifier;

    if-eqz v4, :cond_1

    .line 194
    invoke-virtual {v1}, Lorg/apache/http/conn/ssl/SSLSocketFactory;->getHostnameVerifier()Lorg/apache/http/conn/ssl/X509HostnameVerifier;

    move-result-object v3

    .end local v3           #verifier:Lcom/htc/android/mail/eassvc/common/EASHostnameVerifier;
    check-cast v3, Lcom/htc/android/mail/eassvc/common/EASHostnameVerifier;

    .line 202
    .end local v1           #factory:Lorg/apache/http/conn/ssl/SSLSocketFactory;
    .restart local v3       #verifier:Lcom/htc/android/mail/eassvc/common/EASHostnameVerifier;
    :cond_1
    :goto_1
    if-nez v3, :cond_3

    .line 203
    const-string v4, "EAS_HTTP"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "saveCertificateError(): Error! cannot get hostnameVerifier,factory="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v2}, Lorg/apache/http/conn/scheme/Scheme;->getSocketFactory()Lorg/apache/http/conn/scheme/SocketFactory;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/htc/android/mail/eassvc/util/EASLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 196
    :cond_2
    invoke-virtual {v2}, Lorg/apache/http/conn/scheme/Scheme;->getSocketFactory()Lorg/apache/http/conn/scheme/SocketFactory;

    move-result-object v4

    instance-of v4, v4, Lcom/htc/android/mail/eassvc/util/SSLSocketFactory;

    if-eqz v4, :cond_1

    .line 197
    invoke-virtual {v2}, Lorg/apache/http/conn/scheme/Scheme;->getSocketFactory()Lorg/apache/http/conn/scheme/SocketFactory;

    move-result-object v1

    check-cast v1, Lcom/htc/android/mail/eassvc/util/SSLSocketFactory;

    .line 198
    .local v1, factory:Lcom/htc/android/mail/eassvc/util/SSLSocketFactory;
    invoke-virtual {v1}, Lcom/htc/android/mail/eassvc/util/SSLSocketFactory;->getHostnameVerifier()Lorg/apache/http/conn/ssl/X509HostnameVerifier;

    move-result-object v4

    instance-of v4, v4, Lcom/htc/android/mail/eassvc/common/EASHostnameVerifier;

    if-eqz v4, :cond_1

    .line 199
    invoke-virtual {v1}, Lcom/htc/android/mail/eassvc/util/SSLSocketFactory;->getHostnameVerifier()Lorg/apache/http/conn/ssl/X509HostnameVerifier;

    move-result-object v3

    .end local v3           #verifier:Lcom/htc/android/mail/eassvc/common/EASHostnameVerifier;
    check-cast v3, Lcom/htc/android/mail/eassvc/common/EASHostnameVerifier;

    .restart local v3       #verifier:Lcom/htc/android/mail/eassvc/common/EASHostnameVerifier;
    goto :goto_1

    .line 206
    .end local v1           #factory:Lcom/htc/android/mail/eassvc/util/SSLSocketFactory;
    :cond_3
    new-instance v0, Lcom/htc/android/mail/eassvc/common/EASCommon$CertificateError;

    invoke-direct {v0}, Lcom/htc/android/mail/eassvc/common/EASCommon$CertificateError;-><init>()V

    .line 207
    .local v0, cerError:Lcom/htc/android/mail/eassvc/common/EASCommon$CertificateError;
    const/16 v4, 0x206

    if-ne p3, v4, :cond_6

    .line 208
    const/16 v4, -0xa

    iput v4, v0, Lcom/htc/android/mail/eassvc/common/EASCommon$CertificateError;->errorCode:I

    .line 216
    :goto_2
    iget-object v4, v3, Lcom/htc/android/mail/eassvc/common/EASHostnameVerifier;->certificate:Ljava/security/cert/X509Certificate;

    iput-object v4, v0, Lcom/htc/android/mail/eassvc/common/EASCommon$CertificateError;->certificate:Ljava/security/cert/X509Certificate;

    .line 217
    iget-object v4, v0, Lcom/htc/android/mail/eassvc/common/EASCommon$CertificateError;->certificate:Ljava/security/cert/X509Certificate;

    if-eqz v4, :cond_4

    iget-object v4, v3, Lcom/htc/android/mail/eassvc/common/EASHostnameVerifier;->host:Ljava/lang/String;

    if-eqz v4, :cond_4

    iget-object v4, v3, Lcom/htc/android/mail/eassvc/common/EASHostnameVerifier;->host:Ljava/lang/String;

    invoke-virtual {v4, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_5

    .line 218
    :cond_4
    invoke-static {p1, p2}, Lcom/htc/android/mail/eassvc/common/HttpClientFactory;->getCertificate(Landroid/content/Context;Ljava/lang/String;)Lcom/htc/android/mail/eassvc/common/EASCommon$CertificateError;

    move-result-object v0

    .line 220
    :cond_5
    invoke-static {v0}, Lcom/htc/android/mail/eassvc/common/HttpClientFactory;->saveCertificateError(Lcom/htc/android/mail/eassvc/common/EASCommon$CertificateError;)V

    goto/16 :goto_0

    .line 209
    :cond_6
    const/16 v4, 0x205

    if-ne p3, v4, :cond_7

    .line 210
    const/16 v4, -0xb

    iput v4, v0, Lcom/htc/android/mail/eassvc/common/EASCommon$CertificateError;->errorCode:I

    goto :goto_2

    .line 211
    :cond_7
    const/16 v4, 0x207

    if-ne p3, v4, :cond_8

    .line 212
    const/16 v4, -0xc

    iput v4, v0, Lcom/htc/android/mail/eassvc/common/EASCommon$CertificateError;->errorCode:I

    goto :goto_2

    .line 214
    :cond_8
    const/16 v4, -0xd

    iput v4, v0, Lcom/htc/android/mail/eassvc/common/EASCommon$CertificateError;->errorCode:I

    goto :goto_2
.end method

.method private static saveCertificateError(Lcom/htc/android/mail/eassvc/common/EASCommon$CertificateError;)V
    .locals 9
    .parameter "cert"

    .prologue
    .line 247
    sget-boolean v6, Lcom/htc/android/mail/eassvc/common/HttpClientFactory;->DEBUG:Z

    if-eqz v6, :cond_0

    const-string v6, "EAS_HTTP"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "saveCertificateError("

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ")"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/htc/android/mail/eassvc/util/EASLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 248
    :cond_0
    sput-object p0, Lcom/htc/android/mail/eassvc/common/HttpClientFactory;->tempCertificate:Lcom/htc/android/mail/eassvc/common/EASCommon$CertificateError;

    .line 249
    const/4 v2, 0x0

    .line 250
    .local v2, fos:Ljava/io/FileOutputStream;
    const/4 v4, 0x0

    .line 252
    .local v4, oos:Ljava/io/ObjectOutputStream;
    :try_start_0
    const-string v7, "/data/data/com.htc.android.mail/CerError"

    monitor-enter v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Error; {:try_start_0 .. :try_end_0} :catch_2

    .line 253
    :try_start_1
    new-instance v0, Ljava/io/File;

    const-string v6, "/data/data/com.htc.android.mail/CerError"

    invoke-direct {v0, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 254
    .local v0, cerError:Ljava/io/File;
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 255
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 257
    :cond_1
    new-instance v3, Ljava/io/FileOutputStream;

    const-string v6, "/data/data/com.htc.android.mail/CerError"

    invoke-direct {v3, v6}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 258
    .end local v2           #fos:Ljava/io/FileOutputStream;
    .local v3, fos:Ljava/io/FileOutputStream;
    :try_start_2
    new-instance v5, Ljava/io/ObjectOutputStream;

    invoke-direct {v5, v3}, Ljava/io/ObjectOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 259
    .end local v4           #oos:Ljava/io/ObjectOutputStream;
    .local v5, oos:Ljava/io/ObjectOutputStream;
    :try_start_3
    invoke-virtual {v5, p0}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    .line 261
    monitor-exit v7
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    .line 267
    if-eqz v5, :cond_2

    .line 269
    :try_start_4
    invoke-virtual {v5}, Ljava/io/ObjectOutputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_8

    .line 274
    :cond_2
    :goto_0
    if-eqz v3, :cond_3

    .line 276
    :try_start_5
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_9

    :cond_3
    :goto_1
    move-object v4, v5

    .end local v5           #oos:Ljava/io/ObjectOutputStream;
    .restart local v4       #oos:Ljava/io/ObjectOutputStream;
    move-object v2, v3

    .line 282
    .end local v0           #cerError:Ljava/io/File;
    .end local v3           #fos:Ljava/io/FileOutputStream;
    .restart local v2       #fos:Ljava/io/FileOutputStream;
    :cond_4
    :goto_2
    return-void

    .line 261
    :catchall_0
    move-exception v6

    :goto_3
    :try_start_6
    monitor-exit v7
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    :try_start_7
    throw v6
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_0
    .catch Ljava/lang/Error; {:try_start_7 .. :try_end_7} :catch_2

    .line 262
    :catch_0
    move-exception v1

    .line 263
    .local v1, e:Ljava/lang/Exception;
    :try_start_8
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    .line 267
    if-eqz v4, :cond_5

    .line 269
    :try_start_9
    invoke-virtual {v4}, Ljava/io/ObjectOutputStream;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_6

    .line 274
    .end local v1           #e:Ljava/lang/Exception;
    :cond_5
    :goto_4
    if-eqz v2, :cond_4

    .line 276
    :try_start_a
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_1

    goto :goto_2

    .line 277
    :catch_1
    move-exception v1

    .line 278
    .local v1, e:Ljava/io/IOException;
    :goto_5
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_2

    .line 264
    .end local v1           #e:Ljava/io/IOException;
    :catch_2
    move-exception v1

    .line 265
    .local v1, e:Ljava/lang/Error;
    :try_start_b
    invoke-virtual {v1}, Ljava/lang/Error;->printStackTrace()V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_1

    .line 267
    if-eqz v4, :cond_6

    .line 269
    :try_start_c
    invoke-virtual {v4}, Ljava/io/ObjectOutputStream;->close()V
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_7

    .line 274
    .end local v1           #e:Ljava/lang/Error;
    :cond_6
    :goto_6
    if-eqz v2, :cond_4

    .line 276
    :try_start_d
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_d
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_d} :catch_3

    goto :goto_2

    .line 277
    :catch_3
    move-exception v1

    goto :goto_5

    .line 267
    :catchall_1
    move-exception v6

    if-eqz v4, :cond_7

    .line 269
    :try_start_e
    invoke-virtual {v4}, Ljava/io/ObjectOutputStream;->close()V
    :try_end_e
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_e} :catch_4

    .line 274
    :cond_7
    :goto_7
    if-eqz v2, :cond_8

    .line 276
    :try_start_f
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_f
    .catch Ljava/io/IOException; {:try_start_f .. :try_end_f} :catch_5

    .line 267
    :cond_8
    :goto_8
    throw v6

    .line 270
    :catch_4
    move-exception v1

    .line 271
    .local v1, e:Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_7

    .line 277
    .end local v1           #e:Ljava/io/IOException;
    :catch_5
    move-exception v1

    .line 278
    .restart local v1       #e:Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_8

    .line 270
    .local v1, e:Ljava/lang/Exception;
    :catch_6
    move-exception v1

    .line 271
    .local v1, e:Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_4

    .line 270
    .local v1, e:Ljava/lang/Error;
    :catch_7
    move-exception v1

    .line 271
    .local v1, e:Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_6

    .line 270
    .end local v1           #e:Ljava/io/IOException;
    .end local v2           #fos:Ljava/io/FileOutputStream;
    .end local v4           #oos:Ljava/io/ObjectOutputStream;
    .restart local v0       #cerError:Ljava/io/File;
    .restart local v3       #fos:Ljava/io/FileOutputStream;
    .restart local v5       #oos:Ljava/io/ObjectOutputStream;
    :catch_8
    move-exception v1

    .line 271
    .restart local v1       #e:Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    .line 277
    .end local v1           #e:Ljava/io/IOException;
    :catch_9
    move-exception v1

    .line 278
    .restart local v1       #e:Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1

    .line 261
    .end local v1           #e:Ljava/io/IOException;
    .end local v5           #oos:Ljava/io/ObjectOutputStream;
    .restart local v4       #oos:Ljava/io/ObjectOutputStream;
    :catchall_2
    move-exception v6

    move-object v2, v3

    .end local v3           #fos:Ljava/io/FileOutputStream;
    .restart local v2       #fos:Ljava/io/FileOutputStream;
    goto :goto_3

    .end local v2           #fos:Ljava/io/FileOutputStream;
    .end local v4           #oos:Ljava/io/ObjectOutputStream;
    .restart local v3       #fos:Ljava/io/FileOutputStream;
    .restart local v5       #oos:Ljava/io/ObjectOutputStream;
    :catchall_3
    move-exception v6

    move-object v4, v5

    .end local v5           #oos:Ljava/io/ObjectOutputStream;
    .restart local v4       #oos:Ljava/io/ObjectOutputStream;
    move-object v2, v3

    .end local v3           #fos:Ljava/io/FileOutputStream;
    .restart local v2       #fos:Ljava/io/FileOutputStream;
    goto :goto_3
.end method

.method public static setPassAllCertificate(Landroid/content/Context;JLjava/lang/String;)V
    .locals 6
    .parameter "context"
    .parameter "accountId"
    .parameter "emailAddr"

    .prologue
    .line 155
    const-string v5, "eas_pass_certificate"

    monitor-enter v5

    .line 156
    :try_start_0
    invoke-static {p0, p1, p2}, Lcom/htc/android/mail/eassvc/common/HttpClientFactory;->getPassAllCertificatePath(Landroid/content/Context;J)Ljava/io/File;

    move-result-object v3

    .line 157
    .local v3, passCertFile:Ljava/io/File;
    if-nez p3, :cond_1

    .line 158
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 159
    invoke-virtual {v3}, Ljava/io/File;->delete()Z

    .line 181
    :cond_0
    :goto_0
    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 182
    return-void

    .line 162
    :cond_1
    const/4 v1, 0x0

    .line 164
    .local v1, fos:Ljava/io/FileOutputStream;
    :try_start_1
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v4

    if-nez v4, :cond_2

    .line 165
    invoke-virtual {v3}, Ljava/io/File;->createNewFile()Z

    .line 167
    :cond_2
    new-instance v2, Ljava/io/FileOutputStream;

    invoke-direct {v2, v3}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 168
    .end local v1           #fos:Ljava/io/FileOutputStream;
    .local v2, fos:Ljava/io/FileOutputStream;
    :try_start_2
    invoke-virtual {p3}, Ljava/lang/String;->getBytes()[B

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/io/FileOutputStream;->write([B)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_4

    .line 172
    if-eqz v2, :cond_0

    .line 174
    :try_start_3
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_0

    .line 175
    :catch_0
    move-exception v0

    .line 176
    .local v0, e:Ljava/io/IOException;
    :try_start_4
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    .line 181
    .end local v0           #e:Ljava/io/IOException;
    .end local v2           #fos:Ljava/io/FileOutputStream;
    .end local v3           #passCertFile:Ljava/io/File;
    :catchall_0
    move-exception v4

    monitor-exit v5
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw v4

    .line 169
    .restart local v1       #fos:Ljava/io/FileOutputStream;
    .restart local v3       #passCertFile:Ljava/io/File;
    :catch_1
    move-exception v0

    .line 170
    .local v0, e:Ljava/lang/Exception;
    :goto_1
    :try_start_5
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 172
    if-eqz v1, :cond_0

    .line 174
    :try_start_6
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_2

    goto :goto_0

    .line 175
    :catch_2
    move-exception v0

    .line 176
    .local v0, e:Ljava/io/IOException;
    :try_start_7
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    goto :goto_0

    .line 172
    .end local v0           #e:Ljava/io/IOException;
    :catchall_1
    move-exception v4

    :goto_2
    if-eqz v1, :cond_3

    .line 174
    :try_start_8
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_3

    .line 172
    :cond_3
    :goto_3
    :try_start_9
    throw v4

    .line 175
    :catch_3
    move-exception v0

    .line 176
    .restart local v0       #e:Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    goto :goto_3

    .line 172
    .end local v0           #e:Ljava/io/IOException;
    .end local v1           #fos:Ljava/io/FileOutputStream;
    .restart local v2       #fos:Ljava/io/FileOutputStream;
    :catchall_2
    move-exception v4

    move-object v1, v2

    .end local v2           #fos:Ljava/io/FileOutputStream;
    .restart local v1       #fos:Ljava/io/FileOutputStream;
    goto :goto_2

    .line 169
    .end local v1           #fos:Ljava/io/FileOutputStream;
    .restart local v2       #fos:Ljava/io/FileOutputStream;
    :catch_4
    move-exception v0

    move-object v1, v2

    .end local v2           #fos:Ljava/io/FileOutputStream;
    .restart local v1       #fos:Ljava/io/FileOutputStream;
    goto :goto_1
.end method

.method public static setUseProxy(Landroid/content/Context;JZ)V
    .locals 5
    .parameter "context"
    .parameter "accountId"
    .parameter "useProxy"

    .prologue
    .line 327
    const-string v4, "eas_use_proxy"

    monitor-enter v4

    .line 328
    :try_start_0
    invoke-static {p0, p1, p2}, Lcom/htc/android/mail/eassvc/util/AccountUtil;->getAccountConfigPath(Landroid/content/Context;J)Ljava/io/File;

    move-result-object v0

    .line 329
    .local v0, dataFilePath:Ljava/io/File;
    new-instance v2, Ljava/io/File;

    const-string v3, "eas_use_proxy"

    invoke-direct {v2, v0, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 330
    .local v2, proxyFile:Ljava/io/File;
    if-eqz p3, :cond_1

    .line 331
    invoke-virtual {v2}, Ljava/io/File;->exists()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v3

    if-nez v3, :cond_0

    .line 333
    :try_start_1
    invoke-virtual {v2}, Ljava/io/File;->createNewFile()Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 343
    :cond_0
    :goto_0
    :try_start_2
    monitor-exit v4

    .line 344
    return-void

    .line 334
    :catch_0
    move-exception v1

    .line 335
    .local v1, e:Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    .line 343
    .end local v0           #dataFilePath:Ljava/io/File;
    .end local v1           #e:Ljava/io/IOException;
    .end local v2           #proxyFile:Ljava/io/File;
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v3

    .line 339
    .restart local v0       #dataFilePath:Ljava/io/File;
    .restart local v2       #proxyFile:Ljava/io/File;
    :cond_1
    :try_start_3
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 340
    invoke-virtual {v2}, Ljava/io/File;->delete()Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0
.end method

.method public static setUseProxy(Landroid/content/Context;Z)V
    .locals 5
    .parameter "context"
    .parameter "useProxy"

    .prologue
    .line 287
    invoke-static {p0}, Lcom/htc/android/mail/eassvc/common/HttpClientFactory;->proxyInBlockList(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 288
    const-string v2, "EAS_HTTP"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "setUseProxy(): do not use this proxy "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {p0}, Landroid/net/Proxy;->getHost(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/android/mail/eassvc/util/EASLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 307
    :goto_0
    return-void

    .line 291
    :cond_0
    const-string v3, "eas_use_proxy"

    monitor-enter v3

    .line 292
    :try_start_0
    new-instance v1, Ljava/io/File;

    const-string v2, "/data/data/com.htc.android.mail/app_config/eas_use_proxy_global"

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 293
    .local v1, proxyFile:Ljava/io/File;
    if-eqz p1, :cond_2

    .line 294
    invoke-virtual {v1}, Ljava/io/File;->exists()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    if-nez v2, :cond_1

    .line 296
    :try_start_1
    invoke-virtual {v1}, Ljava/io/File;->createNewFile()Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 306
    :cond_1
    :goto_1
    :try_start_2
    monitor-exit v3

    goto :goto_0

    .end local v1           #proxyFile:Ljava/io/File;
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v2

    .line 297
    .restart local v1       #proxyFile:Ljava/io/File;
    :catch_0
    move-exception v0

    .line 298
    .local v0, e:Ljava/io/IOException;
    :try_start_3
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1

    .line 302
    .end local v0           #e:Ljava/io/IOException;
    :cond_2
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 303
    invoke-virtual {v1}, Ljava/io/File;->delete()Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1
.end method
