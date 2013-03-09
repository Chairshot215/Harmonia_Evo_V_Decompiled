.class public Lorg/apache/harmony/xnet/provider/jsse/ServerHandshakeImpl;
.super Lorg/apache/harmony/xnet/provider/jsse/HandshakeProtocol;
.source "ServerHandshakeImpl.java"


# instance fields
.field private privKey:Ljava/security/PrivateKey;


# direct methods
.method public constructor <init>(Ljava/lang/Object;)V
    .locals 1

    invoke-direct {p0, p1}, Lorg/apache/harmony/xnet/provider/jsse/HandshakeProtocol;-><init>(Ljava/lang/Object;)V

    const/4 v0, 0x1

    iput v0, p0, Lorg/apache/harmony/xnet/provider/jsse/HandshakeProtocol;->status:I

    return-void
.end method

.method private findSessionToResume([B)Lorg/apache/harmony/xnet/provider/jsse/SSLSessionImpl;
    .locals 1

    iget-object v0, p0, Lorg/apache/harmony/xnet/provider/jsse/HandshakeProtocol;->parameters:Lorg/apache/harmony/xnet/provider/jsse/SSLParametersImpl;

    invoke-virtual {v0}, Lorg/apache/harmony/xnet/provider/jsse/SSLParametersImpl;->getServerSessionContext()Lorg/apache/harmony/xnet/provider/jsse/ServerSessionContext;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/apache/harmony/xnet/provider/jsse/ServerSessionContext;->getSession([B)Ljavax/net/ssl/SSLSession;

    move-result-object v0

    check-cast v0, Lorg/apache/harmony/xnet/provider/jsse/SSLSessionImpl;

    return-object v0
.end method

.method private selectSuite([Lorg/apache/harmony/xnet/provider/jsse/CipherSuite;)Lorg/apache/harmony/xnet/provider/jsse/CipherSuite;
    .locals 9

    move-object v0, p1

    array-length v6, v0

    const/4 v4, 0x0

    move v5, v4

    :goto_0
    if-ge v5, v6, :cond_3

    aget-object v2, v0, v5

    iget-boolean v8, v2, Lorg/apache/harmony/xnet/provider/jsse/CipherSuite;->supported:Z

    if-nez v8, :cond_1

    :cond_0
    add-int/lit8 v4, v5, 0x1

    move v5, v4

    goto :goto_0

    :cond_1
    iget-object v8, p0, Lorg/apache/harmony/xnet/provider/jsse/HandshakeProtocol;->parameters:Lorg/apache/harmony/xnet/provider/jsse/SSLParametersImpl;

    invoke-virtual {v8}, Lorg/apache/harmony/xnet/provider/jsse/SSLParametersImpl;->getEnabledCipherSuitesMember()[Lorg/apache/harmony/xnet/provider/jsse/CipherSuite;

    move-result-object v1

    array-length v7, v1

    const/4 v4, 0x0

    :goto_1
    if-ge v4, v7, :cond_0

    aget-object v3, v1, v4

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_2

    :goto_2
    return-object v2

    :cond_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_3
    const/4 v2, 0x0

    goto :goto_2
.end method


# virtual methods
.method protected makeFinished()V
    .locals 5

    const/4 v2, 0x1

    iget-object v3, p0, Lorg/apache/harmony/xnet/provider/jsse/HandshakeProtocol;->serverHello:Lorg/apache/harmony/xnet/provider/jsse/ServerHello;

    iget-object v3, v3, Lorg/apache/harmony/xnet/provider/jsse/ServerHello;->server_version:[B

    aget-byte v3, v3, v2

    if-ne v3, v2, :cond_0

    move v0, v2

    :goto_0
    if-eqz v0, :cond_1

    const/16 v3, 0xc

    new-array v1, v3, [B

    const-string v3, "server finished"

    invoke-virtual {p0, v3, v1}, Lorg/apache/harmony/xnet/provider/jsse/ServerHandshakeImpl;->computerVerifyDataTLS(Ljava/lang/String;[B)V

    :goto_1
    new-instance v3, Lorg/apache/harmony/xnet/provider/jsse/Finished;

    invoke-direct {v3, v1}, Lorg/apache/harmony/xnet/provider/jsse/Finished;-><init>([B)V

    iput-object v3, p0, Lorg/apache/harmony/xnet/provider/jsse/HandshakeProtocol;->serverFinished:Lorg/apache/harmony/xnet/provider/jsse/Finished;

    iget-object v3, p0, Lorg/apache/harmony/xnet/provider/jsse/HandshakeProtocol;->serverFinished:Lorg/apache/harmony/xnet/provider/jsse/Finished;

    invoke-virtual {p0, v3}, Lorg/apache/harmony/xnet/provider/jsse/ServerHandshakeImpl;->send(Lorg/apache/harmony/xnet/provider/jsse/Message;)V

    iget-boolean v3, p0, Lorg/apache/harmony/xnet/provider/jsse/HandshakeProtocol;->isResuming:Z

    if-eqz v3, :cond_3

    if-eqz v0, :cond_2

    const-string v3, "client finished"

    invoke-virtual {p0, v3}, Lorg/apache/harmony/xnet/provider/jsse/ServerHandshakeImpl;->computerReferenceVerifyDataTLS(Ljava/lang/String;)V

    :goto_2
    iput v2, p0, Lorg/apache/harmony/xnet/provider/jsse/HandshakeProtocol;->status:I

    :goto_3
    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    const/16 v3, 0x24

    new-array v1, v3, [B

    sget-object v3, Lorg/apache/harmony/xnet/provider/jsse/SSLv3Constants;->server:[B

    invoke-virtual {p0, v3, v1}, Lorg/apache/harmony/xnet/provider/jsse/ServerHandshakeImpl;->computerVerifyDataSSLv3([B[B)V

    goto :goto_1

    :cond_2
    sget-object v3, Lorg/apache/harmony/xnet/provider/jsse/SSLv3Constants;->client:[B

    invoke-virtual {p0, v3}, Lorg/apache/harmony/xnet/provider/jsse/ServerHandshakeImpl;->computerReferenceVerifyDataSSLv3([B)V

    goto :goto_2

    :cond_3
    iget-object v2, p0, Lorg/apache/harmony/xnet/provider/jsse/HandshakeProtocol;->session:Lorg/apache/harmony/xnet/provider/jsse/SSLSessionImpl;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    iput-wide v3, v2, Lorg/apache/harmony/xnet/provider/jsse/SSLSessionImpl;->lastAccessedTime:J

    const/4 v2, 0x3

    iput v2, p0, Lorg/apache/harmony/xnet/provider/jsse/HandshakeProtocol;->status:I

    goto :goto_3
.end method

.method processClientHello()V
    .locals 37

    const/16 v21, 0x0

    :goto_0
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/apache/harmony/xnet/provider/jsse/HandshakeProtocol;->clientHello:Lorg/apache/harmony/xnet/provider/jsse/ClientHello;

    iget-object v3, v3, Lorg/apache/harmony/xnet/provider/jsse/ClientHello;->compression_methods:[B

    array-length v3, v3

    move/from16 v0, v21

    if-ge v0, v3, :cond_3

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/apache/harmony/xnet/provider/jsse/HandshakeProtocol;->clientHello:Lorg/apache/harmony/xnet/provider/jsse/ClientHello;

    iget-object v3, v3, Lorg/apache/harmony/xnet/provider/jsse/ClientHello;->compression_methods:[B

    aget-byte v3, v3, v21

    if-nez v3, :cond_2

    :goto_1
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/apache/harmony/xnet/provider/jsse/HandshakeProtocol;->clientHello:Lorg/apache/harmony/xnet/provider/jsse/ClientHello;

    iget-object v3, v3, Lorg/apache/harmony/xnet/provider/jsse/ClientHello;->client_version:[B

    invoke-static {v3}, Lorg/apache/harmony/xnet/provider/jsse/ProtocolVersion;->isSupported([B)Z

    move-result v3

    if-nez v3, :cond_0

    const/16 v3, 0x46

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "PROTOCOL VERSION. Unsupported client version "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/apache/harmony/xnet/provider/jsse/HandshakeProtocol;->clientHello:Lorg/apache/harmony/xnet/provider/jsse/ClientHello;

    iget-object v5, v5, Lorg/apache/harmony/xnet/provider/jsse/ClientHello;->client_version:[B

    const/4 v6, 0x0

    aget-byte v5, v5, v6

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/apache/harmony/xnet/provider/jsse/HandshakeProtocol;->clientHello:Lorg/apache/harmony/xnet/provider/jsse/ClientHello;

    iget-object v5, v5, Lorg/apache/harmony/xnet/provider/jsse/ClientHello;->client_version:[B

    const/4 v6, 0x1

    aget-byte v5, v5, v6

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v4}, Lorg/apache/harmony/xnet/provider/jsse/ServerHandshakeImpl;->fatalAlert(BLjava/lang/String;)V

    :cond_0
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput-boolean v3, v0, Lorg/apache/harmony/xnet/provider/jsse/HandshakeProtocol;->isResuming:Z

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/apache/harmony/xnet/provider/jsse/HandshakeProtocol;->clientHello:Lorg/apache/harmony/xnet/provider/jsse/ClientHello;

    iget-object v3, v3, Lorg/apache/harmony/xnet/provider/jsse/ClientHello;->session_id:[B

    array-length v3, v3

    if-eqz v3, :cond_1

    const/16 v30, 0x0

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/apache/harmony/xnet/provider/jsse/HandshakeProtocol;->session:Lorg/apache/harmony/xnet/provider/jsse/SSLSessionImpl;

    if-eqz v3, :cond_5

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/apache/harmony/xnet/provider/jsse/HandshakeProtocol;->session:Lorg/apache/harmony/xnet/provider/jsse/SSLSessionImpl;

    iget-object v3, v3, Lorg/apache/harmony/xnet/provider/jsse/SSLSessionImpl;->id:[B

    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/apache/harmony/xnet/provider/jsse/HandshakeProtocol;->clientHello:Lorg/apache/harmony/xnet/provider/jsse/ClientHello;

    iget-object v4, v4, Lorg/apache/harmony/xnet/provider/jsse/ClientHello;->session_id:[B

    invoke-static {v3, v4}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v3

    if-eqz v3, :cond_5

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/apache/harmony/xnet/provider/jsse/HandshakeProtocol;->session:Lorg/apache/harmony/xnet/provider/jsse/SSLSessionImpl;

    invoke-virtual {v3}, Lorg/apache/harmony/xnet/provider/jsse/SSLSessionImpl;->isValid()Z

    move-result v3

    if-eqz v3, :cond_4

    const/4 v3, 0x1

    move-object/from16 v0, p0

    iput-boolean v3, v0, Lorg/apache/harmony/xnet/provider/jsse/HandshakeProtocol;->isResuming:Z

    :cond_1
    :goto_2
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lorg/apache/harmony/xnet/provider/jsse/HandshakeProtocol;->isResuming:Z

    if-eqz v3, :cond_c

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/apache/harmony/xnet/provider/jsse/HandshakeProtocol;->session:Lorg/apache/harmony/xnet/provider/jsse/SSLSessionImpl;

    iget-object v7, v3, Lorg/apache/harmony/xnet/provider/jsse/SSLSessionImpl;->cipherSuite:Lorg/apache/harmony/xnet/provider/jsse/CipherSuite;

    const/16 v21, 0x0

    :goto_3
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/apache/harmony/xnet/provider/jsse/HandshakeProtocol;->clientHello:Lorg/apache/harmony/xnet/provider/jsse/ClientHello;

    iget-object v3, v3, Lorg/apache/harmony/xnet/provider/jsse/ClientHello;->cipher_suites:[Lorg/apache/harmony/xnet/provider/jsse/CipherSuite;

    array-length v3, v3

    move/from16 v0, v21

    if-ge v0, v3, :cond_b

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/apache/harmony/xnet/provider/jsse/HandshakeProtocol;->clientHello:Lorg/apache/harmony/xnet/provider/jsse/ClientHello;

    iget-object v3, v3, Lorg/apache/harmony/xnet/provider/jsse/ClientHello;->cipher_suites:[Lorg/apache/harmony/xnet/provider/jsse/CipherSuite;

    aget-object v3, v3, v21

    invoke-virtual {v7, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_a

    :goto_4
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/apache/harmony/xnet/provider/jsse/HandshakeProtocol;->recordProtocol:Lorg/apache/harmony/xnet/provider/jsse/SSLRecordProtocol;

    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/apache/harmony/xnet/provider/jsse/HandshakeProtocol;->clientHello:Lorg/apache/harmony/xnet/provider/jsse/ClientHello;

    iget-object v4, v4, Lorg/apache/harmony/xnet/provider/jsse/ClientHello;->client_version:[B

    invoke-virtual {v3, v4}, Lorg/apache/harmony/xnet/provider/jsse/SSLRecordProtocol;->setVersion([B)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/apache/harmony/xnet/provider/jsse/HandshakeProtocol;->session:Lorg/apache/harmony/xnet/provider/jsse/SSLSessionImpl;

    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/apache/harmony/xnet/provider/jsse/HandshakeProtocol;->clientHello:Lorg/apache/harmony/xnet/provider/jsse/ClientHello;

    iget-object v4, v4, Lorg/apache/harmony/xnet/provider/jsse/ClientHello;->client_version:[B

    invoke-static {v4}, Lorg/apache/harmony/xnet/provider/jsse/ProtocolVersion;->getByVersion([B)Lorg/apache/harmony/xnet/provider/jsse/ProtocolVersion;

    move-result-object v4

    iput-object v4, v3, Lorg/apache/harmony/xnet/provider/jsse/SSLSessionImpl;->protocol:Lorg/apache/harmony/xnet/provider/jsse/ProtocolVersion;

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/apache/harmony/xnet/provider/jsse/HandshakeProtocol;->session:Lorg/apache/harmony/xnet/provider/jsse/SSLSessionImpl;

    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/apache/harmony/xnet/provider/jsse/HandshakeProtocol;->clientHello:Lorg/apache/harmony/xnet/provider/jsse/ClientHello;

    iget-object v4, v4, Lorg/apache/harmony/xnet/provider/jsse/ClientHello;->random:[B

    iput-object v4, v3, Lorg/apache/harmony/xnet/provider/jsse/SSLSessionImpl;->clientRandom:[B

    new-instance v3, Lorg/apache/harmony/xnet/provider/jsse/ServerHello;

    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/apache/harmony/xnet/provider/jsse/HandshakeProtocol;->parameters:Lorg/apache/harmony/xnet/provider/jsse/SSLParametersImpl;

    invoke-virtual {v4}, Lorg/apache/harmony/xnet/provider/jsse/SSLParametersImpl;->getSecureRandom()Ljava/security/SecureRandom;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/apache/harmony/xnet/provider/jsse/HandshakeProtocol;->clientHello:Lorg/apache/harmony/xnet/provider/jsse/ClientHello;

    iget-object v5, v5, Lorg/apache/harmony/xnet/provider/jsse/ClientHello;->client_version:[B

    move-object/from16 v0, p0

    iget-object v6, v0, Lorg/apache/harmony/xnet/provider/jsse/HandshakeProtocol;->session:Lorg/apache/harmony/xnet/provider/jsse/SSLSessionImpl;

    invoke-virtual {v6}, Lorg/apache/harmony/xnet/provider/jsse/SSLSessionImpl;->getId()[B

    move-result-object v6

    const/4 v8, 0x0

    invoke-direct/range {v3 .. v8}, Lorg/apache/harmony/xnet/provider/jsse/ServerHello;-><init>(Ljava/security/SecureRandom;[B[BLorg/apache/harmony/xnet/provider/jsse/CipherSuite;B)V

    move-object/from16 v0, p0

    iput-object v3, v0, Lorg/apache/harmony/xnet/provider/jsse/HandshakeProtocol;->serverHello:Lorg/apache/harmony/xnet/provider/jsse/ServerHello;

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/apache/harmony/xnet/provider/jsse/HandshakeProtocol;->session:Lorg/apache/harmony/xnet/provider/jsse/SSLSessionImpl;

    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/apache/harmony/xnet/provider/jsse/HandshakeProtocol;->serverHello:Lorg/apache/harmony/xnet/provider/jsse/ServerHello;

    iget-object v4, v4, Lorg/apache/harmony/xnet/provider/jsse/ServerHello;->random:[B

    iput-object v4, v3, Lorg/apache/harmony/xnet/provider/jsse/SSLSessionImpl;->serverRandom:[B

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/apache/harmony/xnet/provider/jsse/HandshakeProtocol;->serverHello:Lorg/apache/harmony/xnet/provider/jsse/ServerHello;

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lorg/apache/harmony/xnet/provider/jsse/ServerHandshakeImpl;->send(Lorg/apache/harmony/xnet/provider/jsse/Message;)V

    move-object/from16 v0, p0

    iget-boolean v3, v0, Lorg/apache/harmony/xnet/provider/jsse/HandshakeProtocol;->isResuming:Z

    if-eqz v3, :cond_10

    invoke-virtual/range {p0 .. p0}, Lorg/apache/harmony/xnet/provider/jsse/ServerHandshakeImpl;->sendChangeCipherSpec()V

    :goto_5
    return-void

    :cond_2
    add-int/lit8 v21, v21, 0x1

    goto/16 :goto_0

    :cond_3
    const/16 v3, 0x28

    const-string v4, "HANDSHAKE FAILURE. Incorrect client hello message"

    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v4}, Lorg/apache/harmony/xnet/provider/jsse/ServerHandshakeImpl;->fatalAlert(BLjava/lang/String;)V

    goto/16 :goto_1

    :cond_4
    const/16 v30, 0x1

    :cond_5
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/apache/harmony/xnet/provider/jsse/HandshakeProtocol;->clientHello:Lorg/apache/harmony/xnet/provider/jsse/ClientHello;

    iget-object v3, v3, Lorg/apache/harmony/xnet/provider/jsse/ClientHello;->session_id:[B

    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lorg/apache/harmony/xnet/provider/jsse/ServerHandshakeImpl;->findSessionToResume([B)Lorg/apache/harmony/xnet/provider/jsse/SSLSessionImpl;

    move-result-object v32

    if-eqz v32, :cond_6

    invoke-virtual/range {v32 .. v32}, Lorg/apache/harmony/xnet/provider/jsse/SSLSessionImpl;->isValid()Z

    move-result v3

    if-nez v3, :cond_9

    :cond_6
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/apache/harmony/xnet/provider/jsse/HandshakeProtocol;->parameters:Lorg/apache/harmony/xnet/provider/jsse/SSLParametersImpl;

    invoke-virtual {v3}, Lorg/apache/harmony/xnet/provider/jsse/SSLParametersImpl;->getEnableSessionCreation()Z

    move-result v3

    if-nez v3, :cond_8

    if-eqz v30, :cond_7

    const/16 v3, 0x64

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lorg/apache/harmony/xnet/provider/jsse/ServerHandshakeImpl;->sendWarningAlert(B)V

    const/4 v3, 0x2

    move-object/from16 v0, p0

    iput v3, v0, Lorg/apache/harmony/xnet/provider/jsse/HandshakeProtocol;->status:I

    invoke-virtual/range {p0 .. p0}, Lorg/apache/harmony/xnet/provider/jsse/ServerHandshakeImpl;->clearMessages()V

    goto :goto_5

    :cond_7
    const/16 v3, 0x28

    const-string v4, "SSL Session may not be created"

    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v4}, Lorg/apache/harmony/xnet/provider/jsse/ServerHandshakeImpl;->fatalAlert(BLjava/lang/String;)V

    :cond_8
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput-object v3, v0, Lorg/apache/harmony/xnet/provider/jsse/HandshakeProtocol;->session:Lorg/apache/harmony/xnet/provider/jsse/SSLSessionImpl;

    goto/16 :goto_2

    :cond_9
    invoke-virtual/range {v32 .. v32}, Lorg/apache/harmony/xnet/provider/jsse/SSLSessionImpl;->clone()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/apache/harmony/xnet/provider/jsse/SSLSessionImpl;

    move-object/from16 v0, p0

    iput-object v3, v0, Lorg/apache/harmony/xnet/provider/jsse/HandshakeProtocol;->session:Lorg/apache/harmony/xnet/provider/jsse/SSLSessionImpl;

    const/4 v3, 0x1

    move-object/from16 v0, p0

    iput-boolean v3, v0, Lorg/apache/harmony/xnet/provider/jsse/HandshakeProtocol;->isResuming:Z

    goto/16 :goto_2

    :cond_a
    add-int/lit8 v21, v21, 0x1

    goto/16 :goto_3

    :cond_b
    const/16 v3, 0x28

    const-string v4, "HANDSHAKE FAILURE. Incorrect client hello message"

    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v4}, Lorg/apache/harmony/xnet/provider/jsse/ServerHandshakeImpl;->fatalAlert(BLjava/lang/String;)V

    goto/16 :goto_4

    :cond_c
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/apache/harmony/xnet/provider/jsse/HandshakeProtocol;->clientHello:Lorg/apache/harmony/xnet/provider/jsse/ClientHello;

    iget-object v3, v3, Lorg/apache/harmony/xnet/provider/jsse/ClientHello;->cipher_suites:[Lorg/apache/harmony/xnet/provider/jsse/CipherSuite;

    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lorg/apache/harmony/xnet/provider/jsse/ServerHandshakeImpl;->selectSuite([Lorg/apache/harmony/xnet/provider/jsse/CipherSuite;)Lorg/apache/harmony/xnet/provider/jsse/CipherSuite;

    move-result-object v7

    if-nez v7, :cond_d

    const/16 v3, 0x28

    const-string v4, "HANDSHAKE FAILURE. NO COMMON SUITE"

    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v4}, Lorg/apache/harmony/xnet/provider/jsse/ServerHandshakeImpl;->fatalAlert(BLjava/lang/String;)V

    :cond_d
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/apache/harmony/xnet/provider/jsse/HandshakeProtocol;->parameters:Lorg/apache/harmony/xnet/provider/jsse/SSLParametersImpl;

    invoke-virtual {v3}, Lorg/apache/harmony/xnet/provider/jsse/SSLParametersImpl;->getEnableSessionCreation()Z

    move-result v3

    if-nez v3, :cond_e

    const/16 v3, 0x28

    const-string v4, "SSL Session may not be created"

    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v4}, Lorg/apache/harmony/xnet/provider/jsse/ServerHandshakeImpl;->fatalAlert(BLjava/lang/String;)V

    :cond_e
    new-instance v3, Lorg/apache/harmony/xnet/provider/jsse/SSLSessionImpl;

    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/apache/harmony/xnet/provider/jsse/HandshakeProtocol;->parameters:Lorg/apache/harmony/xnet/provider/jsse/SSLParametersImpl;

    invoke-virtual {v4}, Lorg/apache/harmony/xnet/provider/jsse/SSLParametersImpl;->getSecureRandom()Ljava/security/SecureRandom;

    move-result-object v4

    invoke-direct {v3, v7, v4}, Lorg/apache/harmony/xnet/provider/jsse/SSLSessionImpl;-><init>(Lorg/apache/harmony/xnet/provider/jsse/CipherSuite;Ljava/security/SecureRandom;)V

    move-object/from16 v0, p0

    iput-object v3, v0, Lorg/apache/harmony/xnet/provider/jsse/HandshakeProtocol;->session:Lorg/apache/harmony/xnet/provider/jsse/SSLSessionImpl;

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/apache/harmony/xnet/provider/jsse/HandshakeProtocol;->engineOwner:Lorg/apache/harmony/xnet/provider/jsse/SSLEngineImpl;

    if-eqz v3, :cond_f

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/apache/harmony/xnet/provider/jsse/HandshakeProtocol;->session:Lorg/apache/harmony/xnet/provider/jsse/SSLSessionImpl;

    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/apache/harmony/xnet/provider/jsse/HandshakeProtocol;->engineOwner:Lorg/apache/harmony/xnet/provider/jsse/SSLEngineImpl;

    invoke-virtual {v4}, Lorg/apache/harmony/xnet/provider/jsse/SSLEngineImpl;->getPeerHost()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/apache/harmony/xnet/provider/jsse/HandshakeProtocol;->engineOwner:Lorg/apache/harmony/xnet/provider/jsse/SSLEngineImpl;

    invoke-virtual {v5}, Lorg/apache/harmony/xnet/provider/jsse/SSLEngineImpl;->getPeerPort()I

    move-result v5

    invoke-virtual {v3, v4, v5}, Lorg/apache/harmony/xnet/provider/jsse/SSLSessionImpl;->setPeer(Ljava/lang/String;I)V

    goto/16 :goto_4

    :cond_f
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/apache/harmony/xnet/provider/jsse/HandshakeProtocol;->session:Lorg/apache/harmony/xnet/provider/jsse/SSLSessionImpl;

    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/apache/harmony/xnet/provider/jsse/HandshakeProtocol;->socketOwner:Lorg/apache/harmony/xnet/provider/jsse/SSLSocketImpl;

    invoke-virtual {v4}, Lorg/apache/harmony/xnet/provider/jsse/SSLSocketImpl;->getInetAddress()Ljava/net/InetAddress;

    move-result-object v4

    invoke-virtual {v4}, Ljava/net/InetAddress;->getHostName()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/apache/harmony/xnet/provider/jsse/HandshakeProtocol;->socketOwner:Lorg/apache/harmony/xnet/provider/jsse/SSLSocketImpl;

    invoke-virtual {v5}, Lorg/apache/harmony/xnet/provider/jsse/SSLSocketImpl;->getPort()I

    move-result v5

    invoke-virtual {v3, v4, v5}, Lorg/apache/harmony/xnet/provider/jsse/SSLSessionImpl;->setPeer(Ljava/lang/String;I)V

    goto/16 :goto_4

    :cond_10
    invoke-virtual {v7}, Lorg/apache/harmony/xnet/provider/jsse/CipherSuite;->isAnonymous()Z

    move-result v3

    if-nez v3, :cond_16

    const/4 v12, 0x0

    invoke-virtual {v7}, Lorg/apache/harmony/xnet/provider/jsse/CipherSuite;->getServerKeyType()Ljava/lang/String;

    move-result-object v11

    if-nez v11, :cond_11

    const/16 v3, 0x28

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "NO CERT TYPE FOR "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v7}, Lorg/apache/harmony/xnet/provider/jsse/CipherSuite;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v4}, Lorg/apache/harmony/xnet/provider/jsse/ServerHandshakeImpl;->fatalAlert(BLjava/lang/String;)V

    :cond_11
    const/4 v10, 0x0

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/apache/harmony/xnet/provider/jsse/HandshakeProtocol;->parameters:Lorg/apache/harmony/xnet/provider/jsse/SSLParametersImpl;

    invoke-virtual {v3}, Lorg/apache/harmony/xnet/provider/jsse/SSLParametersImpl;->getKeyManager()Ljavax/net/ssl/X509KeyManager;

    move-result-object v23

    move-object/from16 v0, v23

    instance-of v3, v0, Ljavax/net/ssl/X509ExtendedKeyManager;

    if-eqz v3, :cond_14

    move-object/from16 v17, v23

    check-cast v17, Ljavax/net/ssl/X509ExtendedKeyManager;

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/apache/harmony/xnet/provider/jsse/HandshakeProtocol;->socketOwner:Lorg/apache/harmony/xnet/provider/jsse/SSLSocketImpl;

    if-eqz v3, :cond_13

    const/4 v3, 0x0

    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/apache/harmony/xnet/provider/jsse/HandshakeProtocol;->socketOwner:Lorg/apache/harmony/xnet/provider/jsse/SSLSocketImpl;

    move-object/from16 v0, v17

    invoke-virtual {v0, v11, v3, v4}, Ljavax/net/ssl/X509ExtendedKeyManager;->chooseServerAlias(Ljava/lang/String;[Ljava/security/Principal;Ljava/net/Socket;)Ljava/lang/String;

    move-result-object v10

    :goto_6
    if-eqz v10, :cond_12

    move-object/from16 v0, v17

    invoke-virtual {v0, v10}, Ljavax/net/ssl/X509ExtendedKeyManager;->getCertificateChain(Ljava/lang/String;)[Ljava/security/cert/X509Certificate;

    move-result-object v12

    :cond_12
    :goto_7
    if-nez v12, :cond_15

    const/16 v3, 0x28

    const-string v4, "NO SERVER CERTIFICATE FOUND"

    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v4}, Lorg/apache/harmony/xnet/provider/jsse/ServerHandshakeImpl;->fatalAlert(BLjava/lang/String;)V

    goto/16 :goto_5

    :cond_13
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/apache/harmony/xnet/provider/jsse/HandshakeProtocol;->engineOwner:Lorg/apache/harmony/xnet/provider/jsse/SSLEngineImpl;

    move-object/from16 v0, v17

    invoke-virtual {v0, v11, v3, v4}, Ljavax/net/ssl/X509ExtendedKeyManager;->chooseEngineServerAlias(Ljava/lang/String;[Ljava/security/Principal;Ljavax/net/ssl/SSLEngine;)Ljava/lang/String;

    move-result-object v10

    goto :goto_6

    :cond_14
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/apache/harmony/xnet/provider/jsse/HandshakeProtocol;->socketOwner:Lorg/apache/harmony/xnet/provider/jsse/SSLSocketImpl;

    move-object/from16 v0, v23

    invoke-interface {v0, v11, v3, v4}, Ljavax/net/ssl/X509KeyManager;->chooseServerAlias(Ljava/lang/String;[Ljava/security/Principal;Ljava/net/Socket;)Ljava/lang/String;

    move-result-object v10

    if-eqz v10, :cond_12

    move-object/from16 v0, v23

    invoke-interface {v0, v10}, Ljavax/net/ssl/X509KeyManager;->getCertificateChain(Ljava/lang/String;)[Ljava/security/cert/X509Certificate;

    move-result-object v12

    goto :goto_7

    :cond_15
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/apache/harmony/xnet/provider/jsse/HandshakeProtocol;->session:Lorg/apache/harmony/xnet/provider/jsse/SSLSessionImpl;

    iput-object v12, v3, Lorg/apache/harmony/xnet/provider/jsse/SSLSessionImpl;->localCertificates:[Ljava/security/cert/X509Certificate;

    new-instance v3, Lorg/apache/harmony/xnet/provider/jsse/CertificateMessage;

    invoke-direct {v3, v12}, Lorg/apache/harmony/xnet/provider/jsse/CertificateMessage;-><init>([Ljava/security/cert/X509Certificate;)V

    move-object/from16 v0, p0

    iput-object v3, v0, Lorg/apache/harmony/xnet/provider/jsse/HandshakeProtocol;->serverCert:Lorg/apache/harmony/xnet/provider/jsse/CertificateMessage;

    move-object/from16 v0, v23

    invoke-interface {v0, v10}, Ljavax/net/ssl/X509KeyManager;->getPrivateKey(Ljava/lang/String;)Ljava/security/PrivateKey;

    move-result-object v3

    move-object/from16 v0, p0

    iput-object v3, v0, Lorg/apache/harmony/xnet/provider/jsse/ServerHandshakeImpl;->privKey:Ljava/security/PrivateKey;

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/apache/harmony/xnet/provider/jsse/HandshakeProtocol;->serverCert:Lorg/apache/harmony/xnet/provider/jsse/CertificateMessage;

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lorg/apache/harmony/xnet/provider/jsse/ServerHandshakeImpl;->send(Lorg/apache/harmony/xnet/provider/jsse/Message;)V

    :cond_16
    const/16 v31, 0x0

    const/4 v14, 0x0

    const/16 v20, 0x0

    const/16 v26, 0x0

    const/16 v18, 0x0

    const/16 v25, 0x0

    :try_start_0
    iget v3, v7, Lorg/apache/harmony/xnet/provider/jsse/CipherSuite;->keyExchange:I

    const/4 v4, 0x2

    if-ne v3, v4, :cond_1b

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/apache/harmony/xnet/provider/jsse/HandshakeProtocol;->serverCert:Lorg/apache/harmony/xnet/provider/jsse/CertificateMessage;

    iget-object v3, v3, Lorg/apache/harmony/xnet/provider/jsse/CertificateMessage;->certs:[Ljava/security/cert/X509Certificate;

    const/4 v4, 0x0

    aget-object v3, v3, v4

    invoke-virtual {v3}, Ljava/security/cert/X509Certificate;->getPublicKey()Ljava/security/PublicKey;

    move-result-object v28

    invoke-static/range {v28 .. v28}, Lorg/apache/harmony/xnet/provider/jsse/ServerHandshakeImpl;->getRSAKeyLength(Ljava/security/PublicKey;)I

    move-result v3

    const/16 v4, 0x200

    if-le v3, v4, :cond_17

    const-string v3, "RSA"

    invoke-static {v3}, Ljava/security/KeyPairGenerator;->getInstance(Ljava/lang/String;)Ljava/security/KeyPairGenerator;

    move-result-object v25

    const/16 v3, 0x200

    move-object/from16 v0, v25

    invoke-virtual {v0, v3}, Ljava/security/KeyPairGenerator;->initialize(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_17
    :goto_8
    if-eqz v25, :cond_18

    new-instance v15, Lorg/apache/harmony/xnet/provider/jsse/DigitalSignature;

    iget-object v3, v7, Lorg/apache/harmony/xnet/provider/jsse/CipherSuite;->authType:Ljava/lang/String;

    invoke-direct {v15, v3}, Lorg/apache/harmony/xnet/provider/jsse/DigitalSignature;-><init>(Ljava/lang/String;)V

    const/16 v24, 0x0

    :try_start_1
    invoke-virtual/range {v25 .. v25}, Ljava/security/KeyPairGenerator;->genKeyPair()Ljava/security/KeyPair;

    move-result-object v24

    iget v3, v7, Lorg/apache/harmony/xnet/provider/jsse/CipherSuite;->keyExchange:I

    const/4 v4, 0x2

    if-ne v3, v4, :cond_1d

    invoke-virtual/range {v24 .. v24}, Ljava/security/KeyPair;->getPublic()Ljava/security/PublicKey;

    move-result-object v3

    move-object v0, v3

    check-cast v0, Ljava/security/interfaces/RSAPublicKey;

    move-object/from16 v31, v0

    :goto_9
    invoke-virtual {v7}, Lorg/apache/harmony/xnet/provider/jsse/CipherSuite;->isAnonymous()Z

    move-result v3

    if-nez v3, :cond_1f

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/apache/harmony/xnet/provider/jsse/ServerHandshakeImpl;->privKey:Ljava/security/PrivateKey;

    invoke-virtual {v15, v3}, Lorg/apache/harmony/xnet/provider/jsse/DigitalSignature;->init(Ljava/security/PrivateKey;)V

    invoke-virtual/range {v24 .. v24}, Ljava/security/KeyPair;->getPrivate()Ljava/security/PrivateKey;

    move-result-object v3

    move-object/from16 v0, p0

    iput-object v3, v0, Lorg/apache/harmony/xnet/provider/jsse/ServerHandshakeImpl;->privKey:Ljava/security/PrivateKey;

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/apache/harmony/xnet/provider/jsse/HandshakeProtocol;->clientHello:Lorg/apache/harmony/xnet/provider/jsse/ClientHello;

    invoke-virtual {v3}, Lorg/apache/harmony/xnet/provider/jsse/ClientHello;->getRandom()[B

    move-result-object v3

    invoke-virtual {v15, v3}, Lorg/apache/harmony/xnet/provider/jsse/DigitalSignature;->update([B)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/apache/harmony/xnet/provider/jsse/HandshakeProtocol;->serverHello:Lorg/apache/harmony/xnet/provider/jsse/ServerHello;

    invoke-virtual {v3}, Lorg/apache/harmony/xnet/provider/jsse/ServerHello;->getRandom()[B

    move-result-object v3

    invoke-virtual {v15, v3}, Lorg/apache/harmony/xnet/provider/jsse/DigitalSignature;->update([B)V

    const/4 v3, 0x2

    new-array v0, v3, [B

    move-object/from16 v36, v0

    iget v3, v7, Lorg/apache/harmony/xnet/provider/jsse/CipherSuite;->keyExchange:I

    const/4 v4, 0x2

    if-ne v3, v4, :cond_1e

    invoke-interface/range {v31 .. v31}, Ljava/security/interfaces/RSAPublicKey;->getModulus()Ljava/math/BigInteger;

    move-result-object v3

    invoke-static {v3}, Lorg/apache/harmony/xnet/provider/jsse/ServerKeyExchange;->toUnsignedByteArray(Ljava/math/BigInteger;)[B

    move-result-object v35

    const/4 v3, 0x0

    move-object/from16 v0, v35

    array-length v4, v0

    const v5, 0xff00

    and-int/2addr v4, v5

    ushr-int/lit8 v4, v4, 0x8

    int-to-byte v4, v4

    aput-byte v4, v36, v3

    const/4 v3, 0x1

    move-object/from16 v0, v35

    array-length v4, v0

    and-int/lit16 v4, v4, 0xff

    int-to-byte v4, v4

    aput-byte v4, v36, v3

    move-object/from16 v0, v36

    invoke-virtual {v15, v0}, Lorg/apache/harmony/xnet/provider/jsse/DigitalSignature;->update([B)V

    move-object/from16 v0, v35

    invoke-virtual {v15, v0}, Lorg/apache/harmony/xnet/provider/jsse/DigitalSignature;->update([B)V

    invoke-interface/range {v31 .. v31}, Ljava/security/interfaces/RSAPublicKey;->getPublicExponent()Ljava/math/BigInteger;

    move-result-object v3

    invoke-static {v3}, Lorg/apache/harmony/xnet/provider/jsse/ServerKeyExchange;->toUnsignedByteArray(Ljava/math/BigInteger;)[B

    move-result-object v35

    const/4 v3, 0x0

    move-object/from16 v0, v35

    array-length v4, v0

    const v5, 0xff00

    and-int/2addr v4, v5

    ushr-int/lit8 v4, v4, 0x8

    int-to-byte v4, v4

    aput-byte v4, v36, v3

    const/4 v3, 0x1

    move-object/from16 v0, v35

    array-length v4, v0

    and-int/lit16 v4, v4, 0xff

    int-to-byte v4, v4

    aput-byte v4, v36, v3

    move-object/from16 v0, v36

    invoke-virtual {v15, v0}, Lorg/apache/harmony/xnet/provider/jsse/DigitalSignature;->update([B)V

    move-object/from16 v0, v35

    invoke-virtual {v15, v0}, Lorg/apache/harmony/xnet/provider/jsse/DigitalSignature;->update([B)V

    :goto_a
    invoke-virtual {v15}, Lorg/apache/harmony/xnet/provider/jsse/DigitalSignature;->sign()[B
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v20

    :goto_b
    iget v3, v7, Lorg/apache/harmony/xnet/provider/jsse/CipherSuite;->keyExchange:I

    const/4 v4, 0x2

    if-ne v3, v4, :cond_20

    new-instance v3, Lorg/apache/harmony/xnet/provider/jsse/ServerKeyExchange;

    invoke-interface/range {v31 .. v31}, Ljava/security/interfaces/RSAPublicKey;->getModulus()Ljava/math/BigInteger;

    move-result-object v4

    invoke-interface/range {v31 .. v31}, Ljava/security/interfaces/RSAPublicKey;->getPublicExponent()Ljava/math/BigInteger;

    move-result-object v5

    const/4 v6, 0x0

    move-object/from16 v0, v20

    invoke-direct {v3, v4, v5, v6, v0}, Lorg/apache/harmony/xnet/provider/jsse/ServerKeyExchange;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;[B)V

    move-object/from16 v0, p0

    iput-object v3, v0, Lorg/apache/harmony/xnet/provider/jsse/HandshakeProtocol;->serverKeyExchange:Lorg/apache/harmony/xnet/provider/jsse/ServerKeyExchange;

    :goto_c
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/apache/harmony/xnet/provider/jsse/HandshakeProtocol;->serverKeyExchange:Lorg/apache/harmony/xnet/provider/jsse/ServerKeyExchange;

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lorg/apache/harmony/xnet/provider/jsse/ServerHandshakeImpl;->send(Lorg/apache/harmony/xnet/provider/jsse/Message;)V

    :cond_18
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/apache/harmony/xnet/provider/jsse/HandshakeProtocol;->parameters:Lorg/apache/harmony/xnet/provider/jsse/SSLParametersImpl;

    invoke-virtual {v3}, Lorg/apache/harmony/xnet/provider/jsse/SSLParametersImpl;->getWantClientAuth()Z

    move-result v3

    if-nez v3, :cond_19

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/apache/harmony/xnet/provider/jsse/HandshakeProtocol;->parameters:Lorg/apache/harmony/xnet/provider/jsse/SSLParametersImpl;

    invoke-virtual {v3}, Lorg/apache/harmony/xnet/provider/jsse/SSLParametersImpl;->getNeedClientAuth()Z

    move-result v3

    if-eqz v3, :cond_1a

    :cond_19
    :try_start_2
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/apache/harmony/xnet/provider/jsse/HandshakeProtocol;->parameters:Lorg/apache/harmony/xnet/provider/jsse/SSLParametersImpl;

    invoke-virtual {v3}, Lorg/apache/harmony/xnet/provider/jsse/SSLParametersImpl;->getTrustManager()Ljavax/net/ssl/X509TrustManager;

    move-result-object v34

    invoke-interface/range {v34 .. v34}, Ljavax/net/ssl/X509TrustManager;->getAcceptedIssuers()[Ljava/security/cert/X509Certificate;
    :try_end_2
    .catch Ljava/lang/ClassCastException; {:try_start_2 .. :try_end_2} :catch_2

    move-result-object v9

    const/4 v3, 0x2

    new-array v0, v3, [B

    move-object/from16 v29, v0

    fill-array-data v29, :array_0

    new-instance v3, Lorg/apache/harmony/xnet/provider/jsse/CertificateRequest;

    move-object/from16 v0, v29

    invoke-direct {v3, v0, v9}, Lorg/apache/harmony/xnet/provider/jsse/CertificateRequest;-><init>([B[Ljava/security/cert/X509Certificate;)V

    move-object/from16 v0, p0

    iput-object v3, v0, Lorg/apache/harmony/xnet/provider/jsse/HandshakeProtocol;->certificateRequest:Lorg/apache/harmony/xnet/provider/jsse/CertificateRequest;

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/apache/harmony/xnet/provider/jsse/HandshakeProtocol;->certificateRequest:Lorg/apache/harmony/xnet/provider/jsse/CertificateRequest;

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lorg/apache/harmony/xnet/provider/jsse/ServerHandshakeImpl;->send(Lorg/apache/harmony/xnet/provider/jsse/Message;)V

    :cond_1a
    :goto_d
    new-instance v3, Lorg/apache/harmony/xnet/provider/jsse/ServerHelloDone;

    invoke-direct {v3}, Lorg/apache/harmony/xnet/provider/jsse/ServerHelloDone;-><init>()V

    move-object/from16 v0, p0

    iput-object v3, v0, Lorg/apache/harmony/xnet/provider/jsse/HandshakeProtocol;->serverHelloDone:Lorg/apache/harmony/xnet/provider/jsse/ServerHelloDone;

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/apache/harmony/xnet/provider/jsse/HandshakeProtocol;->serverHelloDone:Lorg/apache/harmony/xnet/provider/jsse/ServerHelloDone;

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lorg/apache/harmony/xnet/provider/jsse/ServerHandshakeImpl;->send(Lorg/apache/harmony/xnet/provider/jsse/Message;)V

    const/4 v3, 0x1

    move-object/from16 v0, p0

    iput v3, v0, Lorg/apache/harmony/xnet/provider/jsse/HandshakeProtocol;->status:I

    goto/16 :goto_5

    :cond_1b
    :try_start_3
    iget v3, v7, Lorg/apache/harmony/xnet/provider/jsse/CipherSuite;->keyExchange:I

    const/4 v4, 0x3

    if-eq v3, v4, :cond_1c

    iget v3, v7, Lorg/apache/harmony/xnet/provider/jsse/CipherSuite;->keyExchange:I

    const/4 v4, 0x4

    if-eq v3, v4, :cond_1c

    iget v3, v7, Lorg/apache/harmony/xnet/provider/jsse/CipherSuite;->keyExchange:I

    const/4 v4, 0x5

    if-eq v3, v4, :cond_1c

    iget v3, v7, Lorg/apache/harmony/xnet/provider/jsse/CipherSuite;->keyExchange:I

    const/4 v4, 0x6

    if-eq v3, v4, :cond_1c

    iget v3, v7, Lorg/apache/harmony/xnet/provider/jsse/CipherSuite;->keyExchange:I

    const/16 v4, 0x9

    if-eq v3, v4, :cond_1c

    iget v3, v7, Lorg/apache/harmony/xnet/provider/jsse/CipherSuite;->keyExchange:I

    const/16 v4, 0xa

    if-ne v3, v4, :cond_17

    :cond_1c
    const-string v3, "DH"

    invoke-static {v3}, Ljava/security/KeyPairGenerator;->getInstance(Ljava/lang/String;)Ljava/security/KeyPairGenerator;

    move-result-object v25

    new-instance v27, Ljava/math/BigInteger;

    const/4 v3, 0x1

    invoke-static {}, Lorg/apache/harmony/xnet/provider/jsse/DHParameters;->getPrime()[B

    move-result-object v4

    move-object/from16 v0, v27

    invoke-direct {v0, v3, v4}, Ljava/math/BigInteger;-><init>(I[B)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    :try_start_4
    new-instance v19, Ljava/math/BigInteger;

    const-string v3, "2"

    move-object/from16 v0, v19

    invoke-direct {v0, v3}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_3

    :try_start_5
    new-instance v33, Ljavax/crypto/spec/DHParameterSpec;

    move-object/from16 v0, v33

    move-object/from16 v1, v27

    move-object/from16 v2, v19

    invoke-direct {v0, v1, v2}, Ljavax/crypto/spec/DHParameterSpec;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    move-object/from16 v0, v25

    move-object/from16 v1, v33

    invoke-virtual {v0, v1}, Ljava/security/KeyPairGenerator;->initialize(Ljava/security/spec/AlgorithmParameterSpec;)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_4

    move-object/from16 v18, v19

    move-object/from16 v26, v27

    goto/16 :goto_8

    :catch_0
    move-exception v16

    :goto_e
    const/16 v3, 0x50

    const-string v4, "INTERNAL ERROR"

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-virtual {v0, v3, v4, v1}, Lorg/apache/harmony/xnet/provider/jsse/ServerHandshakeImpl;->fatalAlert(BLjava/lang/String;Ljava/lang/Exception;)V

    goto/16 :goto_8

    :cond_1d
    :try_start_6
    invoke-virtual/range {v24 .. v24}, Ljava/security/KeyPair;->getPublic()Ljava/security/PublicKey;

    move-result-object v13

    check-cast v13, Ljavax/crypto/interfaces/DHPublicKey;

    const-string v3, "DH"

    invoke-static {v3}, Ljava/security/KeyFactory;->getInstance(Ljava/lang/String;)Ljava/security/KeyFactory;

    move-result-object v22

    const-class v3, Ljavax/crypto/spec/DHPublicKeySpec;

    move-object/from16 v0, v22

    invoke-virtual {v0, v13, v3}, Ljava/security/KeyFactory;->getKeySpec(Ljava/security/Key;Ljava/lang/Class;)Ljava/security/spec/KeySpec;

    move-result-object v3

    move-object v0, v3

    check-cast v0, Ljavax/crypto/spec/DHPublicKeySpec;

    move-object v14, v0

    goto/16 :goto_9

    :cond_1e
    invoke-virtual {v14}, Ljavax/crypto/spec/DHPublicKeySpec;->getP()Ljava/math/BigInteger;

    move-result-object v3

    invoke-static {v3}, Lorg/apache/harmony/xnet/provider/jsse/ServerKeyExchange;->toUnsignedByteArray(Ljava/math/BigInteger;)[B

    move-result-object v35

    const/4 v3, 0x0

    move-object/from16 v0, v35

    array-length v4, v0

    const v5, 0xff00

    and-int/2addr v4, v5

    ushr-int/lit8 v4, v4, 0x8

    int-to-byte v4, v4

    aput-byte v4, v36, v3

    const/4 v3, 0x1

    move-object/from16 v0, v35

    array-length v4, v0

    and-int/lit16 v4, v4, 0xff

    int-to-byte v4, v4

    aput-byte v4, v36, v3

    move-object/from16 v0, v36

    invoke-virtual {v15, v0}, Lorg/apache/harmony/xnet/provider/jsse/DigitalSignature;->update([B)V

    move-object/from16 v0, v35

    invoke-virtual {v15, v0}, Lorg/apache/harmony/xnet/provider/jsse/DigitalSignature;->update([B)V

    invoke-virtual {v14}, Ljavax/crypto/spec/DHPublicKeySpec;->getG()Ljava/math/BigInteger;

    move-result-object v3

    invoke-static {v3}, Lorg/apache/harmony/xnet/provider/jsse/ServerKeyExchange;->toUnsignedByteArray(Ljava/math/BigInteger;)[B

    move-result-object v35

    const/4 v3, 0x0

    move-object/from16 v0, v35

    array-length v4, v0

    const v5, 0xff00

    and-int/2addr v4, v5

    ushr-int/lit8 v4, v4, 0x8

    int-to-byte v4, v4

    aput-byte v4, v36, v3

    const/4 v3, 0x1

    move-object/from16 v0, v35

    array-length v4, v0

    and-int/lit16 v4, v4, 0xff

    int-to-byte v4, v4

    aput-byte v4, v36, v3

    move-object/from16 v0, v36

    invoke-virtual {v15, v0}, Lorg/apache/harmony/xnet/provider/jsse/DigitalSignature;->update([B)V

    move-object/from16 v0, v35

    invoke-virtual {v15, v0}, Lorg/apache/harmony/xnet/provider/jsse/DigitalSignature;->update([B)V

    invoke-virtual {v14}, Ljavax/crypto/spec/DHPublicKeySpec;->getY()Ljava/math/BigInteger;

    move-result-object v3

    invoke-static {v3}, Lorg/apache/harmony/xnet/provider/jsse/ServerKeyExchange;->toUnsignedByteArray(Ljava/math/BigInteger;)[B

    move-result-object v35

    const/4 v3, 0x0

    move-object/from16 v0, v35

    array-length v4, v0

    const v5, 0xff00

    and-int/2addr v4, v5

    ushr-int/lit8 v4, v4, 0x8

    int-to-byte v4, v4

    aput-byte v4, v36, v3

    const/4 v3, 0x1

    move-object/from16 v0, v35

    array-length v4, v0

    and-int/lit16 v4, v4, 0xff

    int-to-byte v4, v4

    aput-byte v4, v36, v3

    move-object/from16 v0, v36

    invoke-virtual {v15, v0}, Lorg/apache/harmony/xnet/provider/jsse/DigitalSignature;->update([B)V

    move-object/from16 v0, v35

    invoke-virtual {v15, v0}, Lorg/apache/harmony/xnet/provider/jsse/DigitalSignature;->update([B)V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_1

    goto/16 :goto_a

    :catch_1
    move-exception v16

    const/16 v3, 0x50

    const-string v4, "INTERNAL ERROR"

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-virtual {v0, v3, v4, v1}, Lorg/apache/harmony/xnet/provider/jsse/ServerHandshakeImpl;->fatalAlert(BLjava/lang/String;Ljava/lang/Exception;)V

    goto/16 :goto_b

    :cond_1f
    :try_start_7
    invoke-virtual/range {v24 .. v24}, Ljava/security/KeyPair;->getPrivate()Ljava/security/PrivateKey;

    move-result-object v3

    move-object/from16 v0, p0

    iput-object v3, v0, Lorg/apache/harmony/xnet/provider/jsse/ServerHandshakeImpl;->privKey:Ljava/security/PrivateKey;
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_1

    goto/16 :goto_b

    :cond_20
    new-instance v3, Lorg/apache/harmony/xnet/provider/jsse/ServerKeyExchange;

    invoke-virtual {v14}, Ljavax/crypto/spec/DHPublicKeySpec;->getY()Ljava/math/BigInteger;

    move-result-object v4

    move-object/from16 v0, v26

    move-object/from16 v1, v18

    move-object/from16 v2, v20

    invoke-direct {v3, v0, v1, v4, v2}, Lorg/apache/harmony/xnet/provider/jsse/ServerKeyExchange;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;[B)V

    move-object/from16 v0, p0

    iput-object v3, v0, Lorg/apache/harmony/xnet/provider/jsse/HandshakeProtocol;->serverKeyExchange:Lorg/apache/harmony/xnet/provider/jsse/ServerKeyExchange;

    goto/16 :goto_c

    :catch_2
    move-exception v16

    goto/16 :goto_d

    :catch_3
    move-exception v16

    move-object/from16 v26, v27

    goto/16 :goto_e

    :catch_4
    move-exception v16

    move-object/from16 v18, v19

    move-object/from16 v26, v27

    goto/16 :goto_e

    nop

    :array_0
    .array-data 0x1
        0x1t
        0x2t
    .end array-data
.end method

.method public receiveChangeCipherSpec()V
    .locals 2

    const/4 v1, 0x1

    iget-boolean v0, p0, Lorg/apache/harmony/xnet/provider/jsse/HandshakeProtocol;->isResuming:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/apache/harmony/xnet/provider/jsse/HandshakeProtocol;->serverFinished:Lorg/apache/harmony/xnet/provider/jsse/Finished;

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lorg/apache/harmony/xnet/provider/jsse/ServerHandshakeImpl;->unexpectedMessage()V

    :goto_0
    return-void

    :cond_0
    iput-boolean v1, p0, Lorg/apache/harmony/xnet/provider/jsse/HandshakeProtocol;->changeCipherSpecReceived:Z

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lorg/apache/harmony/xnet/provider/jsse/HandshakeProtocol;->parameters:Lorg/apache/harmony/xnet/provider/jsse/SSLParametersImpl;

    invoke-virtual {v0}, Lorg/apache/harmony/xnet/provider/jsse/SSLParametersImpl;->getNeedClientAuth()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lorg/apache/harmony/xnet/provider/jsse/HandshakeProtocol;->clientCert:Lorg/apache/harmony/xnet/provider/jsse/CertificateMessage;

    if-eqz v0, :cond_3

    :cond_2
    iget-object v0, p0, Lorg/apache/harmony/xnet/provider/jsse/HandshakeProtocol;->clientKeyExchange:Lorg/apache/harmony/xnet/provider/jsse/ClientKeyExchange;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lorg/apache/harmony/xnet/provider/jsse/HandshakeProtocol;->clientCert:Lorg/apache/harmony/xnet/provider/jsse/CertificateMessage;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lorg/apache/harmony/xnet/provider/jsse/HandshakeProtocol;->clientKeyExchange:Lorg/apache/harmony/xnet/provider/jsse/ClientKeyExchange;

    invoke-virtual {v0}, Lorg/apache/harmony/xnet/provider/jsse/ClientKeyExchange;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_4

    iget-object v0, p0, Lorg/apache/harmony/xnet/provider/jsse/HandshakeProtocol;->certificateVerify:Lorg/apache/harmony/xnet/provider/jsse/CertificateVerify;

    if-nez v0, :cond_4

    :cond_3
    invoke-virtual {p0}, Lorg/apache/harmony/xnet/provider/jsse/ServerHandshakeImpl;->unexpectedMessage()V

    :goto_1
    iget-object v0, p0, Lorg/apache/harmony/xnet/provider/jsse/HandshakeProtocol;->serverHello:Lorg/apache/harmony/xnet/provider/jsse/ServerHello;

    iget-object v0, v0, Lorg/apache/harmony/xnet/provider/jsse/ServerHello;->server_version:[B

    aget-byte v0, v0, v1

    if-ne v0, v1, :cond_5

    const-string v0, "client finished"

    invoke-virtual {p0, v0}, Lorg/apache/harmony/xnet/provider/jsse/ServerHandshakeImpl;->computerReferenceVerifyDataTLS(Ljava/lang/String;)V

    goto :goto_0

    :cond_4
    iput-boolean v1, p0, Lorg/apache/harmony/xnet/provider/jsse/HandshakeProtocol;->changeCipherSpecReceived:Z

    goto :goto_1

    :cond_5
    sget-object v0, Lorg/apache/harmony/xnet/provider/jsse/SSLv3Constants;->client:[B

    invoke-virtual {p0, v0}, Lorg/apache/harmony/xnet/provider/jsse/ServerHandshakeImpl;->computerReferenceVerifyDataSSLv3([B)V

    goto :goto_0
.end method

.method public start()V
    .locals 3

    const/4 v2, 0x1

    iget-object v0, p0, Lorg/apache/harmony/xnet/provider/jsse/HandshakeProtocol;->session:Lorg/apache/harmony/xnet/provider/jsse/SSLSessionImpl;

    if-nez v0, :cond_1

    iput v2, p0, Lorg/apache/harmony/xnet/provider/jsse/HandshakeProtocol;->status:I

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lorg/apache/harmony/xnet/provider/jsse/HandshakeProtocol;->clientHello:Lorg/apache/harmony/xnet/provider/jsse/ClientHello;

    if-eqz v0, :cond_2

    iget v0, p0, Lorg/apache/harmony/xnet/provider/jsse/HandshakeProtocol;->status:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    :cond_2
    invoke-virtual {p0}, Lorg/apache/harmony/xnet/provider/jsse/ServerHandshakeImpl;->sendHelloRequest()V

    iput v2, p0, Lorg/apache/harmony/xnet/provider/jsse/HandshakeProtocol;->status:I

    goto :goto_0
.end method

.method public unwrap([B)V
    .locals 16

    move-object/from16 v0, p0

    iget-object v12, v0, Lorg/apache/harmony/xnet/provider/jsse/HandshakeProtocol;->io_stream:Lorg/apache/harmony/xnet/provider/jsse/HandshakeIODataStream;

    move-object/from16 v0, p1

    invoke-virtual {v12, v0}, Lorg/apache/harmony/xnet/provider/jsse/HandshakeIODataStream;->append([B)V

    :cond_0
    :goto_0
    move-object/from16 v0, p0

    iget-object v12, v0, Lorg/apache/harmony/xnet/provider/jsse/HandshakeProtocol;->io_stream:Lorg/apache/harmony/xnet/provider/jsse/HandshakeIODataStream;

    invoke-virtual {v12}, Lorg/apache/harmony/xnet/provider/jsse/HandshakeIODataStream;->available()I

    move-result v12

    if-lez v12, :cond_1

    move-object/from16 v0, p0

    iget-object v12, v0, Lorg/apache/harmony/xnet/provider/jsse/HandshakeProtocol;->io_stream:Lorg/apache/harmony/xnet/provider/jsse/HandshakeIODataStream;

    invoke-virtual {v12}, Lorg/apache/harmony/xnet/provider/jsse/HandshakeIODataStream;->mark()V

    :try_start_0
    move-object/from16 v0, p0

    iget-object v12, v0, Lorg/apache/harmony/xnet/provider/jsse/HandshakeProtocol;->io_stream:Lorg/apache/harmony/xnet/provider/jsse/HandshakeIODataStream;

    invoke-virtual {v12}, Lorg/apache/harmony/xnet/provider/jsse/HandshakeIODataStream;->read()I

    move-result v7

    move-object/from16 v0, p0

    iget-object v12, v0, Lorg/apache/harmony/xnet/provider/jsse/HandshakeProtocol;->io_stream:Lorg/apache/harmony/xnet/provider/jsse/HandshakeIODataStream;

    invoke-virtual {v12}, Lorg/apache/harmony/xnet/provider/jsse/HandshakeIODataStream;->readUint24()I

    move-result v9

    move-object/from16 v0, p0

    iget-object v12, v0, Lorg/apache/harmony/xnet/provider/jsse/HandshakeProtocol;->io_stream:Lorg/apache/harmony/xnet/provider/jsse/HandshakeIODataStream;

    invoke-virtual {v12}, Lorg/apache/harmony/xnet/provider/jsse/HandshakeIODataStream;->available()I

    move-result v12

    if-ge v12, v9, :cond_2

    move-object/from16 v0, p0

    iget-object v12, v0, Lorg/apache/harmony/xnet/provider/jsse/HandshakeProtocol;->io_stream:Lorg/apache/harmony/xnet/provider/jsse/HandshakeIODataStream;

    invoke-virtual {v12}, Lorg/apache/harmony/xnet/provider/jsse/HandshakeIODataStream;->reset()V

    :cond_1
    :goto_1
    return-void

    :cond_2
    sparse-switch v7, :sswitch_data_0

    invoke-virtual/range {p0 .. p0}, Lorg/apache/harmony/xnet/provider/jsse/ServerHandshakeImpl;->unexpectedMessage()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v6

    move-object/from16 v0, p0

    iget-object v12, v0, Lorg/apache/harmony/xnet/provider/jsse/HandshakeProtocol;->io_stream:Lorg/apache/harmony/xnet/provider/jsse/HandshakeIODataStream;

    invoke-virtual {v12}, Lorg/apache/harmony/xnet/provider/jsse/HandshakeIODataStream;->reset()V

    goto :goto_1

    :sswitch_0
    :try_start_1
    move-object/from16 v0, p0

    iget-object v12, v0, Lorg/apache/harmony/xnet/provider/jsse/HandshakeProtocol;->clientHello:Lorg/apache/harmony/xnet/provider/jsse/ClientHello;

    if-eqz v12, :cond_3

    move-object/from16 v0, p0

    iget v12, v0, Lorg/apache/harmony/xnet/provider/jsse/HandshakeProtocol;->status:I

    const/4 v13, 0x3

    if-eq v12, v13, :cond_3

    invoke-virtual/range {p0 .. p0}, Lorg/apache/harmony/xnet/provider/jsse/ServerHandshakeImpl;->unexpectedMessage()V

    goto :goto_1

    :cond_3
    const/4 v12, 0x0

    move-object/from16 v0, p0

    iput-boolean v12, v0, Lorg/apache/harmony/xnet/provider/jsse/HandshakeProtocol;->needSendHelloRequest:Z

    new-instance v12, Lorg/apache/harmony/xnet/provider/jsse/ClientHello;

    move-object/from16 v0, p0

    iget-object v13, v0, Lorg/apache/harmony/xnet/provider/jsse/HandshakeProtocol;->io_stream:Lorg/apache/harmony/xnet/provider/jsse/HandshakeIODataStream;

    invoke-direct {v12, v13, v9}, Lorg/apache/harmony/xnet/provider/jsse/ClientHello;-><init>(Lorg/apache/harmony/xnet/provider/jsse/HandshakeIODataStream;I)V

    move-object/from16 v0, p0

    iput-object v12, v0, Lorg/apache/harmony/xnet/provider/jsse/HandshakeProtocol;->clientHello:Lorg/apache/harmony/xnet/provider/jsse/ClientHello;

    move-object/from16 v0, p0

    iget-boolean v12, v0, Lorg/apache/harmony/xnet/provider/jsse/HandshakeProtocol;->nonBlocking:Z

    if-eqz v12, :cond_4

    move-object/from16 v0, p0

    iget-object v12, v0, Lorg/apache/harmony/xnet/provider/jsse/HandshakeProtocol;->delegatedTasks:Ljava/util/Vector;

    new-instance v13, Lorg/apache/harmony/xnet/provider/jsse/DelegatedTask;

    new-instance v14, Lorg/apache/harmony/xnet/provider/jsse/ServerHandshakeImpl$1;

    move-object/from16 v0, p0

    invoke-direct {v14, v0}, Lorg/apache/harmony/xnet/provider/jsse/ServerHandshakeImpl$1;-><init>(Lorg/apache/harmony/xnet/provider/jsse/ServerHandshakeImpl;)V

    move-object/from16 v0, p0

    invoke-direct {v13, v14, v0}, Lorg/apache/harmony/xnet/provider/jsse/DelegatedTask;-><init>(Ljava/lang/Runnable;Lorg/apache/harmony/xnet/provider/jsse/HandshakeProtocol;)V

    invoke-virtual {v12, v13}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_4
    invoke-virtual/range {p0 .. p0}, Lorg/apache/harmony/xnet/provider/jsse/ServerHandshakeImpl;->processClientHello()V

    goto/16 :goto_0

    :sswitch_1
    move-object/from16 v0, p0

    iget-boolean v12, v0, Lorg/apache/harmony/xnet/provider/jsse/HandshakeProtocol;->isResuming:Z

    if-nez v12, :cond_5

    move-object/from16 v0, p0

    iget-object v12, v0, Lorg/apache/harmony/xnet/provider/jsse/HandshakeProtocol;->certificateRequest:Lorg/apache/harmony/xnet/provider/jsse/CertificateRequest;

    if-eqz v12, :cond_5

    move-object/from16 v0, p0

    iget-object v12, v0, Lorg/apache/harmony/xnet/provider/jsse/HandshakeProtocol;->serverHelloDone:Lorg/apache/harmony/xnet/provider/jsse/ServerHelloDone;

    if-eqz v12, :cond_5

    move-object/from16 v0, p0

    iget-object v12, v0, Lorg/apache/harmony/xnet/provider/jsse/HandshakeProtocol;->clientCert:Lorg/apache/harmony/xnet/provider/jsse/CertificateMessage;

    if-eqz v12, :cond_6

    :cond_5
    invoke-virtual/range {p0 .. p0}, Lorg/apache/harmony/xnet/provider/jsse/ServerHandshakeImpl;->unexpectedMessage()V

    goto :goto_1

    :cond_6
    new-instance v12, Lorg/apache/harmony/xnet/provider/jsse/CertificateMessage;

    move-object/from16 v0, p0

    iget-object v13, v0, Lorg/apache/harmony/xnet/provider/jsse/HandshakeProtocol;->io_stream:Lorg/apache/harmony/xnet/provider/jsse/HandshakeIODataStream;

    invoke-direct {v12, v13, v9}, Lorg/apache/harmony/xnet/provider/jsse/CertificateMessage;-><init>(Lorg/apache/harmony/xnet/provider/jsse/HandshakeIODataStream;I)V

    move-object/from16 v0, p0

    iput-object v12, v0, Lorg/apache/harmony/xnet/provider/jsse/HandshakeProtocol;->clientCert:Lorg/apache/harmony/xnet/provider/jsse/CertificateMessage;

    move-object/from16 v0, p0

    iget-object v12, v0, Lorg/apache/harmony/xnet/provider/jsse/HandshakeProtocol;->clientCert:Lorg/apache/harmony/xnet/provider/jsse/CertificateMessage;

    iget-object v12, v12, Lorg/apache/harmony/xnet/provider/jsse/CertificateMessage;->certs:[Ljava/security/cert/X509Certificate;

    array-length v12, v12

    if-nez v12, :cond_7

    move-object/from16 v0, p0

    iget-object v12, v0, Lorg/apache/harmony/xnet/provider/jsse/HandshakeProtocol;->parameters:Lorg/apache/harmony/xnet/provider/jsse/SSLParametersImpl;

    invoke-virtual {v12}, Lorg/apache/harmony/xnet/provider/jsse/SSLParametersImpl;->getNeedClientAuth()Z

    move-result v12

    if-eqz v12, :cond_0

    const/16 v12, 0x28

    const-string v13, "HANDSHAKE FAILURE: no client certificate received"

    move-object/from16 v0, p0

    invoke-virtual {v0, v12, v13}, Lorg/apache/harmony/xnet/provider/jsse/ServerHandshakeImpl;->fatalAlert(BLjava/lang/String;)V

    goto/16 :goto_0

    :cond_7
    move-object/from16 v0, p0

    iget-object v12, v0, Lorg/apache/harmony/xnet/provider/jsse/HandshakeProtocol;->clientCert:Lorg/apache/harmony/xnet/provider/jsse/CertificateMessage;

    invoke-virtual {v12}, Lorg/apache/harmony/xnet/provider/jsse/CertificateMessage;->getAuthType()Ljava/lang/String;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v2

    :try_start_2
    move-object/from16 v0, p0

    iget-object v12, v0, Lorg/apache/harmony/xnet/provider/jsse/HandshakeProtocol;->parameters:Lorg/apache/harmony/xnet/provider/jsse/SSLParametersImpl;

    invoke-virtual {v12}, Lorg/apache/harmony/xnet/provider/jsse/SSLParametersImpl;->getTrustManager()Ljavax/net/ssl/X509TrustManager;

    move-result-object v12

    move-object/from16 v0, p0

    iget-object v13, v0, Lorg/apache/harmony/xnet/provider/jsse/HandshakeProtocol;->clientCert:Lorg/apache/harmony/xnet/provider/jsse/CertificateMessage;

    iget-object v13, v13, Lorg/apache/harmony/xnet/provider/jsse/CertificateMessage;->certs:[Ljava/security/cert/X509Certificate;

    invoke-interface {v12, v13, v2}, Ljavax/net/ssl/X509TrustManager;->checkClientTrusted([Ljava/security/cert/X509Certificate;Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/security/cert/CertificateException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    :goto_2
    :try_start_3
    move-object/from16 v0, p0

    iget-object v12, v0, Lorg/apache/harmony/xnet/provider/jsse/HandshakeProtocol;->session:Lorg/apache/harmony/xnet/provider/jsse/SSLSessionImpl;

    move-object/from16 v0, p0

    iget-object v13, v0, Lorg/apache/harmony/xnet/provider/jsse/HandshakeProtocol;->clientCert:Lorg/apache/harmony/xnet/provider/jsse/CertificateMessage;

    iget-object v13, v13, Lorg/apache/harmony/xnet/provider/jsse/CertificateMessage;->certs:[Ljava/security/cert/X509Certificate;

    iput-object v13, v12, Lorg/apache/harmony/xnet/provider/jsse/SSLSessionImpl;->peerCertificates:[Ljava/security/cert/X509Certificate;

    goto/16 :goto_0

    :catch_1
    move-exception v6

    const/16 v12, 0x2a

    const-string v13, "Untrusted Client Certificate "

    move-object/from16 v0, p0

    invoke-virtual {v0, v12, v13, v6}, Lorg/apache/harmony/xnet/provider/jsse/ServerHandshakeImpl;->fatalAlert(BLjava/lang/String;Ljava/lang/Exception;)V

    goto :goto_2

    :sswitch_2
    move-object/from16 v0, p0

    iget-boolean v12, v0, Lorg/apache/harmony/xnet/provider/jsse/HandshakeProtocol;->isResuming:Z

    if-nez v12, :cond_8

    move-object/from16 v0, p0

    iget-object v12, v0, Lorg/apache/harmony/xnet/provider/jsse/HandshakeProtocol;->clientKeyExchange:Lorg/apache/harmony/xnet/provider/jsse/ClientKeyExchange;

    if-eqz v12, :cond_8

    move-object/from16 v0, p0

    iget-object v12, v0, Lorg/apache/harmony/xnet/provider/jsse/HandshakeProtocol;->clientCert:Lorg/apache/harmony/xnet/provider/jsse/CertificateMessage;

    if-eqz v12, :cond_8

    move-object/from16 v0, p0

    iget-object v12, v0, Lorg/apache/harmony/xnet/provider/jsse/HandshakeProtocol;->clientKeyExchange:Lorg/apache/harmony/xnet/provider/jsse/ClientKeyExchange;

    invoke-virtual {v12}, Lorg/apache/harmony/xnet/provider/jsse/ClientKeyExchange;->isEmpty()Z

    move-result v12

    if-nez v12, :cond_8

    move-object/from16 v0, p0

    iget-object v12, v0, Lorg/apache/harmony/xnet/provider/jsse/HandshakeProtocol;->certificateVerify:Lorg/apache/harmony/xnet/provider/jsse/CertificateVerify;

    if-nez v12, :cond_8

    move-object/from16 v0, p0

    iget-boolean v12, v0, Lorg/apache/harmony/xnet/provider/jsse/HandshakeProtocol;->changeCipherSpecReceived:Z

    if-eqz v12, :cond_9

    :cond_8
    invoke-virtual/range {p0 .. p0}, Lorg/apache/harmony/xnet/provider/jsse/ServerHandshakeImpl;->unexpectedMessage()V

    goto/16 :goto_1

    :cond_9
    new-instance v12, Lorg/apache/harmony/xnet/provider/jsse/CertificateVerify;

    move-object/from16 v0, p0

    iget-object v13, v0, Lorg/apache/harmony/xnet/provider/jsse/HandshakeProtocol;->io_stream:Lorg/apache/harmony/xnet/provider/jsse/HandshakeIODataStream;

    invoke-direct {v12, v13, v9}, Lorg/apache/harmony/xnet/provider/jsse/CertificateVerify;-><init>(Lorg/apache/harmony/xnet/provider/jsse/HandshakeIODataStream;I)V

    move-object/from16 v0, p0

    iput-object v12, v0, Lorg/apache/harmony/xnet/provider/jsse/HandshakeProtocol;->certificateVerify:Lorg/apache/harmony/xnet/provider/jsse/CertificateVerify;

    move-object/from16 v0, p0

    iget-object v12, v0, Lorg/apache/harmony/xnet/provider/jsse/HandshakeProtocol;->clientCert:Lorg/apache/harmony/xnet/provider/jsse/CertificateMessage;

    invoke-virtual {v12}, Lorg/apache/harmony/xnet/provider/jsse/CertificateMessage;->getAuthType()Ljava/lang/String;

    move-result-object v2

    new-instance v5, Lorg/apache/harmony/xnet/provider/jsse/DigitalSignature;

    invoke-direct {v5, v2}, Lorg/apache/harmony/xnet/provider/jsse/DigitalSignature;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v12, v0, Lorg/apache/harmony/xnet/provider/jsse/HandshakeProtocol;->clientCert:Lorg/apache/harmony/xnet/provider/jsse/CertificateMessage;

    iget-object v12, v12, Lorg/apache/harmony/xnet/provider/jsse/CertificateMessage;->certs:[Ljava/security/cert/X509Certificate;

    const/4 v13, 0x0

    aget-object v12, v12, v13

    invoke-virtual {v5, v12}, Lorg/apache/harmony/xnet/provider/jsse/DigitalSignature;->init(Ljava/security/cert/Certificate;)V

    const/4 v10, 0x0

    const/4 v11, 0x0

    const-string v12, "RSA"

    invoke-virtual {v12, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_b

    move-object/from16 v0, p0

    iget-object v12, v0, Lorg/apache/harmony/xnet/provider/jsse/HandshakeProtocol;->io_stream:Lorg/apache/harmony/xnet/provider/jsse/HandshakeIODataStream;

    invoke-virtual {v12}, Lorg/apache/harmony/xnet/provider/jsse/HandshakeIODataStream;->getDigestMD5withoutLast()[B

    move-result-object v10

    move-object/from16 v0, p0

    iget-object v12, v0, Lorg/apache/harmony/xnet/provider/jsse/HandshakeProtocol;->io_stream:Lorg/apache/harmony/xnet/provider/jsse/HandshakeIODataStream;

    invoke-virtual {v12}, Lorg/apache/harmony/xnet/provider/jsse/HandshakeIODataStream;->getDigestSHAwithoutLast()[B

    move-result-object v11

    :cond_a
    :goto_3
    invoke-virtual {v5, v10}, Lorg/apache/harmony/xnet/provider/jsse/DigitalSignature;->setMD5([B)V

    invoke-virtual {v5, v11}, Lorg/apache/harmony/xnet/provider/jsse/DigitalSignature;->setSHA([B)V

    move-object/from16 v0, p0

    iget-object v12, v0, Lorg/apache/harmony/xnet/provider/jsse/HandshakeProtocol;->certificateVerify:Lorg/apache/harmony/xnet/provider/jsse/CertificateVerify;

    iget-object v12, v12, Lorg/apache/harmony/xnet/provider/jsse/CertificateVerify;->signedHash:[B

    invoke-virtual {v5, v12}, Lorg/apache/harmony/xnet/provider/jsse/DigitalSignature;->verifySignature([B)Z

    move-result v12

    if-nez v12, :cond_0

    const/16 v12, 0x33

    const-string v13, "DECRYPT ERROR: CERTIFICATE_VERIFY incorrect signature"

    move-object/from16 v0, p0

    invoke-virtual {v0, v12, v13}, Lorg/apache/harmony/xnet/provider/jsse/ServerHandshakeImpl;->fatalAlert(BLjava/lang/String;)V

    goto/16 :goto_0

    :cond_b
    const-string v12, "DSA"

    invoke-virtual {v12, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_a

    move-object/from16 v0, p0

    iget-object v12, v0, Lorg/apache/harmony/xnet/provider/jsse/HandshakeProtocol;->io_stream:Lorg/apache/harmony/xnet/provider/jsse/HandshakeIODataStream;

    invoke-virtual {v12}, Lorg/apache/harmony/xnet/provider/jsse/HandshakeIODataStream;->getDigestSHAwithoutLast()[B

    move-result-object v11

    goto :goto_3

    :sswitch_3
    move-object/from16 v0, p0

    iget-boolean v12, v0, Lorg/apache/harmony/xnet/provider/jsse/HandshakeProtocol;->isResuming:Z

    if-nez v12, :cond_c

    move-object/from16 v0, p0

    iget-object v12, v0, Lorg/apache/harmony/xnet/provider/jsse/HandshakeProtocol;->serverHelloDone:Lorg/apache/harmony/xnet/provider/jsse/ServerHelloDone;

    if-eqz v12, :cond_c

    move-object/from16 v0, p0

    iget-object v12, v0, Lorg/apache/harmony/xnet/provider/jsse/HandshakeProtocol;->clientKeyExchange:Lorg/apache/harmony/xnet/provider/jsse/ClientKeyExchange;

    if-nez v12, :cond_c

    move-object/from16 v0, p0

    iget-object v12, v0, Lorg/apache/harmony/xnet/provider/jsse/HandshakeProtocol;->clientCert:Lorg/apache/harmony/xnet/provider/jsse/CertificateMessage;

    if-nez v12, :cond_d

    move-object/from16 v0, p0

    iget-object v12, v0, Lorg/apache/harmony/xnet/provider/jsse/HandshakeProtocol;->parameters:Lorg/apache/harmony/xnet/provider/jsse/SSLParametersImpl;

    invoke-virtual {v12}, Lorg/apache/harmony/xnet/provider/jsse/SSLParametersImpl;->getNeedClientAuth()Z

    move-result v12

    if-eqz v12, :cond_d

    :cond_c
    invoke-virtual/range {p0 .. p0}, Lorg/apache/harmony/xnet/provider/jsse/ServerHandshakeImpl;->unexpectedMessage()V

    goto/16 :goto_1

    :cond_d
    move-object/from16 v0, p0

    iget-object v12, v0, Lorg/apache/harmony/xnet/provider/jsse/HandshakeProtocol;->session:Lorg/apache/harmony/xnet/provider/jsse/SSLSessionImpl;

    iget-object v12, v12, Lorg/apache/harmony/xnet/provider/jsse/SSLSessionImpl;->cipherSuite:Lorg/apache/harmony/xnet/provider/jsse/CipherSuite;

    iget v12, v12, Lorg/apache/harmony/xnet/provider/jsse/CipherSuite;->keyExchange:I

    const/4 v13, 0x1

    if-eq v12, v13, :cond_e

    move-object/from16 v0, p0

    iget-object v12, v0, Lorg/apache/harmony/xnet/provider/jsse/HandshakeProtocol;->session:Lorg/apache/harmony/xnet/provider/jsse/SSLSessionImpl;

    iget-object v12, v12, Lorg/apache/harmony/xnet/provider/jsse/SSLSessionImpl;->cipherSuite:Lorg/apache/harmony/xnet/provider/jsse/CipherSuite;

    iget v12, v12, Lorg/apache/harmony/xnet/provider/jsse/CipherSuite;->keyExchange:I

    const/4 v13, 0x2

    if-ne v12, v13, :cond_12

    :cond_e
    new-instance v13, Lorg/apache/harmony/xnet/provider/jsse/ClientKeyExchange;

    move-object/from16 v0, p0

    iget-object v14, v0, Lorg/apache/harmony/xnet/provider/jsse/HandshakeProtocol;->io_stream:Lorg/apache/harmony/xnet/provider/jsse/HandshakeIODataStream;

    move-object/from16 v0, p0

    iget-object v12, v0, Lorg/apache/harmony/xnet/provider/jsse/HandshakeProtocol;->serverHello:Lorg/apache/harmony/xnet/provider/jsse/ServerHello;

    iget-object v12, v12, Lorg/apache/harmony/xnet/provider/jsse/ServerHello;->server_version:[B

    const/4 v15, 0x1

    aget-byte v12, v12, v15

    const/4 v15, 0x1

    if-ne v12, v15, :cond_11

    const/4 v12, 0x1

    :goto_4
    const/4 v15, 0x1

    invoke-direct {v13, v14, v9, v12, v15}, Lorg/apache/harmony/xnet/provider/jsse/ClientKeyExchange;-><init>(Lorg/apache/harmony/xnet/provider/jsse/HandshakeIODataStream;IZZ)V

    move-object/from16 v0, p0

    iput-object v13, v0, Lorg/apache/harmony/xnet/provider/jsse/HandshakeProtocol;->clientKeyExchange:Lorg/apache/harmony/xnet/provider/jsse/ClientKeyExchange;
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    const/4 v3, 0x0

    :try_start_4
    const-string v12, "RSA/ECB/PKCS1Padding"

    invoke-static {v12}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v3

    const/4 v12, 0x2

    move-object/from16 v0, p0

    iget-object v13, v0, Lorg/apache/harmony/xnet/provider/jsse/ServerHandshakeImpl;->privKey:Ljava/security/PrivateKey;

    invoke-virtual {v3, v12, v13}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;)V

    move-object/from16 v0, p0

    iget-object v12, v0, Lorg/apache/harmony/xnet/provider/jsse/HandshakeProtocol;->clientKeyExchange:Lorg/apache/harmony/xnet/provider/jsse/ClientKeyExchange;

    iget-object v12, v12, Lorg/apache/harmony/xnet/provider/jsse/ClientKeyExchange;->exchange_keys:[B

    invoke-virtual {v3, v12}, Ljavax/crypto/Cipher;->doFinal([B)[B

    move-result-object v12

    move-object/from16 v0, p0

    iput-object v12, v0, Lorg/apache/harmony/xnet/provider/jsse/HandshakeProtocol;->preMasterSecret:[B

    move-object/from16 v0, p0

    iget-object v12, v0, Lorg/apache/harmony/xnet/provider/jsse/HandshakeProtocol;->preMasterSecret:[B

    array-length v12, v12

    const/16 v13, 0x30

    if-ne v12, v13, :cond_f

    move-object/from16 v0, p0

    iget-object v12, v0, Lorg/apache/harmony/xnet/provider/jsse/HandshakeProtocol;->preMasterSecret:[B

    const/4 v13, 0x0

    aget-byte v12, v12, v13

    move-object/from16 v0, p0

    iget-object v13, v0, Lorg/apache/harmony/xnet/provider/jsse/HandshakeProtocol;->clientHello:Lorg/apache/harmony/xnet/provider/jsse/ClientHello;

    iget-object v13, v13, Lorg/apache/harmony/xnet/provider/jsse/ClientHello;->client_version:[B

    const/4 v14, 0x0

    aget-byte v13, v13, v14

    if-ne v12, v13, :cond_f

    move-object/from16 v0, p0

    iget-object v12, v0, Lorg/apache/harmony/xnet/provider/jsse/HandshakeProtocol;->preMasterSecret:[B

    const/4 v13, 0x1

    aget-byte v12, v12, v13

    move-object/from16 v0, p0

    iget-object v13, v0, Lorg/apache/harmony/xnet/provider/jsse/HandshakeProtocol;->clientHello:Lorg/apache/harmony/xnet/provider/jsse/ClientHello;

    iget-object v13, v13, Lorg/apache/harmony/xnet/provider/jsse/ClientHello;->client_version:[B

    const/4 v14, 0x1

    aget-byte v13, v13, v14

    if-eq v12, v13, :cond_10

    :cond_f
    const/16 v12, 0x30

    new-array v12, v12, [B

    move-object/from16 v0, p0

    iput-object v12, v0, Lorg/apache/harmony/xnet/provider/jsse/HandshakeProtocol;->preMasterSecret:[B

    move-object/from16 v0, p0

    iget-object v12, v0, Lorg/apache/harmony/xnet/provider/jsse/HandshakeProtocol;->parameters:Lorg/apache/harmony/xnet/provider/jsse/SSLParametersImpl;

    invoke-virtual {v12}, Lorg/apache/harmony/xnet/provider/jsse/SSLParametersImpl;->getSecureRandom()Ljava/security/SecureRandom;

    move-result-object v12

    move-object/from16 v0, p0

    iget-object v13, v0, Lorg/apache/harmony/xnet/provider/jsse/HandshakeProtocol;->preMasterSecret:[B

    invoke-virtual {v12, v13}, Ljava/security/SecureRandom;->nextBytes([B)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0

    :cond_10
    :goto_5
    :try_start_5
    invoke-virtual/range {p0 .. p0}, Lorg/apache/harmony/xnet/provider/jsse/ServerHandshakeImpl;->computerMasterSecret()V

    goto/16 :goto_0

    :cond_11
    const/4 v12, 0x0

    goto :goto_4

    :catch_2
    move-exception v6

    const/16 v12, 0x50

    const-string v13, "INTERNAL ERROR"

    move-object/from16 v0, p0

    invoke-virtual {v0, v12, v13, v6}, Lorg/apache/harmony/xnet/provider/jsse/ServerHandshakeImpl;->fatalAlert(BLjava/lang/String;Ljava/lang/Exception;)V

    goto :goto_5

    :cond_12
    new-instance v13, Lorg/apache/harmony/xnet/provider/jsse/ClientKeyExchange;

    move-object/from16 v0, p0

    iget-object v14, v0, Lorg/apache/harmony/xnet/provider/jsse/HandshakeProtocol;->io_stream:Lorg/apache/harmony/xnet/provider/jsse/HandshakeIODataStream;

    move-object/from16 v0, p0

    iget-object v12, v0, Lorg/apache/harmony/xnet/provider/jsse/HandshakeProtocol;->serverHello:Lorg/apache/harmony/xnet/provider/jsse/ServerHello;

    iget-object v12, v12, Lorg/apache/harmony/xnet/provider/jsse/ServerHello;->server_version:[B

    const/4 v15, 0x1

    aget-byte v12, v12, v15

    const/4 v15, 0x1

    if-ne v12, v15, :cond_13

    const/4 v12, 0x1

    :goto_6
    const/4 v15, 0x0

    invoke-direct {v13, v14, v9, v12, v15}, Lorg/apache/harmony/xnet/provider/jsse/ClientKeyExchange;-><init>(Lorg/apache/harmony/xnet/provider/jsse/HandshakeIODataStream;IZZ)V

    move-object/from16 v0, p0

    iput-object v13, v0, Lorg/apache/harmony/xnet/provider/jsse/HandshakeProtocol;->clientKeyExchange:Lorg/apache/harmony/xnet/provider/jsse/ClientKeyExchange;

    move-object/from16 v0, p0

    iget-object v12, v0, Lorg/apache/harmony/xnet/provider/jsse/HandshakeProtocol;->clientKeyExchange:Lorg/apache/harmony/xnet/provider/jsse/ClientKeyExchange;

    invoke-virtual {v12}, Lorg/apache/harmony/xnet/provider/jsse/ClientKeyExchange;->isEmpty()Z

    move-result v12

    if-eqz v12, :cond_14

    move-object/from16 v0, p0

    iget-object v12, v0, Lorg/apache/harmony/xnet/provider/jsse/HandshakeProtocol;->clientCert:Lorg/apache/harmony/xnet/provider/jsse/CertificateMessage;

    iget-object v12, v12, Lorg/apache/harmony/xnet/provider/jsse/CertificateMessage;->certs:[Ljava/security/cert/X509Certificate;

    const/4 v13, 0x0

    aget-object v12, v12, v13

    invoke-virtual {v12}, Ljava/security/cert/X509Certificate;->getPublicKey()Ljava/security/PublicKey;

    move-result-object v12

    check-cast v12, Ljavax/crypto/interfaces/DHPublicKey;

    invoke-interface {v12}, Ljavax/crypto/interfaces/DHPublicKey;->getY()Ljava/math/BigInteger;

    move-result-object v12

    invoke-virtual {v12}, Ljava/math/BigInteger;->toByteArray()[B

    move-result-object v12

    move-object/from16 v0, p0

    iput-object v12, v0, Lorg/apache/harmony/xnet/provider/jsse/HandshakeProtocol;->preMasterSecret:[B
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_0

    goto :goto_5

    :cond_13
    const/4 v12, 0x0

    goto :goto_6

    :cond_14
    :try_start_6
    const-string v12, "DH"

    invoke-static {v12}, Ljava/security/KeyFactory;->getInstance(Ljava/lang/String;)Ljava/security/KeyFactory;

    move-result-object v8

    const-string v12, "DH"

    invoke-static {v12}, Ljavax/crypto/KeyAgreement;->getInstance(Ljava/lang/String;)Ljavax/crypto/KeyAgreement;

    move-result-object v1

    new-instance v12, Ljavax/crypto/spec/DHPublicKeySpec;

    new-instance v13, Ljava/math/BigInteger;

    const/4 v14, 0x1

    move-object/from16 v0, p0

    iget-object v15, v0, Lorg/apache/harmony/xnet/provider/jsse/HandshakeProtocol;->clientKeyExchange:Lorg/apache/harmony/xnet/provider/jsse/ClientKeyExchange;

    iget-object v15, v15, Lorg/apache/harmony/xnet/provider/jsse/ClientKeyExchange;->exchange_keys:[B

    invoke-direct {v13, v14, v15}, Ljava/math/BigInteger;-><init>(I[B)V

    move-object/from16 v0, p0

    iget-object v14, v0, Lorg/apache/harmony/xnet/provider/jsse/HandshakeProtocol;->serverKeyExchange:Lorg/apache/harmony/xnet/provider/jsse/ServerKeyExchange;

    iget-object v14, v14, Lorg/apache/harmony/xnet/provider/jsse/ServerKeyExchange;->par1:Ljava/math/BigInteger;

    move-object/from16 v0, p0

    iget-object v15, v0, Lorg/apache/harmony/xnet/provider/jsse/HandshakeProtocol;->serverKeyExchange:Lorg/apache/harmony/xnet/provider/jsse/ServerKeyExchange;

    iget-object v15, v15, Lorg/apache/harmony/xnet/provider/jsse/ServerKeyExchange;->par2:Ljava/math/BigInteger;

    invoke-direct {v12, v13, v14, v15}, Ljavax/crypto/spec/DHPublicKeySpec;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    invoke-virtual {v8, v12}, Ljava/security/KeyFactory;->generatePublic(Ljava/security/spec/KeySpec;)Ljava/security/PublicKey;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v12, v0, Lorg/apache/harmony/xnet/provider/jsse/ServerHandshakeImpl;->privKey:Ljava/security/PrivateKey;

    invoke-virtual {v1, v12}, Ljavax/crypto/KeyAgreement;->init(Ljava/security/Key;)V

    const/4 v12, 0x1

    invoke-virtual {v1, v4, v12}, Ljavax/crypto/KeyAgreement;->doPhase(Ljava/security/Key;Z)Ljava/security/Key;

    invoke-virtual {v1}, Ljavax/crypto/KeyAgreement;->generateSecret()[B

    move-result-object v12

    move-object/from16 v0, p0

    iput-object v12, v0, Lorg/apache/harmony/xnet/provider/jsse/HandshakeProtocol;->preMasterSecret:[B
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_3
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_0

    goto/16 :goto_5

    :catch_3
    move-exception v6

    const/16 v12, 0x50

    :try_start_7
    const-string v13, "INTERNAL ERROR"

    move-object/from16 v0, p0

    invoke-virtual {v0, v12, v13, v6}, Lorg/apache/harmony/xnet/provider/jsse/ServerHandshakeImpl;->fatalAlert(BLjava/lang/String;Ljava/lang/Exception;)V

    goto/16 :goto_1

    :sswitch_4
    move-object/from16 v0, p0

    iget-boolean v12, v0, Lorg/apache/harmony/xnet/provider/jsse/HandshakeProtocol;->isResuming:Z

    if-nez v12, :cond_15

    move-object/from16 v0, p0

    iget-boolean v12, v0, Lorg/apache/harmony/xnet/provider/jsse/HandshakeProtocol;->changeCipherSpecReceived:Z

    if-nez v12, :cond_15

    invoke-virtual/range {p0 .. p0}, Lorg/apache/harmony/xnet/provider/jsse/ServerHandshakeImpl;->unexpectedMessage()V

    goto/16 :goto_1

    :cond_15
    new-instance v12, Lorg/apache/harmony/xnet/provider/jsse/Finished;

    move-object/from16 v0, p0

    iget-object v13, v0, Lorg/apache/harmony/xnet/provider/jsse/HandshakeProtocol;->io_stream:Lorg/apache/harmony/xnet/provider/jsse/HandshakeIODataStream;

    invoke-direct {v12, v13, v9}, Lorg/apache/harmony/xnet/provider/jsse/Finished;-><init>(Lorg/apache/harmony/xnet/provider/jsse/HandshakeIODataStream;I)V

    move-object/from16 v0, p0

    iput-object v12, v0, Lorg/apache/harmony/xnet/provider/jsse/HandshakeProtocol;->clientFinished:Lorg/apache/harmony/xnet/provider/jsse/Finished;

    move-object/from16 v0, p0

    iget-object v12, v0, Lorg/apache/harmony/xnet/provider/jsse/HandshakeProtocol;->clientFinished:Lorg/apache/harmony/xnet/provider/jsse/Finished;

    invoke-virtual {v12}, Lorg/apache/harmony/xnet/provider/jsse/Finished;->getData()[B

    move-result-object v12

    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Lorg/apache/harmony/xnet/provider/jsse/ServerHandshakeImpl;->verifyFinished([B)V

    move-object/from16 v0, p0

    iget-object v12, v0, Lorg/apache/harmony/xnet/provider/jsse/HandshakeProtocol;->session:Lorg/apache/harmony/xnet/provider/jsse/SSLSessionImpl;

    move-object/from16 v0, p0

    iget-object v13, v0, Lorg/apache/harmony/xnet/provider/jsse/HandshakeProtocol;->parameters:Lorg/apache/harmony/xnet/provider/jsse/SSLParametersImpl;

    invoke-virtual {v13}, Lorg/apache/harmony/xnet/provider/jsse/SSLParametersImpl;->getServerSessionContext()Lorg/apache/harmony/xnet/provider/jsse/ServerSessionContext;

    move-result-object v13

    iput-object v13, v12, Lorg/apache/harmony/xnet/provider/jsse/SSLSessionImpl;->context:Ljavax/net/ssl/SSLSessionContext;

    move-object/from16 v0, p0

    iget-object v12, v0, Lorg/apache/harmony/xnet/provider/jsse/HandshakeProtocol;->parameters:Lorg/apache/harmony/xnet/provider/jsse/SSLParametersImpl;

    invoke-virtual {v12}, Lorg/apache/harmony/xnet/provider/jsse/SSLParametersImpl;->getServerSessionContext()Lorg/apache/harmony/xnet/provider/jsse/ServerSessionContext;

    move-result-object v12

    move-object/from16 v0, p0

    iget-object v13, v0, Lorg/apache/harmony/xnet/provider/jsse/HandshakeProtocol;->session:Lorg/apache/harmony/xnet/provider/jsse/SSLSessionImpl;

    invoke-virtual {v12, v13}, Lorg/apache/harmony/xnet/provider/jsse/ServerSessionContext;->putSession(Ljavax/net/ssl/SSLSession;)V

    move-object/from16 v0, p0

    iget-boolean v12, v0, Lorg/apache/harmony/xnet/provider/jsse/HandshakeProtocol;->isResuming:Z

    if-nez v12, :cond_16

    invoke-virtual/range {p0 .. p0}, Lorg/apache/harmony/xnet/provider/jsse/ServerHandshakeImpl;->sendChangeCipherSpec()V

    goto/16 :goto_0

    :cond_16
    move-object/from16 v0, p0

    iget-object v12, v0, Lorg/apache/harmony/xnet/provider/jsse/HandshakeProtocol;->session:Lorg/apache/harmony/xnet/provider/jsse/SSLSessionImpl;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v13

    iput-wide v13, v12, Lorg/apache/harmony/xnet/provider/jsse/SSLSessionImpl;->lastAccessedTime:J

    const/4 v12, 0x3

    move-object/from16 v0, p0

    iput v12, v0, Lorg/apache/harmony/xnet/provider/jsse/HandshakeProtocol;->status:I
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_0

    goto/16 :goto_0

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0xb -> :sswitch_1
        0xf -> :sswitch_2
        0x10 -> :sswitch_3
        0x14 -> :sswitch_4
    .end sparse-switch
.end method

.method public unwrapSSLv2([B)V
    .locals 4

    iget-object v1, p0, Lorg/apache/harmony/xnet/provider/jsse/HandshakeProtocol;->io_stream:Lorg/apache/harmony/xnet/provider/jsse/HandshakeIODataStream;

    invoke-virtual {v1, p1}, Lorg/apache/harmony/xnet/provider/jsse/HandshakeIODataStream;->append([B)V

    iget-object v1, p0, Lorg/apache/harmony/xnet/provider/jsse/HandshakeProtocol;->io_stream:Lorg/apache/harmony/xnet/provider/jsse/HandshakeIODataStream;

    invoke-virtual {v1}, Lorg/apache/harmony/xnet/provider/jsse/HandshakeIODataStream;->mark()V

    :try_start_0
    new-instance v1, Lorg/apache/harmony/xnet/provider/jsse/ClientHello;

    iget-object v2, p0, Lorg/apache/harmony/xnet/provider/jsse/HandshakeProtocol;->io_stream:Lorg/apache/harmony/xnet/provider/jsse/HandshakeIODataStream;

    invoke-direct {v1, v2}, Lorg/apache/harmony/xnet/provider/jsse/ClientHello;-><init>(Lorg/apache/harmony/xnet/provider/jsse/HandshakeIODataStream;)V

    iput-object v1, p0, Lorg/apache/harmony/xnet/provider/jsse/HandshakeProtocol;->clientHello:Lorg/apache/harmony/xnet/provider/jsse/ClientHello;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    iget-boolean v1, p0, Lorg/apache/harmony/xnet/provider/jsse/HandshakeProtocol;->nonBlocking:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lorg/apache/harmony/xnet/provider/jsse/HandshakeProtocol;->delegatedTasks:Ljava/util/Vector;

    new-instance v2, Lorg/apache/harmony/xnet/provider/jsse/DelegatedTask;

    new-instance v3, Lorg/apache/harmony/xnet/provider/jsse/ServerHandshakeImpl$2;

    invoke-direct {v3, p0}, Lorg/apache/harmony/xnet/provider/jsse/ServerHandshakeImpl$2;-><init>(Lorg/apache/harmony/xnet/provider/jsse/ServerHandshakeImpl;)V

    invoke-direct {v2, v3, p0}, Lorg/apache/harmony/xnet/provider/jsse/DelegatedTask;-><init>(Ljava/lang/Runnable;Lorg/apache/harmony/xnet/provider/jsse/HandshakeProtocol;)V

    invoke-virtual {v1, v2}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    :goto_0
    return-void

    :catch_0
    move-exception v0

    iget-object v1, p0, Lorg/apache/harmony/xnet/provider/jsse/HandshakeProtocol;->io_stream:Lorg/apache/harmony/xnet/provider/jsse/HandshakeIODataStream;

    invoke-virtual {v1}, Lorg/apache/harmony/xnet/provider/jsse/HandshakeIODataStream;->reset()V

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lorg/apache/harmony/xnet/provider/jsse/ServerHandshakeImpl;->processClientHello()V

    goto :goto_0
.end method
