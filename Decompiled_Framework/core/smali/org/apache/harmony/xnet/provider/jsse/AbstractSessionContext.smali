.class abstract Lorg/apache/harmony/xnet/provider/jsse/AbstractSessionContext;
.super Ljava/lang/Object;
.source "AbstractSessionContext.java"

# interfaces
.implements Ljavax/net/ssl/SSLSessionContext;


# static fields
.field static final OPEN_SSL:I = 0x1


# instance fields
.field volatile maximumSize:I

.field private final sessions:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lorg/apache/harmony/xnet/provider/jsse/ByteArray;",
            "Ljavax/net/ssl/SSLSession;",
            ">;"
        }
    .end annotation
.end field

.field final sslCtxNativePointer:I

.field volatile timeout:I


# direct methods
.method constructor <init>(II)V
    .locals 1

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Lorg/apache/harmony/xnet/provider/jsse/NativeCrypto;->SSL_CTX_new()I

    move-result v0

    iput v0, p0, Lorg/apache/harmony/xnet/provider/jsse/AbstractSessionContext;->sslCtxNativePointer:I

    new-instance v0, Lorg/apache/harmony/xnet/provider/jsse/AbstractSessionContext$1;

    invoke-direct {v0, p0}, Lorg/apache/harmony/xnet/provider/jsse/AbstractSessionContext$1;-><init>(Lorg/apache/harmony/xnet/provider/jsse/AbstractSessionContext;)V

    iput-object v0, p0, Lorg/apache/harmony/xnet/provider/jsse/AbstractSessionContext;->sessions:Ljava/util/Map;

    iput p1, p0, Lorg/apache/harmony/xnet/provider/jsse/AbstractSessionContext;->maximumSize:I

    iput p2, p0, Lorg/apache/harmony/xnet/provider/jsse/AbstractSessionContext;->timeout:I

    return-void
.end method

