.class public Lcom/htc/android/mail/easdp/util/SSLSocketFactory;
.super Ljava/lang/Object;
.source "SSLSocketFactory.java"

# interfaces
.implements Lorg/apache/http/conn/scheme/LayeredSocketFactory;


# static fields
.field public static final ALLOW_ALL_HOSTNAME_VERIFIER:Lorg/apache/http/conn/ssl/X509HostnameVerifier; = null

.field public static final BROWSER_COMPATIBLE_HOSTNAME_VERIFIER:Lorg/apache/http/conn/ssl/X509HostnameVerifier; = null

.field private static final DEFAULT_FACTORY:Lcom/htc/android/mail/easdp/util/SSLSocketFactory; = null

.field public static final SSL:Ljava/lang/String; = "SSL"

.field public static final SSLV2:Ljava/lang/String; = "SSLv2"

.field public static final STRICT_HOSTNAME_VERIFIER:Lorg/apache/http/conn/ssl/X509HostnameVerifier; = null

.field public static final TLS:Ljava/lang/String; = "TLS"


# instance fields
.field private hostnameVerifier:Lorg/apache/http/conn/ssl/X509HostnameVerifier;

.field private mConnCallback:Lcom/htc/android/mail/easdp/util/ConnectCallback;

.field private final nameResolver:Lorg/apache/http/conn/scheme/HostNameResolver;

.field private final socketfactory:Ljavax/net/ssl/SSLSocketFactory;

