.class public Lcom/htc/android/mail/eassvc/util/SSLSocketFactory;
.super Ljava/lang/Object;
.source "SSLSocketFactory.java"

# interfaces
.implements Lorg/apache/http/conn/scheme/LayeredSocketFactory;


# static fields
.field public static final ALLOW_ALL_HOSTNAME_VERIFIER:Lorg/apache/http/conn/ssl/X509HostnameVerifier; = null

.field public static final BROWSER_COMPATIBLE_HOSTNAME_VERIFIER:Lorg/apache/http/conn/ssl/X509HostnameVerifier; = null

.field private static final DEFAULT_FACTORY:Lcom/htc/android/mail/eassvc/util/SSLSocketFactory; = null

.field public static final SSL:Ljava/lang/String; = "SSL"

.field public static final SSLV2:Ljava/lang/String; = "SSLv2"

.field public static final STRICT_HOSTNAME_VERIFIER:Lorg/apache/http/conn/ssl/X509HostnameVerifier; = null

.field public static final TLS:Ljava/lang/String; = "TLS"


# instance fields
.field private hostnameVerifier:Lorg/apache/http/conn/ssl/X509HostnameVerifier;

.field private final nameResolver:Lorg/apache/http/conn/scheme/HostNameResolver;

.field private final socketfactory:Ljavax/net/ssl/SSLSocketFactory;

