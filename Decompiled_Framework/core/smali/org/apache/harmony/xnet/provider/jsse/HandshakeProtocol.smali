.class public abstract Lorg/apache/harmony/xnet/provider/jsse/HandshakeProtocol;
.super Ljava/lang/Object;
.source "HandshakeProtocol.java"


# static fields
.field public static final FINISHED:I = 0x3

.field public static final NEED_TASK:I = 0x4

.field public static final NEED_UNWRAP:I = 0x1

.field public static final NOT_HANDSHAKING:I = 0x2


# instance fields
.field protected certificateRequest:Lorg/apache/harmony/xnet/provider/jsse/CertificateRequest;

.field protected certificateVerify:Lorg/apache/harmony/xnet/provider/jsse/CertificateVerify;

.field protected changeCipherSpecReceived:Z

.field protected clientCert:Lorg/apache/harmony/xnet/provider/jsse/CertificateMessage;

.field protected clientFinished:Lorg/apache/harmony/xnet/provider/jsse/Finished;

.field protected clientHello:Lorg/apache/harmony/xnet/provider/jsse/ClientHello;

.field protected clientKeyExchange:Lorg/apache/harmony/xnet/provider/jsse/ClientKeyExchange;

.field protected delegatedTaskErr:Ljava/lang/Exception;

.field protected delegatedTasks:Ljava/util/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Vector",
            "<",
            "Lorg/apache/harmony/xnet/provider/jsse/DelegatedTask;",
            ">;"
        }
    .end annotation
.end field

.field public engineOwner:Lorg/apache/harmony/xnet/provider/jsse/SSLEngineImpl;

.field protected io_stream:Lorg/apache/harmony/xnet/provider/jsse/HandshakeIODataStream;

.field protected isResuming:Z

