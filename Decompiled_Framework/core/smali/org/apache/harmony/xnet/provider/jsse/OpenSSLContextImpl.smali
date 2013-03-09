.class public Lorg/apache/harmony/xnet/provider/jsse/OpenSSLContextImpl;
.super Lorg/apache/harmony/xnet/provider/jsse/SSLContextImpl;
.source "OpenSSLContextImpl.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lorg/apache/harmony/xnet/provider/jsse/SSLContextImpl;-><init>()V

    return-void
.end method

.method protected constructor <init>(Lorg/apache/harmony/xnet/provider/jsse/DefaultSSLContextImpl;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;,
            Ljava/io/IOException;
        }
    .end annotation

    invoke-direct {p0, p1}, Lorg/apache/harmony/xnet/provider/jsse/SSLContextImpl;-><init>(Lorg/apache/harmony/xnet/provider/jsse/DefaultSSLContextImpl;)V

    return-void
.end method


# virtual methods
.method public engineGetServerSocketFactory()Ljavax/net/ssl/SSLServerSocketFactory;
    .locals 2

    iget-object v0, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLContextImpl;->sslParameters:Lorg/apache/harmony/xnet/provider/jsse/SSLParametersImpl;

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "SSLContext is not initialized."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    new-instance v0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLServerSocketFactoryImpl;

    iget-object v1, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLContextImpl;->sslParameters:Lorg/apache/harmony/xnet/provider/jsse/SSLParametersImpl;

    invoke-direct {v0, v1}, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLServerSocketFactoryImpl;-><init>(Lorg/apache/harmony/xnet/provider/jsse/SSLParametersImpl;)V

    return-object v0
.end method

.method public engineGetSocketFactory()Ljavax/net/ssl/SSLSocketFactory;
    .locals 2

    iget-object v0, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLContextImpl;->sslParameters:Lorg/apache/harmony/xnet/provider/jsse/SSLParametersImpl;

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "SSLContext is not initialized."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    new-instance v0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSocketFactoryImpl;

    iget-object v1, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLContextImpl;->sslParameters:Lorg/apache/harmony/xnet/provider/jsse/SSLParametersImpl;

    invoke-direct {v0, v1}, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSocketFactoryImpl;-><init>(Lorg/apache/harmony/xnet/provider/jsse/SSLParametersImpl;)V

    return-object v0
.end method