.field private final sslcontext:Ljavax/net/ssl/SSLContext;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 70
    new-instance v0, Lorg/apache/http/conn/ssl/AllowAllHostnameVerifier;

    invoke-direct {v0}, Lorg/apache/http/conn/ssl/AllowAllHostnameVerifier;-><init>()V

    sput-object v0, Lcom/htc/android/mail/easdp/util/SSLSocketFactory;->ALLOW_ALL_HOSTNAME_VERIFIER:Lorg/apache/http/conn/ssl/X509HostnameVerifier;

    .line 73
    new-instance v0, Lorg/apache/http/conn/ssl/BrowserCompatHostnameVerifier;

    invoke-direct {v0}, Lorg/apache/http/conn/ssl/BrowserCompatHostnameVerifier;-><init>()V

    sput-object v0, Lcom/htc/android/mail/easdp/util/SSLSocketFactory;->BROWSER_COMPATIBLE_HOSTNAME_VERIFIER:Lorg/apache/http/conn/ssl/X509HostnameVerifier;

    .line 76
    new-instance v0, Lorg/apache/http/conn/ssl/StrictHostnameVerifier;

    invoke-direct {v0}, Lorg/apache/http/conn/ssl/StrictHostnameVerifier;-><init>()V

    sput-object v0, Lcom/htc/android/mail/easdp/util/SSLSocketFactory;->STRICT_HOSTNAME_VERIFIER:Lorg/apache/http/conn/ssl/X509HostnameVerifier;

    .line 81
    new-instance v0, Lcom/htc/android/mail/easdp/util/SSLSocketFactory;

    invoke-direct {v0}, Lcom/htc/android/mail/easdp/util/SSLSocketFactory;-><init>()V

    sput-object v0, Lcom/htc/android/mail/easdp/util/SSLSocketFactory;->DEFAULT_FACTORY:Lcom/htc/android/mail/easdp/util/SSLSocketFactory;

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 164
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 94
    sget-object v0, Lcom/htc/android/mail/easdp/util/SSLSocketFactory;->ALLOW_ALL_HOSTNAME_VERIFIER:Lorg/apache/http/conn/ssl/X509HostnameVerifier;

    iput-object v0, p0, Lcom/htc/android/mail/easdp/util/SSLSocketFactory;->hostnameVerifier:Lorg/apache/http/conn/ssl/X509HostnameVerifier;

    .line 95
    iput-object v1, p0, Lcom/htc/android/mail/easdp/util/SSLSocketFactory;->mConnCallback:Lcom/htc/android/mail/easdp/util/ConnectCallback;

    .line 165
    iput-object v1, p0, Lcom/htc/android/mail/easdp/util/SSLSocketFactory;->sslcontext:Ljavax/net/ssl/SSLContext;

    .line 166
    invoke-static {}, Ljavax/net/ssl/HttpsURLConnection;->getDefaultSSLSocketFactory()Ljavax/net/ssl/SSLSocketFactory;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/android/mail/easdp/util/SSLSocketFactory;->socketfactory:Ljavax/net/ssl/SSLSocketFactory;

    .line 167
    iput-object v1, p0, Lcom/htc/android/mail/easdp/util/SSLSocketFactory;->nameResolver:Lorg/apache/http/conn/scheme/HostNameResolver;

    .line 168
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
    .line 106
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 94
    sget-object v2, Lcom/htc/android/mail/easdp/util/SSLSocketFactory;->ALLOW_ALL_HOSTNAME_VERIFIER:Lorg/apache/http/conn/ssl/X509HostnameVerifier;

    iput-object v2, p0, Lcom/htc/android/mail/easdp/util/SSLSocketFactory;->hostnameVerifier:Lorg/apache/http/conn/ssl/X509HostnameVerifier;

    .line 95
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/htc/android/mail/easdp/util/SSLSocketFactory;->mConnCallback:Lcom/htc/android/mail/easdp/util/ConnectCallback;

    .line 107
    if-nez p1, :cond_0

    .line 108
    const-string p1, "TLS"

    .line 110
    :cond_0
    const/4 v0, 0x0

    .line 111
    .local v0, keymanagers:[Ljavax/net/ssl/KeyManager;
    if-eqz p2, :cond_1

    .line 112
    invoke-static {p2, p3}, Lcom/htc/android/mail/easdp/util/SSLSocketFactory;->createKeyManagers(Ljava/security/KeyStore;Ljava/lang/String;)[Ljavax/net/ssl/KeyManager;

    move-result-object v0

    .line 114
    :cond_1
    const/4 v1, 0x0

    .line 115
    .local v1, trustmanagers:[Ljavax/net/ssl/TrustManager;
    if-eqz p4, :cond_2

    .line 116
    invoke-static {p4}, Lcom/htc/android/mail/easdp/util/SSLSocketFactory;->createTrustManagers(Ljava/security/KeyStore;)[Ljavax/net/ssl/TrustManager;

    move-result-object v1

    .line 118
    :cond_2
    invoke-static {p1}, Ljavax/net/ssl/SSLContext;->getInstance(Ljava/lang/String;)Ljavax/net/ssl/SSLContext;

    move-result-object v2

    iput-object v2, p0, Lcom/htc/android/mail/easdp/util/SSLSocketFactory;->sslcontext:Ljavax/net/ssl/SSLContext;

    .line 119
    iget-object v2, p0, Lcom/htc/android/mail/easdp/util/SSLSocketFactory;->sslcontext:Ljavax/net/ssl/SSLContext;

    invoke-virtual {v2, v0, v1, p5}, Ljavax/net/ssl/SSLContext;->init([Ljavax/net/ssl/KeyManager;[Ljavax/net/ssl/TrustManager;Ljava/security/SecureRandom;)V

    .line 120
    iget-object v2, p0, Lcom/htc/android/mail/easdp/util/SSLSocketFactory;->sslcontext:Ljavax/net/ssl/SSLContext;

    invoke-virtual {v2}, Ljavax/net/ssl/SSLContext;->getSocketFactory()Ljavax/net/ssl/SSLSocketFactory;

    move-result-object v2

    iput-object v2, p0, Lcom/htc/android/mail/easdp/util/SSLSocketFactory;->socketfactory:Ljavax/net/ssl/SSLSocketFactory;

    .line 121
    iput-object p6, p0, Lcom/htc/android/mail/easdp/util/SSLSocketFactory;->nameResolver:Lorg/apache/http/conn/scheme/HostNameResolver;

    .line 122
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

    .line 142
    const-string v1, "TLS"

    move-object v0, p0

    move-object v3, v2

    move-object v4, p1

    move-object v5, v2

    move-object v6, v2

    invoke-direct/range {v0 .. v6}, Lcom/htc/android/mail/easdp/util/SSLSocketFactory;-><init>(Ljava/lang/String;Ljava/security/KeyStore;Ljava/lang/String;Ljava/security/KeyStore;Ljava/security/SecureRandom;Lorg/apache/http/conn/scheme/HostNameResolver;)V

    .line 143
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

    .line 136
    const-string v1, "TLS"

    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    move-object v5, v4

    move-object v6, v4

    invoke-direct/range {v0 .. v6}, Lcom/htc/android/mail/easdp/util/SSLSocketFactory;-><init>(Ljava/lang/String;Ljava/security/KeyStore;Ljava/lang/String;Ljava/security/KeyStore;Ljava/security/SecureRandom;Lorg/apache/http/conn/scheme/HostNameResolver;)V

    .line 137
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

    .line 130
    const-string v1, "TLS"

    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v6, v5

    invoke-direct/range {v0 .. v6}, Lcom/htc/android/mail/easdp/util/SSLSocketFactory;-><init>(Ljava/lang/String;Ljava/security/KeyStore;Ljava/lang/String;Ljava/security/KeyStore;Ljava/security/SecureRandom;Lorg/apache/http/conn/scheme/HostNameResolver;)V

    .line 131
    return-void
.end method

.method public constructor <init>(Ljavax/net/ssl/SSLSocketFactory;)V
    .locals 2
    .parameter "socketfactory"

    .prologue
    const/4 v1, 0x0

    .line 152
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 94
    sget-object v0, Lcom/htc/android/mail/easdp/util/SSLSocketFactory;->ALLOW_ALL_HOSTNAME_VERIFIER:Lorg/apache/http/conn/ssl/X509HostnameVerifier;

    iput-object v0, p0, Lcom/htc/android/mail/easdp/util/SSLSocketFactory;->hostnameVerifier:Lorg/apache/http/conn/ssl/X509HostnameVerifier;

    .line 95
    iput-object v1, p0, Lcom/htc/android/mail/easdp/util/SSLSocketFactory;->mConnCallback:Lcom/htc/android/mail/easdp/util/ConnectCallback;

    .line 153
    iput-object v1, p0, Lcom/htc/android/mail/easdp/util/SSLSocketFactory;->sslcontext:Ljavax/net/ssl/SSLContext;

    .line 154
    iput-object p1, p0, Lcom/htc/android/mail/easdp/util/SSLSocketFactory;->socketfactory:Ljavax/net/ssl/SSLSocketFactory;

    .line 155
    iput-object v1, p0, Lcom/htc/android/mail/easdp/util/SSLSocketFactory;->nameResolver:Lorg/apache/http/conn/scheme/HostNameResolver;

    .line 156
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
    .line 172
    if-nez p0, :cond_0

    .line 173
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Keystore may not be null"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 175
    :cond_0
    invoke-static {}, Ljavax/net/ssl/KeyManagerFactory;->getDefaultAlgorithm()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljavax/net/ssl/KeyManagerFactory;->getInstance(Ljava/lang/String;)Ljavax/net/ssl/KeyManagerFactory;

    move-result-object v0

    .line 177
    .local v0, kmfactory:Ljavax/net/ssl/KeyManagerFactory;
    if-eqz p1, :cond_1

    invoke-virtual {p1}, Ljava/lang/String;->toCharArray()[C

    move-result-object v1

    :goto_0
    invoke-virtual {v0, p0, v1}, Ljavax/net/ssl/KeyManagerFactory;->init(Ljava/security/KeyStore;[C)V

    .line 178
    invoke-virtual {v0}, Ljavax/net/ssl/KeyManagerFactory;->getKeyManagers()[Ljavax/net/ssl/KeyManager;

    move-result-object v1

    return-object v1

    .line 177
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
    .line 183
    if-nez p0, :cond_0

    .line 184
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Keystore may not be null"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 186
    :cond_0
    const/4 v1, 0x1

    new-array v0, v1, [Ljavax/net/ssl/TrustManager;

    const/4 v1, 0x0

    new-instance v2, Lcom/htc/android/mail/easdp/util/SelfSignTrustManager;

    invoke-direct {v2, p0}, Lcom/htc/android/mail/easdp/util/SelfSignTrustManager;-><init>(Ljava/security/KeyStore;)V

    aput-object v2, v0, v1

    .line 187
    .local v0, trustManagers:[Ljavax/net/ssl/TrustManager;
    return-object v0
.end method

.method public static getSocketFactory()Lcom/htc/android/mail/easdp/util/SSLSocketFactory;
    .locals 1

    .prologue
    .line 88
    sget-object v0, Lcom/htc/android/mail/easdp/util/SSLSocketFactory;->DEFAULT_FACTORY:Lcom/htc/android/mail/easdp/util/SSLSocketFactory;

    return-object v0
.end method


# virtual methods
.method public connectSocket(Ljava/net/Socket;Ljava/lang/String;ILjava/net/InetAddress;ILorg/apache/http/params/HttpParams;)Ljava/net/Socket;
    .locals 9
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
    .line 218
    iget-object v7, p0, Lcom/htc/android/mail/easdp/util/SSLSocketFactory;->mConnCallback:Lcom/htc/android/mail/easdp/util/ConnectCallback;

    if-eqz v7, :cond_0

    .line 219
    iget-object v7, p0, Lcom/htc/android/mail/easdp/util/SSLSocketFactory;->mConnCallback:Lcom/htc/android/mail/easdp/util/ConnectCallback;

    invoke-interface {v7}, Lcom/htc/android/mail/easdp/util/ConnectCallback;->onConnectStart()V

    .line 221
    :cond_0
    const/4 v6, 0x0

    .line 223
    .local v6, sslsock:Ljavax/net/ssl/SSLSocket;
    if-nez p2, :cond_2

    .line 224
    :try_start_0
    new-instance v7, Ljava/lang/IllegalArgumentException;

    const-string v8, "Target host may not be null."

    invoke-direct {v7, v8}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 265
    :catchall_0
    move-exception v7

    iget-object v8, p0, Lcom/htc/android/mail/easdp/util/SSLSocketFactory;->mConnCallback:Lcom/htc/android/mail/easdp/util/ConnectCallback;

    if-eqz v8, :cond_1

    .line 266
    iget-object v8, p0, Lcom/htc/android/mail/easdp/util/SSLSocketFactory;->mConnCallback:Lcom/htc/android/mail/easdp/util/ConnectCallback;

    invoke-interface {v8}, Lcom/htc/android/mail/easdp/util/ConnectCallback;->onConnectFinish()V

    .line 265
    :cond_1
    throw v7

    .line 226
    :cond_2
    if-nez p6, :cond_3

    .line 227
    :try_start_1
    new-instance v7, Ljava/lang/IllegalArgumentException;

    const-string v8, "Parameters may not be null."

    invoke-direct {v7, v8}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 230
    :cond_3
    if-eqz p1, :cond_8

    move-object v7, p1

    :goto_0
    move-object v0, v7

    check-cast v0, Ljavax/net/ssl/SSLSocket;

    move-object v6, v0

    .line 232
    if-nez p4, :cond_4

    if-lez p5, :cond_6

    .line 235
    :cond_4
    if-gez p5, :cond_5

    .line 236
    const/4 p5, 0x0

    .line 238
    :cond_5
    new-instance v3, Ljava/net/InetSocketAddress;

    invoke-direct {v3, p4, p5}, Ljava/net/InetSocketAddress;-><init>(Ljava/net/InetAddress;I)V

    .line 240
    .local v3, isa:Ljava/net/InetSocketAddress;
    invoke-virtual {v6, v3}, Ljavax/net/ssl/SSLSocket;->bind(Ljava/net/SocketAddress;)V

    .line 243
    .end local v3           #isa:Ljava/net/InetSocketAddress;
    :cond_6
    invoke-static {p6}, Lorg/apache/http/params/HttpConnectionParams;->getConnectionTimeout(Lorg/apache/http/params/HttpParams;)I

    move-result v1

    .line 244
    .local v1, connTimeout:I
    invoke-static {p6}, Lorg/apache/http/params/HttpConnectionParams;->getSoTimeout(Lorg/apache/http/params/HttpParams;)I

    move-result v5

    .line 247
    .local v5, soTimeout:I
    iget-object v7, p0, Lcom/htc/android/mail/easdp/util/SSLSocketFactory;->nameResolver:Lorg/apache/http/conn/scheme/HostNameResolver;

    if-eqz v7, :cond_9

    .line 248
    new-instance v4, Ljava/net/InetSocketAddress;

    iget-object v7, p0, Lcom/htc/android/mail/easdp/util/SSLSocketFactory;->nameResolver:Lorg/apache/http/conn/scheme/HostNameResolver;

    invoke-interface {v7, p2}, Lorg/apache/http/conn/scheme/HostNameResolver;->resolve(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v7

    invoke-direct {v4, v7, p3}, Ljava/net/InetSocketAddress;-><init>(Ljava/net/InetAddress;I)V

    .line 253
    .local v4, remoteAddress:Ljava/net/InetSocketAddress;
    :goto_1
    invoke-virtual {v6, v4, v1}, Ljavax/net/ssl/SSLSocket;->connect(Ljava/net/SocketAddress;I)V

    .line 255
    invoke-virtual {v6, v5}, Ljavax/net/ssl/SSLSocket;->setSoTimeout(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 257
    :try_start_2
    iget-object v7, p0, Lcom/htc/android/mail/easdp/util/SSLSocketFactory;->hostnameVerifier:Lorg/apache/http/conn/ssl/X509HostnameVerifier;

    invoke-interface {v7, p2, v6}, Lorg/apache/http/conn/ssl/X509HostnameVerifier;->verify(Ljava/lang/String;Ljavax/net/ssl/SSLSocket;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    .line 265
    iget-object v7, p0, Lcom/htc/android/mail/easdp/util/SSLSocketFactory;->mConnCallback:Lcom/htc/android/mail/easdp/util/ConnectCallback;

    if-eqz v7, :cond_7

    .line 266
    iget-object v7, p0, Lcom/htc/android/mail/easdp/util/SSLSocketFactory;->mConnCallback:Lcom/htc/android/mail/easdp/util/ConnectCallback;

    invoke-interface {v7}, Lcom/htc/android/mail/easdp/util/ConnectCallback;->onConnectFinish()V

    .line 269
    :cond_7
    return-object v6

    .line 230
    .end local v1           #connTimeout:I
    .end local v4           #remoteAddress:Ljava/net/InetSocketAddress;
    .end local v5           #soTimeout:I
    :cond_8
    :try_start_3
    invoke-virtual {p0}, Lcom/htc/android/mail/easdp/util/SSLSocketFactory;->createSocket()Ljava/net/Socket;

    move-result-object v7

    goto :goto_0

    .line 250
    .restart local v1       #connTimeout:I
    .restart local v5       #soTimeout:I
    :cond_9
    new-instance v4, Ljava/net/InetSocketAddress;

    invoke-direct {v4, p2, p3}, Ljava/net/InetSocketAddress;-><init>(Ljava/lang/String;I)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .restart local v4       #remoteAddress:Ljava/net/InetSocketAddress;
    goto :goto_1

    .line 259
    :catch_0
    move-exception v2

    .line 261
    .local v2, iox:Ljava/io/IOException;
    :try_start_4
    invoke-virtual {v6}, Ljavax/net/ssl/SSLSocket;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    .line 262
    :goto_2
    :try_start_5
    throw v2
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 261
    :catch_1
    move-exception v7

    goto :goto_2
.end method

.method public createSocket()Ljava/net/Socket;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 193
    iget-object v1, p0, Lcom/htc/android/mail/easdp/util/SSLSocketFactory;->mConnCallback:Lcom/htc/android/mail/easdp/util/ConnectCallback;

    if-eqz v1, :cond_0

    .line 194
    iget-object v1, p0, Lcom/htc/android/mail/easdp/util/SSLSocketFactory;->mConnCallback:Lcom/htc/android/mail/easdp/util/ConnectCallback;

    invoke-interface {v1}, Lcom/htc/android/mail/easdp/util/ConnectCallback;->onConnectStart()V

    .line 196
    :cond_0
    const/4 v0, 0x0

    .line 199
    .local v0, socket:Ljavax/net/ssl/SSLSocket;
    :try_start_0
    iget-object v1, p0, Lcom/htc/android/mail/easdp/util/SSLSocketFactory;->socketfactory:Ljavax/net/ssl/SSLSocketFactory;

    invoke-virtual {v1}, Ljavax/net/ssl/SSLSocketFactory;->createSocket()Ljava/net/Socket;

    move-result-object v0

    .end local v0           #socket:Ljavax/net/ssl/SSLSocket;
    check-cast v0, Ljavax/net/ssl/SSLSocket;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 201
    .restart local v0       #socket:Ljavax/net/ssl/SSLSocket;
    iget-object v1, p0, Lcom/htc/android/mail/easdp/util/SSLSocketFactory;->mConnCallback:Lcom/htc/android/mail/easdp/util/ConnectCallback;

    if-eqz v1, :cond_1

    .line 202
    iget-object v1, p0, Lcom/htc/android/mail/easdp/util/SSLSocketFactory;->mConnCallback:Lcom/htc/android/mail/easdp/util/ConnectCallback;

    invoke-interface {v1}, Lcom/htc/android/mail/easdp/util/ConnectCallback;->onConnectFinish()V

    .line 205
    :cond_1
    return-object v0

    .line 201
    .end local v0           #socket:Ljavax/net/ssl/SSLSocket;
    :catchall_0
    move-exception v1

    iget-object v2, p0, Lcom/htc/android/mail/easdp/util/SSLSocketFactory;->mConnCallback:Lcom/htc/android/mail/easdp/util/ConnectCallback;

    if-eqz v2, :cond_2

    .line 202
    iget-object v2, p0, Lcom/htc/android/mail/easdp/util/SSLSocketFactory;->mConnCallback:Lcom/htc/android/mail/easdp/util/ConnectCallback;

    invoke-interface {v2}, Lcom/htc/android/mail/easdp/util/ConnectCallback;->onConnectFinish()V

    .line 201
    :cond_2
    throw v1
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
    .line 315
    iget-object v1, p0, Lcom/htc/android/mail/easdp/util/SSLSocketFactory;->socketfactory:Ljavax/net/ssl/SSLSocketFactory;

    invoke-virtual {v1, p1, p2, p3, p4}, Ljavax/net/ssl/SSLSocketFactory;->createSocket(Ljava/net/Socket;Ljava/lang/String;IZ)Ljava/net/Socket;

    move-result-object v0

    check-cast v0, Ljavax/net/ssl/SSLSocket;

    .line 321
    .local v0, sslSocket:Ljavax/net/ssl/SSLSocket;
    iget-object v1, p0, Lcom/htc/android/mail/easdp/util/SSLSocketFactory;->hostnameVerifier:Lorg/apache/http/conn/ssl/X509HostnameVerifier;

    invoke-interface {v1, p2, v0}, Lorg/apache/http/conn/ssl/X509HostnameVerifier;->verify(Ljava/lang/String;Ljavax/net/ssl/SSLSocket;)V

    .line 323
    return-object v0
.end method

.method public getHostnameVerifier()Lorg/apache/http/conn/ssl/X509HostnameVerifier;
    .locals 1

    .prologue
    .line 334
    iget-object v0, p0, Lcom/htc/android/mail/easdp/util/SSLSocketFactory;->hostnameVerifier:Lorg/apache/http/conn/ssl/X509HostnameVerifier;

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
    .line 290
    if-nez p1, :cond_0

    .line 291
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Socket may not be null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 294
    :cond_0
    instance-of v0, p1, Ljavax/net/ssl/SSLSocket;

    if-nez v0, :cond_1

    .line 295
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Socket not created by this factory."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 299
    :cond_1
    invoke-virtual {p1}, Ljava/net/Socket;->isClosed()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 300
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Socket is closed."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 303
    :cond_2
    const/4 v0, 0x1

    return v0
.end method

.method public setCallback(Lcom/htc/android/mail/easdp/util/ConnectCallback;)V
    .locals 0
    .parameter "callback"

    .prologue
    .line 338
    iput-object p1, p0, Lcom/htc/android/mail/easdp/util/SSLSocketFactory;->mConnCallback:Lcom/htc/android/mail/easdp/util/ConnectCallback;

    .line 339
    return-void
.end method

.method public setHostnameVerifier(Lorg/apache/http/conn/ssl/X509HostnameVerifier;)V
    .locals 2
    .parameter "hostnameVerifier"

    .prologue
    .line 327
    if-nez p1, :cond_0

    .line 328
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Hostname verifier may not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 330
    :cond_0
    iput-object p1, p0, Lcom/htc/android/mail/easdp/util/SSLSocketFactory;->hostnameVerifier:Lorg/apache/http/conn/ssl/X509HostnameVerifier;

    .line 331
    return-void
.end method
