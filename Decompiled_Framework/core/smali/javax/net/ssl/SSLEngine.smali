.class public abstract Ljavax/net/ssl/SSLEngine;
.super Ljava/lang/Object;
.source "SSLEngine.java"


# instance fields
.field private final peerHost:Ljava/lang/String;

.field private final peerPort:I


# direct methods
.method protected constructor <init>()V
    .locals 1

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Ljavax/net/ssl/SSLEngine;->peerHost:Ljava/lang/String;

    const/4 v0, -0x1

    iput v0, p0, Ljavax/net/ssl/SSLEngine;->peerPort:I

    return-void
.end method

.method protected constructor <init>(Ljava/lang/String;I)V
    .locals 0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ljavax/net/ssl/SSLEngine;->peerHost:Ljava/lang/String;

    iput p2, p0, Ljavax/net/ssl/SSLEngine;->peerPort:I

    return-void
.end method


# virtual methods
.method public abstract beginHandshake()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/net/ssl/SSLException;
        }
    .end annotation
.end method

.method public abstract closeInbound()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/net/ssl/SSLException;
        }
    .end annotation
.end method

.method public abstract closeOutbound()V
.end method

.method public abstract getDelegatedTask()Ljava/lang/Runnable;
.end method

.method public abstract getEnableSessionCreation()Z
.end method

