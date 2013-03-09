.class public final Lorg/apache/harmony/xnet/provider/jsse/DefaultSSLContextImpl;
.super Lorg/apache/harmony/xnet/provider/jsse/OpenSSLContextImpl;
.source "DefaultSSLContextImpl.java"


# static fields
.field private static KEY_MANAGERS:[Ljavax/net/ssl/KeyManager;

.field private static TRUST_MANAGERS:[Ljavax/net/ssl/TrustManager;


# direct methods
.method public constructor <init>()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;,
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLContextImpl;-><init>(Lorg/apache/harmony/xnet/provider/jsse/DefaultSSLContextImpl;)V

    return-void
.end method


# virtual methods
.method public engineInit([Ljavax/net/ssl/KeyManager;[Ljavax/net/ssl/TrustManager;Ljava/security/SecureRandom;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/KeyManagementException;
        }
    .end annotation

    new-instance v0, Ljava/security/KeyManagementException;

    const-string v1, "Do not init() the default SSLContext "

    invoke-direct {v0, v1}, Ljava/security/KeyManagementException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method getKeyManagers()[Ljavax/net/ssl/KeyManager;
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;,
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v7, 0x0

    sget-object v8, Lorg/apache/harmony/xnet/provider/jsse/DefaultSSLContextImpl;->KEY_MANAGERS:[Ljavax/net/ssl/KeyManager;

    if-eqz v8, :cond_1

    sget-object v7, Lorg/apache/harmony/xnet/provider/jsse/DefaultSSLContextImpl;->KEY_MANAGERS:[Ljavax/net/ssl/KeyManager;

    :cond_0
    :goto_0
    return-object v7

    :cond_1
    const-string v8, "javax.net.ssl.keyStore"

    invoke-static {v8}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    const-string v8, "javax.net.ssl.keyStorePassword"

    invoke-static {v8}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_4

    :goto_1
    invoke-static {}, Ljava/security/KeyStore;->getDefaultType()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/security/KeyStore;->getInstance(Ljava/lang/String;)Ljava/security/KeyStore;

    move-result-object v6

    const/4 v0, 0x0

    :try_start_0
    new-instance v1, Ljava/io/BufferedInputStream;

    new-instance v8, Ljava/io/FileInputStream;

    invoke-direct {v8, v2}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    invoke-direct {v1, v8}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    invoke-virtual {v6, v1, v7}, Ljava/security/KeyStore;->load(Ljava/io/InputStream;[C)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Ljava/io/BufferedInputStream;->close()V

    :cond_2
    const-string v8, "ssl.KeyManagerFactory.algorithm"

    invoke-static {v8}, Ljava/security/Security;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    if-nez v5, :cond_3

    const-string v5, "SunX509"

    :cond_3
    invoke-static {v5}, Ljavax/net/ssl/KeyManagerFactory;->getInstance(Ljava/lang/String;)Ljavax/net/ssl/KeyManagerFactory;

    move-result-object v4

    invoke-virtual {v4, v6, v7}, Ljavax/net/ssl/KeyManagerFactory;->init(Ljava/security/KeyStore;[C)V

    invoke-virtual {v4}, Ljavax/net/ssl/KeyManagerFactory;->getKeyManagers()[Ljavax/net/ssl/KeyManager;

    move-result-object v8

    sput-object v8, Lorg/apache/harmony/xnet/provider/jsse/DefaultSSLContextImpl;->KEY_MANAGERS:[Ljavax/net/ssl/KeyManager;

    sget-object v7, Lorg/apache/harmony/xnet/provider/jsse/DefaultSSLContextImpl;->KEY_MANAGERS:[Ljavax/net/ssl/KeyManager;

    goto :goto_0

    :cond_4
    invoke-virtual {v3}, Ljava/lang/String;->toCharArray()[C

    move-result-object v7

    goto :goto_1

    :catchall_0
    move-exception v8

    :goto_2
    if-eqz v0, :cond_5

    invoke-virtual {v0}, Ljava/io/BufferedInputStream;->close()V

    :cond_5
    throw v8

    :catchall_1
    move-exception v8

    move-object v0, v1

    goto :goto_2
.end method

.method getTrustManagers()[Ljavax/net/ssl/TrustManager;
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;,
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v5, 0x0

    sget-object v8, Lorg/apache/harmony/xnet/provider/jsse/DefaultSSLContextImpl;->TRUST_MANAGERS:[Ljavax/net/ssl/TrustManager;

    if-eqz v8, :cond_1

    sget-object v5, Lorg/apache/harmony/xnet/provider/jsse/DefaultSSLContextImpl;->TRUST_MANAGERS:[Ljavax/net/ssl/TrustManager;

    :cond_0
    :goto_0
    return-object v5

    :cond_1
    const-string v8, "javax.net.ssl.trustStore"

    invoke-static {v8}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    const-string v8, "javax.net.ssl.trustStorePassword"

    invoke-static {v8}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_4

    :goto_1
    invoke-static {}, Ljava/security/KeyStore;->getDefaultType()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/security/KeyStore;->getInstance(Ljava/lang/String;)Ljava/security/KeyStore;

    move-result-object v4

    const/4 v0, 0x0

    :try_start_0
    new-instance v1, Ljava/io/BufferedInputStream;

    new-instance v8, Ljava/io/FileInputStream;

    invoke-direct {v8, v2}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    invoke-direct {v1, v8}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    invoke-virtual {v4, v1, v5}, Ljava/security/KeyStore;->load(Ljava/io/InputStream;[C)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Ljava/io/BufferedInputStream;->close()V

    :cond_2
    const-string v8, "ssl.TrustManagerFactory.algorithm"

    invoke-static {v8}, Ljava/security/Security;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    if-nez v7, :cond_3

    const-string v7, "PKIX"

    :cond_3
    invoke-static {v7}, Ljavax/net/ssl/TrustManagerFactory;->getInstance(Ljava/lang/String;)Ljavax/net/ssl/TrustManagerFactory;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljavax/net/ssl/TrustManagerFactory;->init(Ljava/security/KeyStore;)V

    invoke-virtual {v6}, Ljavax/net/ssl/TrustManagerFactory;->getTrustManagers()[Ljavax/net/ssl/TrustManager;

    move-result-object v8

    sput-object v8, Lorg/apache/harmony/xnet/provider/jsse/DefaultSSLContextImpl;->TRUST_MANAGERS:[Ljavax/net/ssl/TrustManager;

    sget-object v5, Lorg/apache/harmony/xnet/provider/jsse/DefaultSSLContextImpl;->TRUST_MANAGERS:[Ljavax/net/ssl/TrustManager;

    goto :goto_0

    :cond_4
    invoke-virtual {v3}, Ljava/lang/String;->toCharArray()[C

    move-result-object v5

    goto :goto_1

    :catchall_0
    move-exception v8

    :goto_2
    if-eqz v0, :cond_5

    invoke-virtual {v0}, Ljava/io/BufferedInputStream;->close()V

    :cond_5
    throw v8

    :catchall_1
    move-exception v8

    move-object v0, v1

    goto :goto_2
.end method
