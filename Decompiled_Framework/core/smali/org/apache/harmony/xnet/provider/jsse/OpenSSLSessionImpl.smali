.class public Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSessionImpl;
.super Ljava/lang/Object;
.source "OpenSSLSessionImpl.java"

# interfaces
.implements Ljavax/net/ssl/SSLSession;


# instance fields
.field private cipherSuite:Ljava/lang/String;

.field private compressionMethod:Ljava/lang/String;

.field private creationTime:J

.field private id:[B

.field private isValid:Z

.field lastAccessedTime:J

.field final localCertificates:[Ljava/security/cert/X509Certificate;

.field private volatile peerCertificateChain:[Ljavax/security/cert/X509Certificate;

.field final peerCertificates:[Ljava/security/cert/X509Certificate;

.field private peerHost:Ljava/lang/String;

.field private peerPort:I

.field private protocol:Ljava/lang/String;

.field private sessionContext:Lorg/apache/harmony/xnet/provider/jsse/AbstractSessionContext;

.field protected sslSessionNativePointer:I

.field private final values:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method protected constructor <init>(I[Ljava/security/cert/X509Certificate;[Ljava/security/cert/X509Certificate;Ljava/lang/String;ILorg/apache/harmony/xnet/provider/jsse/AbstractSessionContext;)V
    .locals 2

    const-wide/16 v0, 0x0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    iput-wide v0, p0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSessionImpl;->creationTime:J

    iput-wide v0, p0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSessionImpl;->lastAccessedTime:J

    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSessionImpl;->isValid:Z

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSessionImpl;->values:Ljava/util/Map;

    const/4 v0, -0x1

    iput v0, p0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSessionImpl;->peerPort:I

    iput p1, p0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSessionImpl;->sslSessionNativePointer:I

    iput-object p2, p0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSessionImpl;->localCertificates:[Ljava/security/cert/X509Certificate;

    iput-object p3, p0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSessionImpl;->peerCertificates:[Ljava/security/cert/X509Certificate;

    iput-object p4, p0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSessionImpl;->peerHost:Ljava/lang/String;

    iput p5, p0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSessionImpl;->peerPort:I

    iput-object p6, p0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSessionImpl;->sessionContext:Lorg/apache/harmony/xnet/provider/jsse/AbstractSessionContext;

    return-void
.end method

.method constructor <init>([BLjava/lang/String;I[Ljava/security/cert/X509Certificate;Lorg/apache/harmony/xnet/provider/jsse/AbstractSessionContext;)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-static {p1}, Lorg/apache/harmony/xnet/provider/jsse/NativeCrypto;->d2i_SSL_SESSION([B)I

    move-result v1

    const/4 v2, 0x0

    move-object v0, p0

    move-object v3, p4

    move-object v4, p2

    move v5, p3

    move-object v6, p5

    invoke-direct/range {v0 .. v6}, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSessionImpl;-><init>(I[Ljava/security/cert/X509Certificate;[Ljava/security/cert/X509Certificate;Ljava/lang/String;ILorg/apache/harmony/xnet/provider/jsse/AbstractSessionContext;)V

    iget v0, p0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSessionImpl;->sslSessionNativePointer:I

    if-nez v0, :cond_0

    new-instance v0, Ljava/io/IOException;

    const-string v1, "Invalid session data"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    return-void
.end method

.method private checkPeerCertificatesPresent()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/net/ssl/SSLPeerUnverifiedException;
        }
    .end annotation

    iget-object v0, p0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSessionImpl;->peerCertificates:[Ljava/security/cert/X509Certificate;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSessionImpl;->peerCertificates:[Ljava/security/cert/X509Certificate;

    array-length v0, v0

    if-nez v0, :cond_1

    :cond_0
    new-instance v0, Ljavax/net/ssl/SSLPeerUnverifiedException;

    const-string v1, "No peer certificates"

    invoke-direct {v0, v1}, Ljavax/net/ssl/SSLPeerUnverifiedException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    return-void
.end method

.method private createPeerCertificateChain()[Ljavax/security/cert/X509Certificate;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/net/ssl/SSLPeerUnverifiedException;
        }
    .end annotation

    :try_start_0
    iget-object v5, p0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSessionImpl;->peerCertificates:[Ljava/security/cert/X509Certificate;

    array-length v5, v5

    new-array v0, v5, [Ljavax/security/cert/X509Certificate;

    const/4 v4, 0x0

    :goto_0
    iget-object v5, p0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSessionImpl;->peerCertificates:[Ljava/security/cert/X509Certificate;

    array-length v5, v5

    if-ge v4, v5, :cond_0

    iget-object v5, p0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSessionImpl;->peerCertificates:[Ljava/security/cert/X509Certificate;

    aget-object v5, v5, v4

    invoke-virtual {v5}, Ljava/security/cert/X509Certificate;->getEncoded()[B

    move-result-object v2

    invoke-static {v2}, Ljavax/security/cert/X509Certificate;->getInstance([B)Ljavax/security/cert/X509Certificate;

    move-result-object v5

    aput-object v5, v0, v4
    :try_end_0
    .catch Ljava/security/cert/CertificateEncodingException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljavax/security/cert/CertificateException; {:try_start_0 .. :try_end_0} :catch_1

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :catch_0
    move-exception v1

    new-instance v3, Ljavax/net/ssl/SSLPeerUnverifiedException;

    invoke-virtual {v1}, Ljava/security/cert/CertificateEncodingException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v5}, Ljavax/net/ssl/SSLPeerUnverifiedException;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v3}, Ljavax/net/ssl/SSLPeerUnverifiedException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    throw v3

    :catch_1
    move-exception v1

    new-instance v3, Ljavax/net/ssl/SSLPeerUnverifiedException;

    invoke-virtual {v1}, Ljavax/security/cert/CertificateException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v5}, Ljavax/net/ssl/SSLPeerUnverifiedException;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v3}, Ljavax/net/ssl/SSLPeerUnverifiedException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    throw v3

    :cond_0
    return-object v0
.end method


# virtual methods
.method protected finalize()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    :try_start_0
    iget v0, p0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSessionImpl;->sslSessionNativePointer:I

    invoke-static {v0}, Lorg/apache/harmony/xnet/provider/jsse/NativeCrypto;->SSL_SESSION_free(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    return-void

    :catchall_0
    move-exception v0

    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    throw v0
.end method

.method public getApplicationBufferSize()I
    .locals 1

    const/16 v0, 0x4000

    return v0
.end method

.method public getCipherSuite()Ljava/lang/String;
    .locals 2

    iget-object v1, p0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSessionImpl;->cipherSuite:Ljava/lang/String;

    if-nez v1, :cond_0

    iget v1, p0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSessionImpl;->sslSessionNativePointer:I

    invoke-static {v1}, Lorg/apache/harmony/xnet/provider/jsse/NativeCrypto;->SSL_SESSION_cipher(I)Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lorg/apache/harmony/xnet/provider/jsse/NativeCrypto;->OPENSSL_TO_STANDARD_CIPHER_SUITES:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iput-object v1, p0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSessionImpl;->cipherSuite:Ljava/lang/String;

    iget-object v1, p0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSessionImpl;->cipherSuite:Ljava/lang/String;

    if-nez v1, :cond_0

    iput-object v0, p0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSessionImpl;->cipherSuite:Ljava/lang/String;

    :cond_0
    iget-object v1, p0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSessionImpl;->cipherSuite:Ljava/lang/String;

    return-object v1
.end method

.method public getCompressionMethod()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSessionImpl;->compressionMethod:Ljava/lang/String;

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSessionImpl;->sessionContext:Lorg/apache/harmony/xnet/provider/jsse/AbstractSessionContext;

    iget v0, v0, Lorg/apache/harmony/xnet/provider/jsse/AbstractSessionContext;->sslCtxNativePointer:I

    iget v1, p0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSessionImpl;->sslSessionNativePointer:I

    invoke-static {v0, v1}, Lorg/apache/harmony/xnet/provider/jsse/NativeCrypto;->SSL_SESSION_compress_meth(II)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSessionImpl;->compressionMethod:Ljava/lang/String;

    :cond_0
    iget-object v0, p0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSessionImpl;->compressionMethod:Ljava/lang/String;

    return-object v0
.end method

.method public getCreationTime()J
    .locals 4

    iget-wide v0, p0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSessionImpl;->creationTime:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    iget v0, p0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSessionImpl;->sslSessionNativePointer:I

    invoke-static {v0}, Lorg/apache/harmony/xnet/provider/jsse/NativeCrypto;->SSL_SESSION_get_time(I)J

    move-result-wide v0

    iput-wide v0, p0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSessionImpl;->creationTime:J

    :cond_0
    iget-wide v0, p0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSessionImpl;->creationTime:J

    return-wide v0
.end method

.method getEncoded()[B
    .locals 1

    iget v0, p0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSessionImpl;->sslSessionNativePointer:I

    invoke-static {v0}, Lorg/apache/harmony/xnet/provider/jsse/NativeCrypto;->i2d_SSL_SESSION(I)[B

    move-result-object v0

    return-object v0
.end method

.method public getId()[B
    .locals 1

    iget-object v0, p0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSessionImpl;->id:[B

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSessionImpl;->resetId()V

    :cond_0
    iget-object v0, p0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSessionImpl;->id:[B

    return-object v0
.end method

.method public getLastAccessedTime()J
    .locals 4

    iget-wide v0, p0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSessionImpl;->lastAccessedTime:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSessionImpl;->getCreationTime()J

    move-result-wide v0

    :goto_0
    return-wide v0

    :cond_0
    iget-wide v0, p0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSessionImpl;->lastAccessedTime:J

    goto :goto_0
.end method

.method public getLocalCertificates()[Ljava/security/cert/Certificate;
    .locals 1

    iget-object v0, p0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSessionImpl;->localCertificates:[Ljava/security/cert/X509Certificate;

    return-object v0
.end method

.method public getLocalPrincipal()Ljava/security/Principal;
    .locals 2

    iget-object v0, p0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSessionImpl;->localCertificates:[Ljava/security/cert/X509Certificate;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSessionImpl;->localCertificates:[Ljava/security/cert/X509Certificate;

    array-length v0, v0

    if-lez v0, :cond_0

    iget-object v0, p0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSessionImpl;->localCertificates:[Ljava/security/cert/X509Certificate;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    invoke-virtual {v0}, Ljava/security/cert/X509Certificate;->getSubjectX500Principal()Ljavax/security/auth/x500/X500Principal;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getPacketBufferSize()I
    .locals 1

    const/16 v0, 0x4805

    return v0
.end method

.method public getPeerCertificateChain()[Ljavax/security/cert/X509Certificate;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/net/ssl/SSLPeerUnverifiedException;
        }
    .end annotation

    invoke-direct {p0}, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSessionImpl;->checkPeerCertificatesPresent()V

    iget-object v0, p0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSessionImpl;->peerCertificateChain:[Ljavax/security/cert/X509Certificate;

    if-nez v0, :cond_0

    invoke-direct {p0}, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSessionImpl;->createPeerCertificateChain()[Ljavax/security/cert/X509Certificate;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSessionImpl;->peerCertificateChain:[Ljavax/security/cert/X509Certificate;

    :cond_0
    return-object v0
.end method

.method public getPeerCertificates()[Ljava/security/cert/Certificate;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/net/ssl/SSLPeerUnverifiedException;
        }
    .end annotation

    invoke-direct {p0}, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSessionImpl;->checkPeerCertificatesPresent()V

    iget-object v0, p0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSessionImpl;->peerCertificates:[Ljava/security/cert/X509Certificate;

    return-object v0
.end method

.method public getPeerHost()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSessionImpl;->peerHost:Ljava/lang/String;

    return-object v0
.end method

.method public getPeerPort()I
    .locals 1

    iget v0, p0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSessionImpl;->peerPort:I

    return v0
.end method

.method public getPeerPrincipal()Ljava/security/Principal;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/net/ssl/SSLPeerUnverifiedException;
        }
    .end annotation

    invoke-direct {p0}, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSessionImpl;->checkPeerCertificatesPresent()V

    iget-object v0, p0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSessionImpl;->peerCertificates:[Ljava/security/cert/X509Certificate;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    invoke-virtual {v0}, Ljava/security/cert/X509Certificate;->getSubjectX500Principal()Ljavax/security/auth/x500/X500Principal;

    move-result-object v0

    return-object v0
.end method

.method public getProtocol()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSessionImpl;->protocol:Ljava/lang/String;

    if-nez v0, :cond_0

    iget v0, p0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSessionImpl;->sslSessionNativePointer:I

    invoke-static {v0}, Lorg/apache/harmony/xnet/provider/jsse/NativeCrypto;->SSL_SESSION_get_version(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSessionImpl;->protocol:Ljava/lang/String;

    :cond_0
    iget-object v0, p0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSessionImpl;->protocol:Ljava/lang/String;

    return-object v0
.end method

.method public getSessionContext()Ljavax/net/ssl/SSLSessionContext;
    .locals 1

    iget-object v0, p0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSessionImpl;->sessionContext:Lorg/apache/harmony/xnet/provider/jsse/AbstractSessionContext;

    return-object v0
.end method

.method public getValue(Ljava/lang/String;)Ljava/lang/Object;
    .locals 2

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "name == null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget-object v0, p0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSessionImpl;->values:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getValueNames()[Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSessionImpl;->values:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    iget-object v1, p0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSessionImpl;->values:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->size()I

    move-result v1

    new-array v1, v1, [Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    return-object v0
.end method

.method public invalidate()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSessionImpl;->isValid:Z

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSessionImpl;->sessionContext:Lorg/apache/harmony/xnet/provider/jsse/AbstractSessionContext;

    return-void
.end method

.method public isValid()Z
    .locals 5

    iget-object v0, p0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSessionImpl;->sessionContext:Lorg/apache/harmony/xnet/provider/jsse/AbstractSessionContext;

    iget-boolean v1, p0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSessionImpl;->isValid:Z

    if-eqz v1, :cond_0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljavax/net/ssl/SSLSessionContext;->getSessionTimeout()I

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSessionImpl;->getCreationTime()J

    move-result-wide v1

    invoke-interface {v0}, Ljavax/net/ssl/SSLSessionContext;->getSessionTimeout()I

    move-result v3

    mul-int/lit16 v3, v3, 0x3e8

    int-to-long v3, v3

    add-long/2addr v1, v3

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    cmp-long v1, v1, v3

    if-gez v1, :cond_0

    const/4 v1, 0x0

    iput-boolean v1, p0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSessionImpl;->isValid:Z

    :cond_0
    iget-boolean v1, p0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSessionImpl;->isValid:Z

    return v1
.end method

.method public putValue(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 3

    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    :cond_0
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "name == null || value == null"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_1
    iget-object v1, p0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSessionImpl;->values:Ljava/util/Map;

    invoke-interface {v1, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    instance-of v1, p2, Ljavax/net/ssl/SSLSessionBindingListener;

    if-eqz v1, :cond_2

    check-cast p2, Ljavax/net/ssl/SSLSessionBindingListener;

    new-instance v1, Ljavax/net/ssl/SSLSessionBindingEvent;

    invoke-direct {v1, p0, p1}, Ljavax/net/ssl/SSLSessionBindingEvent;-><init>(Ljavax/net/ssl/SSLSession;Ljava/lang/String;)V

    invoke-interface {p2, v1}, Ljavax/net/ssl/SSLSessionBindingListener;->valueBound(Ljavax/net/ssl/SSLSessionBindingEvent;)V

    :cond_2
    instance-of v1, v0, Ljavax/net/ssl/SSLSessionBindingListener;

    if-eqz v1, :cond_3

    check-cast v0, Ljavax/net/ssl/SSLSessionBindingListener;

    new-instance v1, Ljavax/net/ssl/SSLSessionBindingEvent;

    invoke-direct {v1, p0, p1}, Ljavax/net/ssl/SSLSessionBindingEvent;-><init>(Ljavax/net/ssl/SSLSession;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljavax/net/ssl/SSLSessionBindingListener;->valueUnbound(Ljavax/net/ssl/SSLSessionBindingEvent;)V

    :cond_3
    return-void
.end method

.method public removeValue(Ljava/lang/String;)V
    .locals 4

    if-nez p1, :cond_0

    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "name == null"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_0
    iget-object v2, p0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSessionImpl;->values:Ljava/util/Map;

    invoke-interface {v2, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    instance-of v2, v1, Ljavax/net/ssl/SSLSessionBindingListener;

    if-eqz v2, :cond_1

    move-object v0, v1

    check-cast v0, Ljavax/net/ssl/SSLSessionBindingListener;

    new-instance v2, Ljavax/net/ssl/SSLSessionBindingEvent;

    invoke-direct {v2, p0, p1}, Ljavax/net/ssl/SSLSessionBindingEvent;-><init>(Ljavax/net/ssl/SSLSession;Ljava/lang/String;)V

    invoke-interface {v0, v2}, Ljavax/net/ssl/SSLSessionBindingListener;->valueUnbound(Ljavax/net/ssl/SSLSessionBindingEvent;)V

    :cond_1
    return-void
.end method

.method resetId()V
    .locals 1

    iget v0, p0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSessionImpl;->sslSessionNativePointer:I

    invoke-static {v0}, Lorg/apache/harmony/xnet/provider/jsse/NativeCrypto;->SSL_SESSION_session_id(I)[B

    move-result-object v0

    iput-object v0, p0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSessionImpl;->id:[B

    return-void
.end method