.method static log(Ljava/lang/Throwable;)V
    .locals 1

    const-string v0, "Error converting session."

    invoke-static {v0, p0}, Ljava/lang/System;->logW(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method private sessionIterator()Ljava/util/Iterator;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator",
            "<",
            "Ljavax/net/ssl/SSLSession;",
            ">;"
        }
    .end annotation

    iget-object v2, p0, Lorg/apache/harmony/xnet/provider/jsse/AbstractSessionContext;->sessions:Ljava/util/Map;

    monitor-enter v2

    :try_start_0
    iget-object v1, p0, Lorg/apache/harmony/xnet/provider/jsse/AbstractSessionContext;->sessions:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    iget-object v3, p0, Lorg/apache/harmony/xnet/provider/jsse/AbstractSessionContext;->sessions:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->size()I

    move-result v3

    new-array v3, v3, [Ljavax/net/ssl/SSLSession;

    invoke-interface {v1, v3}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljavax/net/ssl/SSLSession;

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    monitor-exit v2

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
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
    iget v0, p0, Lorg/apache/harmony/xnet/provider/jsse/AbstractSessionContext;->sslCtxNativePointer:I

    invoke-static {v0}, Lorg/apache/harmony/xnet/provider/jsse/NativeCrypto;->SSL_CTX_free(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    return-void

    :catchall_0
    move-exception v0

    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    throw v0
.end method

.method public final getIds()Ljava/util/Enumeration;
    .locals 2

    invoke-direct {p0}, Lorg/apache/harmony/xnet/provider/jsse/AbstractSessionContext;->sessionIterator()Ljava/util/Iterator;

    move-result-object v0

    new-instance v1, Lorg/apache/harmony/xnet/provider/jsse/AbstractSessionContext$2;

    invoke-direct {v1, p0, v0}, Lorg/apache/harmony/xnet/provider/jsse/AbstractSessionContext$2;-><init>(Lorg/apache/harmony/xnet/provider/jsse/AbstractSessionContext;Ljava/util/Iterator;)V

    return-object v1
.end method

.method public getSession([B)Ljavax/net/ssl/SSLSession;
    .locals 4

    if-nez p1, :cond_0

    new-instance v2, Ljava/lang/NullPointerException;

    const-string v3, "sessionId == null"

    invoke-direct {v2, v3}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_0
    new-instance v0, Lorg/apache/harmony/xnet/provider/jsse/ByteArray;

    invoke-direct {v0, p1}, Lorg/apache/harmony/xnet/provider/jsse/ByteArray;-><init>([B)V

    iget-object v3, p0, Lorg/apache/harmony/xnet/provider/jsse/AbstractSessionContext;->sessions:Ljava/util/Map;

    monitor-enter v3

    :try_start_0
    iget-object v2, p0, Lorg/apache/harmony/xnet/provider/jsse/AbstractSessionContext;->sessions:Ljava/util/Map;

    invoke-interface {v2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljavax/net/ssl/SSLSession;

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_1

    invoke-interface {v1}, Ljavax/net/ssl/SSLSession;->isValid()Z

    move-result v2

    if-eqz v2, :cond_1

    :goto_0
    return-object v1

    :catchall_0
    move-exception v2

    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public final getSessionCacheSize()I
    .locals 1

    iget v0, p0, Lorg/apache/harmony/xnet/provider/jsse/AbstractSessionContext;->maximumSize:I

    return v0
.end method

.method public final getSessionTimeout()I
    .locals 1

    iget v0, p0, Lorg/apache/harmony/xnet/provider/jsse/AbstractSessionContext;->timeout:I

    return v0
.end method

.method putSession(Ljavax/net/ssl/SSLSession;)V
    .locals 4

    invoke-interface {p1}, Ljavax/net/ssl/SSLSession;->getId()[B

    move-result-object v0

    array-length v2, v0

    if-nez v2, :cond_0

    :goto_0
    return-void

    :cond_0
    new-instance v1, Lorg/apache/harmony/xnet/provider/jsse/ByteArray;

    invoke-direct {v1, v0}, Lorg/apache/harmony/xnet/provider/jsse/ByteArray;-><init>([B)V

    iget-object v3, p0, Lorg/apache/harmony/xnet/provider/jsse/AbstractSessionContext;->sessions:Ljava/util/Map;

    monitor-enter v3

    :try_start_0
    iget-object v2, p0, Lorg/apache/harmony/xnet/provider/jsse/AbstractSessionContext;->sessions:Ljava/util/Map;

    invoke-interface {v2, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    monitor-exit v3

    goto :goto_0

    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method protected abstract sessionRemoved(Ljavax/net/ssl/SSLSession;)V
.end method

.method public final setSessionCacheSize(I)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    if-gez p1, :cond_0

    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "size < 0"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_0
    iget v0, p0, Lorg/apache/harmony/xnet/provider/jsse/AbstractSessionContext;->maximumSize:I

    iput p1, p0, Lorg/apache/harmony/xnet/provider/jsse/AbstractSessionContext;->maximumSize:I

    if-ge p1, v0, :cond_1

    invoke-virtual {p0}, Lorg/apache/harmony/xnet/provider/jsse/AbstractSessionContext;->trimToSize()V

    :cond_1
    return-void
.end method

.method public setSessionTimeout(I)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    if-gez p1, :cond_0

    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "seconds < 0"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_0
    iput p1, p0, Lorg/apache/harmony/xnet/provider/jsse/AbstractSessionContext;->timeout:I

    iget-object v3, p0, Lorg/apache/harmony/xnet/provider/jsse/AbstractSessionContext;->sessions:Ljava/util/Map;

    monitor-enter v3

    :try_start_0
    iget-object v2, p0, Lorg/apache/harmony/xnet/provider/jsse/AbstractSessionContext;->sessions:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljavax/net/ssl/SSLSession;

    invoke-interface {v1}, Ljavax/net/ssl/SSLSession;->isValid()Z

    move-result v2

    if-nez v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    invoke-virtual {p0, v1}, Lorg/apache/harmony/xnet/provider/jsse/AbstractSessionContext;->sessionRemoved(Ljavax/net/ssl/SSLSession;)V

    goto :goto_0

    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    :cond_2
    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-void
.end method

.method toBytes(Ljavax/net/ssl/SSLSession;)[B
    .locals 12

    const/4 v10, 0x0

    instance-of v11, p1, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSessionImpl;

    if-nez v11, :cond_0

    :goto_0
    return-object v10

    :cond_0
    move-object v9, p1

    check-cast v9, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSessionImpl;

    :try_start_0
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    new-instance v4, Ljava/io/DataOutputStream;

    invoke-direct {v4, v1}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    const/4 v11, 0x1

    invoke-virtual {v4, v11}, Ljava/io/DataOutputStream;->writeInt(I)V

    invoke-virtual {v9}, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSessionImpl;->getEncoded()[B

    move-result-object v5

    array-length v11, v5

    invoke-virtual {v4, v11}, Ljava/io/DataOutputStream;->writeInt(I)V

    invoke-virtual {v4, v5}, Ljava/io/DataOutputStream;->write([B)V

    invoke-interface {p1}, Ljavax/net/ssl/SSLSession;->getPeerCertificates()[Ljava/security/cert/Certificate;

    move-result-object v3

    array-length v11, v3

    invoke-virtual {v4, v11}, Ljava/io/DataOutputStream;->writeInt(I)V

    move-object v0, v3

    array-length v8, v0

    const/4 v7, 0x0

    :goto_1
    if-ge v7, v8, :cond_1

    aget-object v2, v0, v7

    invoke-virtual {v2}, Ljava/security/cert/Certificate;->getEncoded()[B

    move-result-object v5

    array-length v11, v5

    invoke-virtual {v4, v11}, Ljava/io/DataOutputStream;->writeInt(I)V

    invoke-virtual {v4, v5}, Ljava/io/DataOutputStream;->write([B)V

    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    :cond_1
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/security/cert/CertificateEncodingException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v10

    goto :goto_0

    :catch_0
    move-exception v6

    invoke-static {v6}, Lorg/apache/harmony/xnet/provider/jsse/AbstractSessionContext;->log(Ljava/lang/Throwable;)V

    goto :goto_0

    :catch_1
    move-exception v6

    invoke-static {v6}, Lorg/apache/harmony/xnet/provider/jsse/AbstractSessionContext;->log(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method toSession([BLjava/lang/String;I)Ljavax/net/ssl/SSLSession;
    .locals 14

    new-instance v6, Ljava/io/ByteArrayInputStream;

    invoke-direct {v6, p1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    new-instance v9, Ljava/io/DataInputStream;

    invoke-direct {v9, v6}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    :try_start_0
    invoke-virtual {v9}, Ljava/io/DataInputStream;->readInt()I

    move-result v13

    const/4 v0, 0x1

    if-eq v13, v0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unexpected type ID: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    invoke-static {v0}, Lorg/apache/harmony/xnet/provider/jsse/AbstractSessionContext;->log(Ljava/lang/Throwable;)V

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {v9}, Ljava/io/DataInputStream;->readInt()I

    move-result v12

    new-array v1, v12, [B

    invoke-virtual {v9, v1}, Ljava/io/DataInputStream;->readFully([B)V

    invoke-virtual {v9}, Ljava/io/DataInputStream;->readInt()I

    move-result v8

    new-array v4, v8, [Lorg/apache/harmony/security/provider/cert/X509CertImpl;

    const/4 v11, 0x0

    :goto_1
    if-ge v11, v8, :cond_1

    invoke-virtual {v9}, Ljava/io/DataInputStream;->readInt()I

    move-result v12

    new-array v7, v12, [B

    invoke-virtual {v9, v7}, Ljava/io/DataInputStream;->readFully([B)V

    new-instance v0, Lorg/apache/harmony/security/provider/cert/X509CertImpl;

    invoke-direct {v0, v7}, Lorg/apache/harmony/security/provider/cert/X509CertImpl;-><init>([B)V

    aput-object v0, v4, v11

    add-int/lit8 v11, v11, 0x1

    goto :goto_1

    :cond_1
    new-instance v0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSessionImpl;

    move-object/from16 v2, p2

    move/from16 v3, p3

    move-object v5, p0

    invoke-direct/range {v0 .. v5}, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSessionImpl;-><init>([BLjava/lang/String;I[Ljava/security/cert/X509Certificate;Lorg/apache/harmony/xnet/provider/jsse/AbstractSessionContext;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v10

    invoke-static {v10}, Lorg/apache/harmony/xnet/provider/jsse/AbstractSessionContext;->log(Ljava/lang/Throwable;)V

    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected trimToSize()V
    .locals 6

    iget-object v5, p0, Lorg/apache/harmony/xnet/provider/jsse/AbstractSessionContext;->sessions:Ljava/util/Map;

    monitor-enter v5

    :try_start_0
    iget-object v4, p0, Lorg/apache/harmony/xnet/provider/jsse/AbstractSessionContext;->sessions:Ljava/util/Map;

    invoke-interface {v4}, Ljava/util/Map;->size()I

    move-result v3

    iget v4, p0, Lorg/apache/harmony/xnet/provider/jsse/AbstractSessionContext;->maximumSize:I

    if-le v3, v4, :cond_1

    iget v4, p0, Lorg/apache/harmony/xnet/provider/jsse/AbstractSessionContext;->maximumSize:I

    sub-int v1, v3, v4

    iget-object v4, p0, Lorg/apache/harmony/xnet/provider/jsse/AbstractSessionContext;->sessions:Ljava/util/Map;

    invoke-interface {v4}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljavax/net/ssl/SSLSession;

    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    invoke-virtual {p0, v2}, Lorg/apache/harmony/xnet/provider/jsse/AbstractSessionContext;->sessionRemoved(Ljavax/net/ssl/SSLSession;)V

    add-int/lit8 v1, v1, -0x1

    if-gtz v1, :cond_0

    :cond_1
    monitor-exit v5

    return-void

    :catchall_0
    move-exception v4

    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v4
.end method
