.class public Lorg/apache/harmony/xnet/provider/jsse/SSLEngineImpl;
.super Ljavax/net/ssl/SSLEngine;
.source "SSLEngineImpl.java"


# instance fields
.field private alertProtocol:Lorg/apache/harmony/xnet/provider/jsse/AlertProtocol;

.field private appData:Lorg/apache/harmony/xnet/provider/jsse/SSLEngineAppData;

.field private close_notify_was_received:Z

.field private close_notify_was_sent:Z

.field private dataStream:Lorg/apache/harmony/xnet/provider/jsse/SSLEngineDataStream;

.field private engine_was_closed:Z

.field private engine_was_shutteddown:Z

.field private handshakeProtocol:Lorg/apache/harmony/xnet/provider/jsse/HandshakeProtocol;

.field private handshake_started:Z

.field private isInboundDone:Z

.field private isOutboundDone:Z

.field private logger:Lorg/apache/harmony/xnet/provider/jsse/Logger$Stream;

.field private peer_mode_was_set:Z

.field private recProtIS:Lorg/apache/harmony/xnet/provider/jsse/SSLBufferedInput;

.field protected recordProtocol:Lorg/apache/harmony/xnet/provider/jsse/SSLRecordProtocol;

.field private remaining_hsh_data:[B

.field private remaining_wrapped_data:[B

.field private session:Lorg/apache/harmony/xnet/provider/jsse/SSLSessionImpl;

.field protected sslParameters:Lorg/apache/harmony/xnet/provider/jsse/SSLParametersImpl;


# direct methods
.method protected constructor <init>(Ljava/lang/String;ILorg/apache/harmony/xnet/provider/jsse/SSLParametersImpl;)V
    .locals 2

    const/4 v1, 0x0

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2}, Ljavax/net/ssl/SSLEngine;-><init>(Ljava/lang/String;I)V

    iput-boolean v0, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLEngineImpl;->peer_mode_was_set:Z

    iput-boolean v0, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLEngineImpl;->handshake_started:Z

    iput-boolean v0, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLEngineImpl;->isInboundDone:Z

    iput-boolean v0, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLEngineImpl;->isOutboundDone:Z

    iput-boolean v0, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLEngineImpl;->close_notify_was_sent:Z

    iput-boolean v0, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLEngineImpl;->close_notify_was_received:Z

    iput-boolean v0, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLEngineImpl;->engine_was_closed:Z

    iput-boolean v0, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLEngineImpl;->engine_was_shutteddown:Z

    new-instance v0, Lorg/apache/harmony/xnet/provider/jsse/SSLEngineDataStream;

    invoke-direct {v0}, Lorg/apache/harmony/xnet/provider/jsse/SSLEngineDataStream;-><init>()V

    iput-object v0, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLEngineImpl;->dataStream:Lorg/apache/harmony/xnet/provider/jsse/SSLEngineDataStream;

    iput-object v1, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLEngineImpl;->remaining_wrapped_data:[B

    iput-object v1, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLEngineImpl;->remaining_hsh_data:[B

    const-string v0, "engine"

    invoke-static {v0}, Lorg/apache/harmony/xnet/provider/jsse/Logger;->getStream(Ljava/lang/String;)Lorg/apache/harmony/xnet/provider/jsse/Logger$Stream;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLEngineImpl;->logger:Lorg/apache/harmony/xnet/provider/jsse/Logger$Stream;

    iput-object p3, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLEngineImpl;->sslParameters:Lorg/apache/harmony/xnet/provider/jsse/SSLParametersImpl;

    return-void
.end method

.method protected constructor <init>(Lorg/apache/harmony/xnet/provider/jsse/SSLParametersImpl;)V
    .locals 2

    const/4 v1, 0x0

    const/4 v0, 0x0

    invoke-direct {p0}, Ljavax/net/ssl/SSLEngine;-><init>()V

    iput-boolean v0, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLEngineImpl;->peer_mode_was_set:Z

    iput-boolean v0, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLEngineImpl;->handshake_started:Z

    iput-boolean v0, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLEngineImpl;->isInboundDone:Z

    iput-boolean v0, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLEngineImpl;->isOutboundDone:Z

    iput-boolean v0, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLEngineImpl;->close_notify_was_sent:Z

    iput-boolean v0, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLEngineImpl;->close_notify_was_received:Z

    iput-boolean v0, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLEngineImpl;->engine_was_closed:Z

    iput-boolean v0, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLEngineImpl;->engine_was_shutteddown:Z

    new-instance v0, Lorg/apache/harmony/xnet/provider/jsse/SSLEngineDataStream;

    invoke-direct {v0}, Lorg/apache/harmony/xnet/provider/jsse/SSLEngineDataStream;-><init>()V

    iput-object v0, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLEngineImpl;->dataStream:Lorg/apache/harmony/xnet/provider/jsse/SSLEngineDataStream;

    iput-object v1, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLEngineImpl;->remaining_wrapped_data:[B

    iput-object v1, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLEngineImpl;->remaining_hsh_data:[B

    const-string v0, "engine"

    invoke-static {v0}, Lorg/apache/harmony/xnet/provider/jsse/Logger;->getStream(Ljava/lang/String;)Lorg/apache/harmony/xnet/provider/jsse/Logger$Stream;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLEngineImpl;->logger:Lorg/apache/harmony/xnet/provider/jsse/Logger$Stream;

    iput-object p1, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLEngineImpl;->sslParameters:Lorg/apache/harmony/xnet/provider/jsse/SSLParametersImpl;

    return-void
.end method

.method private getEngineStatus()Ljavax/net/ssl/SSLEngineResult$Status;
    .locals 1

    iget-boolean v0, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLEngineImpl;->engine_was_closed:Z

    if-eqz v0, :cond_0

    sget-object v0, Ljavax/net/ssl/SSLEngineResult$Status;->CLOSED:Ljavax/net/ssl/SSLEngineResult$Status;

    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Ljavax/net/ssl/SSLEngineResult$Status;->OK:Ljavax/net/ssl/SSLEngineResult$Status;

    goto :goto_0
.end method

.method private shutdown()V
    .locals 2

    const/4 v1, 0x0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLEngineImpl;->engine_was_closed:Z

    iput-boolean v0, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLEngineImpl;->engine_was_shutteddown:Z

    iput-boolean v0, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLEngineImpl;->isOutboundDone:Z

    iput-boolean v0, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLEngineImpl;->isInboundDone:Z

    iget-boolean v0, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLEngineImpl;->handshake_started:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLEngineImpl;->alertProtocol:Lorg/apache/harmony/xnet/provider/jsse/AlertProtocol;

    invoke-virtual {v0}, Lorg/apache/harmony/xnet/provider/jsse/AlertProtocol;->shutdown()V

    iput-object v1, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLEngineImpl;->alertProtocol:Lorg/apache/harmony/xnet/provider/jsse/AlertProtocol;

    iget-object v0, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLEngineImpl;->handshakeProtocol:Lorg/apache/harmony/xnet/provider/jsse/HandshakeProtocol;

    invoke-virtual {v0}, Lorg/apache/harmony/xnet/provider/jsse/HandshakeProtocol;->shutdown()V

    iput-object v1, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLEngineImpl;->handshakeProtocol:Lorg/apache/harmony/xnet/provider/jsse/HandshakeProtocol;

    iget-object v0, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLEngineImpl;->recordProtocol:Lorg/apache/harmony/xnet/provider/jsse/SSLRecordProtocol;

    invoke-virtual {v0}, Lorg/apache/harmony/xnet/provider/jsse/SSLRecordProtocol;->shutdown()V

    iput-object v1, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLEngineImpl;->recordProtocol:Lorg/apache/harmony/xnet/provider/jsse/SSLRecordProtocol;

    :cond_0
    return-void
.end method


# virtual methods
.method public beginHandshake()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/net/ssl/SSLException;
        }
    .end annotation

    iget-boolean v0, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLEngineImpl;->engine_was_closed:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljavax/net/ssl/SSLException;

    const-string v1, "Engine has already been closed."

    invoke-direct {v0, v1}, Ljavax/net/ssl/SSLException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget-boolean v0, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLEngineImpl;->peer_mode_was_set:Z

    if-nez v0, :cond_1

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Client/Server mode was not set"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    iget-boolean v0, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLEngineImpl;->handshake_started:Z

    if-nez v0, :cond_2

    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLEngineImpl;->handshake_started:Z

    invoke-virtual {p0}, Lorg/apache/harmony/xnet/provider/jsse/SSLEngineImpl;->getUseClientMode()Z

    move-result v0

    if-eqz v0, :cond_3

    new-instance v0, Lorg/apache/harmony/xnet/provider/jsse/ClientHandshakeImpl;

    invoke-direct {v0, p0}, Lorg/apache/harmony/xnet/provider/jsse/ClientHandshakeImpl;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLEngineImpl;->handshakeProtocol:Lorg/apache/harmony/xnet/provider/jsse/HandshakeProtocol;

    :goto_0
    new-instance v0, Lorg/apache/harmony/xnet/provider/jsse/SSLEngineAppData;

    invoke-direct {v0}, Lorg/apache/harmony/xnet/provider/jsse/SSLEngineAppData;-><init>()V

    iput-object v0, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLEngineImpl;->appData:Lorg/apache/harmony/xnet/provider/jsse/SSLEngineAppData;

    new-instance v0, Lorg/apache/harmony/xnet/provider/jsse/AlertProtocol;

    invoke-direct {v0}, Lorg/apache/harmony/xnet/provider/jsse/AlertProtocol;-><init>()V

    iput-object v0, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLEngineImpl;->alertProtocol:Lorg/apache/harmony/xnet/provider/jsse/AlertProtocol;

    new-instance v0, Lorg/apache/harmony/xnet/provider/jsse/SSLBufferedInput;

    invoke-direct {v0}, Lorg/apache/harmony/xnet/provider/jsse/SSLBufferedInput;-><init>()V

    iput-object v0, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLEngineImpl;->recProtIS:Lorg/apache/harmony/xnet/provider/jsse/SSLBufferedInput;

    new-instance v0, Lorg/apache/harmony/xnet/provider/jsse/SSLRecordProtocol;

    iget-object v1, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLEngineImpl;->handshakeProtocol:Lorg/apache/harmony/xnet/provider/jsse/HandshakeProtocol;

    iget-object v2, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLEngineImpl;->alertProtocol:Lorg/apache/harmony/xnet/provider/jsse/AlertProtocol;

    iget-object v3, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLEngineImpl;->recProtIS:Lorg/apache/harmony/xnet/provider/jsse/SSLBufferedInput;

    iget-object v4, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLEngineImpl;->appData:Lorg/apache/harmony/xnet/provider/jsse/SSLEngineAppData;

    invoke-direct {v0, v1, v2, v3, v4}, Lorg/apache/harmony/xnet/provider/jsse/SSLRecordProtocol;-><init>(Lorg/apache/harmony/xnet/provider/jsse/HandshakeProtocol;Lorg/apache/harmony/xnet/provider/jsse/AlertProtocol;Lorg/apache/harmony/xnet/provider/jsse/SSLInputStream;Lorg/apache/harmony/xnet/provider/jsse/Appendable;)V

    iput-object v0, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLEngineImpl;->recordProtocol:Lorg/apache/harmony/xnet/provider/jsse/SSLRecordProtocol;

    :cond_2
    iget-object v0, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLEngineImpl;->handshakeProtocol:Lorg/apache/harmony/xnet/provider/jsse/HandshakeProtocol;

    invoke-virtual {v0}, Lorg/apache/harmony/xnet/provider/jsse/HandshakeProtocol;->start()V

    return-void

    :cond_3
    new-instance v0, Lorg/apache/harmony/xnet/provider/jsse/ServerHandshakeImpl;

    invoke-direct {v0, p0}, Lorg/apache/harmony/xnet/provider/jsse/ServerHandshakeImpl;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLEngineImpl;->handshakeProtocol:Lorg/apache/harmony/xnet/provider/jsse/HandshakeProtocol;

    goto :goto_0
.end method

.method public closeInbound()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/net/ssl/SSLException;
        }
    .end annotation

    const/4 v3, 0x1

    iget-object v0, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLEngineImpl;->logger:Lorg/apache/harmony/xnet/provider/jsse/Logger$Stream;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLEngineImpl;->logger:Lorg/apache/harmony/xnet/provider/jsse/Logger$Stream;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "closeInbound() "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLEngineImpl;->isInboundDone:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/apache/harmony/xnet/provider/jsse/Logger$Stream;->println(Ljava/lang/String;)V

    :cond_0
    iget-boolean v0, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLEngineImpl;->isInboundDone:Z

    if-eqz v0, :cond_2

    :cond_1
    :goto_0
    return-void

    :cond_2
    iput-boolean v3, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLEngineImpl;->isInboundDone:Z

    iput-boolean v3, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLEngineImpl;->engine_was_closed:Z

    iget-boolean v0, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLEngineImpl;->handshake_started:Z

    if-eqz v0, :cond_4

    iget-boolean v0, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLEngineImpl;->close_notify_was_received:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLEngineImpl;->session:Lorg/apache/harmony/xnet/provider/jsse/SSLSessionImpl;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLEngineImpl;->session:Lorg/apache/harmony/xnet/provider/jsse/SSLSessionImpl;

    invoke-virtual {v0}, Lorg/apache/harmony/xnet/provider/jsse/SSLSessionImpl;->invalidate()V

    :cond_3
    iget-object v0, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLEngineImpl;->alertProtocol:Lorg/apache/harmony/xnet/provider/jsse/AlertProtocol;

    const/4 v1, 0x2

    const/16 v2, 0x50

    invoke-virtual {v0, v1, v2}, Lorg/apache/harmony/xnet/provider/jsse/AlertProtocol;->alert(BB)V

    new-instance v0, Ljavax/net/ssl/SSLException;

    const-string v1, "Inbound is closed before close_notify alert has been received."

    invoke-direct {v0, v1}, Ljavax/net/ssl/SSLException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_4
    invoke-direct {p0}, Lorg/apache/harmony/xnet/provider/jsse/SSLEngineImpl;->shutdown()V

    goto :goto_0
.end method

.method public closeOutbound()V
    .locals 4

    const/4 v3, 0x1

    iget-object v0, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLEngineImpl;->logger:Lorg/apache/harmony/xnet/provider/jsse/Logger$Stream;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLEngineImpl;->logger:Lorg/apache/harmony/xnet/provider/jsse/Logger$Stream;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "closeOutbound() "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLEngineImpl;->isOutboundDone:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/apache/harmony/xnet/provider/jsse/Logger$Stream;->println(Ljava/lang/String;)V

    :cond_0
    iget-boolean v0, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLEngineImpl;->isOutboundDone:Z

    if-eqz v0, :cond_1

    :goto_0
    return-void

    :cond_1
    iput-boolean v3, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLEngineImpl;->isOutboundDone:Z

    iget-boolean v0, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLEngineImpl;->handshake_started:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLEngineImpl;->alertProtocol:Lorg/apache/harmony/xnet/provider/jsse/AlertProtocol;

    const/4 v1, 0x0

    invoke-virtual {v0, v3, v1}, Lorg/apache/harmony/xnet/provider/jsse/AlertProtocol;->alert(BB)V

    iput-boolean v3, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLEngineImpl;->close_notify_was_sent:Z

    :goto_1
    iput-boolean v3, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLEngineImpl;->engine_was_closed:Z

    goto :goto_0

    :cond_2
    invoke-direct {p0}, Lorg/apache/harmony/xnet/provider/jsse/SSLEngineImpl;->shutdown()V

    goto :goto_1
.end method

.method public getDelegatedTask()Ljava/lang/Runnable;
    .locals 1

    iget-object v0, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLEngineImpl;->handshakeProtocol:Lorg/apache/harmony/xnet/provider/jsse/HandshakeProtocol;

    invoke-virtual {v0}, Lorg/apache/harmony/xnet/provider/jsse/HandshakeProtocol;->getTask()Ljava/lang/Runnable;

    move-result-object v0

    return-object v0
.end method

.method public getEnableSessionCreation()Z
    .locals 1

    iget-object v0, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLEngineImpl;->sslParameters:Lorg/apache/harmony/xnet/provider/jsse/SSLParametersImpl;

    invoke-virtual {v0}, Lorg/apache/harmony/xnet/provider/jsse/SSLParametersImpl;->getEnableSessionCreation()Z

    move-result v0

    return v0
.end method

.method public getEnabledCipherSuites()[Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLEngineImpl;->sslParameters:Lorg/apache/harmony/xnet/provider/jsse/SSLParametersImpl;

    invoke-virtual {v0}, Lorg/apache/harmony/xnet/provider/jsse/SSLParametersImpl;->getEnabledCipherSuites()[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getEnabledProtocols()[Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLEngineImpl;->sslParameters:Lorg/apache/harmony/xnet/provider/jsse/SSLParametersImpl;

    invoke-virtual {v0}, Lorg/apache/harmony/xnet/provider/jsse/SSLParametersImpl;->getEnabledProtocols()[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getHandshakeStatus()Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;
    .locals 1

    iget-boolean v0, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLEngineImpl;->handshake_started:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLEngineImpl;->engine_was_shutteddown:Z

    if-eqz v0, :cond_1

    :cond_0
    sget-object v0, Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;->NOT_HANDSHAKING:Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;

    :goto_0
    return-object v0

    :cond_1
    iget-object v0, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLEngineImpl;->alertProtocol:Lorg/apache/harmony/xnet/provider/jsse/AlertProtocol;

    invoke-virtual {v0}, Lorg/apache/harmony/xnet/provider/jsse/AlertProtocol;->hasAlert()Z

    move-result v0

    if-eqz v0, :cond_2

    sget-object v0, Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;->NEED_WRAP:Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;

    goto :goto_0

    :cond_2
    iget-boolean v0, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLEngineImpl;->close_notify_was_sent:Z

    if-eqz v0, :cond_3

    iget-boolean v0, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLEngineImpl;->close_notify_was_received:Z

    if-nez v0, :cond_3

    sget-object v0, Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;->NEED_UNWRAP:Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLEngineImpl;->handshakeProtocol:Lorg/apache/harmony/xnet/provider/jsse/HandshakeProtocol;

    invoke-virtual {v0}, Lorg/apache/harmony/xnet/provider/jsse/HandshakeProtocol;->getStatus()Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;

    move-result-object v0

    goto :goto_0
.end method

.method public getNeedClientAuth()Z
    .locals 1

    iget-object v0, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLEngineImpl;->sslParameters:Lorg/apache/harmony/xnet/provider/jsse/SSLParametersImpl;

    invoke-virtual {v0}, Lorg/apache/harmony/xnet/provider/jsse/SSLParametersImpl;->getNeedClientAuth()Z

    move-result v0

    return v0
.end method

.method public getSession()Ljavax/net/ssl/SSLSession;
    .locals 1

    iget-object v0, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLEngineImpl;->session:Lorg/apache/harmony/xnet/provider/jsse/SSLSessionImpl;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLEngineImpl;->session:Lorg/apache/harmony/xnet/provider/jsse/SSLSessionImpl;

    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Lorg/apache/harmony/xnet/provider/jsse/SSLSessionImpl;->NULL_SESSION:Lorg/apache/harmony/xnet/provider/jsse/SSLSessionImpl;

    goto :goto_0
.end method

.method public getSupportedCipherSuites()[Ljava/lang/String;
    .locals 1

    invoke-static {}, Lorg/apache/harmony/xnet/provider/jsse/CipherSuite;->getSupportedCipherSuiteNames()[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSupportedProtocols()[Ljava/lang/String;
    .locals 1

    sget-object v0, Lorg/apache/harmony/xnet/provider/jsse/ProtocolVersion;->supportedProtocols:[Ljava/lang/String;

    invoke-virtual {v0}, [Ljava/lang/String;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    return-object v0
.end method

.method public getUseClientMode()Z
    .locals 1

    iget-object v0, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLEngineImpl;->sslParameters:Lorg/apache/harmony/xnet/provider/jsse/SSLParametersImpl;

    invoke-virtual {v0}, Lorg/apache/harmony/xnet/provider/jsse/SSLParametersImpl;->getUseClientMode()Z

    move-result v0

    return v0
.end method

.method public getWantClientAuth()Z
    .locals 1

    iget-object v0, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLEngineImpl;->sslParameters:Lorg/apache/harmony/xnet/provider/jsse/SSLParametersImpl;

    invoke-virtual {v0}, Lorg/apache/harmony/xnet/provider/jsse/SSLParametersImpl;->getWantClientAuth()Z

    move-result v0

    return v0
.end method

.method public isInboundDone()Z
    .locals 1

    iget-boolean v0, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLEngineImpl;->isInboundDone:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLEngineImpl;->engine_was_closed:Z

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isOutboundDone()Z
    .locals 1

    iget-boolean v0, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLEngineImpl;->isOutboundDone:Z

    return v0
.end method

.method public setEnableSessionCreation(Z)V
    .locals 1

    iget-object v0, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLEngineImpl;->sslParameters:Lorg/apache/harmony/xnet/provider/jsse/SSLParametersImpl;

    invoke-virtual {v0, p1}, Lorg/apache/harmony/xnet/provider/jsse/SSLParametersImpl;->setEnableSessionCreation(Z)V

    return-void
.end method

.method public setEnabledCipherSuites([Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLEngineImpl;->sslParameters:Lorg/apache/harmony/xnet/provider/jsse/SSLParametersImpl;

    invoke-virtual {v0, p1}, Lorg/apache/harmony/xnet/provider/jsse/SSLParametersImpl;->setEnabledCipherSuites([Ljava/lang/String;)V

    return-void
.end method

.method public setEnabledProtocols([Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLEngineImpl;->sslParameters:Lorg/apache/harmony/xnet/provider/jsse/SSLParametersImpl;

    invoke-virtual {v0, p1}, Lorg/apache/harmony/xnet/provider/jsse/SSLParametersImpl;->setEnabledProtocols([Ljava/lang/String;)V

    return-void
.end method

.method public setNeedClientAuth(Z)V
    .locals 1

    iget-object v0, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLEngineImpl;->sslParameters:Lorg/apache/harmony/xnet/provider/jsse/SSLParametersImpl;

    invoke-virtual {v0, p1}, Lorg/apache/harmony/xnet/provider/jsse/SSLParametersImpl;->setNeedClientAuth(Z)V

    return-void
.end method

.method public setUseClientMode(Z)V
    .locals 2

    iget-boolean v0, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLEngineImpl;->handshake_started:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Could not change the mode after the initial handshake has begun."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget-object v0, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLEngineImpl;->sslParameters:Lorg/apache/harmony/xnet/provider/jsse/SSLParametersImpl;

    invoke-virtual {v0, p1}, Lorg/apache/harmony/xnet/provider/jsse/SSLParametersImpl;->setUseClientMode(Z)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLEngineImpl;->peer_mode_was_set:Z

    return-void
.end method

.method public setWantClientAuth(Z)V
    .locals 1

    iget-object v0, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLEngineImpl;->sslParameters:Lorg/apache/harmony/xnet/provider/jsse/SSLParametersImpl;

    invoke-virtual {v0, p1}, Lorg/apache/harmony/xnet/provider/jsse/SSLParametersImpl;->setWantClientAuth(Z)V

    return-void
.end method

.method public unwrap(Ljava/nio/ByteBuffer;[Ljava/nio/ByteBuffer;II)Ljavax/net/ssl/SSLEngineResult;
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/net/ssl/SSLException;
        }
    .end annotation

    iget-boolean v6, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLEngineImpl;->engine_was_shutteddown:Z

    if-eqz v6, :cond_0

    new-instance v6, Ljavax/net/ssl/SSLEngineResult;

    sget-object v7, Ljavax/net/ssl/SSLEngineResult$Status;->CLOSED:Ljavax/net/ssl/SSLEngineResult$Status;

    sget-object v8, Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;->NOT_HANDSHAKING:Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-direct {v6, v7, v8, v9, v10}, Ljavax/net/ssl/SSLEngineResult;-><init>(Ljavax/net/ssl/SSLEngineResult$Status;Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;II)V

    :goto_0
    return-object v6

    :cond_0
    if-eqz p1, :cond_1

    if-nez p2, :cond_2

    :cond_1
    new-instance v6, Ljava/lang/IllegalStateException;

    const-string v7, "Some of the input parameters are null"

    invoke-direct {v6, v7}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v6

    :cond_2
    iget-boolean v6, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLEngineImpl;->handshake_started:Z

    if-nez v6, :cond_3

    invoke-virtual {p0}, Lorg/apache/harmony/xnet/provider/jsse/SSLEngineImpl;->beginHandshake()V

    :cond_3
    invoke-virtual {p0}, Lorg/apache/harmony/xnet/provider/jsse/SSLEngineImpl;->getHandshakeStatus()Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;

    move-result-object v3

    iget-object v6, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLEngineImpl;->session:Lorg/apache/harmony/xnet/provider/jsse/SSLSessionImpl;

    if-eqz v6, :cond_4

    iget-boolean v6, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLEngineImpl;->engine_was_closed:Z

    if-eqz v6, :cond_6

    :cond_4
    sget-object v6, Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;->NEED_WRAP:Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;

    invoke-virtual {v3, v6}, Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_5

    sget-object v6, Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;->NEED_TASK:Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;

    invoke-virtual {v3, v6}, Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_6

    :cond_5
    new-instance v6, Ljavax/net/ssl/SSLEngineResult;

    invoke-direct {p0}, Lorg/apache/harmony/xnet/provider/jsse/SSLEngineImpl;->getEngineStatus()Ljavax/net/ssl/SSLEngineResult$Status;

    move-result-object v7

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-direct {v6, v7, v3, v8, v9}, Ljavax/net/ssl/SSLEngineResult;-><init>(Ljavax/net/ssl/SSLEngineResult$Status;Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;II)V

    goto :goto_0

    :cond_6
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v6

    iget-object v7, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLEngineImpl;->recordProtocol:Lorg/apache/harmony/xnet/provider/jsse/SSLRecordProtocol;

    invoke-virtual {v7}, Lorg/apache/harmony/xnet/provider/jsse/SSLRecordProtocol;->getMinRecordSize()I

    move-result v7

    if-ge v6, v7, :cond_7

    new-instance v6, Ljavax/net/ssl/SSLEngineResult;

    sget-object v7, Ljavax/net/ssl/SSLEngineResult$Status;->BUFFER_UNDERFLOW:Ljavax/net/ssl/SSLEngineResult$Status;

    invoke-virtual {p0}, Lorg/apache/harmony/xnet/provider/jsse/SSLEngineImpl;->getHandshakeStatus()Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;

    move-result-object v8

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-direct {v6, v7, v8, v9, v10}, Ljavax/net/ssl/SSLEngineResult;-><init>(Ljavax/net/ssl/SSLEngineResult$Status;Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;II)V

    goto :goto_0

    :cond_7
    :try_start_0
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->mark()Ljava/nio/Buffer;

    const/4 v0, 0x0

    move v4, p3

    :goto_1
    add-int v6, p3, p4

    if-ge v4, v6, :cond_b

    aget-object v6, p2, v4

    if-nez v6, :cond_8

    new-instance v6, Ljava/lang/IllegalStateException;

    const-string v7, "Some of the input parameters are null"

    invoke-direct {v6, v7}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v6
    :try_end_0
    .catch Ljava/nio/BufferUnderflowException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lorg/apache/harmony/xnet/provider/jsse/AlertException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljavax/net/ssl/SSLException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_3

    :catch_0
    move-exception v2

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->reset()Ljava/nio/Buffer;

    new-instance v6, Ljavax/net/ssl/SSLEngineResult;

    sget-object v7, Ljavax/net/ssl/SSLEngineResult$Status;->BUFFER_UNDERFLOW:Ljavax/net/ssl/SSLEngineResult$Status;

    invoke-virtual {p0}, Lorg/apache/harmony/xnet/provider/jsse/SSLEngineImpl;->getHandshakeStatus()Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;

    move-result-object v8

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-direct {v6, v7, v8, v9, v10}, Ljavax/net/ssl/SSLEngineResult;-><init>(Ljavax/net/ssl/SSLEngineResult$Status;Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;II)V

    goto :goto_0

    :cond_8
    :try_start_1
    aget-object v6, p2, v4

    invoke-virtual {v6}, Ljava/nio/ByteBuffer;->isReadOnly()Z

    move-result v6

    if-eqz v6, :cond_a

    new-instance v6, Ljava/nio/ReadOnlyBufferException;

    invoke-direct {v6}, Ljava/nio/ReadOnlyBufferException;-><init>()V

    throw v6
    :try_end_1
    .catch Ljava/nio/BufferUnderflowException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Lorg/apache/harmony/xnet/provider/jsse/AlertException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljavax/net/ssl/SSLException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_3

    :catch_1
    move-exception v2

    iget-object v6, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLEngineImpl;->alertProtocol:Lorg/apache/harmony/xnet/provider/jsse/AlertProtocol;

    const/4 v7, 0x2

    invoke-virtual {v2}, Lorg/apache/harmony/xnet/provider/jsse/AlertException;->getDescriptionCode()B

    move-result v8

    invoke-virtual {v6, v7, v8}, Lorg/apache/harmony/xnet/provider/jsse/AlertProtocol;->alert(BB)V

    const/4 v6, 0x1

    iput-boolean v6, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLEngineImpl;->engine_was_closed:Z

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->reset()Ljava/nio/Buffer;

    iget-object v6, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLEngineImpl;->session:Lorg/apache/harmony/xnet/provider/jsse/SSLSessionImpl;

    if-eqz v6, :cond_9

    iget-object v6, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLEngineImpl;->session:Lorg/apache/harmony/xnet/provider/jsse/SSLSessionImpl;

    invoke-virtual {v6}, Lorg/apache/harmony/xnet/provider/jsse/SSLSessionImpl;->invalidate()V

    :cond_9
    invoke-virtual {v2}, Lorg/apache/harmony/xnet/provider/jsse/AlertException;->getReason()Ljavax/net/ssl/SSLException;

    move-result-object v6

    throw v6

    :cond_a
    :try_start_2
    aget-object v6, p2, v4

    invoke-virtual {v6}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v6

    add-int/2addr v0, v6

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_b
    iget-object v6, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLEngineImpl;->recordProtocol:Lorg/apache/harmony/xnet/provider/jsse/SSLRecordProtocol;

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v7

    invoke-virtual {v6, v7}, Lorg/apache/harmony/xnet/provider/jsse/SSLRecordProtocol;->getDataSize(I)I

    move-result v6

    if-ge v0, v6, :cond_c

    new-instance v6, Ljavax/net/ssl/SSLEngineResult;

    sget-object v7, Ljavax/net/ssl/SSLEngineResult$Status;->BUFFER_OVERFLOW:Ljavax/net/ssl/SSLEngineResult$Status;

    invoke-virtual {p0}, Lorg/apache/harmony/xnet/provider/jsse/SSLEngineImpl;->getHandshakeStatus()Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;

    move-result-object v8

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-direct {v6, v7, v8, v9, v10}, Ljavax/net/ssl/SSLEngineResult;-><init>(Ljavax/net/ssl/SSLEngineResult$Status;Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;II)V
    :try_end_2
    .catch Ljava/nio/BufferUnderflowException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Lorg/apache/harmony/xnet/provider/jsse/AlertException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljavax/net/ssl/SSLException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_3

    goto/16 :goto_0

    :catch_2
    move-exception v2

    throw v2

    :cond_c
    :try_start_3
    iget-object v6, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLEngineImpl;->recProtIS:Lorg/apache/harmony/xnet/provider/jsse/SSLBufferedInput;

    invoke-virtual {v6, p1}, Lorg/apache/harmony/xnet/provider/jsse/SSLBufferedInput;->setSourceBuffer(Ljava/nio/ByteBuffer;)V

    iget-object v6, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLEngineImpl;->recordProtocol:Lorg/apache/harmony/xnet/provider/jsse/SSLRecordProtocol;

    invoke-virtual {v6}, Lorg/apache/harmony/xnet/provider/jsse/SSLRecordProtocol;->unwrap()I

    move-result v5

    packed-switch v5, :pswitch_data_0

    :cond_d
    :goto_2
    :pswitch_0
    new-instance v6, Ljavax/net/ssl/SSLEngineResult;

    invoke-direct {p0}, Lorg/apache/harmony/xnet/provider/jsse/SSLEngineImpl;->getEngineStatus()Ljavax/net/ssl/SSLEngineResult$Status;

    move-result-object v7

    invoke-virtual {p0}, Lorg/apache/harmony/xnet/provider/jsse/SSLEngineImpl;->getHandshakeStatus()Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;

    move-result-object v8

    iget-object v9, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLEngineImpl;->recProtIS:Lorg/apache/harmony/xnet/provider/jsse/SSLBufferedInput;

    invoke-virtual {v9}, Lorg/apache/harmony/xnet/provider/jsse/SSLBufferedInput;->consumed()I

    move-result v9

    iget-object v10, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLEngineImpl;->appData:Lorg/apache/harmony/xnet/provider/jsse/SSLEngineAppData;

    invoke-virtual {v10, p2, p3, p4}, Lorg/apache/harmony/xnet/provider/jsse/SSLEngineAppData;->placeTo([Ljava/nio/ByteBuffer;II)I

    move-result v10

    invoke-direct {v6, v7, v8, v9, v10}, Ljavax/net/ssl/SSLEngineResult;-><init>(Ljavax/net/ssl/SSLEngineResult$Status;Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;II)V
    :try_end_3
    .catch Ljava/nio/BufferUnderflowException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Lorg/apache/harmony/xnet/provider/jsse/AlertException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljavax/net/ssl/SSLException; {:try_start_3 .. :try_end_3} :catch_2
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_3

    goto/16 :goto_0

    :catch_3
    move-exception v2

    iget-object v6, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLEngineImpl;->alertProtocol:Lorg/apache/harmony/xnet/provider/jsse/AlertProtocol;

    const/4 v7, 0x2

    const/16 v8, 0x50

    invoke-virtual {v6, v7, v8}, Lorg/apache/harmony/xnet/provider/jsse/AlertProtocol;->alert(BB)V

    const/4 v6, 0x1

    iput-boolean v6, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLEngineImpl;->engine_was_closed:Z

    new-instance v6, Ljavax/net/ssl/SSLException;

    invoke-virtual {v2}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljavax/net/ssl/SSLException;-><init>(Ljava/lang/String;)V

    throw v6

    :pswitch_1
    :try_start_4
    iget-object v6, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLEngineImpl;->handshakeProtocol:Lorg/apache/harmony/xnet/provider/jsse/HandshakeProtocol;

    invoke-virtual {v6}, Lorg/apache/harmony/xnet/provider/jsse/HandshakeProtocol;->getStatus()Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;

    move-result-object v6

    sget-object v7, Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;->FINISHED:Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;

    invoke-virtual {v6, v7}, Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_d

    iget-object v6, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLEngineImpl;->recordProtocol:Lorg/apache/harmony/xnet/provider/jsse/SSLRecordProtocol;

    invoke-virtual {v6}, Lorg/apache/harmony/xnet/provider/jsse/SSLRecordProtocol;->getSession()Lorg/apache/harmony/xnet/provider/jsse/SSLSessionImpl;

    move-result-object v6

    iput-object v6, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLEngineImpl;->session:Lorg/apache/harmony/xnet/provider/jsse/SSLSessionImpl;

    goto :goto_2

    :pswitch_2
    iget-object v6, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLEngineImpl;->alertProtocol:Lorg/apache/harmony/xnet/provider/jsse/AlertProtocol;

    invoke-virtual {v6}, Lorg/apache/harmony/xnet/provider/jsse/AlertProtocol;->isFatalAlert()Z

    move-result v6

    if-eqz v6, :cond_f

    iget-object v6, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLEngineImpl;->alertProtocol:Lorg/apache/harmony/xnet/provider/jsse/AlertProtocol;

    invoke-virtual {v6}, Lorg/apache/harmony/xnet/provider/jsse/AlertProtocol;->setProcessed()V

    iget-object v6, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLEngineImpl;->session:Lorg/apache/harmony/xnet/provider/jsse/SSLSessionImpl;

    if-eqz v6, :cond_e

    iget-object v6, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLEngineImpl;->session:Lorg/apache/harmony/xnet/provider/jsse/SSLSessionImpl;

    invoke-virtual {v6}, Lorg/apache/harmony/xnet/provider/jsse/SSLSessionImpl;->invalidate()V

    :cond_e
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Fatal alert received "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLEngineImpl;->alertProtocol:Lorg/apache/harmony/xnet/provider/jsse/AlertProtocol;

    invoke-virtual {v7}, Lorg/apache/harmony/xnet/provider/jsse/AlertProtocol;->getAlertDescription()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0}, Lorg/apache/harmony/xnet/provider/jsse/SSLEngineImpl;->shutdown()V

    new-instance v6, Ljavax/net/ssl/SSLException;

    invoke-direct {v6, v1}, Ljavax/net/ssl/SSLException;-><init>(Ljava/lang/String;)V

    throw v6

    :cond_f
    iget-object v6, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLEngineImpl;->logger:Lorg/apache/harmony/xnet/provider/jsse/Logger$Stream;

    if-eqz v6, :cond_10

    iget-object v6, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLEngineImpl;->logger:Lorg/apache/harmony/xnet/provider/jsse/Logger$Stream;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Warning allert has been received: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLEngineImpl;->alertProtocol:Lorg/apache/harmony/xnet/provider/jsse/AlertProtocol;

    invoke-virtual {v8}, Lorg/apache/harmony/xnet/provider/jsse/AlertProtocol;->getAlertDescription()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lorg/apache/harmony/xnet/provider/jsse/Logger$Stream;->println(Ljava/lang/String;)V

    :cond_10
    iget-object v6, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLEngineImpl;->alertProtocol:Lorg/apache/harmony/xnet/provider/jsse/AlertProtocol;

    invoke-virtual {v6}, Lorg/apache/harmony/xnet/provider/jsse/AlertProtocol;->getDescriptionCode()B

    move-result v6

    sparse-switch v6, :sswitch_data_0

    iget-object v6, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLEngineImpl;->alertProtocol:Lorg/apache/harmony/xnet/provider/jsse/AlertProtocol;

    invoke-virtual {v6}, Lorg/apache/harmony/xnet/provider/jsse/AlertProtocol;->setProcessed()V

    goto/16 :goto_2

    :sswitch_0
    iget-object v6, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLEngineImpl;->alertProtocol:Lorg/apache/harmony/xnet/provider/jsse/AlertProtocol;

    invoke-virtual {v6}, Lorg/apache/harmony/xnet/provider/jsse/AlertProtocol;->setProcessed()V

    const/4 v6, 0x1

    iput-boolean v6, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLEngineImpl;->close_notify_was_received:Z

    iget-boolean v6, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLEngineImpl;->close_notify_was_sent:Z

    if-nez v6, :cond_11

    invoke-virtual {p0}, Lorg/apache/harmony/xnet/provider/jsse/SSLEngineImpl;->closeOutbound()V

    invoke-virtual {p0}, Lorg/apache/harmony/xnet/provider/jsse/SSLEngineImpl;->closeInbound()V

    goto/16 :goto_2

    :cond_11
    invoke-virtual {p0}, Lorg/apache/harmony/xnet/provider/jsse/SSLEngineImpl;->closeInbound()V

    invoke-direct {p0}, Lorg/apache/harmony/xnet/provider/jsse/SSLEngineImpl;->shutdown()V

    goto/16 :goto_2

    :sswitch_1
    iget-object v6, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLEngineImpl;->alertProtocol:Lorg/apache/harmony/xnet/provider/jsse/AlertProtocol;

    invoke-virtual {v6}, Lorg/apache/harmony/xnet/provider/jsse/AlertProtocol;->setProcessed()V

    iget-object v6, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLEngineImpl;->session:Lorg/apache/harmony/xnet/provider/jsse/SSLSessionImpl;

    if-nez v6, :cond_12

    new-instance v6, Lorg/apache/harmony/xnet/provider/jsse/AlertException;

    const/16 v7, 0x28

    new-instance v8, Ljavax/net/ssl/SSLHandshakeException;

    const-string v9, "Received no_renegotiation during the initial handshake"

    invoke-direct {v8, v9}, Ljavax/net/ssl/SSLHandshakeException;-><init>(Ljava/lang/String;)V

    invoke-direct {v6, v7, v8}, Lorg/apache/harmony/xnet/provider/jsse/AlertException;-><init>(BLjavax/net/ssl/SSLException;)V

    throw v6

    :cond_12
    iget-object v6, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLEngineImpl;->handshakeProtocol:Lorg/apache/harmony/xnet/provider/jsse/HandshakeProtocol;

    invoke-virtual {v6}, Lorg/apache/harmony/xnet/provider/jsse/HandshakeProtocol;->stop()V
    :try_end_4
    .catch Ljava/nio/BufferUnderflowException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Lorg/apache/harmony/xnet/provider/jsse/AlertException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Ljavax/net/ssl/SSLException; {:try_start_4 .. :try_end_4} :catch_2
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3

    goto/16 :goto_2

    nop

    :pswitch_data_0
    .packed-switch 0x14
        :pswitch_1
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x64 -> :sswitch_1
    .end sparse-switch
.end method

.method public wrap([Ljava/nio/ByteBuffer;IILjava/nio/ByteBuffer;)Ljavax/net/ssl/SSLEngineResult;
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/net/ssl/SSLException;
        }
    .end annotation

    const/4 v10, 0x2

    const/4 v9, 0x0

    iget-boolean v5, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLEngineImpl;->engine_was_shutteddown:Z

    if-eqz v5, :cond_0

    new-instance v5, Ljavax/net/ssl/SSLEngineResult;

    sget-object v6, Ljavax/net/ssl/SSLEngineResult$Status;->CLOSED:Ljavax/net/ssl/SSLEngineResult$Status;

    sget-object v7, Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;->NOT_HANDSHAKING:Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;

    invoke-direct {v5, v6, v7, v9, v9}, Ljavax/net/ssl/SSLEngineResult;-><init>(Ljavax/net/ssl/SSLEngineResult$Status;Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;II)V

    :goto_0
    return-object v5

    :cond_0
    if-eqz p1, :cond_1

    if-nez p4, :cond_2

    :cond_1
    new-instance v5, Ljava/lang/IllegalStateException;

    const-string v6, "Some of the input parameters are null"

    invoke-direct {v5, v6}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v5

    :cond_2
    invoke-virtual {p4}, Ljava/nio/ByteBuffer;->isReadOnly()Z

    move-result v5

    if-eqz v5, :cond_3

    new-instance v5, Ljava/nio/ReadOnlyBufferException;

    invoke-direct {v5}, Ljava/nio/ReadOnlyBufferException;-><init>()V

    throw v5

    :cond_3
    iget-boolean v5, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLEngineImpl;->handshake_started:Z

    if-nez v5, :cond_4

    invoke-virtual {p0}, Lorg/apache/harmony/xnet/provider/jsse/SSLEngineImpl;->beginHandshake()V

    :cond_4
    invoke-virtual {p0}, Lorg/apache/harmony/xnet/provider/jsse/SSLEngineImpl;->getHandshakeStatus()Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;

    move-result-object v3

    iget-object v5, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLEngineImpl;->session:Lorg/apache/harmony/xnet/provider/jsse/SSLSessionImpl;

    if-eqz v5, :cond_5

    iget-boolean v5, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLEngineImpl;->engine_was_closed:Z

    if-eqz v5, :cond_7

    :cond_5
    sget-object v5, Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;->NEED_UNWRAP:Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;

    invoke-virtual {v3, v5}, Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_6

    sget-object v5, Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;->NEED_TASK:Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;

    invoke-virtual {v3, v5}, Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_7

    :cond_6
    new-instance v5, Ljavax/net/ssl/SSLEngineResult;

    invoke-direct {p0}, Lorg/apache/harmony/xnet/provider/jsse/SSLEngineImpl;->getEngineStatus()Ljavax/net/ssl/SSLEngineResult$Status;

    move-result-object v6

    invoke-direct {v5, v6, v3, v9, v9}, Ljavax/net/ssl/SSLEngineResult;-><init>(Ljavax/net/ssl/SSLEngineResult$Status;Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;II)V

    goto :goto_0

    :cond_7
    invoke-virtual {p4}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v1

    const/4 v4, 0x0

    iget-object v5, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLEngineImpl;->alertProtocol:Lorg/apache/harmony/xnet/provider/jsse/AlertProtocol;

    invoke-virtual {v5}, Lorg/apache/harmony/xnet/provider/jsse/AlertProtocol;->hasAlert()Z

    move-result v5

    if-eqz v5, :cond_c

    iget-object v5, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLEngineImpl;->recordProtocol:Lorg/apache/harmony/xnet/provider/jsse/SSLRecordProtocol;

    invoke-virtual {v5, v10}, Lorg/apache/harmony/xnet/provider/jsse/SSLRecordProtocol;->getRecordSize(I)I

    move-result v5

    if-ge v1, v5, :cond_8

    new-instance v5, Ljavax/net/ssl/SSLEngineResult;

    sget-object v6, Ljavax/net/ssl/SSLEngineResult$Status;->BUFFER_OVERFLOW:Ljavax/net/ssl/SSLEngineResult$Status;

    invoke-direct {v5, v6, v3, v9, v9}, Ljavax/net/ssl/SSLEngineResult;-><init>(Ljavax/net/ssl/SSLEngineResult$Status;Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;II)V

    goto :goto_0

    :cond_8
    iget-object v5, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLEngineImpl;->alertProtocol:Lorg/apache/harmony/xnet/provider/jsse/AlertProtocol;

    invoke-virtual {v5}, Lorg/apache/harmony/xnet/provider/jsse/AlertProtocol;->wrap()[B

    move-result-object v0

    invoke-virtual {p4, v0}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    iget-object v5, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLEngineImpl;->alertProtocol:Lorg/apache/harmony/xnet/provider/jsse/AlertProtocol;

    invoke-virtual {v5}, Lorg/apache/harmony/xnet/provider/jsse/AlertProtocol;->isFatalAlert()Z

    move-result v5

    if-eqz v5, :cond_a

    iget-object v5, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLEngineImpl;->alertProtocol:Lorg/apache/harmony/xnet/provider/jsse/AlertProtocol;

    invoke-virtual {v5}, Lorg/apache/harmony/xnet/provider/jsse/AlertProtocol;->setProcessed()V

    iget-object v5, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLEngineImpl;->session:Lorg/apache/harmony/xnet/provider/jsse/SSLSessionImpl;

    if-eqz v5, :cond_9

    iget-object v5, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLEngineImpl;->session:Lorg/apache/harmony/xnet/provider/jsse/SSLSessionImpl;

    invoke-virtual {v5}, Lorg/apache/harmony/xnet/provider/jsse/SSLSessionImpl;->invalidate()V

    :cond_9
    invoke-direct {p0}, Lorg/apache/harmony/xnet/provider/jsse/SSLEngineImpl;->shutdown()V

    new-instance v5, Ljavax/net/ssl/SSLEngineResult;

    sget-object v6, Ljavax/net/ssl/SSLEngineResult$Status;->CLOSED:Ljavax/net/ssl/SSLEngineResult$Status;

    sget-object v7, Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;->NOT_HANDSHAKING:Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;

    array-length v8, v0

    invoke-direct {v5, v6, v7, v9, v8}, Ljavax/net/ssl/SSLEngineResult;-><init>(Ljavax/net/ssl/SSLEngineResult$Status;Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;II)V

    goto/16 :goto_0

    :cond_a
    iget-object v5, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLEngineImpl;->alertProtocol:Lorg/apache/harmony/xnet/provider/jsse/AlertProtocol;

    invoke-virtual {v5}, Lorg/apache/harmony/xnet/provider/jsse/AlertProtocol;->setProcessed()V

    iget-boolean v5, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLEngineImpl;->close_notify_was_sent:Z

    if-eqz v5, :cond_b

    iget-boolean v5, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLEngineImpl;->close_notify_was_received:Z

    if-eqz v5, :cond_b

    invoke-direct {p0}, Lorg/apache/harmony/xnet/provider/jsse/SSLEngineImpl;->shutdown()V

    new-instance v5, Ljavax/net/ssl/SSLEngineResult;

    sget-object v6, Ljavax/net/ssl/SSLEngineResult$Status;->CLOSED:Ljavax/net/ssl/SSLEngineResult$Status;

    sget-object v7, Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;->NOT_HANDSHAKING:Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;

    array-length v8, v0

    invoke-direct {v5, v6, v7, v9, v8}, Ljavax/net/ssl/SSLEngineResult;-><init>(Ljavax/net/ssl/SSLEngineResult$Status;Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;II)V

    goto/16 :goto_0

    :cond_b
    new-instance v5, Ljavax/net/ssl/SSLEngineResult;

    invoke-direct {p0}, Lorg/apache/harmony/xnet/provider/jsse/SSLEngineImpl;->getEngineStatus()Ljavax/net/ssl/SSLEngineResult$Status;

    move-result-object v6

    invoke-virtual {p0}, Lorg/apache/harmony/xnet/provider/jsse/SSLEngineImpl;->getHandshakeStatus()Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;

    move-result-object v7

    array-length v8, v0

    invoke-direct {v5, v6, v7, v9, v8}, Ljavax/net/ssl/SSLEngineResult;-><init>(Ljavax/net/ssl/SSLEngineResult$Status;Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;II)V

    goto/16 :goto_0

    :cond_c
    iget-object v5, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLEngineImpl;->recordProtocol:Lorg/apache/harmony/xnet/provider/jsse/SSLRecordProtocol;

    invoke-virtual {v5}, Lorg/apache/harmony/xnet/provider/jsse/SSLRecordProtocol;->getMinRecordSize()I

    move-result v5

    if-ge v1, v5, :cond_e

    iget-object v5, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLEngineImpl;->logger:Lorg/apache/harmony/xnet/provider/jsse/Logger$Stream;

    if-eqz v5, :cond_d

    iget-object v5, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLEngineImpl;->logger:Lorg/apache/harmony/xnet/provider/jsse/Logger$Stream;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Capacity of the destination("

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ") < MIN_PACKET_SIZE("

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLEngineImpl;->recordProtocol:Lorg/apache/harmony/xnet/provider/jsse/SSLRecordProtocol;

    invoke-virtual {v7}, Lorg/apache/harmony/xnet/provider/jsse/SSLRecordProtocol;->getMinRecordSize()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ")"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lorg/apache/harmony/xnet/provider/jsse/Logger$Stream;->println(Ljava/lang/String;)V

    :cond_d
    new-instance v5, Ljavax/net/ssl/SSLEngineResult;

    sget-object v6, Ljavax/net/ssl/SSLEngineResult$Status;->BUFFER_OVERFLOW:Ljavax/net/ssl/SSLEngineResult$Status;

    invoke-direct {v5, v6, v3, v9, v9}, Ljavax/net/ssl/SSLEngineResult;-><init>(Ljavax/net/ssl/SSLEngineResult$Status;Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;II)V

    goto/16 :goto_0

    :cond_e
    :try_start_0
    sget-object v5, Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;->NEED_WRAP:Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;

    invoke-virtual {v3, v5}, Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_14

    iget-object v5, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLEngineImpl;->dataStream:Lorg/apache/harmony/xnet/provider/jsse/SSLEngineDataStream;

    invoke-virtual {v5, p1, p2, p3}, Lorg/apache/harmony/xnet/provider/jsse/SSLEngineDataStream;->setSourceBuffers([Ljava/nio/ByteBuffer;II)V

    const/16 v5, 0x4805

    if-ge v1, v5, :cond_11

    iget-object v5, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLEngineImpl;->recordProtocol:Lorg/apache/harmony/xnet/provider/jsse/SSLRecordProtocol;

    iget-object v6, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLEngineImpl;->dataStream:Lorg/apache/harmony/xnet/provider/jsse/SSLEngineDataStream;

    invoke-virtual {v6}, Lorg/apache/harmony/xnet/provider/jsse/SSLEngineDataStream;->available()I

    move-result v6

    invoke-virtual {v5, v6}, Lorg/apache/harmony/xnet/provider/jsse/SSLRecordProtocol;->getRecordSize(I)I

    move-result v5

    if-ge v1, v5, :cond_11

    iget-object v5, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLEngineImpl;->logger:Lorg/apache/harmony/xnet/provider/jsse/Logger$Stream;

    if-eqz v5, :cond_f

    iget-object v5, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLEngineImpl;->logger:Lorg/apache/harmony/xnet/provider/jsse/Logger$Stream;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "The destination buffer("

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ") can not take the resulting packet("

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLEngineImpl;->recordProtocol:Lorg/apache/harmony/xnet/provider/jsse/SSLRecordProtocol;

    iget-object v8, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLEngineImpl;->dataStream:Lorg/apache/harmony/xnet/provider/jsse/SSLEngineDataStream;

    invoke-virtual {v8}, Lorg/apache/harmony/xnet/provider/jsse/SSLEngineDataStream;->available()I

    move-result v8

    invoke-virtual {v7, v8}, Lorg/apache/harmony/xnet/provider/jsse/SSLRecordProtocol;->getRecordSize(I)I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ")"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lorg/apache/harmony/xnet/provider/jsse/Logger$Stream;->println(Ljava/lang/String;)V

    :cond_f
    new-instance v5, Ljavax/net/ssl/SSLEngineResult;

    sget-object v6, Ljavax/net/ssl/SSLEngineResult$Status;->BUFFER_OVERFLOW:Ljavax/net/ssl/SSLEngineResult$Status;

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-direct {v5, v6, v3, v7, v8}, Ljavax/net/ssl/SSLEngineResult;-><init>(Ljavax/net/ssl/SSLEngineResult$Status;Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;II)V
    :try_end_0
    .catch Lorg/apache/harmony/xnet/provider/jsse/AlertException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    :catch_0
    move-exception v2

    iget-object v5, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLEngineImpl;->alertProtocol:Lorg/apache/harmony/xnet/provider/jsse/AlertProtocol;

    invoke-virtual {v2}, Lorg/apache/harmony/xnet/provider/jsse/AlertException;->getDescriptionCode()B

    move-result v6

    invoke-virtual {v5, v10, v6}, Lorg/apache/harmony/xnet/provider/jsse/AlertProtocol;->alert(BB)V

    const/4 v5, 0x1

    iput-boolean v5, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLEngineImpl;->engine_was_closed:Z

    iget-object v5, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLEngineImpl;->session:Lorg/apache/harmony/xnet/provider/jsse/SSLSessionImpl;

    if-eqz v5, :cond_10

    iget-object v5, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLEngineImpl;->session:Lorg/apache/harmony/xnet/provider/jsse/SSLSessionImpl;

    invoke-virtual {v5}, Lorg/apache/harmony/xnet/provider/jsse/SSLSessionImpl;->invalidate()V

    :cond_10
    invoke-virtual {v2}, Lorg/apache/harmony/xnet/provider/jsse/AlertException;->getReason()Ljavax/net/ssl/SSLException;

    move-result-object v5

    throw v5

    :cond_11
    :try_start_1
    iget-object v5, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLEngineImpl;->remaining_wrapped_data:[B

    if-nez v5, :cond_12

    iget-object v5, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLEngineImpl;->recordProtocol:Lorg/apache/harmony/xnet/provider/jsse/SSLRecordProtocol;

    const/16 v6, 0x17

    iget-object v7, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLEngineImpl;->dataStream:Lorg/apache/harmony/xnet/provider/jsse/SSLEngineDataStream;

    invoke-virtual {v5, v6, v7}, Lorg/apache/harmony/xnet/provider/jsse/SSLRecordProtocol;->wrap(BLorg/apache/harmony/xnet/provider/jsse/DataStream;)[B

    move-result-object v5

    iput-object v5, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLEngineImpl;->remaining_wrapped_data:[B

    :cond_12
    iget-object v5, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLEngineImpl;->remaining_wrapped_data:[B

    array-length v5, v5

    if-ge v1, v5, :cond_13

    new-instance v5, Ljavax/net/ssl/SSLEngineResult;

    sget-object v6, Ljavax/net/ssl/SSLEngineResult$Status;->BUFFER_OVERFLOW:Ljavax/net/ssl/SSLEngineResult$Status;

    iget-object v7, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLEngineImpl;->dataStream:Lorg/apache/harmony/xnet/provider/jsse/SSLEngineDataStream;

    invoke-virtual {v7}, Lorg/apache/harmony/xnet/provider/jsse/SSLEngineDataStream;->consumed()I

    move-result v7

    const/4 v8, 0x0

    invoke-direct {v5, v6, v3, v7, v8}, Ljavax/net/ssl/SSLEngineResult;-><init>(Ljavax/net/ssl/SSLEngineResult$Status;Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;II)V

    goto/16 :goto_0

    :cond_13
    iget-object v5, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLEngineImpl;->remaining_wrapped_data:[B

    invoke-virtual {p4, v5}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    iget-object v5, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLEngineImpl;->remaining_wrapped_data:[B

    array-length v4, v5

    const/4 v5, 0x0

    iput-object v5, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLEngineImpl;->remaining_wrapped_data:[B

    new-instance v5, Ljavax/net/ssl/SSLEngineResult;

    invoke-direct {p0}, Lorg/apache/harmony/xnet/provider/jsse/SSLEngineImpl;->getEngineStatus()Ljavax/net/ssl/SSLEngineResult$Status;

    move-result-object v6

    iget-object v7, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLEngineImpl;->dataStream:Lorg/apache/harmony/xnet/provider/jsse/SSLEngineDataStream;

    invoke-virtual {v7}, Lorg/apache/harmony/xnet/provider/jsse/SSLEngineDataStream;->consumed()I

    move-result v7

    invoke-direct {v5, v6, v3, v7, v4}, Ljavax/net/ssl/SSLEngineResult;-><init>(Ljavax/net/ssl/SSLEngineResult$Status;Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;II)V

    goto/16 :goto_0

    :cond_14
    iget-object v5, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLEngineImpl;->remaining_hsh_data:[B

    if-nez v5, :cond_15

    iget-object v5, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLEngineImpl;->handshakeProtocol:Lorg/apache/harmony/xnet/provider/jsse/HandshakeProtocol;

    invoke-virtual {v5}, Lorg/apache/harmony/xnet/provider/jsse/HandshakeProtocol;->wrap()[B

    move-result-object v5

    iput-object v5, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLEngineImpl;->remaining_hsh_data:[B

    :cond_15
    iget-object v5, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLEngineImpl;->remaining_hsh_data:[B

    array-length v5, v5

    if-ge v1, v5, :cond_16

    new-instance v5, Ljavax/net/ssl/SSLEngineResult;

    sget-object v6, Ljavax/net/ssl/SSLEngineResult$Status;->BUFFER_OVERFLOW:Ljavax/net/ssl/SSLEngineResult$Status;

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-direct {v5, v6, v3, v7, v8}, Ljavax/net/ssl/SSLEngineResult;-><init>(Ljavax/net/ssl/SSLEngineResult$Status;Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;II)V

    goto/16 :goto_0

    :cond_16
    iget-object v5, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLEngineImpl;->remaining_hsh_data:[B

    invoke-virtual {p4, v5}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    iget-object v5, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLEngineImpl;->remaining_hsh_data:[B

    array-length v4, v5

    const/4 v5, 0x0

    iput-object v5, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLEngineImpl;->remaining_hsh_data:[B

    iget-object v5, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLEngineImpl;->handshakeProtocol:Lorg/apache/harmony/xnet/provider/jsse/HandshakeProtocol;

    invoke-virtual {v5}, Lorg/apache/harmony/xnet/provider/jsse/HandshakeProtocol;->getStatus()Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;

    move-result-object v3

    sget-object v5, Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;->FINISHED:Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;

    invoke-virtual {v3, v5}, Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_17

    iget-object v5, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLEngineImpl;->recordProtocol:Lorg/apache/harmony/xnet/provider/jsse/SSLRecordProtocol;

    invoke-virtual {v5}, Lorg/apache/harmony/xnet/provider/jsse/SSLRecordProtocol;->getSession()Lorg/apache/harmony/xnet/provider/jsse/SSLSessionImpl;

    move-result-object v5

    iput-object v5, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLEngineImpl;->session:Lorg/apache/harmony/xnet/provider/jsse/SSLSessionImpl;

    :cond_17
    new-instance v5, Ljavax/net/ssl/SSLEngineResult;

    invoke-direct {p0}, Lorg/apache/harmony/xnet/provider/jsse/SSLEngineImpl;->getEngineStatus()Ljavax/net/ssl/SSLEngineResult$Status;

    move-result-object v6

    invoke-virtual {p0}, Lorg/apache/harmony/xnet/provider/jsse/SSLEngineImpl;->getHandshakeStatus()Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;

    move-result-object v7

    const/4 v8, 0x0

    invoke-direct {v5, v6, v7, v8, v4}, Ljavax/net/ssl/SSLEngineResult;-><init>(Ljavax/net/ssl/SSLEngineResult$Status;Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;II)V
    :try_end_1
    .catch Lorg/apache/harmony/xnet/provider/jsse/AlertException; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0
.end method
