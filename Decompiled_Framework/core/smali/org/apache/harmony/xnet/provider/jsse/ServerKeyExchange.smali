.class public Lorg/apache/harmony/xnet/provider/jsse/ServerKeyExchange;
.super Lorg/apache/harmony/xnet/provider/jsse/Message;
.source "ServerKeyExchange.java"


# instance fields
.field final bytes1:[B

.field final bytes2:[B

.field final bytes3:[B

.field final hash:[B

.field private key:Ljava/security/interfaces/RSAPublicKey;

.field final par1:Ljava/math/BigInteger;

.field final par2:Ljava/math/BigInteger;

.field final par3:Ljava/math/BigInteger;


# direct methods
.method public constructor <init>(Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;[B)V
    .locals 2

    invoke-direct {p0}, Lorg/apache/harmony/xnet/provider/jsse/Message;-><init>()V

    iput-object p1, p0, Lorg/apache/harmony/xnet/provider/jsse/ServerKeyExchange;->par1:Ljava/math/BigInteger;

    iput-object p2, p0, Lorg/apache/harmony/xnet/provider/jsse/ServerKeyExchange;->par2:Ljava/math/BigInteger;

    iput-object p3, p0, Lorg/apache/harmony/xnet/provider/jsse/ServerKeyExchange;->par3:Ljava/math/BigInteger;

    iput-object p4, p0, Lorg/apache/harmony/xnet/provider/jsse/ServerKeyExchange;->hash:[B

    iget-object v0, p0, Lorg/apache/harmony/xnet/provider/jsse/ServerKeyExchange;->par1:Ljava/math/BigInteger;

    invoke-static {v0}, Lorg/apache/harmony/xnet/provider/jsse/ServerKeyExchange;->toUnsignedByteArray(Ljava/math/BigInteger;)[B

    move-result-object v0

    iput-object v0, p0, Lorg/apache/harmony/xnet/provider/jsse/ServerKeyExchange;->bytes1:[B

    iget-object v0, p0, Lorg/apache/harmony/xnet/provider/jsse/ServerKeyExchange;->par2:Ljava/math/BigInteger;

    invoke-static {v0}, Lorg/apache/harmony/xnet/provider/jsse/ServerKeyExchange;->toUnsignedByteArray(Ljava/math/BigInteger;)[B

    move-result-object v0

    iput-object v0, p0, Lorg/apache/harmony/xnet/provider/jsse/ServerKeyExchange;->bytes2:[B

    iget-object v0, p0, Lorg/apache/harmony/xnet/provider/jsse/ServerKeyExchange;->bytes1:[B

    array-length v0, v0

    add-int/lit8 v0, v0, 0x4

    iget-object v1, p0, Lorg/apache/harmony/xnet/provider/jsse/ServerKeyExchange;->bytes2:[B

    array-length v1, v1

    add-int/2addr v0, v1

    iput v0, p0, Lorg/apache/harmony/xnet/provider/jsse/Message;->length:I

    if-eqz p4, :cond_0

    iget v0, p0, Lorg/apache/harmony/xnet/provider/jsse/Message;->length:I

    array-length v1, p4

    add-int/lit8 v1, v1, 0x2

    add-int/2addr v0, v1

    iput v0, p0, Lorg/apache/harmony/xnet/provider/jsse/Message;->length:I

    :cond_0
    if-nez p3, :cond_1

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/harmony/xnet/provider/jsse/ServerKeyExchange;->bytes3:[B

    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lorg/apache/harmony/xnet/provider/jsse/ServerKeyExchange;->par3:Ljava/math/BigInteger;

    invoke-static {v0}, Lorg/apache/harmony/xnet/provider/jsse/ServerKeyExchange;->toUnsignedByteArray(Ljava/math/BigInteger;)[B

    move-result-object v0

    iput-object v0, p0, Lorg/apache/harmony/xnet/provider/jsse/ServerKeyExchange;->bytes3:[B

    iget v0, p0, Lorg/apache/harmony/xnet/provider/jsse/Message;->length:I

    iget-object v1, p0, Lorg/apache/harmony/xnet/provider/jsse/ServerKeyExchange;->bytes3:[B

    array-length v1, v1

    add-int/lit8 v1, v1, 0x2

    add-int/2addr v0, v1

    iput v0, p0, Lorg/apache/harmony/xnet/provider/jsse/Message;->length:I

    goto :goto_0
.end method

.method public constructor <init>(Lorg/apache/harmony/xnet/provider/jsse/HandshakeIODataStream;II)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v4, 0x0

    const/4 v3, 0x1

    invoke-direct {p0}, Lorg/apache/harmony/xnet/provider/jsse/Message;-><init>()V

    invoke-virtual {p1}, Lorg/apache/harmony/xnet/provider/jsse/HandshakeIODataStream;->readUint16()I

    move-result v0

    invoke-virtual {p1, v0}, Lorg/apache/harmony/xnet/provider/jsse/HandshakeIODataStream;->read(I)[B

    move-result-object v1

    iput-object v1, p0, Lorg/apache/harmony/xnet/provider/jsse/ServerKeyExchange;->bytes1:[B

    new-instance v1, Ljava/math/BigInteger;

    iget-object v2, p0, Lorg/apache/harmony/xnet/provider/jsse/ServerKeyExchange;->bytes1:[B

    invoke-direct {v1, v3, v2}, Ljava/math/BigInteger;-><init>(I[B)V

    iput-object v1, p0, Lorg/apache/harmony/xnet/provider/jsse/ServerKeyExchange;->par1:Ljava/math/BigInteger;

    iget-object v1, p0, Lorg/apache/harmony/xnet/provider/jsse/ServerKeyExchange;->bytes1:[B

    array-length v1, v1

    add-int/lit8 v1, v1, 0x2

    iput v1, p0, Lorg/apache/harmony/xnet/provider/jsse/Message;->length:I

    invoke-virtual {p1}, Lorg/apache/harmony/xnet/provider/jsse/HandshakeIODataStream;->readUint16()I

    move-result v0

    invoke-virtual {p1, v0}, Lorg/apache/harmony/xnet/provider/jsse/HandshakeIODataStream;->read(I)[B

    move-result-object v1

    iput-object v1, p0, Lorg/apache/harmony/xnet/provider/jsse/ServerKeyExchange;->bytes2:[B

    new-instance v1, Ljava/math/BigInteger;

    iget-object v2, p0, Lorg/apache/harmony/xnet/provider/jsse/ServerKeyExchange;->bytes2:[B

    invoke-direct {v1, v3, v2}, Ljava/math/BigInteger;-><init>(I[B)V

    iput-object v1, p0, Lorg/apache/harmony/xnet/provider/jsse/ServerKeyExchange;->par2:Ljava/math/BigInteger;

    iget v1, p0, Lorg/apache/harmony/xnet/provider/jsse/Message;->length:I

    iget-object v2, p0, Lorg/apache/harmony/xnet/provider/jsse/ServerKeyExchange;->bytes2:[B

    array-length v2, v2

    add-int/lit8 v2, v2, 0x2

    add-int/2addr v1, v2

    iput v1, p0, Lorg/apache/harmony/xnet/provider/jsse/Message;->length:I

    const/4 v1, 0x2

    if-eq p3, v1, :cond_1

    invoke-virtual {p1}, Lorg/apache/harmony/xnet/provider/jsse/HandshakeIODataStream;->readUint16()I

    move-result v0

    invoke-virtual {p1, v0}, Lorg/apache/harmony/xnet/provider/jsse/HandshakeIODataStream;->read(I)[B

    move-result-object v1

    iput-object v1, p0, Lorg/apache/harmony/xnet/provider/jsse/ServerKeyExchange;->bytes3:[B

    new-instance v1, Ljava/math/BigInteger;

    iget-object v2, p0, Lorg/apache/harmony/xnet/provider/jsse/ServerKeyExchange;->bytes3:[B

    invoke-direct {v1, v3, v2}, Ljava/math/BigInteger;-><init>(I[B)V

    iput-object v1, p0, Lorg/apache/harmony/xnet/provider/jsse/ServerKeyExchange;->par3:Ljava/math/BigInteger;

    iget v1, p0, Lorg/apache/harmony/xnet/provider/jsse/Message;->length:I

    iget-object v2, p0, Lorg/apache/harmony/xnet/provider/jsse/ServerKeyExchange;->bytes3:[B

    array-length v2, v2

    add-int/lit8 v2, v2, 0x2

    add-int/2addr v1, v2

    iput v1, p0, Lorg/apache/harmony/xnet/provider/jsse/Message;->length:I

    :goto_0
    const/16 v1, 0xa

    if-eq p3, v1, :cond_2

    const/16 v1, 0x9

    if-eq p3, v1, :cond_2

    invoke-virtual {p1}, Lorg/apache/harmony/xnet/provider/jsse/HandshakeIODataStream;->readUint16()I

    move-result v0

    invoke-virtual {p1, v0}, Lorg/apache/harmony/xnet/provider/jsse/HandshakeIODataStream;->read(I)[B

    move-result-object v1

    iput-object v1, p0, Lorg/apache/harmony/xnet/provider/jsse/ServerKeyExchange;->hash:[B

    iget v1, p0, Lorg/apache/harmony/xnet/provider/jsse/Message;->length:I

    iget-object v2, p0, Lorg/apache/harmony/xnet/provider/jsse/ServerKeyExchange;->hash:[B

    array-length v2, v2

    add-int/lit8 v2, v2, 0x2

    add-int/2addr v1, v2

    iput v1, p0, Lorg/apache/harmony/xnet/provider/jsse/Message;->length:I

    :goto_1
    iget v1, p0, Lorg/apache/harmony/xnet/provider/jsse/Message;->length:I

    if-eq v1, p2, :cond_0

    const/16 v1, 0x32

    const-string v2, "DECODE ERROR: incorrect ServerKeyExchange"

    invoke-virtual {p0, v1, v2}, Lorg/apache/harmony/xnet/provider/jsse/ServerKeyExchange;->fatalAlert(BLjava/lang/String;)V

    :cond_0
    return-void

    :cond_1
    iput-object v4, p0, Lorg/apache/harmony/xnet/provider/jsse/ServerKeyExchange;->par3:Ljava/math/BigInteger;

    iput-object v4, p0, Lorg/apache/harmony/xnet/provider/jsse/ServerKeyExchange;->bytes3:[B

    goto :goto_0

    :cond_2
    iput-object v4, p0, Lorg/apache/harmony/xnet/provider/jsse/ServerKeyExchange;->hash:[B

    goto :goto_1
.end method

.method public static toUnsignedByteArray(Ljava/math/BigInteger;)[B
    .locals 5

    const/4 v4, 0x0

    if-nez p0, :cond_0

    const/4 v1, 0x0

    :goto_0
    return-object v1

    :cond_0
    invoke-virtual {p0}, Ljava/math/BigInteger;->toByteArray()[B

    move-result-object v0

    aget-byte v2, v0, v4

    if-nez v2, :cond_1

    array-length v2, v0

    add-int/lit8 v2, v2, -0x1

    new-array v1, v2, [B

    const/4 v2, 0x1

    array-length v3, v1

    invoke-static {v0, v2, v1, v4, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_0

    :cond_1
    move-object v1, v0

    goto :goto_0
.end method


# virtual methods
.method public getRSAPublicKey()Ljava/security/interfaces/RSAPublicKey;
    .locals 5

    iget-object v2, p0, Lorg/apache/harmony/xnet/provider/jsse/ServerKeyExchange;->key:Ljava/security/interfaces/RSAPublicKey;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lorg/apache/harmony/xnet/provider/jsse/ServerKeyExchange;->key:Ljava/security/interfaces/RSAPublicKey;

    :goto_0
    return-object v2

    :cond_0
    :try_start_0
    const-string v2, "RSA"

    invoke-static {v2}, Ljava/security/KeyFactory;->getInstance(Ljava/lang/String;)Ljava/security/KeyFactory;

    move-result-object v1

    new-instance v2, Ljava/security/spec/RSAPublicKeySpec;

    iget-object v3, p0, Lorg/apache/harmony/xnet/provider/jsse/ServerKeyExchange;->par1:Ljava/math/BigInteger;

    iget-object v4, p0, Lorg/apache/harmony/xnet/provider/jsse/ServerKeyExchange;->par2:Ljava/math/BigInteger;

    invoke-direct {v2, v3, v4}, Ljava/security/spec/RSAPublicKeySpec;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    invoke-virtual {v1, v2}, Ljava/security/KeyFactory;->generatePublic(Ljava/security/spec/KeySpec;)Ljava/security/PublicKey;

    move-result-object v2

    check-cast v2, Ljava/security/interfaces/RSAPublicKey;

    iput-object v2, p0, Lorg/apache/harmony/xnet/provider/jsse/ServerKeyExchange;->key:Ljava/security/interfaces/RSAPublicKey;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    iget-object v2, p0, Lorg/apache/harmony/xnet/provider/jsse/ServerKeyExchange;->key:Ljava/security/interfaces/RSAPublicKey;

    goto :goto_0

    :catch_0
    move-exception v0

    const/4 v2, 0x0

    goto :goto_0
.end method

.method public getType()I
    .locals 1

    const/16 v0, 0xc

    return v0
.end method

.method public send(Lorg/apache/harmony/xnet/provider/jsse/HandshakeIODataStream;)V
    .locals 2

    iget-object v0, p0, Lorg/apache/harmony/xnet/provider/jsse/ServerKeyExchange;->bytes1:[B

    array-length v0, v0

    int-to-long v0, v0

    invoke-virtual {p1, v0, v1}, Lorg/apache/harmony/xnet/provider/jsse/HandshakeIODataStream;->writeUint16(J)V

    iget-object v0, p0, Lorg/apache/harmony/xnet/provider/jsse/ServerKeyExchange;->bytes1:[B

    invoke-virtual {p1, v0}, Lorg/apache/harmony/xnet/provider/jsse/HandshakeIODataStream;->write([B)V

    iget-object v0, p0, Lorg/apache/harmony/xnet/provider/jsse/ServerKeyExchange;->bytes2:[B

    array-length v0, v0

    int-to-long v0, v0

    invoke-virtual {p1, v0, v1}, Lorg/apache/harmony/xnet/provider/jsse/HandshakeIODataStream;->writeUint16(J)V

    iget-object v0, p0, Lorg/apache/harmony/xnet/provider/jsse/ServerKeyExchange;->bytes2:[B

    invoke-virtual {p1, v0}, Lorg/apache/harmony/xnet/provider/jsse/HandshakeIODataStream;->write([B)V

    iget-object v0, p0, Lorg/apache/harmony/xnet/provider/jsse/ServerKeyExchange;->bytes3:[B

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/apache/harmony/xnet/provider/jsse/ServerKeyExchange;->bytes3:[B

    array-length v0, v0

    int-to-long v0, v0

    invoke-virtual {p1, v0, v1}, Lorg/apache/harmony/xnet/provider/jsse/HandshakeIODataStream;->writeUint16(J)V

    iget-object v0, p0, Lorg/apache/harmony/xnet/provider/jsse/ServerKeyExchange;->bytes3:[B

    invoke-virtual {p1, v0}, Lorg/apache/harmony/xnet/provider/jsse/HandshakeIODataStream;->write([B)V

    :cond_0
    iget-object v0, p0, Lorg/apache/harmony/xnet/provider/jsse/ServerKeyExchange;->hash:[B

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/apache/harmony/xnet/provider/jsse/ServerKeyExchange;->hash:[B

    array-length v0, v0

    int-to-long v0, v0

    invoke-virtual {p1, v0, v1}, Lorg/apache/harmony/xnet/provider/jsse/HandshakeIODataStream;->writeUint16(J)V

    iget-object v0, p0, Lorg/apache/harmony/xnet/provider/jsse/ServerKeyExchange;->hash:[B

    invoke-virtual {p1, v0}, Lorg/apache/harmony/xnet/provider/jsse/HandshakeIODataStream;->write([B)V

    :cond_1
    return-void
.end method