.field private master_secret_bytes:[B

.field private needSendCCSpec:Z

.field protected needSendHelloRequest:Z

.field protected nonBlocking:Z

.field protected parameters:Lorg/apache/harmony/xnet/provider/jsse/SSLParametersImpl;

.field protected preMasterSecret:[B

.field protected recordProtocol:Lorg/apache/harmony/xnet/provider/jsse/SSLRecordProtocol;

.field protected serverCert:Lorg/apache/harmony/xnet/provider/jsse/CertificateMessage;

.field protected serverFinished:Lorg/apache/harmony/xnet/provider/jsse/Finished;

.field protected serverHello:Lorg/apache/harmony/xnet/provider/jsse/ServerHello;

.field protected serverHelloDone:Lorg/apache/harmony/xnet/provider/jsse/ServerHelloDone;

.field protected serverKeyExchange:Lorg/apache/harmony/xnet/provider/jsse/ServerKeyExchange;

.field protected session:Lorg/apache/harmony/xnet/provider/jsse/SSLSessionImpl;

.field public socketOwner:Lorg/apache/harmony/xnet/provider/jsse/SSLSocketImpl;

.field protected status:I

.field private verify_data:[B


# direct methods
.method protected constructor <init>(Ljava/lang/Object;)V
    .locals 2

    const/4 v1, 0x0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x2

    iput v0, p0, Lorg/apache/harmony/xnet/provider/jsse/HandshakeProtocol;->status:I

    new-instance v0, Lorg/apache/harmony/xnet/provider/jsse/HandshakeIODataStream;

    invoke-direct {v0}, Lorg/apache/harmony/xnet/provider/jsse/HandshakeIODataStream;-><init>()V

    iput-object v0, p0, Lorg/apache/harmony/xnet/provider/jsse/HandshakeProtocol;->io_stream:Lorg/apache/harmony/xnet/provider/jsse/HandshakeIODataStream;

    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lorg/apache/harmony/xnet/provider/jsse/HandshakeProtocol;->delegatedTasks:Ljava/util/Vector;

    iput-boolean v1, p0, Lorg/apache/harmony/xnet/provider/jsse/HandshakeProtocol;->changeCipherSpecReceived:Z

    iput-boolean v1, p0, Lorg/apache/harmony/xnet/provider/jsse/HandshakeProtocol;->isResuming:Z

    const/16 v0, 0xc

    new-array v0, v0, [B

    iput-object v0, p0, Lorg/apache/harmony/xnet/provider/jsse/HandshakeProtocol;->verify_data:[B

    const/16 v0, 0xd

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    iput-object v0, p0, Lorg/apache/harmony/xnet/provider/jsse/HandshakeProtocol;->master_secret_bytes:[B

    iput-boolean v1, p0, Lorg/apache/harmony/xnet/provider/jsse/HandshakeProtocol;->needSendCCSpec:Z

    iput-boolean v1, p0, Lorg/apache/harmony/xnet/provider/jsse/HandshakeProtocol;->needSendHelloRequest:Z

    instance-of v0, p1, Lorg/apache/harmony/xnet/provider/jsse/SSLEngineImpl;

    if-eqz v0, :cond_1

    check-cast p1, Lorg/apache/harmony/xnet/provider/jsse/SSLEngineImpl;

    iput-object p1, p0, Lorg/apache/harmony/xnet/provider/jsse/HandshakeProtocol;->engineOwner:Lorg/apache/harmony/xnet/provider/jsse/SSLEngineImpl;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/apache/harmony/xnet/provider/jsse/HandshakeProtocol;->nonBlocking:Z

    iget-object v0, p0, Lorg/apache/harmony/xnet/provider/jsse/HandshakeProtocol;->engineOwner:Lorg/apache/harmony/xnet/provider/jsse/SSLEngineImpl;

    iget-object v0, v0, Lorg/apache/harmony/xnet/provider/jsse/SSLEngineImpl;->sslParameters:Lorg/apache/harmony/xnet/provider/jsse/SSLParametersImpl;

    iput-object v0, p0, Lorg/apache/harmony/xnet/provider/jsse/HandshakeProtocol;->parameters:Lorg/apache/harmony/xnet/provider/jsse/SSLParametersImpl;

    :cond_0
    :goto_0
    return-void

    :cond_1
    instance-of v0, p1, Lorg/apache/harmony/xnet/provider/jsse/SSLSocketImpl;

    if-eqz v0, :cond_0

    check-cast p1, Lorg/apache/harmony/xnet/provider/jsse/SSLSocketImpl;

    iput-object p1, p0, Lorg/apache/harmony/xnet/provider/jsse/HandshakeProtocol;->socketOwner:Lorg/apache/harmony/xnet/provider/jsse/SSLSocketImpl;

    iput-boolean v1, p0, Lorg/apache/harmony/xnet/provider/jsse/HandshakeProtocol;->nonBlocking:Z

    iget-object v0, p0, Lorg/apache/harmony/xnet/provider/jsse/HandshakeProtocol;->socketOwner:Lorg/apache/harmony/xnet/provider/jsse/SSLSocketImpl;

    iget-object v0, v0, Lorg/apache/harmony/xnet/provider/jsse/SSLSocketImpl;->sslParameters:Lorg/apache/harmony/xnet/provider/jsse/SSLParametersImpl;

    iput-object v0, p0, Lorg/apache/harmony/xnet/provider/jsse/HandshakeProtocol;->parameters:Lorg/apache/harmony/xnet/provider/jsse/SSLParametersImpl;

    goto :goto_0

    nop

    :array_0
    .array-data 0x1
        0x6dt
        0x61t
        0x73t
        0x74t
        0x65t
        0x72t
        0x20t
        0x73t
        0x65t
        0x63t
        0x72t
        0x65t
        0x74t
    .end array-data
.end method

.method protected static getRSAKeyLength(Ljava/security/PublicKey;)I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;,
            Ljava/security/spec/InvalidKeySpecException;
        }
    .end annotation

    instance-of v2, p0, Ljava/security/interfaces/RSAKey;

    if-eqz v2, :cond_0

    check-cast p0, Ljava/security/interfaces/RSAKey;

    invoke-interface {p0}, Ljava/security/interfaces/RSAKey;->getModulus()Ljava/math/BigInteger;

    move-result-object v1

    :goto_0
    invoke-virtual {v1}, Ljava/math/BigInteger;->bitLength()I

    move-result v2

    return v2

    :cond_0
    const-string v2, "RSA"

    invoke-static {v2}, Ljava/security/KeyFactory;->getInstance(Ljava/lang/String;)Ljava/security/KeyFactory;

    move-result-object v0

    const-class v2, Ljava/security/spec/RSAPublicKeySpec;

    invoke-virtual {v0, p0, v2}, Ljava/security/KeyFactory;->getKeySpec(Ljava/security/Key;Ljava/lang/Class;)Ljava/security/spec/KeySpec;

    move-result-object v2

    check-cast v2, Ljava/security/spec/RSAPublicKeySpec;

    invoke-virtual {v2}, Ljava/security/spec/RSAPublicKeySpec;->getModulus()Ljava/math/BigInteger;

    move-result-object v1

    goto :goto_0
.end method


# virtual methods
.method protected clearMessages()V
    .locals 2

    const/4 v1, 0x0

    iget-object v0, p0, Lorg/apache/harmony/xnet/provider/jsse/HandshakeProtocol;->io_stream:Lorg/apache/harmony/xnet/provider/jsse/HandshakeIODataStream;

    invoke-virtual {v0}, Lorg/apache/harmony/xnet/provider/jsse/HandshakeIODataStream;->clearBuffer()V

    iput-object v1, p0, Lorg/apache/harmony/xnet/provider/jsse/HandshakeProtocol;->clientHello:Lorg/apache/harmony/xnet/provider/jsse/ClientHello;

    iput-object v1, p0, Lorg/apache/harmony/xnet/provider/jsse/HandshakeProtocol;->serverHello:Lorg/apache/harmony/xnet/provider/jsse/ServerHello;

    iput-object v1, p0, Lorg/apache/harmony/xnet/provider/jsse/HandshakeProtocol;->serverCert:Lorg/apache/harmony/xnet/provider/jsse/CertificateMessage;

    iput-object v1, p0, Lorg/apache/harmony/xnet/provider/jsse/HandshakeProtocol;->serverKeyExchange:Lorg/apache/harmony/xnet/provider/jsse/ServerKeyExchange;

    iput-object v1, p0, Lorg/apache/harmony/xnet/provider/jsse/HandshakeProtocol;->certificateRequest:Lorg/apache/harmony/xnet/provider/jsse/CertificateRequest;

    iput-object v1, p0, Lorg/apache/harmony/xnet/provider/jsse/HandshakeProtocol;->serverHelloDone:Lorg/apache/harmony/xnet/provider/jsse/ServerHelloDone;

    iput-object v1, p0, Lorg/apache/harmony/xnet/provider/jsse/HandshakeProtocol;->clientCert:Lorg/apache/harmony/xnet/provider/jsse/CertificateMessage;

    iput-object v1, p0, Lorg/apache/harmony/xnet/provider/jsse/HandshakeProtocol;->clientKeyExchange:Lorg/apache/harmony/xnet/provider/jsse/ClientKeyExchange;

    iput-object v1, p0, Lorg/apache/harmony/xnet/provider/jsse/HandshakeProtocol;->certificateVerify:Lorg/apache/harmony/xnet/provider/jsse/CertificateVerify;

    iput-object v1, p0, Lorg/apache/harmony/xnet/provider/jsse/HandshakeProtocol;->clientFinished:Lorg/apache/harmony/xnet/provider/jsse/Finished;

    iput-object v1, p0, Lorg/apache/harmony/xnet/provider/jsse/HandshakeProtocol;->serverFinished:Lorg/apache/harmony/xnet/provider/jsse/Finished;

    return-void
.end method

.method public computerMasterSecret()V
    .locals 6

    const/4 v4, 0x1

    const/16 v3, 0x20

    const/4 v5, 0x0

    const/16 v2, 0x40

    new-array v1, v2, [B

    iget-object v2, p0, Lorg/apache/harmony/xnet/provider/jsse/HandshakeProtocol;->clientHello:Lorg/apache/harmony/xnet/provider/jsse/ClientHello;

    invoke-virtual {v2}, Lorg/apache/harmony/xnet/provider/jsse/ClientHello;->getRandom()[B

    move-result-object v2

    invoke-static {v2, v5, v1, v5, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v2, p0, Lorg/apache/harmony/xnet/provider/jsse/HandshakeProtocol;->serverHello:Lorg/apache/harmony/xnet/provider/jsse/ServerHello;

    invoke-virtual {v2}, Lorg/apache/harmony/xnet/provider/jsse/ServerHello;->getRandom()[B

    move-result-object v2

    invoke-static {v2, v5, v1, v3, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v2, p0, Lorg/apache/harmony/xnet/provider/jsse/HandshakeProtocol;->session:Lorg/apache/harmony/xnet/provider/jsse/SSLSessionImpl;

    const/16 v3, 0x30

    new-array v3, v3, [B

    iput-object v3, v2, Lorg/apache/harmony/xnet/provider/jsse/SSLSessionImpl;->master_secret:[B

    iget-object v2, p0, Lorg/apache/harmony/xnet/provider/jsse/HandshakeProtocol;->serverHello:Lorg/apache/harmony/xnet/provider/jsse/ServerHello;

    iget-object v2, v2, Lorg/apache/harmony/xnet/provider/jsse/ServerHello;->server_version:[B

    aget-byte v2, v2, v4

    if-ne v2, v4, :cond_0

    :try_start_0
    iget-object v2, p0, Lorg/apache/harmony/xnet/provider/jsse/HandshakeProtocol;->session:Lorg/apache/harmony/xnet/provider/jsse/SSLSessionImpl;

    iget-object v2, v2, Lorg/apache/harmony/xnet/provider/jsse/SSLSessionImpl;->master_secret:[B

    iget-object v3, p0, Lorg/apache/harmony/xnet/provider/jsse/HandshakeProtocol;->preMasterSecret:[B

    iget-object v4, p0, Lorg/apache/harmony/xnet/provider/jsse/HandshakeProtocol;->master_secret_bytes:[B

    invoke-static {v2, v3, v4, v1}, Lorg/apache/harmony/xnet/provider/jsse/PRF;->computePRF([B[B[B[B)V
    :try_end_0
    .catch Ljava/security/GeneralSecurityException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    iget-object v2, p0, Lorg/apache/harmony/xnet/provider/jsse/HandshakeProtocol;->preMasterSecret:[B

    invoke-static {v2, v5}, Ljava/util/Arrays;->fill([BB)V

    const/4 v2, 0x0

    iput-object v2, p0, Lorg/apache/harmony/xnet/provider/jsse/HandshakeProtocol;->preMasterSecret:[B

    return-void

    :catch_0
    move-exception v0

    const/16 v2, 0x50

    const-string v3, "PRF error"

    invoke-virtual {p0, v2, v3, v0}, Lorg/apache/harmony/xnet/provider/jsse/HandshakeProtocol;->fatalAlert(BLjava/lang/String;Ljava/lang/Exception;)V

    goto :goto_0

    :cond_0
    iget-object v2, p0, Lorg/apache/harmony/xnet/provider/jsse/HandshakeProtocol;->session:Lorg/apache/harmony/xnet/provider/jsse/SSLSessionImpl;

    iget-object v2, v2, Lorg/apache/harmony/xnet/provider/jsse/SSLSessionImpl;->master_secret:[B

    iget-object v3, p0, Lorg/apache/harmony/xnet/provider/jsse/HandshakeProtocol;->preMasterSecret:[B

    invoke-static {v2, v3, v1}, Lorg/apache/harmony/xnet/provider/jsse/PRF;->computePRF_SSLv3([B[B[B)V

    goto :goto_0
.end method

.method protected computerReferenceVerifyDataSSLv3([B)V
    .locals 1

    const/16 v0, 0x24

    new-array v0, v0, [B

    iput-object v0, p0, Lorg/apache/harmony/xnet/provider/jsse/HandshakeProtocol;->verify_data:[B

    iget-object v0, p0, Lorg/apache/harmony/xnet/provider/jsse/HandshakeProtocol;->verify_data:[B

    invoke-virtual {p0, p1, v0}, Lorg/apache/harmony/xnet/provider/jsse/HandshakeProtocol;->computerVerifyDataSSLv3([B[B)V

    return-void
.end method

.method protected computerReferenceVerifyDataTLS(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lorg/apache/harmony/xnet/provider/jsse/HandshakeProtocol;->verify_data:[B

    invoke-virtual {p0, p1, v0}, Lorg/apache/harmony/xnet/provider/jsse/HandshakeProtocol;->computerVerifyDataTLS(Ljava/lang/String;[B)V

    return-void
.end method

.method protected computerVerifyDataSSLv3([B[B)V
    .locals 10

    const/16 v9, 0x50

    :try_start_0
    const-string v5, "MD5"

    invoke-static {v5}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v3

    const-string v5, "SHA-1"

    invoke-static {v5}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v4

    :try_start_1
    iget-object v5, p0, Lorg/apache/harmony/xnet/provider/jsse/HandshakeProtocol;->io_stream:Lorg/apache/harmony/xnet/provider/jsse/HandshakeIODataStream;

    invoke-virtual {v5}, Lorg/apache/harmony/xnet/provider/jsse/HandshakeIODataStream;->getMessages()[B

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/security/MessageDigest;->update([B)V

    invoke-virtual {v3, p1}, Ljava/security/MessageDigest;->update([B)V

    iget-object v5, p0, Lorg/apache/harmony/xnet/provider/jsse/HandshakeProtocol;->session:Lorg/apache/harmony/xnet/provider/jsse/SSLSessionImpl;

    iget-object v5, v5, Lorg/apache/harmony/xnet/provider/jsse/SSLSessionImpl;->master_secret:[B

    invoke-virtual {v3, v5}, Ljava/security/MessageDigest;->update([B)V

    sget-object v5, Lorg/apache/harmony/xnet/provider/jsse/SSLv3Constants;->MD5pad1:[B

    invoke-virtual {v3, v5}, Ljava/security/MessageDigest;->digest([B)[B

    move-result-object v0

    iget-object v5, p0, Lorg/apache/harmony/xnet/provider/jsse/HandshakeProtocol;->session:Lorg/apache/harmony/xnet/provider/jsse/SSLSessionImpl;

    iget-object v5, v5, Lorg/apache/harmony/xnet/provider/jsse/SSLSessionImpl;->master_secret:[B

    invoke-virtual {v3, v5}, Ljava/security/MessageDigest;->update([B)V

    sget-object v5, Lorg/apache/harmony/xnet/provider/jsse/SSLv3Constants;->MD5pad2:[B

    invoke-virtual {v3, v5}, Ljava/security/MessageDigest;->update([B)V

    invoke-virtual {v3, v0}, Ljava/security/MessageDigest;->digest([B)[B

    move-result-object v5

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/16 v8, 0x10

    invoke-static {v5, v6, p2, v7, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    invoke-virtual {v4, v2}, Ljava/security/MessageDigest;->update([B)V

    invoke-virtual {v4, p1}, Ljava/security/MessageDigest;->update([B)V

    iget-object v5, p0, Lorg/apache/harmony/xnet/provider/jsse/HandshakeProtocol;->session:Lorg/apache/harmony/xnet/provider/jsse/SSLSessionImpl;

    iget-object v5, v5, Lorg/apache/harmony/xnet/provider/jsse/SSLSessionImpl;->master_secret:[B

    invoke-virtual {v4, v5}, Ljava/security/MessageDigest;->update([B)V

    sget-object v5, Lorg/apache/harmony/xnet/provider/jsse/SSLv3Constants;->SHApad1:[B

    invoke-virtual {v4, v5}, Ljava/security/MessageDigest;->digest([B)[B

    move-result-object v0

    iget-object v5, p0, Lorg/apache/harmony/xnet/provider/jsse/HandshakeProtocol;->session:Lorg/apache/harmony/xnet/provider/jsse/SSLSessionImpl;

    iget-object v5, v5, Lorg/apache/harmony/xnet/provider/jsse/SSLSessionImpl;->master_secret:[B

    invoke-virtual {v4, v5}, Ljava/security/MessageDigest;->update([B)V

    sget-object v5, Lorg/apache/harmony/xnet/provider/jsse/SSLv3Constants;->SHApad2:[B

    invoke-virtual {v4, v5}, Ljava/security/MessageDigest;->update([B)V

    invoke-virtual {v4, v0}, Ljava/security/MessageDigest;->digest([B)[B

    move-result-object v5

    const/4 v6, 0x0

    const/16 v7, 0x10

    const/16 v8, 0x14

    invoke-static {v5, v6, p2, v7, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    :goto_0
    return-void

    :catch_0
    move-exception v1

    const-string v5, "Could not initialize the Digest Algorithms."

    invoke-virtual {p0, v9, v5, v1}, Lorg/apache/harmony/xnet/provider/jsse/HandshakeProtocol;->fatalAlert(BLjava/lang/String;Ljava/lang/Exception;)V

    goto :goto_0

    :catch_1
    move-exception v1

    const-string v5, "INTERNAL ERROR"

    invoke-virtual {p0, v9, v5, v1}, Lorg/apache/harmony/xnet/provider/jsse/HandshakeProtocol;->fatalAlert(BLjava/lang/String;Ljava/lang/Exception;)V

    goto :goto_0
.end method

.method protected computerVerifyDataTLS(Ljava/lang/String;[B)V
    .locals 7

    const/4 v6, 0x0

    iget-object v4, p0, Lorg/apache/harmony/xnet/provider/jsse/HandshakeProtocol;->io_stream:Lorg/apache/harmony/xnet/provider/jsse/HandshakeIODataStream;

    invoke-virtual {v4}, Lorg/apache/harmony/xnet/provider/jsse/HandshakeIODataStream;->getDigestMD5()[B

    move-result-object v2

    iget-object v4, p0, Lorg/apache/harmony/xnet/provider/jsse/HandshakeProtocol;->io_stream:Lorg/apache/harmony/xnet/provider/jsse/HandshakeIODataStream;

    invoke-virtual {v4}, Lorg/apache/harmony/xnet/provider/jsse/HandshakeIODataStream;->getDigestSHA()[B

    move-result-object v3

    array-length v4, v2

    array-length v5, v3

    add-int/2addr v4, v5

    new-array v0, v4, [B

    array-length v4, v2

    invoke-static {v2, v6, v0, v6, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    array-length v4, v2

    array-length v5, v3

    invoke-static {v3, v6, v0, v4, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :try_start_0
    iget-object v4, p0, Lorg/apache/harmony/xnet/provider/jsse/HandshakeProtocol;->session:Lorg/apache/harmony/xnet/provider/jsse/SSLSessionImpl;

    iget-object v4, v4, Lorg/apache/harmony/xnet/provider/jsse/SSLSessionImpl;->master_secret:[B

    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v5

    invoke-static {p2, v4, v5, v0}, Lorg/apache/harmony/xnet/provider/jsse/PRF;->computePRF([B[B[B[B)V
    :try_end_0
    .catch Ljava/security/GeneralSecurityException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v1

    const/16 v4, 0x50

    const-string v5, "PRF error"

    invoke-virtual {p0, v4, v5, v1}, Lorg/apache/harmony/xnet/provider/jsse/HandshakeProtocol;->fatalAlert(BLjava/lang/String;Ljava/lang/Exception;)V

    goto :goto_0
.end method

.method protected fatalAlert(BLjava/lang/String;)V
    .locals 2

    new-instance v0, Lorg/apache/harmony/xnet/provider/jsse/AlertException;

    new-instance v1, Ljavax/net/ssl/SSLHandshakeException;

    invoke-direct {v1, p2}, Ljavax/net/ssl/SSLHandshakeException;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, p1, v1}, Lorg/apache/harmony/xnet/provider/jsse/AlertException;-><init>(BLjavax/net/ssl/SSLException;)V

    throw v0
.end method

.method protected fatalAlert(BLjava/lang/String;Ljava/lang/Exception;)V
    .locals 2

    new-instance v0, Lorg/apache/harmony/xnet/provider/jsse/AlertException;

    new-instance v1, Ljavax/net/ssl/SSLException;

    invoke-direct {v1, p2, p3}, Ljavax/net/ssl/SSLException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-direct {v0, p1, v1}, Lorg/apache/harmony/xnet/provider/jsse/AlertException;-><init>(BLjavax/net/ssl/SSLException;)V

    throw v0
.end method

.method protected fatalAlert(BLjavax/net/ssl/SSLException;)V
    .locals 1

    new-instance v0, Lorg/apache/harmony/xnet/provider/jsse/AlertException;

    invoke-direct {v0, p1, p2}, Lorg/apache/harmony/xnet/provider/jsse/AlertException;-><init>(BLjavax/net/ssl/SSLException;)V

    throw v0
.end method

.method public getSession()Lorg/apache/harmony/xnet/provider/jsse/SSLSessionImpl;
    .locals 1

    iget-object v0, p0, Lorg/apache/harmony/xnet/provider/jsse/HandshakeProtocol;->session:Lorg/apache/harmony/xnet/provider/jsse/SSLSessionImpl;

    return-object v0
.end method

.method public getStatus()Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;
    .locals 1

    iget-object v0, p0, Lorg/apache/harmony/xnet/provider/jsse/HandshakeProtocol;->io_stream:Lorg/apache/harmony/xnet/provider/jsse/HandshakeIODataStream;

    invoke-virtual {v0}, Lorg/apache/harmony/xnet/provider/jsse/HandshakeIODataStream;->hasData()Z

    move-result v0

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lorg/apache/harmony/xnet/provider/jsse/HandshakeProtocol;->needSendCCSpec:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lorg/apache/harmony/xnet/provider/jsse/HandshakeProtocol;->needSendHelloRequest:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/apache/harmony/xnet/provider/jsse/HandshakeProtocol;->delegatedTaskErr:Ljava/lang/Exception;

    if-eqz v0, :cond_1

    :cond_0
    sget-object v0, Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;->NEED_WRAP:Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;

    :goto_0
    return-object v0

    :cond_1
    iget-object v0, p0, Lorg/apache/harmony/xnet/provider/jsse/HandshakeProtocol;->delegatedTasks:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    sget-object v0, Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;->NEED_TASK:Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;

    goto :goto_0

    :cond_2
    iget v0, p0, Lorg/apache/harmony/xnet/provider/jsse/HandshakeProtocol;->status:I

    packed-switch v0, :pswitch_data_0

    :pswitch_0
    sget-object v0, Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;->NOT_HANDSHAKING:Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;

    goto :goto_0

    :pswitch_1
    sget-object v0, Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;->NEED_UNWRAP:Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;

    goto :goto_0

    :pswitch_2
    const/4 v0, 0x2

    iput v0, p0, Lorg/apache/harmony/xnet/provider/jsse/HandshakeProtocol;->status:I

    invoke-virtual {p0}, Lorg/apache/harmony/xnet/provider/jsse/HandshakeProtocol;->clearMessages()V

    sget-object v0, Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;->FINISHED:Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method public getTask()Ljava/lang/Runnable;
    .locals 2

    iget-object v0, p0, Lorg/apache/harmony/xnet/provider/jsse/HandshakeProtocol;->delegatedTasks:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lorg/apache/harmony/xnet/provider/jsse/HandshakeProtocol;->delegatedTasks:Ljava/util/Vector;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/Vector;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Runnable;

    goto :goto_0
.end method

.method abstract makeFinished()V
.end method

.method abstract receiveChangeCipherSpec()V
.end method

.method public send(Lorg/apache/harmony/xnet/provider/jsse/Message;)V
    .locals 3

    iget-object v0, p0, Lorg/apache/harmony/xnet/provider/jsse/HandshakeProtocol;->io_stream:Lorg/apache/harmony/xnet/provider/jsse/HandshakeIODataStream;

    invoke-virtual {p1}, Lorg/apache/harmony/xnet/provider/jsse/Message;->getType()I

    move-result v1

    int-to-long v1, v1

    invoke-virtual {v0, v1, v2}, Lorg/apache/harmony/xnet/provider/jsse/HandshakeIODataStream;->writeUint8(J)V

    iget-object v0, p0, Lorg/apache/harmony/xnet/provider/jsse/HandshakeProtocol;->io_stream:Lorg/apache/harmony/xnet/provider/jsse/HandshakeIODataStream;

    invoke-virtual {p1}, Lorg/apache/harmony/xnet/provider/jsse/Message;->length()I

    move-result v1

    int-to-long v1, v1

    invoke-virtual {v0, v1, v2}, Lorg/apache/harmony/xnet/provider/jsse/HandshakeIODataStream;->writeUint24(J)V

    iget-object v0, p0, Lorg/apache/harmony/xnet/provider/jsse/HandshakeProtocol;->io_stream:Lorg/apache/harmony/xnet/provider/jsse/HandshakeIODataStream;

    invoke-virtual {p1, v0}, Lorg/apache/harmony/xnet/provider/jsse/Message;->send(Lorg/apache/harmony/xnet/provider/jsse/HandshakeIODataStream;)V

    return-void
.end method

.method protected sendChangeCipherSpec()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/apache/harmony/xnet/provider/jsse/HandshakeProtocol;->needSendCCSpec:Z

    return-void
.end method

.method protected sendHelloRequest()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/apache/harmony/xnet/provider/jsse/HandshakeProtocol;->needSendHelloRequest:Z

    return-void
.end method

.method protected sendWarningAlert(B)V
    .locals 2

    iget-object v0, p0, Lorg/apache/harmony/xnet/provider/jsse/HandshakeProtocol;->recordProtocol:Lorg/apache/harmony/xnet/provider/jsse/SSLRecordProtocol;

    const/4 v1, 0x1

    invoke-virtual {v0, v1, p1}, Lorg/apache/harmony/xnet/provider/jsse/SSLRecordProtocol;->alert(BB)V

    return-void
.end method

.method public setRecordProtocol(Lorg/apache/harmony/xnet/provider/jsse/SSLRecordProtocol;)V
    .locals 0

    iput-object p1, p0, Lorg/apache/harmony/xnet/provider/jsse/HandshakeProtocol;->recordProtocol:Lorg/apache/harmony/xnet/provider/jsse/SSLRecordProtocol;

    return-void
.end method

.method protected shutdown()V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0}, Lorg/apache/harmony/xnet/provider/jsse/HandshakeProtocol;->clearMessages()V

    iput-object v0, p0, Lorg/apache/harmony/xnet/provider/jsse/HandshakeProtocol;->session:Lorg/apache/harmony/xnet/provider/jsse/SSLSessionImpl;

    iput-object v0, p0, Lorg/apache/harmony/xnet/provider/jsse/HandshakeProtocol;->preMasterSecret:[B

    iget-object v0, p0, Lorg/apache/harmony/xnet/provider/jsse/HandshakeProtocol;->delegatedTasks:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->clear()V

    return-void
.end method

.method public abstract start()V
.end method

.method protected stop()V
    .locals 1

    invoke-virtual {p0}, Lorg/apache/harmony/xnet/provider/jsse/HandshakeProtocol;->clearMessages()V

    const/4 v0, 0x2

    iput v0, p0, Lorg/apache/harmony/xnet/provider/jsse/HandshakeProtocol;->status:I

    return-void
.end method

.method protected unexpectedMessage()V
    .locals 2

    const/16 v0, 0xa

    const-string v1, "UNEXPECTED MESSAGE"

    invoke-virtual {p0, v0, v1}, Lorg/apache/harmony/xnet/provider/jsse/HandshakeProtocol;->fatalAlert(BLjava/lang/String;)V

    return-void
.end method

.method public abstract unwrap([B)V
.end method

.method public abstract unwrapSSLv2([B)V
.end method

.method protected verifyFinished([B)V
    .locals 2

    iget-object v0, p0, Lorg/apache/harmony/xnet/provider/jsse/HandshakeProtocol;->verify_data:[B

    invoke-static {v0, p1}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v0

    if-nez v0, :cond_0

    const/16 v0, 0x28

    const-string v1, "Incorrect FINISED"

    invoke-virtual {p0, v0, v1}, Lorg/apache/harmony/xnet/provider/jsse/HandshakeProtocol;->fatalAlert(BLjava/lang/String;)V

    :cond_0
    return-void
.end method

.method public wrap()[B
    .locals 8

    const/4 v1, 0x0

    const/16 v7, 0x16

    const/4 v6, 0x4

    const/4 v5, 0x0

    iget-object v2, p0, Lorg/apache/harmony/xnet/provider/jsse/HandshakeProtocol;->delegatedTaskErr:Ljava/lang/Exception;

    if-eqz v2, :cond_0

    iget-object v0, p0, Lorg/apache/harmony/xnet/provider/jsse/HandshakeProtocol;->delegatedTaskErr:Ljava/lang/Exception;

    iput-object v1, p0, Lorg/apache/harmony/xnet/provider/jsse/HandshakeProtocol;->delegatedTaskErr:Ljava/lang/Exception;

    const/16 v2, 0x28

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Error occured in delegated task:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v2, v3, v0}, Lorg/apache/harmony/xnet/provider/jsse/HandshakeProtocol;->fatalAlert(BLjava/lang/String;Ljava/lang/Exception;)V

    :cond_0
    iget-object v2, p0, Lorg/apache/harmony/xnet/provider/jsse/HandshakeProtocol;->io_stream:Lorg/apache/harmony/xnet/provider/jsse/HandshakeIODataStream;

    invoke-virtual {v2}, Lorg/apache/harmony/xnet/provider/jsse/HandshakeIODataStream;->hasData()Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v1, p0, Lorg/apache/harmony/xnet/provider/jsse/HandshakeProtocol;->recordProtocol:Lorg/apache/harmony/xnet/provider/jsse/SSLRecordProtocol;

    iget-object v2, p0, Lorg/apache/harmony/xnet/provider/jsse/HandshakeProtocol;->io_stream:Lorg/apache/harmony/xnet/provider/jsse/HandshakeIODataStream;

    invoke-virtual {v1, v7, v2}, Lorg/apache/harmony/xnet/provider/jsse/SSLRecordProtocol;->wrap(BLorg/apache/harmony/xnet/provider/jsse/DataStream;)[B

    move-result-object v1

    :cond_1
    :goto_0
    return-object v1

    :cond_2
    iget-boolean v2, p0, Lorg/apache/harmony/xnet/provider/jsse/HandshakeProtocol;->needSendCCSpec:Z

    if-eqz v2, :cond_3

    invoke-virtual {p0}, Lorg/apache/harmony/xnet/provider/jsse/HandshakeProtocol;->makeFinished()V

    iput-boolean v5, p0, Lorg/apache/harmony/xnet/provider/jsse/HandshakeProtocol;->needSendCCSpec:Z

    iget-object v1, p0, Lorg/apache/harmony/xnet/provider/jsse/HandshakeProtocol;->recordProtocol:Lorg/apache/harmony/xnet/provider/jsse/SSLRecordProtocol;

    invoke-virtual {p0}, Lorg/apache/harmony/xnet/provider/jsse/HandshakeProtocol;->getSession()Lorg/apache/harmony/xnet/provider/jsse/SSLSessionImpl;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/apache/harmony/xnet/provider/jsse/SSLRecordProtocol;->getChangeCipherSpecMesage(Lorg/apache/harmony/xnet/provider/jsse/SSLSessionImpl;)[B

    move-result-object v1

    goto :goto_0

    :cond_3
    iget-boolean v2, p0, Lorg/apache/harmony/xnet/provider/jsse/HandshakeProtocol;->needSendHelloRequest:Z

    if-eqz v2, :cond_1

    iput-boolean v5, p0, Lorg/apache/harmony/xnet/provider/jsse/HandshakeProtocol;->needSendHelloRequest:Z

    iget-object v1, p0, Lorg/apache/harmony/xnet/provider/jsse/HandshakeProtocol;->recordProtocol:Lorg/apache/harmony/xnet/provider/jsse/SSLRecordProtocol;

    new-array v2, v6, [B

    fill-array-data v2, :array_0

    invoke-virtual {v1, v7, v2, v5, v6}, Lorg/apache/harmony/xnet/provider/jsse/SSLRecordProtocol;->wrap(B[BII)[B

    move-result-object v1

    goto :goto_0

    :array_0
    .array-data 0x1
        0x0t
        0x0t
        0x0t
        0x0t
    .end array-data
.end method
