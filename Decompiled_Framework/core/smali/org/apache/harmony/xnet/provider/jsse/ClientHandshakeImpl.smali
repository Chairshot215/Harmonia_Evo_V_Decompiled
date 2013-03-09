.class public Lorg/apache/harmony/xnet/provider/jsse/ClientHandshakeImpl;
.super Lorg/apache/harmony/xnet/provider/jsse/HandshakeProtocol;
.source "ClientHandshakeImpl.java"


# direct methods
.method constructor <init>(Ljava/lang/Object;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/apache/harmony/xnet/provider/jsse/HandshakeProtocol;-><init>(Ljava/lang/Object;)V

    return-void
.end method

.method private findSessionToResume()Lorg/apache/harmony/xnet/provider/jsse/SSLSessionImpl;
    .locals 5

    const/4 v1, 0x0

    const/4 v2, -0x1

    iget-object v4, p0, Lorg/apache/harmony/xnet/provider/jsse/HandshakeProtocol;->engineOwner:Lorg/apache/harmony/xnet/provider/jsse/SSLEngineImpl;

    if-eqz v4, :cond_2

    iget-object v4, p0, Lorg/apache/harmony/xnet/provider/jsse/HandshakeProtocol;->engineOwner:Lorg/apache/harmony/xnet/provider/jsse/SSLEngineImpl;

    invoke-virtual {v4}, Lorg/apache/harmony/xnet/provider/jsse/SSLEngineImpl;->getPeerHost()Ljava/lang/String;

    move-result-object v1

    iget-object v4, p0, Lorg/apache/harmony/xnet/provider/jsse/HandshakeProtocol;->engineOwner:Lorg/apache/harmony/xnet/provider/jsse/SSLEngineImpl;

    invoke-virtual {v4}, Lorg/apache/harmony/xnet/provider/jsse/SSLEngineImpl;->getPeerPort()I

    move-result v2

    :goto_0
    if-eqz v1, :cond_0

    const/4 v4, -0x1

    if-ne v2, v4, :cond_3

    :cond_0
    const/4 v3, 0x0

    :cond_1
    :goto_1
    return-object v3

    :cond_2
    iget-object v4, p0, Lorg/apache/harmony/xnet/provider/jsse/HandshakeProtocol;->socketOwner:Lorg/apache/harmony/xnet/provider/jsse/SSLSocketImpl;

    invoke-virtual {v4}, Lorg/apache/harmony/xnet/provider/jsse/SSLSocketImpl;->getInetAddress()Ljava/net/InetAddress;

    move-result-object v4

    invoke-virtual {v4}, Ljava/net/InetAddress;->getHostName()Ljava/lang/String;

    move-result-object v1

    iget-object v4, p0, Lorg/apache/harmony/xnet/provider/jsse/HandshakeProtocol;->socketOwner:Lorg/apache/harmony/xnet/provider/jsse/SSLSocketImpl;

    invoke-virtual {v4}, Lorg/apache/harmony/xnet/provider/jsse/SSLSocketImpl;->getPort()I

    move-result v2

    goto :goto_0

    :cond_3
    iget-object v4, p0, Lorg/apache/harmony/xnet/provider/jsse/HandshakeProtocol;->parameters:Lorg/apache/harmony/xnet/provider/jsse/SSLParametersImpl;

    invoke-virtual {v4}, Lorg/apache/harmony/xnet/provider/jsse/SSLParametersImpl;->getClientSessionContext()Lorg/apache/harmony/xnet/provider/jsse/ClientSessionContext;

    move-result-object v0

    invoke-virtual {v0, v1, v2}, Lorg/apache/harmony/xnet/provider/jsse/ClientSessionContext;->getSession(Ljava/lang/String;I)Ljavax/net/ssl/SSLSession;

    move-result-object v3

    check-cast v3, Lorg/apache/harmony/xnet/provider/jsse/SSLSessionImpl;

    if-eqz v3, :cond_1

    invoke-virtual {v3}, Lorg/apache/harmony/xnet/provider/jsse/SSLSessionImpl;->clone()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/apache/harmony/xnet/provider/jsse/SSLSessionImpl;

    goto :goto_1
.end method

.method private renegotiateNewSession()V
    .locals 3

    iget-object v0, p0, Lorg/apache/harmony/xnet/provider/jsse/HandshakeProtocol;->parameters:Lorg/apache/harmony/xnet/provider/jsse/SSLParametersImpl;

    invoke-virtual {v0}, Lorg/apache/harmony/xnet/provider/jsse/SSLParametersImpl;->getEnableSessionCreation()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/apache/harmony/xnet/provider/jsse/HandshakeProtocol;->isResuming:Z

    new-instance v0, Lorg/apache/harmony/xnet/provider/jsse/SSLSessionImpl;

    iget-object v1, p0, Lorg/apache/harmony/xnet/provider/jsse/HandshakeProtocol;->parameters:Lorg/apache/harmony/xnet/provider/jsse/SSLParametersImpl;

    invoke-virtual {v1}, Lorg/apache/harmony/xnet/provider/jsse/SSLParametersImpl;->getSecureRandom()Ljava/security/SecureRandom;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/apache/harmony/xnet/provider/jsse/SSLSessionImpl;-><init>(Ljava/security/SecureRandom;)V

    iput-object v0, p0, Lorg/apache/harmony/xnet/provider/jsse/HandshakeProtocol;->session:Lorg/apache/harmony/xnet/provider/jsse/SSLSessionImpl;

    iget-object v0, p0, Lorg/apache/harmony/xnet/provider/jsse/HandshakeProtocol;->engineOwner:Lorg/apache/harmony/xnet/provider/jsse/SSLEngineImpl;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/apache/harmony/xnet/provider/jsse/HandshakeProtocol;->session:Lorg/apache/harmony/xnet/provider/jsse/SSLSessionImpl;

    iget-object v1, p0, Lorg/apache/harmony/xnet/provider/jsse/HandshakeProtocol;->engineOwner:Lorg/apache/harmony/xnet/provider/jsse/SSLEngineImpl;

    invoke-virtual {v1}, Lorg/apache/harmony/xnet/provider/jsse/SSLEngineImpl;->getPeerHost()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lorg/apache/harmony/xnet/provider/jsse/HandshakeProtocol;->engineOwner:Lorg/apache/harmony/xnet/provider/jsse/SSLEngineImpl;

    invoke-virtual {v2}, Lorg/apache/harmony/xnet/provider/jsse/SSLEngineImpl;->getPeerPort()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lorg/apache/harmony/xnet/provider/jsse/SSLSessionImpl;->setPeer(Ljava/lang/String;I)V

    :goto_0
    iget-object v0, p0, Lorg/apache/harmony/xnet/provider/jsse/HandshakeProtocol;->session:Lorg/apache/harmony/xnet/provider/jsse/SSLSessionImpl;

    iget-object v1, p0, Lorg/apache/harmony/xnet/provider/jsse/HandshakeProtocol;->parameters:Lorg/apache/harmony/xnet/provider/jsse/SSLParametersImpl;

    invoke-virtual {v1}, Lorg/apache/harmony/xnet/provider/jsse/SSLParametersImpl;->getEnabledProtocols()[Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lorg/apache/harmony/xnet/provider/jsse/ProtocolVersion;->getLatestVersion([Ljava/lang/String;)Lorg/apache/harmony/xnet/provider/jsse/ProtocolVersion;

    move-result-object v1

    iput-object v1, v0, Lorg/apache/harmony/xnet/provider/jsse/SSLSessionImpl;->protocol:Lorg/apache/harmony/xnet/provider/jsse/ProtocolVersion;

    iget-object v0, p0, Lorg/apache/harmony/xnet/provider/jsse/HandshakeProtocol;->recordProtocol:Lorg/apache/harmony/xnet/provider/jsse/SSLRecordProtocol;

    iget-object v1, p0, Lorg/apache/harmony/xnet/provider/jsse/HandshakeProtocol;->session:Lorg/apache/harmony/xnet/provider/jsse/SSLSessionImpl;

    iget-object v1, v1, Lorg/apache/harmony/xnet/provider/jsse/SSLSessionImpl;->protocol:Lorg/apache/harmony/xnet/provider/jsse/ProtocolVersion;

    iget-object v1, v1, Lorg/apache/harmony/xnet/provider/jsse/ProtocolVersion;->version:[B

    invoke-virtual {v0, v1}, Lorg/apache/harmony/xnet/provider/jsse/SSLRecordProtocol;->setVersion([B)V

    invoke-direct {p0}, Lorg/apache/harmony/xnet/provider/jsse/ClientHandshakeImpl;->startSession()V

    :goto_1
    return-void

    :cond_0
    iget-object v0, p0, Lorg/apache/harmony/xnet/provider/jsse/HandshakeProtocol;->session:Lorg/apache/harmony/xnet/provider/jsse/SSLSessionImpl;

    iget-object v1, p0, Lorg/apache/harmony/xnet/provider/jsse/HandshakeProtocol;->socketOwner:Lorg/apache/harmony/xnet/provider/jsse/SSLSocketImpl;

    invoke-virtual {v1}, Lorg/apache/harmony/xnet/provider/jsse/SSLSocketImpl;->getInetAddress()Ljava/net/InetAddress;

    move-result-object v1

    invoke-virtual {v1}, Ljava/net/InetAddress;->getHostName()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lorg/apache/harmony/xnet/provider/jsse/HandshakeProtocol;->socketOwner:Lorg/apache/harmony/xnet/provider/jsse/SSLSocketImpl;

    invoke-virtual {v2}, Lorg/apache/harmony/xnet/provider/jsse/SSLSocketImpl;->getPort()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lorg/apache/harmony/xnet/provider/jsse/SSLSessionImpl;->setPeer(Ljava/lang/String;I)V

    goto :goto_0

    :cond_1
    const/4 v0, 0x2

    iput v0, p0, Lorg/apache/harmony/xnet/provider/jsse/HandshakeProtocol;->status:I

    const/16 v0, 0x64

    invoke-virtual {p0, v0}, Lorg/apache/harmony/xnet/provider/jsse/ClientHandshakeImpl;->sendWarningAlert(B)V

    goto :goto_1
.end method

.method private startSession()V
    .locals 6

    const/4 v5, 0x1

    iget-boolean v1, p0, Lorg/apache/harmony/xnet/provider/jsse/HandshakeProtocol;->isResuming:Z

    if-eqz v1, :cond_0

    new-array v0, v5, [Lorg/apache/harmony/xnet/provider/jsse/CipherSuite;

    const/4 v1, 0x0

    iget-object v2, p0, Lorg/apache/harmony/xnet/provider/jsse/HandshakeProtocol;->session:Lorg/apache/harmony/xnet/provider/jsse/SSLSessionImpl;

    iget-object v2, v2, Lorg/apache/harmony/xnet/provider/jsse/SSLSessionImpl;->cipherSuite:Lorg/apache/harmony/xnet/provider/jsse/CipherSuite;

    aput-object v2, v0, v1

    :goto_0
    new-instance v1, Lorg/apache/harmony/xnet/provider/jsse/ClientHello;

    iget-object v2, p0, Lorg/apache/harmony/xnet/provider/jsse/HandshakeProtocol;->parameters:Lorg/apache/harmony/xnet/provider/jsse/SSLParametersImpl;

    invoke-virtual {v2}, Lorg/apache/harmony/xnet/provider/jsse/SSLParametersImpl;->getSecureRandom()Ljava/security/SecureRandom;

    move-result-object v2

    iget-object v3, p0, Lorg/apache/harmony/xnet/provider/jsse/HandshakeProtocol;->session:Lorg/apache/harmony/xnet/provider/jsse/SSLSessionImpl;

    iget-object v3, v3, Lorg/apache/harmony/xnet/provider/jsse/SSLSessionImpl;->protocol:Lorg/apache/harmony/xnet/provider/jsse/ProtocolVersion;

    iget-object v3, v3, Lorg/apache/harmony/xnet/provider/jsse/ProtocolVersion;->version:[B

    iget-object v4, p0, Lorg/apache/harmony/xnet/provider/jsse/HandshakeProtocol;->session:Lorg/apache/harmony/xnet/provider/jsse/SSLSessionImpl;

    iget-object v4, v4, Lorg/apache/harmony/xnet/provider/jsse/SSLSessionImpl;->id:[B

    invoke-direct {v1, v2, v3, v4, v0}, Lorg/apache/harmony/xnet/provider/jsse/ClientHello;-><init>(Ljava/security/SecureRandom;[B[B[Lorg/apache/harmony/xnet/provider/jsse/CipherSuite;)V

    iput-object v1, p0, Lorg/apache/harmony/xnet/provider/jsse/HandshakeProtocol;->clientHello:Lorg/apache/harmony/xnet/provider/jsse/ClientHello;

    iget-object v1, p0, Lorg/apache/harmony/xnet/provider/jsse/HandshakeProtocol;->session:Lorg/apache/harmony/xnet/provider/jsse/SSLSessionImpl;

    iget-object v2, p0, Lorg/apache/harmony/xnet/provider/jsse/HandshakeProtocol;->clientHello:Lorg/apache/harmony/xnet/provider/jsse/ClientHello;

    iget-object v2, v2, Lorg/apache/harmony/xnet/provider/jsse/ClientHello;->random:[B

    iput-object v2, v1, Lorg/apache/harmony/xnet/provider/jsse/SSLSessionImpl;->clientRandom:[B

    iget-object v1, p0, Lorg/apache/harmony/xnet/provider/jsse/HandshakeProtocol;->clientHello:Lorg/apache/harmony/xnet/provider/jsse/ClientHello;

    invoke-virtual {p0, v1}, Lorg/apache/harmony/xnet/provider/jsse/ClientHandshakeImpl;->send(Lorg/apache/harmony/xnet/provider/jsse/Message;)V

    iput v5, p0, Lorg/apache/harmony/xnet/provider/jsse/HandshakeProtocol;->status:I

    return-void

    :cond_0
    iget-object v1, p0, Lorg/apache/harmony/xnet/provider/jsse/HandshakeProtocol;->parameters:Lorg/apache/harmony/xnet/provider/jsse/SSLParametersImpl;

    invoke-virtual {v1}, Lorg/apache/harmony/xnet/provider/jsse/SSLParametersImpl;->getEnabledCipherSuitesMember()[Lorg/apache/harmony/xnet/provider/jsse/CipherSuite;

    move-result-object v0

    goto :goto_0
.end method

.method private verifyServerCert()V
    .locals 4

    iget-object v2, p0, Lorg/apache/harmony/xnet/provider/jsse/HandshakeProtocol;->session:Lorg/apache/harmony/xnet/provider/jsse/SSLSessionImpl;

    iget-object v3, v2, Lorg/apache/harmony/xnet/provider/jsse/SSLSessionImpl;->cipherSuite:Lorg/apache/harmony/xnet/provider/jsse/CipherSuite;

    iget-object v2, p0, Lorg/apache/harmony/xnet/provider/jsse/HandshakeProtocol;->serverKeyExchange:Lorg/apache/harmony/xnet/provider/jsse/ServerKeyExchange;

    if-eqz v2, :cond_0

    const/4 v2, 0x1

    :goto_0
    invoke-virtual {v3, v2}, Lorg/apache/harmony/xnet/provider/jsse/CipherSuite;->getAuthType(Z)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_1

    :goto_1
    return-void

    :cond_0
    const/4 v2, 0x0

    goto :goto_0

    :cond_1
    :try_start_0
    iget-object v2, p0, Lorg/apache/harmony/xnet/provider/jsse/HandshakeProtocol;->parameters:Lorg/apache/harmony/xnet/provider/jsse/SSLParametersImpl;

    invoke-virtual {v2}, Lorg/apache/harmony/xnet/provider/jsse/SSLParametersImpl;->getTrustManager()Ljavax/net/ssl/X509TrustManager;

    move-result-object v2

    iget-object v3, p0, Lorg/apache/harmony/xnet/provider/jsse/HandshakeProtocol;->serverCert:Lorg/apache/harmony/xnet/provider/jsse/CertificateMessage;

    iget-object v3, v3, Lorg/apache/harmony/xnet/provider/jsse/CertificateMessage;->certs:[Ljava/security/cert/X509Certificate;

    invoke-interface {v2, v3, v0}, Ljavax/net/ssl/X509TrustManager;->checkServerTrusted([Ljava/security/cert/X509Certificate;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/security/cert/CertificateException; {:try_start_0 .. :try_end_0} :catch_0

    iget-object v2, p0, Lorg/apache/harmony/xnet/provider/jsse/HandshakeProtocol;->session:Lorg/apache/harmony/xnet/provider/jsse/SSLSessionImpl;

    iget-object v3, p0, Lorg/apache/harmony/xnet/provider/jsse/HandshakeProtocol;->serverCert:Lorg/apache/harmony/xnet/provider/jsse/CertificateMessage;

    iget-object v3, v3, Lorg/apache/harmony/xnet/provider/jsse/CertificateMessage;->certs:[Ljava/security/cert/X509Certificate;

    iput-object v3, v2, Lorg/apache/harmony/xnet/provider/jsse/SSLSessionImpl;->peerCertificates:[Ljava/security/cert/X509Certificate;

    goto :goto_1

    :catch_0
    move-exception v1

    const/16 v2, 0x2a

    const-string v3, "Not trusted server certificate"

    invoke-virtual {p0, v2, v3, v1}, Lorg/apache/harmony/xnet/provider/jsse/ClientHandshakeImpl;->fatalAlert(BLjava/lang/String;Ljava/lang/Exception;)V

    goto :goto_1
.end method


# virtual methods
.method protected makeFinished()V
    .locals 4

    const/4 v2, 0x1

    iget-object v1, p0, Lorg/apache/harmony/xnet/provider/jsse/HandshakeProtocol;->serverHello:Lorg/apache/harmony/xnet/provider/jsse/ServerHello;

    iget-object v1, v1, Lorg/apache/harmony/xnet/provider/jsse/ServerHello;->server_version:[B

    aget-byte v1, v1, v2

    if-ne v1, v2, :cond_0

    const/16 v1, 0xc

    new-array v0, v1, [B

    const-string v1, "client finished"

    invoke-virtual {p0, v1, v0}, Lorg/apache/harmony/xnet/provider/jsse/ClientHandshakeImpl;->computerVerifyDataTLS(Ljava/lang/String;[B)V

    :goto_0
    new-instance v1, Lorg/apache/harmony/xnet/provider/jsse/Finished;

    invoke-direct {v1, v0}, Lorg/apache/harmony/xnet/provider/jsse/Finished;-><init>([B)V

    iput-object v1, p0, Lorg/apache/harmony/xnet/provider/jsse/HandshakeProtocol;->clientFinished:Lorg/apache/harmony/xnet/provider/jsse/Finished;

    iget-object v1, p0, Lorg/apache/harmony/xnet/provider/jsse/HandshakeProtocol;->clientFinished:Lorg/apache/harmony/xnet/provider/jsse/Finished;

    invoke-virtual {p0, v1}, Lorg/apache/harmony/xnet/provider/jsse/ClientHandshakeImpl;->send(Lorg/apache/harmony/xnet/provider/jsse/Message;)V

    iget-boolean v1, p0, Lorg/apache/harmony/xnet/provider/jsse/HandshakeProtocol;->isResuming:Z

    if-eqz v1, :cond_1

    iget-object v1, p0, Lorg/apache/harmony/xnet/provider/jsse/HandshakeProtocol;->session:Lorg/apache/harmony/xnet/provider/jsse/SSLSessionImpl;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, v1, Lorg/apache/harmony/xnet/provider/jsse/SSLSessionImpl;->lastAccessedTime:J

    const/4 v1, 0x3

    iput v1, p0, Lorg/apache/harmony/xnet/provider/jsse/HandshakeProtocol;->status:I

    :goto_1
    return-void

    :cond_0
    const/16 v1, 0x24

    new-array v0, v1, [B

    sget-object v1, Lorg/apache/harmony/xnet/provider/jsse/SSLv3Constants;->client:[B

    invoke-virtual {p0, v1, v0}, Lorg/apache/harmony/xnet/provider/jsse/ClientHandshakeImpl;->computerVerifyDataSSLv3([B[B)V

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lorg/apache/harmony/xnet/provider/jsse/HandshakeProtocol;->serverHello:Lorg/apache/harmony/xnet/provider/jsse/ServerHello;

    iget-object v1, v1, Lorg/apache/harmony/xnet/provider/jsse/ServerHello;->server_version:[B

    aget-byte v1, v1, v2

    if-ne v1, v2, :cond_2

    const-string v1, "server finished"

    invoke-virtual {p0, v1}, Lorg/apache/harmony/xnet/provider/jsse/ClientHandshakeImpl;->computerReferenceVerifyDataTLS(Ljava/lang/String;)V

    :goto_2
    iput v2, p0, Lorg/apache/harmony/xnet/provider/jsse/HandshakeProtocol;->status:I

    goto :goto_1

    :cond_2
    sget-object v1, Lorg/apache/harmony/xnet/provider/jsse/SSLv3Constants;->server:[B

    invoke-virtual {p0, v1}, Lorg/apache/harmony/xnet/provider/jsse/ClientHandshakeImpl;->computerReferenceVerifyDataSSLv3([B)V

    goto :goto_2
.end method

.method processServerHelloDone()V
    .locals 28

    const/4 v9, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/harmony/xnet/provider/jsse/HandshakeProtocol;->serverCert:Lorg/apache/harmony/xnet/provider/jsse/CertificateMessage;

    move-object/from16 v23, v0

    if-eqz v23, :cond_8

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/harmony/xnet/provider/jsse/HandshakeProtocol;->session:Lorg/apache/harmony/xnet/provider/jsse/SSLSessionImpl;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget-object v0, v0, Lorg/apache/harmony/xnet/provider/jsse/SSLSessionImpl;->cipherSuite:Lorg/apache/harmony/xnet/provider/jsse/CipherSuite;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Lorg/apache/harmony/xnet/provider/jsse/CipherSuite;->isAnonymous()Z

    move-result v23

    if-eqz v23, :cond_0

    invoke-virtual/range {p0 .. p0}, Lorg/apache/harmony/xnet/provider/jsse/ClientHandshakeImpl;->unexpectedMessage()V

    :goto_0
    return-void

    :cond_0
    invoke-direct/range {p0 .. p0}, Lorg/apache/harmony/xnet/provider/jsse/ClientHandshakeImpl;->verifyServerCert()V

    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/harmony/xnet/provider/jsse/HandshakeProtocol;->certificateRequest:Lorg/apache/harmony/xnet/provider/jsse/CertificateRequest;

    move-object/from16 v23, v0

    if-eqz v23, :cond_3

    const/4 v8, 0x0

    const/4 v4, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/harmony/xnet/provider/jsse/HandshakeProtocol;->certificateRequest:Lorg/apache/harmony/xnet/provider/jsse/CertificateRequest;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Lorg/apache/harmony/xnet/provider/jsse/CertificateRequest;->getTypesAsString()[Ljava/lang/String;

    move-result-object v7

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/harmony/xnet/provider/jsse/HandshakeProtocol;->certificateRequest:Lorg/apache/harmony/xnet/provider/jsse/CertificateRequest;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget-object v14, v0, Lorg/apache/harmony/xnet/provider/jsse/CertificateRequest;->certificate_authorities:[Ljavax/security/auth/x500/X500Principal;

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/harmony/xnet/provider/jsse/HandshakeProtocol;->parameters:Lorg/apache/harmony/xnet/provider/jsse/SSLParametersImpl;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Lorg/apache/harmony/xnet/provider/jsse/SSLParametersImpl;->getKeyManager()Ljavax/net/ssl/X509KeyManager;

    move-result-object v17

    move-object/from16 v0, v17

    instance-of v0, v0, Ljavax/net/ssl/X509ExtendedKeyManager;

    move/from16 v23, v0

    if-eqz v23, :cond_a

    move-object/from16 v13, v17

    check-cast v13, Ljavax/net/ssl/X509ExtendedKeyManager;

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/harmony/xnet/provider/jsse/HandshakeProtocol;->socketOwner:Lorg/apache/harmony/xnet/provider/jsse/SSLSocketImpl;

    move-object/from16 v23, v0

    if-eqz v23, :cond_9

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/harmony/xnet/provider/jsse/HandshakeProtocol;->socketOwner:Lorg/apache/harmony/xnet/provider/jsse/SSLSocketImpl;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    invoke-virtual {v13, v7, v14, v0}, Ljavax/net/ssl/X509ExtendedKeyManager;->chooseClientAlias([Ljava/lang/String;[Ljava/security/Principal;Ljava/net/Socket;)Ljava/lang/String;

    move-result-object v4

    :goto_1
    if-eqz v4, :cond_2

    invoke-virtual {v13, v4}, Ljavax/net/ssl/X509ExtendedKeyManager;->getCertificateChain(Ljava/lang/String;)[Ljava/security/cert/X509Certificate;

    move-result-object v8

    :cond_2
    :goto_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/harmony/xnet/provider/jsse/HandshakeProtocol;->session:Lorg/apache/harmony/xnet/provider/jsse/SSLSessionImpl;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iput-object v8, v0, Lorg/apache/harmony/xnet/provider/jsse/SSLSessionImpl;->localCertificates:[Ljava/security/cert/X509Certificate;

    new-instance v23, Lorg/apache/harmony/xnet/provider/jsse/CertificateMessage;

    move-object/from16 v0, v23

    invoke-direct {v0, v8}, Lorg/apache/harmony/xnet/provider/jsse/CertificateMessage;-><init>([Ljava/security/cert/X509Certificate;)V

    move-object/from16 v0, v23

    move-object/from16 v1, p0

    iput-object v0, v1, Lorg/apache/harmony/xnet/provider/jsse/HandshakeProtocol;->clientCert:Lorg/apache/harmony/xnet/provider/jsse/CertificateMessage;

    move-object/from16 v0, v17

    invoke-interface {v0, v4}, Ljavax/net/ssl/X509KeyManager;->getPrivateKey(Ljava/lang/String;)Ljava/security/PrivateKey;

    move-result-object v9

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/harmony/xnet/provider/jsse/HandshakeProtocol;->clientCert:Lorg/apache/harmony/xnet/provider/jsse/CertificateMessage;

    move-object/from16 v23, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Lorg/apache/harmony/xnet/provider/jsse/ClientHandshakeImpl;->send(Lorg/apache/harmony/xnet/provider/jsse/Message;)V

    :cond_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/harmony/xnet/provider/jsse/HandshakeProtocol;->session:Lorg/apache/harmony/xnet/provider/jsse/SSLSessionImpl;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget-object v0, v0, Lorg/apache/harmony/xnet/provider/jsse/SSLSessionImpl;->cipherSuite:Lorg/apache/harmony/xnet/provider/jsse/CipherSuite;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget v0, v0, Lorg/apache/harmony/xnet/provider/jsse/CipherSuite;->keyExchange:I

    move/from16 v23, v0

    const/16 v24, 0x1

    move/from16 v0, v23

    move/from16 v1, v24

    if-eq v0, v1, :cond_4

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/harmony/xnet/provider/jsse/HandshakeProtocol;->session:Lorg/apache/harmony/xnet/provider/jsse/SSLSessionImpl;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget-object v0, v0, Lorg/apache/harmony/xnet/provider/jsse/SSLSessionImpl;->cipherSuite:Lorg/apache/harmony/xnet/provider/jsse/CipherSuite;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget v0, v0, Lorg/apache/harmony/xnet/provider/jsse/CipherSuite;->keyExchange:I

    move/from16 v23, v0

    const/16 v24, 0x2

    move/from16 v0, v23

    move/from16 v1, v24

    if-ne v0, v1, :cond_d

    :cond_4
    :try_start_0
    const-string v23, "RSA/ECB/PKCS1Padding"

    invoke-static/range {v23 .. v23}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v6

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/harmony/xnet/provider/jsse/HandshakeProtocol;->serverKeyExchange:Lorg/apache/harmony/xnet/provider/jsse/ServerKeyExchange;

    move-object/from16 v23, v0

    if-eqz v23, :cond_b

    const/16 v23, 0x1

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/harmony/xnet/provider/jsse/HandshakeProtocol;->serverKeyExchange:Lorg/apache/harmony/xnet/provider/jsse/ServerKeyExchange;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Lorg/apache/harmony/xnet/provider/jsse/ServerKeyExchange;->getRSAPublicKey()Ljava/security/interfaces/RSAPublicKey;

    move-result-object v24

    move/from16 v0, v23

    move-object/from16 v1, v24

    invoke-virtual {v6, v0, v1}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_3
    const/16 v23, 0x30

    move/from16 v0, v23

    new-array v0, v0, [B

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    move-object/from16 v1, p0

    iput-object v0, v1, Lorg/apache/harmony/xnet/provider/jsse/HandshakeProtocol;->preMasterSecret:[B

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/harmony/xnet/provider/jsse/HandshakeProtocol;->parameters:Lorg/apache/harmony/xnet/provider/jsse/SSLParametersImpl;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Lorg/apache/harmony/xnet/provider/jsse/SSLParametersImpl;->getSecureRandom()Ljava/security/SecureRandom;

    move-result-object v23

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/harmony/xnet/provider/jsse/HandshakeProtocol;->preMasterSecret:[B

    move-object/from16 v24, v0

    invoke-virtual/range {v23 .. v24}, Ljava/security/SecureRandom;->nextBytes([B)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/harmony/xnet/provider/jsse/HandshakeProtocol;->clientHello:Lorg/apache/harmony/xnet/provider/jsse/ClientHello;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget-object v0, v0, Lorg/apache/harmony/xnet/provider/jsse/ClientHello;->client_version:[B

    move-object/from16 v23, v0

    const/16 v24, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/harmony/xnet/provider/jsse/HandshakeProtocol;->preMasterSecret:[B

    move-object/from16 v25, v0

    const/16 v26, 0x0

    const/16 v27, 0x2

    invoke-static/range {v23 .. v27}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :try_start_1
    new-instance v24, Lorg/apache/harmony/xnet/provider/jsse/ClientKeyExchange;

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/harmony/xnet/provider/jsse/HandshakeProtocol;->preMasterSecret:[B

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    invoke-virtual {v6, v0}, Ljavax/crypto/Cipher;->doFinal([B)[B

    move-result-object v25

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/harmony/xnet/provider/jsse/HandshakeProtocol;->serverHello:Lorg/apache/harmony/xnet/provider/jsse/ServerHello;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget-object v0, v0, Lorg/apache/harmony/xnet/provider/jsse/ServerHello;->server_version:[B

    move-object/from16 v23, v0

    const/16 v26, 0x1

    aget-byte v23, v23, v26

    const/16 v26, 0x1

    move/from16 v0, v23

    move/from16 v1, v26

    if-ne v0, v1, :cond_c

    const/16 v23, 0x1

    :goto_4
    move-object/from16 v0, v24

    move-object/from16 v1, v25

    move/from16 v2, v23

    invoke-direct {v0, v1, v2}, Lorg/apache/harmony/xnet/provider/jsse/ClientKeyExchange;-><init>([BZ)V

    move-object/from16 v0, v24

    move-object/from16 v1, p0

    iput-object v0, v1, Lorg/apache/harmony/xnet/provider/jsse/HandshakeProtocol;->clientKeyExchange:Lorg/apache/harmony/xnet/provider/jsse/ClientKeyExchange;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    :goto_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/harmony/xnet/provider/jsse/HandshakeProtocol;->clientKeyExchange:Lorg/apache/harmony/xnet/provider/jsse/ClientKeyExchange;

    move-object/from16 v23, v0

    if-eqz v23, :cond_5

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/harmony/xnet/provider/jsse/HandshakeProtocol;->clientKeyExchange:Lorg/apache/harmony/xnet/provider/jsse/ClientKeyExchange;

    move-object/from16 v23, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Lorg/apache/harmony/xnet/provider/jsse/ClientHandshakeImpl;->send(Lorg/apache/harmony/xnet/provider/jsse/Message;)V

    :cond_5
    invoke-virtual/range {p0 .. p0}, Lorg/apache/harmony/xnet/provider/jsse/ClientHandshakeImpl;->computerMasterSecret()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/harmony/xnet/provider/jsse/HandshakeProtocol;->clientCert:Lorg/apache/harmony/xnet/provider/jsse/CertificateMessage;

    move-object/from16 v23, v0

    if-eqz v23, :cond_7

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/harmony/xnet/provider/jsse/HandshakeProtocol;->clientKeyExchange:Lorg/apache/harmony/xnet/provider/jsse/ClientKeyExchange;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Lorg/apache/harmony/xnet/provider/jsse/ClientKeyExchange;->isEmpty()Z

    move-result v23

    if-nez v23, :cond_7

    invoke-interface {v9}, Ljava/security/PrivateKey;->getAlgorithm()Ljava/lang/String;

    move-result-object v5

    new-instance v11, Lorg/apache/harmony/xnet/provider/jsse/DigitalSignature;

    invoke-direct {v11, v5}, Lorg/apache/harmony/xnet/provider/jsse/DigitalSignature;-><init>(Ljava/lang/String;)V

    invoke-virtual {v11, v9}, Lorg/apache/harmony/xnet/provider/jsse/DigitalSignature;->init(Ljava/security/PrivateKey;)V

    const-string v23, "RSA"

    move-object/from16 v0, v23

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v23

    if-eqz v23, :cond_12

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/harmony/xnet/provider/jsse/HandshakeProtocol;->io_stream:Lorg/apache/harmony/xnet/provider/jsse/HandshakeIODataStream;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Lorg/apache/harmony/xnet/provider/jsse/HandshakeIODataStream;->getDigestMD5()[B

    move-result-object v23

    move-object/from16 v0, v23

    invoke-virtual {v11, v0}, Lorg/apache/harmony/xnet/provider/jsse/DigitalSignature;->setMD5([B)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/harmony/xnet/provider/jsse/HandshakeProtocol;->io_stream:Lorg/apache/harmony/xnet/provider/jsse/HandshakeIODataStream;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Lorg/apache/harmony/xnet/provider/jsse/HandshakeIODataStream;->getDigestSHA()[B

    move-result-object v23

    move-object/from16 v0, v23

    invoke-virtual {v11, v0}, Lorg/apache/harmony/xnet/provider/jsse/DigitalSignature;->setSHA([B)V

    :cond_6
    :goto_6
    new-instance v23, Lorg/apache/harmony/xnet/provider/jsse/CertificateVerify;

    invoke-virtual {v11}, Lorg/apache/harmony/xnet/provider/jsse/DigitalSignature;->sign()[B

    move-result-object v24

    invoke-direct/range {v23 .. v24}, Lorg/apache/harmony/xnet/provider/jsse/CertificateVerify;-><init>([B)V

    move-object/from16 v0, v23

    move-object/from16 v1, p0

    iput-object v0, v1, Lorg/apache/harmony/xnet/provider/jsse/HandshakeProtocol;->certificateVerify:Lorg/apache/harmony/xnet/provider/jsse/CertificateVerify;

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/harmony/xnet/provider/jsse/HandshakeProtocol;->certificateVerify:Lorg/apache/harmony/xnet/provider/jsse/CertificateVerify;

    move-object/from16 v23, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Lorg/apache/harmony/xnet/provider/jsse/ClientHandshakeImpl;->send(Lorg/apache/harmony/xnet/provider/jsse/Message;)V

    :cond_7
    invoke-virtual/range {p0 .. p0}, Lorg/apache/harmony/xnet/provider/jsse/ClientHandshakeImpl;->sendChangeCipherSpec()V

    goto/16 :goto_0

    :cond_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/harmony/xnet/provider/jsse/HandshakeProtocol;->session:Lorg/apache/harmony/xnet/provider/jsse/SSLSessionImpl;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget-object v0, v0, Lorg/apache/harmony/xnet/provider/jsse/SSLSessionImpl;->cipherSuite:Lorg/apache/harmony/xnet/provider/jsse/CipherSuite;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Lorg/apache/harmony/xnet/provider/jsse/CipherSuite;->isAnonymous()Z

    move-result v23

    if-nez v23, :cond_1

    invoke-virtual/range {p0 .. p0}, Lorg/apache/harmony/xnet/provider/jsse/ClientHandshakeImpl;->unexpectedMessage()V

    goto/16 :goto_0

    :cond_9
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/harmony/xnet/provider/jsse/HandshakeProtocol;->engineOwner:Lorg/apache/harmony/xnet/provider/jsse/SSLEngineImpl;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    invoke-virtual {v13, v7, v14, v0}, Ljavax/net/ssl/X509ExtendedKeyManager;->chooseEngineClientAlias([Ljava/lang/String;[Ljava/security/Principal;Ljavax/net/ssl/SSLEngine;)Ljava/lang/String;

    move-result-object v4

    goto/16 :goto_1

    :cond_a
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/harmony/xnet/provider/jsse/HandshakeProtocol;->socketOwner:Lorg/apache/harmony/xnet/provider/jsse/SSLSocketImpl;

    move-object/from16 v23, v0

    move-object/from16 v0, v17

    move-object/from16 v1, v23

    invoke-interface {v0, v7, v14, v1}, Ljavax/net/ssl/X509KeyManager;->chooseClientAlias([Ljava/lang/String;[Ljava/security/Principal;Ljava/net/Socket;)Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_2

    move-object/from16 v0, v17

    invoke-interface {v0, v4}, Ljavax/net/ssl/X509KeyManager;->getCertificateChain(Ljava/lang/String;)[Ljava/security/cert/X509Certificate;

    move-result-object v8

    goto/16 :goto_2

    :cond_b
    const/16 v23, 0x1

    :try_start_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/harmony/xnet/provider/jsse/HandshakeProtocol;->serverCert:Lorg/apache/harmony/xnet/provider/jsse/CertificateMessage;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    iget-object v0, v0, Lorg/apache/harmony/xnet/provider/jsse/CertificateMessage;->certs:[Ljava/security/cert/X509Certificate;

    move-object/from16 v24, v0

    const/16 v25, 0x0

    aget-object v24, v24, v25

    move/from16 v0, v23

    move-object/from16 v1, v24

    invoke-virtual {v6, v0, v1}, Ljavax/crypto/Cipher;->init(ILjava/security/cert/Certificate;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto/16 :goto_3

    :catch_0
    move-exception v12

    const/16 v23, 0x50

    const-string v24, "Unexpected exception"

    move-object/from16 v0, p0

    move/from16 v1, v23

    move-object/from16 v2, v24

    invoke-virtual {v0, v1, v2, v12}, Lorg/apache/harmony/xnet/provider/jsse/ClientHandshakeImpl;->fatalAlert(BLjava/lang/String;Ljava/lang/Exception;)V

    goto/16 :goto_0

    :cond_c
    const/16 v23, 0x0

    goto/16 :goto_4

    :catch_1
    move-exception v12

    const/16 v23, 0x50

    const-string v24, "Unexpected exception"

    move-object/from16 v0, p0

    move/from16 v1, v23

    move-object/from16 v2, v24

    invoke-virtual {v0, v1, v2, v12}, Lorg/apache/harmony/xnet/provider/jsse/ClientHandshakeImpl;->fatalAlert(BLjava/lang/String;Ljava/lang/Exception;)V

    goto/16 :goto_0

    :cond_d
    :try_start_3
    const-string v23, "DH"

    invoke-static/range {v23 .. v23}, Ljava/security/KeyFactory;->getInstance(Ljava/lang/String;)Ljava/security/KeyFactory;

    move-result-object v16

    const-string v23, "DH"

    invoke-static/range {v23 .. v23}, Ljavax/crypto/KeyAgreement;->getInstance(Ljava/lang/String;)Ljavax/crypto/KeyAgreement;

    move-result-object v3

    const-string v23, "DH"

    invoke-static/range {v23 .. v23}, Ljava/security/KeyPairGenerator;->getInstance(Ljava/lang/String;)Ljava/security/KeyPairGenerator;

    move-result-object v19

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/harmony/xnet/provider/jsse/HandshakeProtocol;->serverKeyExchange:Lorg/apache/harmony/xnet/provider/jsse/ServerKeyExchange;

    move-object/from16 v23, v0

    if-eqz v23, :cond_10

    new-instance v23, Ljavax/crypto/spec/DHPublicKeySpec;

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/harmony/xnet/provider/jsse/HandshakeProtocol;->serverKeyExchange:Lorg/apache/harmony/xnet/provider/jsse/ServerKeyExchange;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    iget-object v0, v0, Lorg/apache/harmony/xnet/provider/jsse/ServerKeyExchange;->par3:Ljava/math/BigInteger;

    move-object/from16 v24, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/harmony/xnet/provider/jsse/HandshakeProtocol;->serverKeyExchange:Lorg/apache/harmony/xnet/provider/jsse/ServerKeyExchange;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    iget-object v0, v0, Lorg/apache/harmony/xnet/provider/jsse/ServerKeyExchange;->par1:Ljava/math/BigInteger;

    move-object/from16 v25, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/harmony/xnet/provider/jsse/HandshakeProtocol;->serverKeyExchange:Lorg/apache/harmony/xnet/provider/jsse/ServerKeyExchange;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    iget-object v0, v0, Lorg/apache/harmony/xnet/provider/jsse/ServerKeyExchange;->par2:Ljava/math/BigInteger;

    move-object/from16 v26, v0

    invoke-direct/range {v23 .. v26}, Ljavax/crypto/spec/DHPublicKeySpec;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    move-object/from16 v0, v16

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/security/KeyFactory;->generatePublic(Ljava/security/spec/KeySpec;)Ljava/security/PublicKey;

    move-result-object v20

    new-instance v22, Ljavax/crypto/spec/DHParameterSpec;

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/harmony/xnet/provider/jsse/HandshakeProtocol;->serverKeyExchange:Lorg/apache/harmony/xnet/provider/jsse/ServerKeyExchange;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget-object v0, v0, Lorg/apache/harmony/xnet/provider/jsse/ServerKeyExchange;->par1:Ljava/math/BigInteger;

    move-object/from16 v23, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/harmony/xnet/provider/jsse/HandshakeProtocol;->serverKeyExchange:Lorg/apache/harmony/xnet/provider/jsse/ServerKeyExchange;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    iget-object v0, v0, Lorg/apache/harmony/xnet/provider/jsse/ServerKeyExchange;->par2:Ljava/math/BigInteger;

    move-object/from16 v24, v0

    invoke-direct/range {v22 .. v24}, Ljavax/crypto/spec/DHParameterSpec;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    :goto_7
    move-object/from16 v0, v19

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/security/KeyPairGenerator;->initialize(Ljava/security/spec/AlgorithmParameterSpec;)V

    invoke-virtual/range {v19 .. v19}, Ljava/security/KeyPairGenerator;->generateKeyPair()Ljava/security/KeyPair;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/security/KeyPair;->getPublic()Ljava/security/PublicKey;

    move-result-object v15

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/harmony/xnet/provider/jsse/HandshakeProtocol;->clientCert:Lorg/apache/harmony/xnet/provider/jsse/CertificateMessage;

    move-object/from16 v23, v0

    if-eqz v23, :cond_11

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/harmony/xnet/provider/jsse/HandshakeProtocol;->serverCert:Lorg/apache/harmony/xnet/provider/jsse/CertificateMessage;

    move-object/from16 v23, v0

    if-eqz v23, :cond_11

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/harmony/xnet/provider/jsse/HandshakeProtocol;->session:Lorg/apache/harmony/xnet/provider/jsse/SSLSessionImpl;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget-object v0, v0, Lorg/apache/harmony/xnet/provider/jsse/SSLSessionImpl;->cipherSuite:Lorg/apache/harmony/xnet/provider/jsse/CipherSuite;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget v0, v0, Lorg/apache/harmony/xnet/provider/jsse/CipherSuite;->keyExchange:I

    move/from16 v23, v0

    const/16 v24, 0x5

    move/from16 v0, v23

    move/from16 v1, v24

    if-eq v0, v1, :cond_e

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/harmony/xnet/provider/jsse/HandshakeProtocol;->session:Lorg/apache/harmony/xnet/provider/jsse/SSLSessionImpl;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget-object v0, v0, Lorg/apache/harmony/xnet/provider/jsse/SSLSessionImpl;->cipherSuite:Lorg/apache/harmony/xnet/provider/jsse/CipherSuite;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget v0, v0, Lorg/apache/harmony/xnet/provider/jsse/CipherSuite;->keyExchange:I

    move/from16 v23, v0

    const/16 v24, 0x3

    move/from16 v0, v23

    move/from16 v1, v24

    if-ne v0, v1, :cond_11

    :cond_e
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/harmony/xnet/provider/jsse/HandshakeProtocol;->clientCert:Lorg/apache/harmony/xnet/provider/jsse/CertificateMessage;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget-object v0, v0, Lorg/apache/harmony/xnet/provider/jsse/CertificateMessage;->certs:[Ljava/security/cert/X509Certificate;

    move-object/from16 v23, v0

    const/16 v24, 0x0

    aget-object v23, v23, v24

    invoke-virtual/range {v23 .. v23}, Ljava/security/cert/X509Certificate;->getPublicKey()Ljava/security/PublicKey;

    move-result-object v10

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/harmony/xnet/provider/jsse/HandshakeProtocol;->serverCert:Lorg/apache/harmony/xnet/provider/jsse/CertificateMessage;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget-object v0, v0, Lorg/apache/harmony/xnet/provider/jsse/CertificateMessage;->certs:[Ljava/security/cert/X509Certificate;

    move-object/from16 v23, v0

    const/16 v24, 0x0

    aget-object v23, v23, v24

    invoke-virtual/range {v23 .. v23}, Ljava/security/cert/X509Certificate;->getPublicKey()Ljava/security/PublicKey;

    move-result-object v21

    instance-of v0, v10, Ljavax/crypto/interfaces/DHKey;

    move/from16 v23, v0

    if-eqz v23, :cond_f

    move-object/from16 v0, v21

    instance-of v0, v0, Ljavax/crypto/interfaces/DHKey;

    move/from16 v23, v0

    if-eqz v23, :cond_f

    move-object v0, v10

    check-cast v0, Ljavax/crypto/interfaces/DHKey;

    move-object/from16 v23, v0

    invoke-interface/range {v23 .. v23}, Ljavax/crypto/interfaces/DHKey;->getParams()Ljavax/crypto/spec/DHParameterSpec;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljavax/crypto/spec/DHParameterSpec;->getG()Ljava/math/BigInteger;

    move-result-object v24

    move-object/from16 v0, v21

    check-cast v0, Ljavax/crypto/interfaces/DHKey;

    move-object/from16 v23, v0

    invoke-interface/range {v23 .. v23}, Ljavax/crypto/interfaces/DHKey;->getParams()Ljavax/crypto/spec/DHParameterSpec;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljavax/crypto/spec/DHParameterSpec;->getG()Ljava/math/BigInteger;

    move-result-object v23

    move-object/from16 v0, v24

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    move-result v23

    if-eqz v23, :cond_f

    check-cast v10, Ljavax/crypto/interfaces/DHKey;

    invoke-interface {v10}, Ljavax/crypto/interfaces/DHKey;->getParams()Ljavax/crypto/spec/DHParameterSpec;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljavax/crypto/spec/DHParameterSpec;->getP()Ljava/math/BigInteger;

    move-result-object v23

    check-cast v21, Ljavax/crypto/interfaces/DHKey;

    invoke-interface/range {v21 .. v21}, Ljavax/crypto/interfaces/DHKey;->getParams()Ljavax/crypto/spec/DHParameterSpec;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljavax/crypto/spec/DHParameterSpec;->getG()Ljava/math/BigInteger;

    move-result-object v24

    invoke-virtual/range {v23 .. v24}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    move-result v23

    if-eqz v23, :cond_f

    new-instance v23, Lorg/apache/harmony/xnet/provider/jsse/ClientKeyExchange;

    invoke-direct/range {v23 .. v23}, Lorg/apache/harmony/xnet/provider/jsse/ClientKeyExchange;-><init>()V

    move-object/from16 v0, v23

    move-object/from16 v1, p0

    iput-object v0, v1, Lorg/apache/harmony/xnet/provider/jsse/HandshakeProtocol;->clientKeyExchange:Lorg/apache/harmony/xnet/provider/jsse/ClientKeyExchange;

    :cond_f
    :goto_8
    invoke-virtual/range {v18 .. v18}, Ljava/security/KeyPair;->getPrivate()Ljava/security/PrivateKey;

    move-result-object v15

    invoke-virtual {v3, v15}, Ljavax/crypto/KeyAgreement;->init(Ljava/security/Key;)V

    const/16 v23, 0x1

    move-object/from16 v0, v20

    move/from16 v1, v23

    invoke-virtual {v3, v0, v1}, Ljavax/crypto/KeyAgreement;->doPhase(Ljava/security/Key;Z)Ljava/security/Key;

    invoke-virtual {v3}, Ljavax/crypto/KeyAgreement;->generateSecret()[B

    move-result-object v23

    move-object/from16 v0, v23

    move-object/from16 v1, p0

    iput-object v0, v1, Lorg/apache/harmony/xnet/provider/jsse/HandshakeProtocol;->preMasterSecret:[B
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    goto/16 :goto_5

    :catch_2
    move-exception v12

    const/16 v23, 0x50

    const-string v24, "Unexpected exception"

    move-object/from16 v0, p0

    move/from16 v1, v23

    move-object/from16 v2, v24

    invoke-virtual {v0, v1, v2, v12}, Lorg/apache/harmony/xnet/provider/jsse/ClientHandshakeImpl;->fatalAlert(BLjava/lang/String;Ljava/lang/Exception;)V

    goto/16 :goto_0

    :cond_10
    :try_start_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/harmony/xnet/provider/jsse/HandshakeProtocol;->serverCert:Lorg/apache/harmony/xnet/provider/jsse/CertificateMessage;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget-object v0, v0, Lorg/apache/harmony/xnet/provider/jsse/CertificateMessage;->certs:[Ljava/security/cert/X509Certificate;

    move-object/from16 v23, v0

    const/16 v24, 0x0

    aget-object v23, v23, v24

    invoke-virtual/range {v23 .. v23}, Ljava/security/cert/X509Certificate;->getPublicKey()Ljava/security/PublicKey;

    move-result-object v20

    move-object/from16 v0, v20

    check-cast v0, Ljavax/crypto/interfaces/DHPublicKey;

    move-object/from16 v23, v0

    invoke-interface/range {v23 .. v23}, Ljavax/crypto/interfaces/DHPublicKey;->getParams()Ljavax/crypto/spec/DHParameterSpec;

    move-result-object v22

    goto/16 :goto_7

    :cond_11
    new-instance v23, Lorg/apache/harmony/xnet/provider/jsse/ClientKeyExchange;

    check-cast v15, Ljavax/crypto/interfaces/DHPublicKey;

    invoke-interface {v15}, Ljavax/crypto/interfaces/DHPublicKey;->getY()Ljava/math/BigInteger;

    move-result-object v24

    invoke-direct/range {v23 .. v24}, Lorg/apache/harmony/xnet/provider/jsse/ClientKeyExchange;-><init>(Ljava/math/BigInteger;)V

    move-object/from16 v0, v23

    move-object/from16 v1, p0

    iput-object v0, v1, Lorg/apache/harmony/xnet/provider/jsse/HandshakeProtocol;->clientKeyExchange:Lorg/apache/harmony/xnet/provider/jsse/ClientKeyExchange;
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_8

    :cond_12
    const-string v23, "DSA"

    move-object/from16 v0, v23

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v23

    if-eqz v23, :cond_6

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/harmony/xnet/provider/jsse/HandshakeProtocol;->io_stream:Lorg/apache/harmony/xnet/provider/jsse/HandshakeIODataStream;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Lorg/apache/harmony/xnet/provider/jsse/HandshakeIODataStream;->getDigestSHA()[B

    move-result-object v23

    move-object/from16 v0, v23

    invoke-virtual {v11, v0}, Lorg/apache/harmony/xnet/provider/jsse/DigitalSignature;->setSHA([B)V

    goto/16 :goto_6
.end method

.method public receiveChangeCipherSpec()V
    .locals 1

    iget-boolean v0, p0, Lorg/apache/harmony/xnet/provider/jsse/HandshakeProtocol;->isResuming:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/apache/harmony/xnet/provider/jsse/HandshakeProtocol;->serverHello:Lorg/apache/harmony/xnet/provider/jsse/ServerHello;

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lorg/apache/harmony/xnet/provider/jsse/ClientHandshakeImpl;->unexpectedMessage()V

    :cond_0
    :goto_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/apache/harmony/xnet/provider/jsse/HandshakeProtocol;->changeCipherSpecReceived:Z

    return-void

    :cond_1
    iget-object v0, p0, Lorg/apache/harmony/xnet/provider/jsse/HandshakeProtocol;->clientFinished:Lorg/apache/harmony/xnet/provider/jsse/Finished;

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lorg/apache/harmony/xnet/provider/jsse/ClientHandshakeImpl;->unexpectedMessage()V

    goto :goto_0
.end method

.method public start()V
    .locals 3

    iget-object v0, p0, Lorg/apache/harmony/xnet/provider/jsse/HandshakeProtocol;->session:Lorg/apache/harmony/xnet/provider/jsse/SSLSessionImpl;

    if-nez v0, :cond_2

    invoke-direct {p0}, Lorg/apache/harmony/xnet/provider/jsse/ClientHandshakeImpl;->findSessionToResume()Lorg/apache/harmony/xnet/provider/jsse/SSLSessionImpl;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/harmony/xnet/provider/jsse/HandshakeProtocol;->session:Lorg/apache/harmony/xnet/provider/jsse/SSLSessionImpl;

    :cond_0
    :goto_0
    iget-object v0, p0, Lorg/apache/harmony/xnet/provider/jsse/HandshakeProtocol;->session:Lorg/apache/harmony/xnet/provider/jsse/SSLSessionImpl;

    if-eqz v0, :cond_4

    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/apache/harmony/xnet/provider/jsse/HandshakeProtocol;->isResuming:Z

    :goto_1
    invoke-direct {p0}, Lorg/apache/harmony/xnet/provider/jsse/ClientHandshakeImpl;->startSession()V

    :cond_1
    return-void

    :cond_2
    iget-object v0, p0, Lorg/apache/harmony/xnet/provider/jsse/HandshakeProtocol;->clientHello:Lorg/apache/harmony/xnet/provider/jsse/ClientHello;

    if-eqz v0, :cond_3

    iget v0, p0, Lorg/apache/harmony/xnet/provider/jsse/HandshakeProtocol;->status:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_1

    :cond_3
    iget-object v0, p0, Lorg/apache/harmony/xnet/provider/jsse/HandshakeProtocol;->session:Lorg/apache/harmony/xnet/provider/jsse/SSLSessionImpl;

    invoke-virtual {v0}, Lorg/apache/harmony/xnet/provider/jsse/SSLSessionImpl;->isValid()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/harmony/xnet/provider/jsse/HandshakeProtocol;->session:Lorg/apache/harmony/xnet/provider/jsse/SSLSessionImpl;

    goto :goto_0

    :cond_4
    iget-object v0, p0, Lorg/apache/harmony/xnet/provider/jsse/HandshakeProtocol;->parameters:Lorg/apache/harmony/xnet/provider/jsse/SSLParametersImpl;

    invoke-virtual {v0}, Lorg/apache/harmony/xnet/provider/jsse/SSLParametersImpl;->getEnableSessionCreation()Z

    move-result v0

    if-eqz v0, :cond_6

    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/apache/harmony/xnet/provider/jsse/HandshakeProtocol;->isResuming:Z

    new-instance v0, Lorg/apache/harmony/xnet/provider/jsse/SSLSessionImpl;

    iget-object v1, p0, Lorg/apache/harmony/xnet/provider/jsse/HandshakeProtocol;->parameters:Lorg/apache/harmony/xnet/provider/jsse/SSLParametersImpl;

    invoke-virtual {v1}, Lorg/apache/harmony/xnet/provider/jsse/SSLParametersImpl;->getSecureRandom()Ljava/security/SecureRandom;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/apache/harmony/xnet/provider/jsse/SSLSessionImpl;-><init>(Ljava/security/SecureRandom;)V

    iput-object v0, p0, Lorg/apache/harmony/xnet/provider/jsse/HandshakeProtocol;->session:Lorg/apache/harmony/xnet/provider/jsse/SSLSessionImpl;

    iget-object v0, p0, Lorg/apache/harmony/xnet/provider/jsse/HandshakeProtocol;->engineOwner:Lorg/apache/harmony/xnet/provider/jsse/SSLEngineImpl;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lorg/apache/harmony/xnet/provider/jsse/HandshakeProtocol;->session:Lorg/apache/harmony/xnet/provider/jsse/SSLSessionImpl;

    iget-object v1, p0, Lorg/apache/harmony/xnet/provider/jsse/HandshakeProtocol;->engineOwner:Lorg/apache/harmony/xnet/provider/jsse/SSLEngineImpl;

    invoke-virtual {v1}, Lorg/apache/harmony/xnet/provider/jsse/SSLEngineImpl;->getPeerHost()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lorg/apache/harmony/xnet/provider/jsse/HandshakeProtocol;->engineOwner:Lorg/apache/harmony/xnet/provider/jsse/SSLEngineImpl;

    invoke-virtual {v2}, Lorg/apache/harmony/xnet/provider/jsse/SSLEngineImpl;->getPeerPort()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lorg/apache/harmony/xnet/provider/jsse/SSLSessionImpl;->setPeer(Ljava/lang/String;I)V

    :goto_2
    iget-object v0, p0, Lorg/apache/harmony/xnet/provider/jsse/HandshakeProtocol;->session:Lorg/apache/harmony/xnet/provider/jsse/SSLSessionImpl;

    iget-object v1, p0, Lorg/apache/harmony/xnet/provider/jsse/HandshakeProtocol;->parameters:Lorg/apache/harmony/xnet/provider/jsse/SSLParametersImpl;

    invoke-virtual {v1}, Lorg/apache/harmony/xnet/provider/jsse/SSLParametersImpl;->getEnabledProtocols()[Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lorg/apache/harmony/xnet/provider/jsse/ProtocolVersion;->getLatestVersion([Ljava/lang/String;)Lorg/apache/harmony/xnet/provider/jsse/ProtocolVersion;

    move-result-object v1

    iput-object v1, v0, Lorg/apache/harmony/xnet/provider/jsse/SSLSessionImpl;->protocol:Lorg/apache/harmony/xnet/provider/jsse/ProtocolVersion;

    iget-object v0, p0, Lorg/apache/harmony/xnet/provider/jsse/HandshakeProtocol;->recordProtocol:Lorg/apache/harmony/xnet/provider/jsse/SSLRecordProtocol;

    iget-object v1, p0, Lorg/apache/harmony/xnet/provider/jsse/HandshakeProtocol;->session:Lorg/apache/harmony/xnet/provider/jsse/SSLSessionImpl;

    iget-object v1, v1, Lorg/apache/harmony/xnet/provider/jsse/SSLSessionImpl;->protocol:Lorg/apache/harmony/xnet/provider/jsse/ProtocolVersion;

    iget-object v1, v1, Lorg/apache/harmony/xnet/provider/jsse/ProtocolVersion;->version:[B

    invoke-virtual {v0, v1}, Lorg/apache/harmony/xnet/provider/jsse/SSLRecordProtocol;->setVersion([B)V

    goto :goto_1

    :cond_5
    iget-object v0, p0, Lorg/apache/harmony/xnet/provider/jsse/HandshakeProtocol;->session:Lorg/apache/harmony/xnet/provider/jsse/SSLSessionImpl;

    iget-object v1, p0, Lorg/apache/harmony/xnet/provider/jsse/HandshakeProtocol;->socketOwner:Lorg/apache/harmony/xnet/provider/jsse/SSLSocketImpl;

    invoke-virtual {v1}, Lorg/apache/harmony/xnet/provider/jsse/SSLSocketImpl;->getInetAddress()Ljava/net/InetAddress;

    move-result-object v1

    invoke-virtual {v1}, Ljava/net/InetAddress;->getHostName()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lorg/apache/harmony/xnet/provider/jsse/HandshakeProtocol;->socketOwner:Lorg/apache/harmony/xnet/provider/jsse/SSLSocketImpl;

    invoke-virtual {v2}, Lorg/apache/harmony/xnet/provider/jsse/SSLSocketImpl;->getPort()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lorg/apache/harmony/xnet/provider/jsse/SSLSessionImpl;->setPeer(Ljava/lang/String;I)V

    goto :goto_2

    :cond_6
    const/16 v0, 0x28

    const-string v1, "SSL Session may not be created "

    invoke-virtual {p0, v0, v1}, Lorg/apache/harmony/xnet/provider/jsse/ClientHandshakeImpl;->fatalAlert(BLjava/lang/String;)V

    goto :goto_1
.end method

.method public unwrap([B)V
    .locals 11

    const/4 v10, 0x1

    const/16 v8, 0x28

    iget-object v7, p0, Lorg/apache/harmony/xnet/provider/jsse/HandshakeProtocol;->delegatedTaskErr:Ljava/lang/Exception;

    if-eqz v7, :cond_0

    iget-object v0, p0, Lorg/apache/harmony/xnet/provider/jsse/HandshakeProtocol;->delegatedTaskErr:Ljava/lang/Exception;

    const/4 v7, 0x0

    iput-object v7, p0, Lorg/apache/harmony/xnet/provider/jsse/HandshakeProtocol;->delegatedTaskErr:Ljava/lang/Exception;

    const-string v7, "Error in delegated task"

    invoke-virtual {p0, v8, v7, v0}, Lorg/apache/harmony/xnet/provider/jsse/ClientHandshakeImpl;->fatalAlert(BLjava/lang/String;Ljava/lang/Exception;)V

    :cond_0
    iget-object v7, p0, Lorg/apache/harmony/xnet/provider/jsse/HandshakeProtocol;->io_stream:Lorg/apache/harmony/xnet/provider/jsse/HandshakeIODataStream;

    invoke-virtual {v7, p1}, Lorg/apache/harmony/xnet/provider/jsse/HandshakeIODataStream;->append([B)V

    :cond_1
    :goto_0
    iget-object v7, p0, Lorg/apache/harmony/xnet/provider/jsse/HandshakeProtocol;->io_stream:Lorg/apache/harmony/xnet/provider/jsse/HandshakeIODataStream;

    invoke-virtual {v7}, Lorg/apache/harmony/xnet/provider/jsse/HandshakeIODataStream;->available()I

    move-result v7

    if-lez v7, :cond_2

    iget-object v7, p0, Lorg/apache/harmony/xnet/provider/jsse/HandshakeProtocol;->io_stream:Lorg/apache/harmony/xnet/provider/jsse/HandshakeIODataStream;

    invoke-virtual {v7}, Lorg/apache/harmony/xnet/provider/jsse/HandshakeIODataStream;->mark()V

    :try_start_0
    iget-object v7, p0, Lorg/apache/harmony/xnet/provider/jsse/HandshakeProtocol;->io_stream:Lorg/apache/harmony/xnet/provider/jsse/HandshakeIODataStream;

    invoke-virtual {v7}, Lorg/apache/harmony/xnet/provider/jsse/HandshakeIODataStream;->read()I

    move-result v3

    iget-object v7, p0, Lorg/apache/harmony/xnet/provider/jsse/HandshakeProtocol;->io_stream:Lorg/apache/harmony/xnet/provider/jsse/HandshakeIODataStream;

    invoke-virtual {v7}, Lorg/apache/harmony/xnet/provider/jsse/HandshakeIODataStream;->readUint24()I

    move-result v5

    iget-object v7, p0, Lorg/apache/harmony/xnet/provider/jsse/HandshakeProtocol;->io_stream:Lorg/apache/harmony/xnet/provider/jsse/HandshakeIODataStream;

    invoke-virtual {v7}, Lorg/apache/harmony/xnet/provider/jsse/HandshakeIODataStream;->available()I

    move-result v7

    if-ge v7, v5, :cond_3

    iget-object v7, p0, Lorg/apache/harmony/xnet/provider/jsse/HandshakeProtocol;->io_stream:Lorg/apache/harmony/xnet/provider/jsse/HandshakeIODataStream;

    invoke-virtual {v7}, Lorg/apache/harmony/xnet/provider/jsse/HandshakeIODataStream;->reset()V

    :cond_2
    :goto_1
    return-void

    :cond_3
    sparse-switch v3, :sswitch_data_0

    invoke-virtual {p0}, Lorg/apache/harmony/xnet/provider/jsse/ClientHandshakeImpl;->unexpectedMessage()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    iget-object v7, p0, Lorg/apache/harmony/xnet/provider/jsse/HandshakeProtocol;->io_stream:Lorg/apache/harmony/xnet/provider/jsse/HandshakeIODataStream;

    invoke-virtual {v7}, Lorg/apache/harmony/xnet/provider/jsse/HandshakeIODataStream;->reset()V

    goto :goto_1

    :sswitch_0
    :try_start_1
    iget-object v7, p0, Lorg/apache/harmony/xnet/provider/jsse/HandshakeProtocol;->io_stream:Lorg/apache/harmony/xnet/provider/jsse/HandshakeIODataStream;

    invoke-virtual {v7}, Lorg/apache/harmony/xnet/provider/jsse/HandshakeIODataStream;->removeFromMarkedPosition()V

    iget-object v7, p0, Lorg/apache/harmony/xnet/provider/jsse/HandshakeProtocol;->clientHello:Lorg/apache/harmony/xnet/provider/jsse/ClientHello;

    if-eqz v7, :cond_4

    iget-object v7, p0, Lorg/apache/harmony/xnet/provider/jsse/HandshakeProtocol;->clientFinished:Lorg/apache/harmony/xnet/provider/jsse/Finished;

    if-eqz v7, :cond_1

    iget-object v7, p0, Lorg/apache/harmony/xnet/provider/jsse/HandshakeProtocol;->serverFinished:Lorg/apache/harmony/xnet/provider/jsse/Finished;

    if-eqz v7, :cond_1

    :cond_4
    iget-object v7, p0, Lorg/apache/harmony/xnet/provider/jsse/HandshakeProtocol;->session:Lorg/apache/harmony/xnet/provider/jsse/SSLSessionImpl;

    invoke-virtual {v7}, Lorg/apache/harmony/xnet/provider/jsse/SSLSessionImpl;->isValid()Z

    move-result v7

    if-eqz v7, :cond_5

    iget-object v7, p0, Lorg/apache/harmony/xnet/provider/jsse/HandshakeProtocol;->session:Lorg/apache/harmony/xnet/provider/jsse/SSLSessionImpl;

    invoke-virtual {v7}, Lorg/apache/harmony/xnet/provider/jsse/SSLSessionImpl;->clone()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lorg/apache/harmony/xnet/provider/jsse/SSLSessionImpl;

    iput-object v7, p0, Lorg/apache/harmony/xnet/provider/jsse/HandshakeProtocol;->session:Lorg/apache/harmony/xnet/provider/jsse/SSLSessionImpl;

    const/4 v7, 0x1

    iput-boolean v7, p0, Lorg/apache/harmony/xnet/provider/jsse/HandshakeProtocol;->isResuming:Z

    invoke-direct {p0}, Lorg/apache/harmony/xnet/provider/jsse/ClientHandshakeImpl;->startSession()V

    goto :goto_0

    :cond_5
    invoke-direct {p0}, Lorg/apache/harmony/xnet/provider/jsse/ClientHandshakeImpl;->renegotiateNewSession()V

    goto :goto_0

    :sswitch_1
    iget-object v7, p0, Lorg/apache/harmony/xnet/provider/jsse/HandshakeProtocol;->clientHello:Lorg/apache/harmony/xnet/provider/jsse/ClientHello;

    if-eqz v7, :cond_6

    iget-object v7, p0, Lorg/apache/harmony/xnet/provider/jsse/HandshakeProtocol;->serverHello:Lorg/apache/harmony/xnet/provider/jsse/ServerHello;

    if-eqz v7, :cond_7

    :cond_6
    invoke-virtual {p0}, Lorg/apache/harmony/xnet/provider/jsse/ClientHandshakeImpl;->unexpectedMessage()V

    goto :goto_1

    :cond_7
    new-instance v7, Lorg/apache/harmony/xnet/provider/jsse/ServerHello;

    iget-object v8, p0, Lorg/apache/harmony/xnet/provider/jsse/HandshakeProtocol;->io_stream:Lorg/apache/harmony/xnet/provider/jsse/HandshakeIODataStream;

    invoke-direct {v7, v8, v5}, Lorg/apache/harmony/xnet/provider/jsse/ServerHello;-><init>(Lorg/apache/harmony/xnet/provider/jsse/HandshakeIODataStream;I)V

    iput-object v7, p0, Lorg/apache/harmony/xnet/provider/jsse/HandshakeProtocol;->serverHello:Lorg/apache/harmony/xnet/provider/jsse/ServerHello;

    iget-object v7, p0, Lorg/apache/harmony/xnet/provider/jsse/HandshakeProtocol;->serverHello:Lorg/apache/harmony/xnet/provider/jsse/ServerHello;

    iget-object v7, v7, Lorg/apache/harmony/xnet/provider/jsse/ServerHello;->server_version:[B

    invoke-static {v7}, Lorg/apache/harmony/xnet/provider/jsse/ProtocolVersion;->getByVersion([B)Lorg/apache/harmony/xnet/provider/jsse/ProtocolVersion;

    move-result-object v6

    iget-object v7, p0, Lorg/apache/harmony/xnet/provider/jsse/HandshakeProtocol;->parameters:Lorg/apache/harmony/xnet/provider/jsse/SSLParametersImpl;

    invoke-virtual {v7}, Lorg/apache/harmony/xnet/provider/jsse/SSLParametersImpl;->getEnabledProtocols()[Ljava/lang/String;

    move-result-object v1

    const/4 v4, 0x0

    :goto_2
    array-length v7, v1

    if-ge v4, v7, :cond_c

    aget-object v7, v1, v4

    invoke-static {v7}, Lorg/apache/harmony/xnet/provider/jsse/ProtocolVersion;->getByName(Ljava/lang/String;)Lorg/apache/harmony/xnet/provider/jsse/ProtocolVersion;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_b

    :goto_3
    iget-object v7, p0, Lorg/apache/harmony/xnet/provider/jsse/HandshakeProtocol;->serverHello:Lorg/apache/harmony/xnet/provider/jsse/ServerHello;

    iget-byte v7, v7, Lorg/apache/harmony/xnet/provider/jsse/ServerHello;->compression_method:B

    if-eqz v7, :cond_8

    const/16 v7, 0x28

    const-string v8, "Bad server hello compression method"

    invoke-virtual {p0, v7, v8}, Lorg/apache/harmony/xnet/provider/jsse/ClientHandshakeImpl;->fatalAlert(BLjava/lang/String;)V

    :cond_8
    iget-object v7, p0, Lorg/apache/harmony/xnet/provider/jsse/HandshakeProtocol;->parameters:Lorg/apache/harmony/xnet/provider/jsse/SSLParametersImpl;

    invoke-virtual {v7}, Lorg/apache/harmony/xnet/provider/jsse/SSLParametersImpl;->getEnabledCipherSuitesMember()[Lorg/apache/harmony/xnet/provider/jsse/CipherSuite;

    move-result-object v2

    const/4 v4, 0x0

    :goto_4
    array-length v7, v2

    if-ge v4, v7, :cond_e

    iget-object v7, p0, Lorg/apache/harmony/xnet/provider/jsse/HandshakeProtocol;->serverHello:Lorg/apache/harmony/xnet/provider/jsse/ServerHello;

    iget-object v7, v7, Lorg/apache/harmony/xnet/provider/jsse/ServerHello;->cipher_suite:Lorg/apache/harmony/xnet/provider/jsse/CipherSuite;

    aget-object v8, v2, v4

    invoke-virtual {v7, v8}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_d

    :goto_5
    iget-boolean v7, p0, Lorg/apache/harmony/xnet/provider/jsse/HandshakeProtocol;->isResuming:Z

    if-eqz v7, :cond_a

    iget-object v7, p0, Lorg/apache/harmony/xnet/provider/jsse/HandshakeProtocol;->serverHello:Lorg/apache/harmony/xnet/provider/jsse/ServerHello;

    iget-object v7, v7, Lorg/apache/harmony/xnet/provider/jsse/ServerHello;->session_id:[B

    array-length v7, v7

    if-nez v7, :cond_f

    const/4 v7, 0x0

    iput-boolean v7, p0, Lorg/apache/harmony/xnet/provider/jsse/HandshakeProtocol;->isResuming:Z

    :cond_9
    :goto_6
    iget-object v7, p0, Lorg/apache/harmony/xnet/provider/jsse/HandshakeProtocol;->serverHello:Lorg/apache/harmony/xnet/provider/jsse/ServerHello;

    iget-object v7, v7, Lorg/apache/harmony/xnet/provider/jsse/ServerHello;->server_version:[B

    const/4 v8, 0x1

    aget-byte v7, v7, v8

    if-ne v7, v10, :cond_12

    const-string v7, "server finished"

    invoke-virtual {p0, v7}, Lorg/apache/harmony/xnet/provider/jsse/ClientHandshakeImpl;->computerReferenceVerifyDataTLS(Ljava/lang/String;)V

    :cond_a
    :goto_7
    iget-object v7, p0, Lorg/apache/harmony/xnet/provider/jsse/HandshakeProtocol;->session:Lorg/apache/harmony/xnet/provider/jsse/SSLSessionImpl;

    iput-object v6, v7, Lorg/apache/harmony/xnet/provider/jsse/SSLSessionImpl;->protocol:Lorg/apache/harmony/xnet/provider/jsse/ProtocolVersion;

    iget-object v7, p0, Lorg/apache/harmony/xnet/provider/jsse/HandshakeProtocol;->recordProtocol:Lorg/apache/harmony/xnet/provider/jsse/SSLRecordProtocol;

    iget-object v8, p0, Lorg/apache/harmony/xnet/provider/jsse/HandshakeProtocol;->session:Lorg/apache/harmony/xnet/provider/jsse/SSLSessionImpl;

    iget-object v8, v8, Lorg/apache/harmony/xnet/provider/jsse/SSLSessionImpl;->protocol:Lorg/apache/harmony/xnet/provider/jsse/ProtocolVersion;

    iget-object v8, v8, Lorg/apache/harmony/xnet/provider/jsse/ProtocolVersion;->version:[B

    invoke-virtual {v7, v8}, Lorg/apache/harmony/xnet/provider/jsse/SSLRecordProtocol;->setVersion([B)V

    iget-object v7, p0, Lorg/apache/harmony/xnet/provider/jsse/HandshakeProtocol;->session:Lorg/apache/harmony/xnet/provider/jsse/SSLSessionImpl;

    iget-object v8, p0, Lorg/apache/harmony/xnet/provider/jsse/HandshakeProtocol;->serverHello:Lorg/apache/harmony/xnet/provider/jsse/ServerHello;

    iget-object v8, v8, Lorg/apache/harmony/xnet/provider/jsse/ServerHello;->cipher_suite:Lorg/apache/harmony/xnet/provider/jsse/CipherSuite;

    iput-object v8, v7, Lorg/apache/harmony/xnet/provider/jsse/SSLSessionImpl;->cipherSuite:Lorg/apache/harmony/xnet/provider/jsse/CipherSuite;

    iget-object v8, p0, Lorg/apache/harmony/xnet/provider/jsse/HandshakeProtocol;->session:Lorg/apache/harmony/xnet/provider/jsse/SSLSessionImpl;

    iget-object v7, p0, Lorg/apache/harmony/xnet/provider/jsse/HandshakeProtocol;->serverHello:Lorg/apache/harmony/xnet/provider/jsse/ServerHello;

    iget-object v7, v7, Lorg/apache/harmony/xnet/provider/jsse/ServerHello;->session_id:[B

    invoke-virtual {v7}, [B->clone()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, [B

    iput-object v7, v8, Lorg/apache/harmony/xnet/provider/jsse/SSLSessionImpl;->id:[B

    iget-object v7, p0, Lorg/apache/harmony/xnet/provider/jsse/HandshakeProtocol;->session:Lorg/apache/harmony/xnet/provider/jsse/SSLSessionImpl;

    iget-object v8, p0, Lorg/apache/harmony/xnet/provider/jsse/HandshakeProtocol;->serverHello:Lorg/apache/harmony/xnet/provider/jsse/ServerHello;

    iget-object v8, v8, Lorg/apache/harmony/xnet/provider/jsse/ServerHello;->random:[B

    iput-object v8, v7, Lorg/apache/harmony/xnet/provider/jsse/SSLSessionImpl;->serverRandom:[B

    goto/16 :goto_0

    :cond_b
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    :cond_c
    const/16 v7, 0x28

    const-string v8, "Bad server hello protocol version"

    invoke-virtual {p0, v7, v8}, Lorg/apache/harmony/xnet/provider/jsse/ClientHandshakeImpl;->fatalAlert(BLjava/lang/String;)V

    goto :goto_3

    :cond_d
    add-int/lit8 v4, v4, 0x1

    goto :goto_4

    :cond_e
    const/16 v7, 0x28

    const-string v8, "Bad server hello cipher suite"

    invoke-virtual {p0, v7, v8}, Lorg/apache/harmony/xnet/provider/jsse/ClientHandshakeImpl;->fatalAlert(BLjava/lang/String;)V

    goto :goto_5

    :cond_f
    iget-object v7, p0, Lorg/apache/harmony/xnet/provider/jsse/HandshakeProtocol;->serverHello:Lorg/apache/harmony/xnet/provider/jsse/ServerHello;

    iget-object v7, v7, Lorg/apache/harmony/xnet/provider/jsse/ServerHello;->session_id:[B

    iget-object v8, p0, Lorg/apache/harmony/xnet/provider/jsse/HandshakeProtocol;->clientHello:Lorg/apache/harmony/xnet/provider/jsse/ClientHello;

    iget-object v8, v8, Lorg/apache/harmony/xnet/provider/jsse/ClientHello;->session_id:[B

    invoke-static {v7, v8}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v7

    if-nez v7, :cond_10

    const/4 v7, 0x0

    iput-boolean v7, p0, Lorg/apache/harmony/xnet/provider/jsse/HandshakeProtocol;->isResuming:Z

    goto :goto_6

    :cond_10
    iget-object v7, p0, Lorg/apache/harmony/xnet/provider/jsse/HandshakeProtocol;->session:Lorg/apache/harmony/xnet/provider/jsse/SSLSessionImpl;

    iget-object v7, v7, Lorg/apache/harmony/xnet/provider/jsse/SSLSessionImpl;->protocol:Lorg/apache/harmony/xnet/provider/jsse/ProtocolVersion;

    invoke-virtual {v7, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_11

    const/16 v7, 0x28

    const-string v8, "Bad server hello protocol version"

    invoke-virtual {p0, v7, v8}, Lorg/apache/harmony/xnet/provider/jsse/ClientHandshakeImpl;->fatalAlert(BLjava/lang/String;)V

    goto :goto_6

    :cond_11
    iget-object v7, p0, Lorg/apache/harmony/xnet/provider/jsse/HandshakeProtocol;->session:Lorg/apache/harmony/xnet/provider/jsse/SSLSessionImpl;

    iget-object v7, v7, Lorg/apache/harmony/xnet/provider/jsse/SSLSessionImpl;->cipherSuite:Lorg/apache/harmony/xnet/provider/jsse/CipherSuite;

    iget-object v8, p0, Lorg/apache/harmony/xnet/provider/jsse/HandshakeProtocol;->serverHello:Lorg/apache/harmony/xnet/provider/jsse/ServerHello;

    iget-object v8, v8, Lorg/apache/harmony/xnet/provider/jsse/ServerHello;->cipher_suite:Lorg/apache/harmony/xnet/provider/jsse/CipherSuite;

    invoke-virtual {v7, v8}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_9

    const/16 v7, 0x28

    const-string v8, "Bad server hello cipher suite"

    invoke-virtual {p0, v7, v8}, Lorg/apache/harmony/xnet/provider/jsse/ClientHandshakeImpl;->fatalAlert(BLjava/lang/String;)V

    goto/16 :goto_6

    :cond_12
    sget-object v7, Lorg/apache/harmony/xnet/provider/jsse/SSLv3Constants;->server:[B

    invoke-virtual {p0, v7}, Lorg/apache/harmony/xnet/provider/jsse/ClientHandshakeImpl;->computerReferenceVerifyDataSSLv3([B)V

    goto/16 :goto_7

    :sswitch_2
    iget-object v7, p0, Lorg/apache/harmony/xnet/provider/jsse/HandshakeProtocol;->serverHello:Lorg/apache/harmony/xnet/provider/jsse/ServerHello;

    if-eqz v7, :cond_13

    iget-object v7, p0, Lorg/apache/harmony/xnet/provider/jsse/HandshakeProtocol;->serverKeyExchange:Lorg/apache/harmony/xnet/provider/jsse/ServerKeyExchange;

    if-nez v7, :cond_13

    iget-object v7, p0, Lorg/apache/harmony/xnet/provider/jsse/HandshakeProtocol;->serverCert:Lorg/apache/harmony/xnet/provider/jsse/CertificateMessage;

    if-nez v7, :cond_13

    iget-boolean v7, p0, Lorg/apache/harmony/xnet/provider/jsse/HandshakeProtocol;->isResuming:Z

    if-eqz v7, :cond_14

    :cond_13
    invoke-virtual {p0}, Lorg/apache/harmony/xnet/provider/jsse/ClientHandshakeImpl;->unexpectedMessage()V

    goto/16 :goto_1

    :cond_14
    new-instance v7, Lorg/apache/harmony/xnet/provider/jsse/CertificateMessage;

    iget-object v8, p0, Lorg/apache/harmony/xnet/provider/jsse/HandshakeProtocol;->io_stream:Lorg/apache/harmony/xnet/provider/jsse/HandshakeIODataStream;

    invoke-direct {v7, v8, v5}, Lorg/apache/harmony/xnet/provider/jsse/CertificateMessage;-><init>(Lorg/apache/harmony/xnet/provider/jsse/HandshakeIODataStream;I)V

    iput-object v7, p0, Lorg/apache/harmony/xnet/provider/jsse/HandshakeProtocol;->serverCert:Lorg/apache/harmony/xnet/provider/jsse/CertificateMessage;

    goto/16 :goto_0

    :sswitch_3
    iget-object v7, p0, Lorg/apache/harmony/xnet/provider/jsse/HandshakeProtocol;->serverHello:Lorg/apache/harmony/xnet/provider/jsse/ServerHello;

    if-eqz v7, :cond_15

    iget-object v7, p0, Lorg/apache/harmony/xnet/provider/jsse/HandshakeProtocol;->serverKeyExchange:Lorg/apache/harmony/xnet/provider/jsse/ServerKeyExchange;

    if-nez v7, :cond_15

    iget-boolean v7, p0, Lorg/apache/harmony/xnet/provider/jsse/HandshakeProtocol;->isResuming:Z

    if-eqz v7, :cond_16

    :cond_15
    invoke-virtual {p0}, Lorg/apache/harmony/xnet/provider/jsse/ClientHandshakeImpl;->unexpectedMessage()V

    goto/16 :goto_1

    :cond_16
    new-instance v7, Lorg/apache/harmony/xnet/provider/jsse/ServerKeyExchange;

    iget-object v8, p0, Lorg/apache/harmony/xnet/provider/jsse/HandshakeProtocol;->io_stream:Lorg/apache/harmony/xnet/provider/jsse/HandshakeIODataStream;

    iget-object v9, p0, Lorg/apache/harmony/xnet/provider/jsse/HandshakeProtocol;->session:Lorg/apache/harmony/xnet/provider/jsse/SSLSessionImpl;

    iget-object v9, v9, Lorg/apache/harmony/xnet/provider/jsse/SSLSessionImpl;->cipherSuite:Lorg/apache/harmony/xnet/provider/jsse/CipherSuite;

    iget v9, v9, Lorg/apache/harmony/xnet/provider/jsse/CipherSuite;->keyExchange:I

    invoke-direct {v7, v8, v5, v9}, Lorg/apache/harmony/xnet/provider/jsse/ServerKeyExchange;-><init>(Lorg/apache/harmony/xnet/provider/jsse/HandshakeIODataStream;II)V

    iput-object v7, p0, Lorg/apache/harmony/xnet/provider/jsse/HandshakeProtocol;->serverKeyExchange:Lorg/apache/harmony/xnet/provider/jsse/ServerKeyExchange;

    goto/16 :goto_0

    :sswitch_4
    iget-object v7, p0, Lorg/apache/harmony/xnet/provider/jsse/HandshakeProtocol;->serverCert:Lorg/apache/harmony/xnet/provider/jsse/CertificateMessage;

    if-eqz v7, :cond_17

    iget-object v7, p0, Lorg/apache/harmony/xnet/provider/jsse/HandshakeProtocol;->certificateRequest:Lorg/apache/harmony/xnet/provider/jsse/CertificateRequest;

    if-nez v7, :cond_17

    iget-object v7, p0, Lorg/apache/harmony/xnet/provider/jsse/HandshakeProtocol;->session:Lorg/apache/harmony/xnet/provider/jsse/SSLSessionImpl;

    iget-object v7, v7, Lorg/apache/harmony/xnet/provider/jsse/SSLSessionImpl;->cipherSuite:Lorg/apache/harmony/xnet/provider/jsse/CipherSuite;

    invoke-virtual {v7}, Lorg/apache/harmony/xnet/provider/jsse/CipherSuite;->isAnonymous()Z

    move-result v7

    if-nez v7, :cond_17

    iget-boolean v7, p0, Lorg/apache/harmony/xnet/provider/jsse/HandshakeProtocol;->isResuming:Z

    if-eqz v7, :cond_18

    :cond_17
    invoke-virtual {p0}, Lorg/apache/harmony/xnet/provider/jsse/ClientHandshakeImpl;->unexpectedMessage()V

    goto/16 :goto_1

    :cond_18
    new-instance v7, Lorg/apache/harmony/xnet/provider/jsse/CertificateRequest;

    iget-object v8, p0, Lorg/apache/harmony/xnet/provider/jsse/HandshakeProtocol;->io_stream:Lorg/apache/harmony/xnet/provider/jsse/HandshakeIODataStream;

    invoke-direct {v7, v8, v5}, Lorg/apache/harmony/xnet/provider/jsse/CertificateRequest;-><init>(Lorg/apache/harmony/xnet/provider/jsse/HandshakeIODataStream;I)V

    iput-object v7, p0, Lorg/apache/harmony/xnet/provider/jsse/HandshakeProtocol;->certificateRequest:Lorg/apache/harmony/xnet/provider/jsse/CertificateRequest;

    goto/16 :goto_0

    :sswitch_5
    iget-object v7, p0, Lorg/apache/harmony/xnet/provider/jsse/HandshakeProtocol;->serverHello:Lorg/apache/harmony/xnet/provider/jsse/ServerHello;

    if-eqz v7, :cond_19

    iget-object v7, p0, Lorg/apache/harmony/xnet/provider/jsse/HandshakeProtocol;->serverHelloDone:Lorg/apache/harmony/xnet/provider/jsse/ServerHelloDone;

    if-nez v7, :cond_19

    iget-boolean v7, p0, Lorg/apache/harmony/xnet/provider/jsse/HandshakeProtocol;->isResuming:Z

    if-eqz v7, :cond_1a

    :cond_19
    invoke-virtual {p0}, Lorg/apache/harmony/xnet/provider/jsse/ClientHandshakeImpl;->unexpectedMessage()V

    goto/16 :goto_1

    :cond_1a
    new-instance v7, Lorg/apache/harmony/xnet/provider/jsse/ServerHelloDone;

    iget-object v8, p0, Lorg/apache/harmony/xnet/provider/jsse/HandshakeProtocol;->io_stream:Lorg/apache/harmony/xnet/provider/jsse/HandshakeIODataStream;

    invoke-direct {v7, v8, v5}, Lorg/apache/harmony/xnet/provider/jsse/ServerHelloDone;-><init>(Lorg/apache/harmony/xnet/provider/jsse/HandshakeIODataStream;I)V

    iput-object v7, p0, Lorg/apache/harmony/xnet/provider/jsse/HandshakeProtocol;->serverHelloDone:Lorg/apache/harmony/xnet/provider/jsse/ServerHelloDone;

    iget-boolean v7, p0, Lorg/apache/harmony/xnet/provider/jsse/HandshakeProtocol;->nonBlocking:Z

    if-eqz v7, :cond_1b

    iget-object v7, p0, Lorg/apache/harmony/xnet/provider/jsse/HandshakeProtocol;->delegatedTasks:Ljava/util/Vector;

    new-instance v8, Lorg/apache/harmony/xnet/provider/jsse/DelegatedTask;

    new-instance v9, Lorg/apache/harmony/xnet/provider/jsse/ClientHandshakeImpl$1;

    invoke-direct {v9, p0}, Lorg/apache/harmony/xnet/provider/jsse/ClientHandshakeImpl$1;-><init>(Lorg/apache/harmony/xnet/provider/jsse/ClientHandshakeImpl;)V

    invoke-direct {v8, v9, p0}, Lorg/apache/harmony/xnet/provider/jsse/DelegatedTask;-><init>(Ljava/lang/Runnable;Lorg/apache/harmony/xnet/provider/jsse/HandshakeProtocol;)V

    invoke-virtual {v7, v8}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    :cond_1b
    invoke-virtual {p0}, Lorg/apache/harmony/xnet/provider/jsse/ClientHandshakeImpl;->processServerHelloDone()V

    goto/16 :goto_0

    :sswitch_6
    iget-boolean v7, p0, Lorg/apache/harmony/xnet/provider/jsse/HandshakeProtocol;->changeCipherSpecReceived:Z

    if-nez v7, :cond_1c

    invoke-virtual {p0}, Lorg/apache/harmony/xnet/provider/jsse/ClientHandshakeImpl;->unexpectedMessage()V

    goto/16 :goto_1

    :cond_1c
    new-instance v7, Lorg/apache/harmony/xnet/provider/jsse/Finished;

    iget-object v8, p0, Lorg/apache/harmony/xnet/provider/jsse/HandshakeProtocol;->io_stream:Lorg/apache/harmony/xnet/provider/jsse/HandshakeIODataStream;

    invoke-direct {v7, v8, v5}, Lorg/apache/harmony/xnet/provider/jsse/Finished;-><init>(Lorg/apache/harmony/xnet/provider/jsse/HandshakeIODataStream;I)V

    iput-object v7, p0, Lorg/apache/harmony/xnet/provider/jsse/HandshakeProtocol;->serverFinished:Lorg/apache/harmony/xnet/provider/jsse/Finished;

    iget-object v7, p0, Lorg/apache/harmony/xnet/provider/jsse/HandshakeProtocol;->serverFinished:Lorg/apache/harmony/xnet/provider/jsse/Finished;

    invoke-virtual {v7}, Lorg/apache/harmony/xnet/provider/jsse/Finished;->getData()[B

    move-result-object v7

    invoke-virtual {p0, v7}, Lorg/apache/harmony/xnet/provider/jsse/ClientHandshakeImpl;->verifyFinished([B)V

    iget-object v7, p0, Lorg/apache/harmony/xnet/provider/jsse/HandshakeProtocol;->session:Lorg/apache/harmony/xnet/provider/jsse/SSLSessionImpl;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    iput-wide v8, v7, Lorg/apache/harmony/xnet/provider/jsse/SSLSessionImpl;->lastAccessedTime:J

    iget-object v7, p0, Lorg/apache/harmony/xnet/provider/jsse/HandshakeProtocol;->session:Lorg/apache/harmony/xnet/provider/jsse/SSLSessionImpl;

    iget-object v8, p0, Lorg/apache/harmony/xnet/provider/jsse/HandshakeProtocol;->parameters:Lorg/apache/harmony/xnet/provider/jsse/SSLParametersImpl;

    invoke-virtual {v8}, Lorg/apache/harmony/xnet/provider/jsse/SSLParametersImpl;->getClientSessionContext()Lorg/apache/harmony/xnet/provider/jsse/ClientSessionContext;

    move-result-object v8

    iput-object v8, v7, Lorg/apache/harmony/xnet/provider/jsse/SSLSessionImpl;->context:Ljavax/net/ssl/SSLSessionContext;

    iget-object v7, p0, Lorg/apache/harmony/xnet/provider/jsse/HandshakeProtocol;->parameters:Lorg/apache/harmony/xnet/provider/jsse/SSLParametersImpl;

    invoke-virtual {v7}, Lorg/apache/harmony/xnet/provider/jsse/SSLParametersImpl;->getClientSessionContext()Lorg/apache/harmony/xnet/provider/jsse/ClientSessionContext;

    move-result-object v7

    iget-object v8, p0, Lorg/apache/harmony/xnet/provider/jsse/HandshakeProtocol;->session:Lorg/apache/harmony/xnet/provider/jsse/SSLSessionImpl;

    invoke-virtual {v7, v8}, Lorg/apache/harmony/xnet/provider/jsse/ClientSessionContext;->putSession(Ljavax/net/ssl/SSLSession;)V

    iget-boolean v7, p0, Lorg/apache/harmony/xnet/provider/jsse/HandshakeProtocol;->isResuming:Z

    if-eqz v7, :cond_1d

    invoke-virtual {p0}, Lorg/apache/harmony/xnet/provider/jsse/ClientHandshakeImpl;->sendChangeCipherSpec()V

    goto/16 :goto_0

    :cond_1d
    iget-object v7, p0, Lorg/apache/harmony/xnet/provider/jsse/HandshakeProtocol;->session:Lorg/apache/harmony/xnet/provider/jsse/SSLSessionImpl;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    iput-wide v8, v7, Lorg/apache/harmony/xnet/provider/jsse/SSLSessionImpl;->lastAccessedTime:J

    const/4 v7, 0x3

    iput v7, p0, Lorg/apache/harmony/xnet/provider/jsse/HandshakeProtocol;->status:I
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x2 -> :sswitch_1
        0xb -> :sswitch_2
        0xc -> :sswitch_3
        0xd -> :sswitch_4
        0xe -> :sswitch_5
        0x14 -> :sswitch_6
    .end sparse-switch
.end method

.method public unwrapSSLv2([B)V
    .locals 0

    invoke-virtual {p0}, Lorg/apache/harmony/xnet/provider/jsse/ClientHandshakeImpl;->unexpectedMessage()V

    return-void
.end method