.field private final sslcontext:Ljavax/net/ssl/SSLContext;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 153
    new-instance v0, Lcom/htc/android/mail/eassvc/common/EASHostnameVerifier;

    invoke-direct {v0}, Lcom/htc/android/mail/eassvc/common/EASHostnameVerifier;-><init>()V

    sput-object v0, Lcom/htc/android/mail/eassvc/util/SSLSocketFactory;->ALLOW_ALL_HOSTNAME_VERIFIER:Lorg/apache/http/conn/ssl/X509HostnameVerifier;

    .line 156
    new-instance v0, Lorg/apache/http/conn/ssl/BrowserCompatHostnameVerifier;

    invoke-direct {v0}, Lorg/apache/http/conn/ssl/BrowserCompatHostnameVerifier;-><init>()V

    sput-object v0, Lcom/htc/android/mail/eassvc/util/SSLSocketFactory;->BROWSER_COMPATIBLE_HOSTNAME_VERIFIER:Lorg/apache/http/conn/ssl/X509HostnameVerifier;

    .line 159
    new-instance v0, Lorg/apache/http/conn/ssl/StrictHostnameVerifier;

    invoke-direct {v0}, Lorg/apache/http/conn/ssl/StrictHostnameVerifier;-><init>()V

    sput-object v0, Lcom/htc/android/mail/eassvc/util/SSLSocketFactory;->STRICT_HOSTNAME_VERIFIER:Lorg/apache/http/conn/ssl/X509HostnameVerifier;

    .line 164
    new-instance v0, Lcom/htc/android/mail/eassvc/util/SSLSocketFactory;

    invoke-direct {v0}, Lcom/htc/android/mail/eassvc/util/SSLSocketFactory;-><init>()V

    sput-object v0, Lcom/htc/android/mail/eassvc/util/SSLSocketFactory;->DEFAULT_FACTORY:Lcom/htc/android/mail/eassvc/util/SSLSocketFactory;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 244
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 177
    sget-object v0, Lcom/htc/android/mail/eassvc/util/SSLSocketFactory;->BROWSER_COMPATIBLE_HOSTNAME_VERIFIER:Lorg/apache/http/conn/ssl/X509HostnameVerifier;

    iput-object v0, p0, Lcom/htc/android/mail/eassvc/util/SSLSocketFactory;->hostnameVerifier:Lorg/apache/http/conn/ssl/X509HostnameVerifier;

    .line 245
    iput-object v1, p0, Lcom/htc/android/mail/eassvc/util/SSLSocketFactory;->sslcontext:Ljavax/net/ssl/SSLContext;

    .line 246
    invoke-static {}, Ljavax/net/ssl/HttpsURLConnection;->getDefaultSSLSocketFactory()Ljavax/net/ssl/SSLSocketFactory;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/android/mail/eassvc/util/SSLSocketFactory;->socketfactory:Ljavax/net/ssl/SSLSocketFactory;

    .line 247
    iput-object v1, p0, Lcom/htc/android/mail/eassvc/util/SSLSocketFactory;->nameResolver:Lorg/apache/http/conn/scheme/HostNameResolver;

    .line 248
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/security/KeyStore;Ljava/lang/String;Ljava/security/KeyStore;Ljava/security/SecureRandom;Lorg/apache/http/conn/scheme/HostNameResolver;)V
    .locals 3
    .parameter "algorithm"
    .parameter "keystore"
    .parameter "keystorePassword"
    .parameter "truststore"
    .parameter "random"
    .parameter "nameResolver"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;,
            Ljava/security/KeyManagementException;,
            Ljava/security/KeyStoreException;,
            Ljava/security/UnrecoverableKeyException;
        }
    .end annotation

    .prologue
    .line 188
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 177
    sget-object v2, Lcom/htc/android/mail/eassvc/util/SSLSocketFactory;->BROWSER_COMPATIBLE_HOSTNAME_VERIFIER:Lorg/apache/http/conn/ssl/X509HostnameVerifier;

    iput-object v2, p0, Lcom/htc/android/mail/eassvc/util/SSLSocketFactory;->hostnameVerifier:Lorg/apache/http/conn/ssl/X509HostnameVerifier;

    .line 189
    if-nez p1, :cond_0

    .line 190
    const-string p1, "TLS"

    .line 192
    :cond_0
    const/4 v0, 0x0

    .line 193
    .local v0, keymanagers:[Ljavax/net/ssl/KeyManager;
    if-eqz p2, :cond_1

    .line 194
    invoke-static {p2, p3}, Lcom/htc/android/mail/eassvc/util/SSLSocketFactory;->createKeyManagers(Ljava/security/KeyStore;Ljava/lang/String;)[Ljavax/net/ssl/KeyManager;

    move-result-object v0

    .line 196
    :cond_1
    const/4 v1, 0x0

    .line 197
    .local v1, trustmanagers:[Ljavax/net/ssl/TrustManager;
    if-eqz p4, :cond_2

    .line 198
    invoke-static {p4}, Lcom/htc/android/mail/eassvc/util/SSLSocketFactory;->createTrustManagers(Ljava/security/KeyStore;)[Ljavax/net/ssl/TrustManager;

    move-result-object v1

    .line 200
    :cond_2
    invoke-static {p1}, Ljavax/net/ssl/SSLContext;->getInstance(Ljava/lang/String;)Ljavax/net/ssl/SSLContext;

    move-result-object v2

    iput-object v2, p0, Lcom/htc/android/mail/eassvc/util/SSLSocketFactory;->sslcontext:Ljavax/net/ssl/SSLContext;

    .line 201
    iget-object v2, p0, Lcom/htc/android/mail/eassvc/util/SSLSocketFactory;->sslcontext:Ljavax/net/ssl/SSLContext;

    invoke-virtual {v2, v0, v1, p5}, Ljavax/net/ssl/SSLContext;->init([Ljavax/net/ssl/KeyManager;[Ljavax/net/ssl/TrustManager;Ljava/security/SecureRandom;)V

    .line 202
    iget-object v2, p0, Lcom/htc/android/mail/eassvc/util/SSLSocketFactory;->sslcontext:Ljavax/net/ssl/SSLContext;

    invoke-virtual {v2}, Ljavax/net/ssl/SSLContext;->getSocketFactory()Ljavax/net/ssl/SSLSocketFactory;

    move-result-object v2

    iput-object v2, p0, Lcom/htc/android/mail/eassvc/util/SSLSocketFactory;->socketfactory:Ljavax/net/ssl/SSLSocketFactory;

    .line 203
    iput-object p6, p0, Lcom/htc/android/mail/eassvc/util/SSLSocketFactory;->nameResolver:Lorg/apache/http/conn/scheme/HostNameResolver;

    .line 204
    return-void
.end method

.method public constructor <init>(Ljava/security/KeyStore;)V
    .locals 7
    .parameter "truststore"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;,
            Ljava/security/KeyManagementException;,
            Ljava/security/KeyStoreException;,
            Ljava/security/UnrecoverableKeyException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 224
    const-string v1, "TLS"

    move-object v0, p0

    move-object v3, v2

    move-object v4, p1

    move-object v5, v2

    move-object v6, v2

    invoke-direct/range {v0 .. v6}, Lcom/htc/android/mail/eassvc/util/SSLSocketFactory;-><init>(Ljava/lang/String;Ljava/security/KeyStore;Ljava/lang/String;Ljava/security/KeyStore;Ljava/security/SecureRandom;Lorg/apache/http/conn/scheme/HostNameResolver;)V

    .line 225
    return-void
.end method

.method public constructor <init>(Ljava/security/KeyStore;Ljava/lang/String;)V
    .locals 7
    .parameter "keystore"
    .parameter "keystorePassword"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;,
            Ljava/security/KeyManagementException;,
            Ljava/security/KeyStoreException;,
            Ljava/security/UnrecoverableKeyException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 218
    const-string v1, "TLS"

    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    move-object v5, v4

    move-object v6, v4

    invoke-direct/range {v0 .. v6}, Lcom/htc/android/mail/eassvc/util/SSLSocketFactory;-><init>(Ljava/lang/String;Ljava/security/KeyStore;Ljava/lang/String;Ljava/security/KeyStore;Ljava/security/SecureRandom;Lorg/apache/http/conn/scheme/HostNameResolver;)V

    .line 219
    return-void
.end method

.method public constructor <init>(Ljava/security/KeyStore;Ljava/lang/String;Ljava/security/KeyStore;)V
    .locals 7
    .parameter "keystore"
    .parameter "keystorePassword"
    .parameter "truststore"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;,
            Ljava/security/KeyManagementException;,
            Ljava/security/KeyStoreException;,
            Ljava/security/UnrecoverableKeyException;
        }
    .end annotation

    .prologue
    const/4 v5, 0x0

    .line 212
    const-string v1, "TLS"

    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v6, v5

    invoke-direct/range {v0 .. v6}, Lcom/htc/android/mail/eassvc/util/SSLSocketFactory;-><init>(Ljava/lang/String;Ljava/security/KeyStore;Ljava/lang/String;Ljava/security/KeyStore;Ljava/security/SecureRandom;Lorg/apache/http/conn/scheme/HostNameResolver;)V

    .line 213
    return-void
.end method

.method public constructor <init>(Ljavax/net/ssl/SSLSocketFactory;)V
    .locals 2
    .parameter "socketfactory"

    .prologue
    const/4 v1, 0x0

    .line 232
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 177
    sget-object v0, Lcom/htc/android/mail/eassvc/util/SSLSocketFactory;->BROWSER_COMPATIBLE_HOSTNAME_VERIFIER:Lorg/apache/http/conn/ssl/X509HostnameVerifier;

    iput-object v0, p0, Lcom/htc/android/mail/eassvc/util/SSLSocketFactory;->hostnameVerifier:Lorg/apache/http/conn/ssl/X509HostnameVerifier;

    .line 233
    iput-object v1, p0, Lcom/htc/android/mail/eassvc/util/SSLSocketFactory;->sslcontext:Ljavax/net/ssl/SSLContext;

    .line 234
    iput-object p1, p0, Lcom/htc/android/mail/eassvc/util/SSLSocketFactory;->socketfactory:Ljavax/net/ssl/SSLSocketFactory;

    .line 235
    iput-object v1, p0, Lcom/htc/android/mail/eassvc/util/SSLSocketFactory;->nameResolver:Lorg/apache/http/conn/scheme/HostNameResolver;

    .line 236
    return-void
.end method

.method private static createKeyManagers(Ljava/security/KeyStore;Ljava/lang/String;)[Ljavax/net/ssl/KeyManager;
    .locals 3
    .parameter "keystore"
    .parameter "password"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/KeyStoreException;,
            Ljava/security/NoSuchAlgorithmException;,
            Ljava/security/UnrecoverableKeyException;
        }
    .end annotation

    .prologue
    .line 252
    if-nez p0, :cond_0

    .line 253
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Keystore may not be null"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 255
    :cond_0
    invoke-static {}, Ljavax/net/ssl/KeyManagerFactory;->getDefaultAlgorithm()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljavax/net/ssl/KeyManagerFactory;->getInstance(Ljava/lang/String;)Ljavax/net/ssl/KeyManagerFactory;

    move-result-object v0

    .line 257
    .local v0, kmfactory:Ljavax/net/ssl/KeyManagerFactory;
    if-eqz p1, :cond_1

    invoke-virtual {p1}, Ljava/lang/String;->toCharArray()[C

    move-result-object v1

    :goto_0
    invoke-virtual {v0, p0, v1}, Ljavax/net/ssl/KeyManagerFactory;->init(Ljava/security/KeyStore;[C)V

    .line 258
    invoke-virtual {v0}, Ljavax/net/ssl/KeyManagerFactory;->getKeyManagers()[Ljavax/net/ssl/KeyManager;

    move-result-object v1

    return-object v1

    .line 257
    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private static createTrustManagers(Ljava/security/KeyStore;)[Ljavax/net/ssl/TrustManager;
    .locals 3
    .parameter "keystore"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/KeyStoreException;,
            Ljava/security/NoSuchAlgorithmException;
        }
    .end annotation

    .prologue
    .line 263
    if-nez p0, :cond_0

    .line 264
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Keystore may not be null"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 266
    :cond_0
    invoke-static {}, Ljavax/net/ssl/TrustManagerFactory;->getDefaultAlgorithm()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljavax/net/ssl/TrustManagerFactory;->getInstance(Ljava/lang/String;)Ljavax/net/ssl/TrustManagerFactory;

    move-result-object v0

    .line 268
    .local v0, tmfactory:Ljavax/net/ssl/TrustManagerFactory;
    invoke-virtual {v0, p0}, Ljavax/net/ssl/TrustManagerFactory;->init(Ljava/security/KeyStore;)V

    .line 269
    invoke-virtual {v0}, Ljavax/net/ssl/TrustManagerFactory;->getTrustManagers()[Ljavax/net/ssl/TrustManager;

    move-result-object v1

    return-object v1
.end method

.method public static getSocketFactory()Lcom/htc/android/mail/eassvc/util/SSLSocketFactory;
    .locals 1

    .prologue
    .line 171
    sget-object v0, Lcom/htc/android/mail/eassvc/util/SSLSocketFactory;->DEFAULT_FACTORY:Lcom/htc/android/mail/eassvc/util/SSLSocketFactory;

    return-object v0
.end method


# virtual methods
.method public connectSocket(Ljava/net/Socket;Ljava/lang/String;ILjava/net/InetAddress;ILorg/apache/http/params/HttpParams;)Ljava/net/Socket;
    .locals 8
    .parameter "sock"
    .parameter "host"
    .parameter "port"
    .parameter "localAddress"
    .parameter "localPort"
    .parameter "params"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 292
    if-nez p2, :cond_0

    .line 293
    new-instance v6, Ljava/lang/IllegalArgumentException;

    const-string v7, "Target host may not be null."

    invoke-direct {v6, v7}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 295
    :cond_0
    if-nez p6, :cond_1

    .line 296
    new-instance v6, Ljava/lang/IllegalArgumentException;

    const-string v7, "Parameters may not be null."

    invoke-direct {v6, v7}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 299
    :cond_1
    if-eqz p1, :cond_5

    move-object v5, p1

    :goto_0
    check-cast v5, Ljavax/net/ssl/SSLSocket;

    .line 302
    .local v5, sslsock:Ljavax/net/ssl/SSLSocket;
    if-nez p4, :cond_2

    if-lez p5, :cond_4

    .line 305
    :cond_2
    if-gez p5, :cond_3

    .line 306
    const/4 p5, 0x0

    .line 308
    :cond_3
    new-instance v2, Ljava/net/InetSocketAddress;

    invoke-direct {v2, p4, p5}, Ljava/net/InetSocketAddress;-><init>(Ljava/net/InetAddress;I)V

    .line 310
    .local v2, isa:Ljava/net/InetSocketAddress;
    invoke-virtual {v5, v2}, Ljavax/net/ssl/SSLSocket;->bind(Ljava/net/SocketAddress;)V

    .line 313
    .end local v2           #isa:Ljava/net/InetSocketAddress;
    :cond_4
    invoke-static {p6}, Lorg/apache/http/params/HttpConnectionParams;->getConnectionTimeout(Lorg/apache/http/params/HttpParams;)I

    move-result v0

    .line 314
    .local v0, connTimeout:I
    invoke-static {p6}, Lorg/apache/http/params/HttpConnectionParams;->getSoTimeout(Lorg/apache/http/params/HttpParams;)I

    move-result v4

    .line 317
    .local v4, soTimeout:I
    iget-object v6, p0, Lcom/htc/android/mail/eassvc/util/SSLSocketFactory;->nameResolver:Lorg/apache/http/conn/scheme/HostNameResolver;

    if-eqz v6, :cond_6

    .line 318
    new-instance v3, Ljava/net/InetSocketAddress;

    iget-object v6, p0, Lcom/htc/android/mail/eassvc/util/SSLSocketFactory;->nameResolver:Lorg/apache/http/conn/scheme/HostNameResolver;

    invoke-interface {v6, p2}, Lorg/apache/http/conn/scheme/HostNameResolver;->resolve(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v6

    invoke-direct {v3, v6, p3}, Ljava/net/InetSocketAddress;-><init>(Ljava/net/InetAddress;I)V

    .line 323
    .local v3, remoteAddress:Ljava/net/InetSocketAddress;
    :goto_1
    invoke-virtual {v5, v3, v0}, Ljavax/net/ssl/SSLSocket;->connect(Ljava/net/SocketAddress;I)V

    .line 325
    invoke-virtual {v5, v4}, Ljavax/net/ssl/SSLSocket;->setSoTimeout(I)V

    .line 327
    :try_start_0
    iget-object v6, p0, Lcom/htc/android/mail/eassvc/util/SSLSocketFactory;->hostnameVerifier:Lorg/apache/http/conn/ssl/X509HostnameVerifier;

    invoke-interface {v6, p2, v5}, Lorg/apache/http/conn/ssl/X509HostnameVerifier;->verify(Ljava/lang/String;Ljavax/net/ssl/SSLSocket;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 335
    return-object v5

    .line 299
    .end local v0           #connTimeout:I
    .end local v3           #remoteAddress:Ljava/net/InetSocketAddress;
    .end local v4           #soTimeout:I
    .end local v5           #sslsock:Ljavax/net/ssl/SSLSocket;
    :cond_5
    invoke-virtual {p0}, Lcom/htc/android/mail/eassvc/util/SSLSocketFactory;->createSocket()Ljava/net/Socket;

    move-result-object v5

    goto :goto_0

    .line 320
    .restart local v0       #connTimeout:I
    .restart local v4       #soTimeout:I
    .restart local v5       #sslsock:Ljavax/net/ssl/SSLSocket;
    :cond_6
    new-instance v3, Ljava/net/InetSocketAddress;

    invoke-direct {v3, p2, p3}, Ljava/net/InetSocketAddress;-><init>(Ljava/lang/String;I)V

    .restart local v3       #remoteAddress:Ljava/net/InetSocketAddress;
    goto :goto_1

    .line 329
    :catch_0
    move-exception v1

    .line 331
    .local v1, iox:Ljava/io/IOException;
    :try_start_1
    invoke-virtual {v5}, Ljavax/net/ssl/SSLSocket;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 332
    :goto_2
    throw v1

    .line 331
    :catch_1
    move-exception v6

    goto :goto_2
.end method

.method public createSocket()Ljava/net/Socket;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 278
    iget-object v0, p0, Lcom/htc/android/mail/eassvc/util/SSLSocketFactory;->socketfactory:Ljavax/net/ssl/SSLSocketFactory;

    invoke-virtual {v0}, Ljavax/net/ssl/SSLSocketFactory;->createSocket()Ljava/net/Socket;

    move-result-object v0

    check-cast v0, Ljavax/net/ssl/SSLSocket;

    return-object v0
.end method

.method public createSocket(Ljava/net/Socket;Ljava/lang/String;IZ)Ljava/net/Socket;
    .locals 2
    .parameter "socket"
    .parameter "host"
    .parameter "port"
    .parameter "autoClose"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/net/UnknownHostException;
        }
    .end annotation

    .prologue
    .line 381
    iget-object v1, p0, Lcom/htc/android/mail/eassvc/util/SSLSocketFactory;->socketfactory:Ljavax/net/ssl/SSLSocketFactory;

    invoke-virtual {v1, p1, p2, p3, p4}, Ljavax/net/ssl/SSLSocketFactory;->createSocket(Ljava/net/Socket;Ljava/lang/String;IZ)Ljava/net/Socket;

    move-result-object v0

    check-cast v0, Ljavax/net/ssl/SSLSocket;

    .line 387
    .local v0, sslSocket:Ljavax/net/ssl/SSLSocket;
    iget-object v1, p0, Lcom/htc/android/mail/eassvc/util/SSLSocketFactory;->hostnameVerifier:Lorg/apache/http/conn/ssl/X509HostnameVerifier;

    invoke-interface {v1, p2, v0}, Lorg/apache/http/conn/ssl/X509HostnameVerifier;->verify(Ljava/lang/String;Ljavax/net/ssl/SSLSocket;)V

    .line 389
    return-object v0
.end method

.method public getHostnameVerifier()Lorg/apache/http/conn/ssl/X509HostnameVerifier;
    .locals 1

    .prologue
    .line 400
    iget-object v0, p0, Lcom/htc/android/mail/eassvc/util/SSLSocketFactory;->hostnameVerifier:Lorg/apache/http/conn/ssl/X509HostnameVerifier;

    return-object v0
.end method

.method public isSecure(Ljava/net/Socket;)Z
    .locals 2
    .parameter "sock"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    .line 356
    if-nez p1, :cond_0

    .line 357
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Socket may not be null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 360
    :cond_0
    instance-of v0, p1, Ljavax/net/ssl/SSLSocket;

    if-nez v0, :cond_1

    .line 361
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Socket not created by this factory."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 365
    :cond_1
    invoke-virtual {p1}, Ljava/net/Socket;->isClosed()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 366
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Socket is closed."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 369
    :cond_2
    const/4 v0, 0x1

    return v0
.end method

.method public setHostnameVerifier(Lorg/apache/http/conn/ssl/X509HostnameVerifier;)V
    .locals 2
    .parameter "hostnameVerifier"

    .prologue
    .line 393
    if-nez p1, :cond_0

    .line 394
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Hostname verifier may not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 396
    :cond_0
    iput-object p1, p0, Lcom/htc/android/mail/eassvc/util/SSLSocketFactory;->hostnameVerifier:Lorg/apache/http/conn/ssl/X509HostnameVerifier;

    .line 397
    return-void
.end method