.method public abstract getEnabledCipherSuites()[Ljava/lang/String;
.end method

.method public abstract getEnabledProtocols()[Ljava/lang/String;
.end method

.method public abstract getHandshakeStatus()Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;
.end method

.method public abstract getNeedClientAuth()Z
.end method

.method public getPeerHost()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Ljavax/net/ssl/SSLEngine;->peerHost:Ljava/lang/String;

    return-object v0
.end method

.method public getPeerPort()I
    .locals 1

    iget v0, p0, Ljavax/net/ssl/SSLEngine;->peerPort:I

    return v0
.end method

.method public getSSLParameters()Ljavax/net/ssl/SSLParameters;
    .locals 2

    new-instance v0, Ljavax/net/ssl/SSLParameters;

    invoke-direct {v0}, Ljavax/net/ssl/SSLParameters;-><init>()V

    invoke-virtual {p0}, Ljavax/net/ssl/SSLEngine;->getEnabledCipherSuites()[Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljavax/net/ssl/SSLParameters;->setCipherSuites([Ljava/lang/String;)V

    invoke-virtual {p0}, Ljavax/net/ssl/SSLEngine;->getEnabledProtocols()[Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljavax/net/ssl/SSLParameters;->setProtocols([Ljava/lang/String;)V

    invoke-virtual {p0}, Ljavax/net/ssl/SSLEngine;->getNeedClientAuth()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljavax/net/ssl/SSLParameters;->setNeedClientAuth(Z)V

    invoke-virtual {p0}, Ljavax/net/ssl/SSLEngine;->getWantClientAuth()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljavax/net/ssl/SSLParameters;->setWantClientAuth(Z)V

    return-object v0
.end method

.method public abstract getSession()Ljavax/net/ssl/SSLSession;
.end method

.method public abstract getSupportedCipherSuites()[Ljava/lang/String;
.end method

.method public abstract getSupportedProtocols()[Ljava/lang/String;
.end method

.method public abstract getUseClientMode()Z
.end method

.method public abstract getWantClientAuth()Z
.end method

.method public abstract isInboundDone()Z
.end method

.method public abstract isOutboundDone()Z
.end method

.method public abstract setEnableSessionCreation(Z)V
.end method

.method public abstract setEnabledCipherSuites([Ljava/lang/String;)V
.end method

.method public abstract setEnabledProtocols([Ljava/lang/String;)V
.end method

.method public abstract setNeedClientAuth(Z)V
.end method

.method public setSSLParameters(Ljavax/net/ssl/SSLParameters;)V
    .locals 4

    const/4 v3, 0x1

    invoke-virtual {p1}, Ljavax/net/ssl/SSLParameters;->getCipherSuites()[Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, v0}, Ljavax/net/ssl/SSLEngine;->setEnabledCipherSuites([Ljava/lang/String;)V

    :cond_0
    invoke-virtual {p1}, Ljavax/net/ssl/SSLParameters;->getProtocols()[Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {p0, v1}, Ljavax/net/ssl/SSLEngine;->setEnabledProtocols([Ljava/lang/String;)V

    :cond_1
    invoke-virtual {p1}, Ljavax/net/ssl/SSLParameters;->getNeedClientAuth()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-virtual {p0, v3}, Ljavax/net/ssl/SSLEngine;->setNeedClientAuth(Z)V

    :goto_0
    return-void

    :cond_2
    invoke-virtual {p1}, Ljavax/net/ssl/SSLParameters;->getWantClientAuth()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-virtual {p0, v3}, Ljavax/net/ssl/SSLEngine;->setWantClientAuth(Z)V

    goto :goto_0

    :cond_3
    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Ljavax/net/ssl/SSLEngine;->setWantClientAuth(Z)V

    goto :goto_0
.end method

.method public abstract setUseClientMode(Z)V
.end method

.method public abstract setWantClientAuth(Z)V
.end method

.method public unwrap(Ljava/nio/ByteBuffer;Ljava/nio/ByteBuffer;)Ljavax/net/ssl/SSLEngineResult;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/net/ssl/SSLException;
        }
    .end annotation

    const/4 v2, 0x1

    const/4 v1, 0x0

    new-array v0, v2, [Ljava/nio/ByteBuffer;

    aput-object p2, v0, v1

    invoke-virtual {p0, p1, v0, v1, v2}, Ljavax/net/ssl/SSLEngine;->unwrap(Ljava/nio/ByteBuffer;[Ljava/nio/ByteBuffer;II)Ljavax/net/ssl/SSLEngineResult;

    move-result-object v0

    return-object v0
.end method

.method public unwrap(Ljava/nio/ByteBuffer;[Ljava/nio/ByteBuffer;)Ljavax/net/ssl/SSLEngineResult;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/net/ssl/SSLException;
        }
    .end annotation

    if-nez p2, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Byte buffer array dsts is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    const/4 v0, 0x0

    array-length v1, p2

    invoke-virtual {p0, p1, p2, v0, v1}, Ljavax/net/ssl/SSLEngine;->unwrap(Ljava/nio/ByteBuffer;[Ljava/nio/ByteBuffer;II)Ljavax/net/ssl/SSLEngineResult;

    move-result-object v0

    return-object v0
.end method

.method public abstract unwrap(Ljava/nio/ByteBuffer;[Ljava/nio/ByteBuffer;II)Ljavax/net/ssl/SSLEngineResult;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/net/ssl/SSLException;
        }
    .end annotation
.end method

.method public wrap(Ljava/nio/ByteBuffer;Ljava/nio/ByteBuffer;)Ljavax/net/ssl/SSLEngineResult;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/net/ssl/SSLException;
        }
    .end annotation

    const/4 v2, 0x1

    const/4 v1, 0x0

    new-array v0, v2, [Ljava/nio/ByteBuffer;

    aput-object p1, v0, v1

    invoke-virtual {p0, v0, v1, v2, p2}, Ljavax/net/ssl/SSLEngine;->wrap([Ljava/nio/ByteBuffer;IILjava/nio/ByteBuffer;)Ljavax/net/ssl/SSLEngineResult;

    move-result-object v0

    return-object v0
.end method

.method public abstract wrap([Ljava/nio/ByteBuffer;IILjava/nio/ByteBuffer;)Ljavax/net/ssl/SSLEngineResult;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/net/ssl/SSLException;
        }
    .end annotation
.end method

.method public wrap([Ljava/nio/ByteBuffer;Ljava/nio/ByteBuffer;)Ljavax/net/ssl/SSLEngineResult;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/net/ssl/SSLException;
        }
    .end annotation

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Byte buffer array srcs is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    const/4 v0, 0x0

    array-length v1, p1

    invoke-virtual {p0, p1, v0, v1, p2}, Ljavax/net/ssl/SSLEngine;->wrap([Ljava/nio/ByteBuffer;IILjava/nio/ByteBuffer;)Ljavax/net/ssl/SSLEngineResult;

    move-result-object v0

    return-object v0
.end method
