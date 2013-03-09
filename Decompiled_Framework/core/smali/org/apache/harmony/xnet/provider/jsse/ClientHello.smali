.class public Lorg/apache/harmony/xnet/provider/jsse/ClientHello;
.super Lorg/apache/harmony/xnet/provider/jsse/Message;
.source "ClientHello.java"


# instance fields
.field final cipher_suites:[Lorg/apache/harmony/xnet/provider/jsse/CipherSuite;

.field final client_version:[B

.field final compression_methods:[B

.field final random:[B

.field final session_id:[B


# direct methods
.method public constructor <init>(Ljava/security/SecureRandom;[B[B[Lorg/apache/harmony/xnet/provider/jsse/CipherSuite;)V
    .locals 10

    const/4 v9, 0x1

    const/4 v8, 0x0

    const-wide/16 v6, 0xff

    invoke-direct {p0}, Lorg/apache/harmony/xnet/provider/jsse/Message;-><init>()V

    const/16 v2, 0x20

    new-array v2, v2, [B

    iput-object v2, p0, Lorg/apache/harmony/xnet/provider/jsse/ClientHello;->random:[B

    iput-object p2, p0, Lorg/apache/harmony/xnet/provider/jsse/ClientHello;->client_version:[B

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    const-wide/16 v4, 0x3e8

    div-long v0, v2, v4

    iget-object v2, p0, Lorg/apache/harmony/xnet/provider/jsse/ClientHello;->random:[B

    invoke-virtual {p1, v2}, Ljava/security/SecureRandom;->nextBytes([B)V

    iget-object v2, p0, Lorg/apache/harmony/xnet/provider/jsse/ClientHello;->random:[B

    and-long v3, v0, v6

    long-to-int v3, v3

    int-to-byte v3, v3

    aput-byte v3, v2, v8

    iget-object v2, p0, Lorg/apache/harmony/xnet/provider/jsse/ClientHello;->random:[B

    and-long v3, v0, v6

    long-to-int v3, v3

    int-to-byte v3, v3

    aput-byte v3, v2, v9

    iget-object v2, p0, Lorg/apache/harmony/xnet/provider/jsse/ClientHello;->random:[B

    const/4 v3, 0x2

    and-long v4, v0, v6

    long-to-int v4, v4

    int-to-byte v4, v4

    aput-byte v4, v2, v3

    iget-object v2, p0, Lorg/apache/harmony/xnet/provider/jsse/ClientHello;->random:[B

    const/4 v3, 0x3

    and-long v4, v0, v6

    long-to-int v4, v4

    int-to-byte v4, v4

    aput-byte v4, v2, v3

    iput-object p3, p0, Lorg/apache/harmony/xnet/provider/jsse/ClientHello;->session_id:[B

    iput-object p4, p0, Lorg/apache/harmony/xnet/provider/jsse/ClientHello;->cipher_suites:[Lorg/apache/harmony/xnet/provider/jsse/CipherSuite;

    new-array v2, v9, [B

    aput-byte v8, v2, v8

    iput-object v2, p0, Lorg/apache/harmony/xnet/provider/jsse/ClientHello;->compression_methods:[B

    iget-object v2, p0, Lorg/apache/harmony/xnet/provider/jsse/ClientHello;->session_id:[B

    array-length v2, v2

    add-int/lit8 v2, v2, 0x26

    iget-object v3, p0, Lorg/apache/harmony/xnet/provider/jsse/ClientHello;->cipher_suites:[Lorg/apache/harmony/xnet/provider/jsse/CipherSuite;

    array-length v3, v3

    shl-int/lit8 v3, v3, 0x1

    add-int/2addr v2, v3

    iget-object v3, p0, Lorg/apache/harmony/xnet/provider/jsse/ClientHello;->compression_methods:[B

    array-length v3, v3

    add-int/2addr v2, v3

    iput v2, p0, Lorg/apache/harmony/xnet/provider/jsse/Message;->length:I

    return-void
.end method

.method public constructor <init>(Lorg/apache/harmony/xnet/provider/jsse/HandshakeIODataStream;)V
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v8, 0x1

    const/16 v11, 0x32

    const/16 v10, 0x20

    const/4 v9, 0x0

    invoke-direct {p0}, Lorg/apache/harmony/xnet/provider/jsse/Message;-><init>()V

    new-array v6, v10, [B

    iput-object v6, p0, Lorg/apache/harmony/xnet/provider/jsse/ClientHello;->random:[B

    invoke-virtual {p1}, Lorg/apache/harmony/xnet/provider/jsse/HandshakeIODataStream;->readUint8()I

    move-result v6

    if-eq v6, v8, :cond_0

    const-string v6, "DECODE ERROR: incorrect V2ClientHello"

    invoke-virtual {p0, v11, v6}, Lorg/apache/harmony/xnet/provider/jsse/ClientHello;->fatalAlert(BLjava/lang/String;)V

    :cond_0
    const/4 v6, 0x2

    new-array v6, v6, [B

    iput-object v6, p0, Lorg/apache/harmony/xnet/provider/jsse/ClientHello;->client_version:[B

    iget-object v6, p0, Lorg/apache/harmony/xnet/provider/jsse/ClientHello;->client_version:[B

    invoke-virtual {p1}, Lorg/apache/harmony/xnet/provider/jsse/HandshakeIODataStream;->readUint8()I

    move-result v7

    int-to-byte v7, v7

    aput-byte v7, v6, v9

    iget-object v6, p0, Lorg/apache/harmony/xnet/provider/jsse/ClientHello;->client_version:[B

    invoke-virtual {p1}, Lorg/apache/harmony/xnet/provider/jsse/HandshakeIODataStream;->readUint8()I

    move-result v7

    int-to-byte v7, v7

    aput-byte v7, v6, v8

    invoke-virtual {p1}, Lorg/apache/harmony/xnet/provider/jsse/HandshakeIODataStream;->readUint16()I

    move-result v4

    invoke-virtual {p1}, Lorg/apache/harmony/xnet/provider/jsse/HandshakeIODataStream;->readUint16()I

    move-result v6

    if-eqz v6, :cond_1

    const-string v6, "DECODE ERROR: incorrect V2ClientHello, cannot be used for resuming"

    invoke-virtual {p0, v11, v6}, Lorg/apache/harmony/xnet/provider/jsse/ClientHello;->fatalAlert(BLjava/lang/String;)V

    :cond_1
    invoke-virtual {p1}, Lorg/apache/harmony/xnet/provider/jsse/HandshakeIODataStream;->readUint16()I

    move-result v3

    const/16 v6, 0x10

    if-ge v3, v6, :cond_2

    const-string v6, "DECODE ERROR: incorrect V2ClientHello, short challenge data"

    invoke-virtual {p0, v11, v6}, Lorg/apache/harmony/xnet/provider/jsse/ClientHello;->fatalAlert(BLjava/lang/String;)V

    :cond_2
    sget-object v6, Llibcore/util/EmptyArray;->BYTE:[B

    iput-object v6, p0, Lorg/apache/harmony/xnet/provider/jsse/ClientHello;->session_id:[B

    div-int/lit8 v6, v4, 0x3

    new-array v6, v6, [Lorg/apache/harmony/xnet/provider/jsse/CipherSuite;

    iput-object v6, p0, Lorg/apache/harmony/xnet/provider/jsse/ClientHello;->cipher_suites:[Lorg/apache/harmony/xnet/provider/jsse/CipherSuite;

    const/4 v5, 0x0

    :goto_0
    iget-object v6, p0, Lorg/apache/harmony/xnet/provider/jsse/ClientHello;->cipher_suites:[Lorg/apache/harmony/xnet/provider/jsse/CipherSuite;

    array-length v6, v6

    if-ge v5, v6, :cond_3

    invoke-virtual {p1}, Lorg/apache/harmony/xnet/provider/jsse/HandshakeIODataStream;->read()I

    move-result v6

    int-to-byte v0, v6

    invoke-virtual {p1}, Lorg/apache/harmony/xnet/provider/jsse/HandshakeIODataStream;->read()I

    move-result v6

    int-to-byte v1, v6

    invoke-virtual {p1}, Lorg/apache/harmony/xnet/provider/jsse/HandshakeIODataStream;->read()I

    move-result v6

    int-to-byte v2, v6

    iget-object v6, p0, Lorg/apache/harmony/xnet/provider/jsse/ClientHello;->cipher_suites:[Lorg/apache/harmony/xnet/provider/jsse/CipherSuite;

    invoke-static {v0, v1, v2}, Lorg/apache/harmony/xnet/provider/jsse/CipherSuite;->getByCode(BBB)Lorg/apache/harmony/xnet/provider/jsse/CipherSuite;

    move-result-object v7

    aput-object v7, v6, v5

    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_3
    new-array v6, v8, [B

    aput-byte v9, v6, v9

    iput-object v6, p0, Lorg/apache/harmony/xnet/provider/jsse/ClientHello;->compression_methods:[B

    if-ge v3, v10, :cond_5

    iget-object v6, p0, Lorg/apache/harmony/xnet/provider/jsse/ClientHello;->random:[B

    rsub-int/lit8 v7, v3, 0x20

    invoke-static {v6, v9, v7, v9}, Ljava/util/Arrays;->fill([BIIB)V

    invoke-virtual {p1, v3}, Lorg/apache/harmony/xnet/provider/jsse/HandshakeIODataStream;->read(I)[B

    move-result-object v6

    iget-object v7, p0, Lorg/apache/harmony/xnet/provider/jsse/ClientHello;->random:[B

    rsub-int/lit8 v8, v3, 0x20

    invoke-static {v6, v9, v7, v8, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :goto_1
    invoke-virtual {p1}, Lorg/apache/harmony/xnet/provider/jsse/HandshakeIODataStream;->available()I

    move-result v6

    if-lez v6, :cond_4

    const-string v6, "DECODE ERROR: incorrect V2ClientHello, extra data"

    invoke-virtual {p0, v11, v6}, Lorg/apache/harmony/xnet/provider/jsse/ClientHello;->fatalAlert(BLjava/lang/String;)V

    :cond_4
    iget-object v6, p0, Lorg/apache/harmony/xnet/provider/jsse/ClientHello;->session_id:[B

    array-length v6, v6

    add-int/lit8 v6, v6, 0x26

    iget-object v7, p0, Lorg/apache/harmony/xnet/provider/jsse/ClientHello;->cipher_suites:[Lorg/apache/harmony/xnet/provider/jsse/CipherSuite;

    array-length v7, v7

    shl-int/lit8 v7, v7, 0x1

    add-int/2addr v6, v7

    iget-object v7, p0, Lorg/apache/harmony/xnet/provider/jsse/ClientHello;->compression_methods:[B

    array-length v7, v7

    add-int/2addr v6, v7

    iput v6, p0, Lorg/apache/harmony/xnet/provider/jsse/Message;->length:I

    return-void

    :cond_5
    if-ne v3, v10, :cond_6

    invoke-virtual {p1, v10}, Lorg/apache/harmony/xnet/provider/jsse/HandshakeIODataStream;->read(I)[B

    move-result-object v6

    iget-object v7, p0, Lorg/apache/harmony/xnet/provider/jsse/ClientHello;->random:[B

    invoke-static {v6, v9, v7, v9, v10}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_1

    :cond_6
    invoke-virtual {p1, v3}, Lorg/apache/harmony/xnet/provider/jsse/HandshakeIODataStream;->read(I)[B

    move-result-object v6

    add-int/lit8 v7, v3, -0x20

    iget-object v8, p0, Lorg/apache/harmony/xnet/provider/jsse/ClientHello;->random:[B

    invoke-static {v6, v7, v8, v9, v10}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_1
.end method

.method public constructor <init>(Lorg/apache/harmony/xnet/provider/jsse/HandshakeIODataStream;I)V
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/16 v9, 0x32

    const/4 v8, 0x1

    const/4 v7, 0x0

    invoke-direct {p0}, Lorg/apache/harmony/xnet/provider/jsse/Message;-><init>()V

    const/16 v5, 0x20

    new-array v5, v5, [B

    iput-object v5, p0, Lorg/apache/harmony/xnet/provider/jsse/ClientHello;->random:[B

    const/4 v5, 0x2

    new-array v5, v5, [B

    iput-object v5, p0, Lorg/apache/harmony/xnet/provider/jsse/ClientHello;->client_version:[B

    iget-object v5, p0, Lorg/apache/harmony/xnet/provider/jsse/ClientHello;->client_version:[B

    invoke-virtual {p1}, Lorg/apache/harmony/xnet/provider/jsse/HandshakeIODataStream;->readUint8()I

    move-result v6

    int-to-byte v6, v6

    aput-byte v6, v5, v7

    iget-object v5, p0, Lorg/apache/harmony/xnet/provider/jsse/ClientHello;->client_version:[B

    invoke-virtual {p1}, Lorg/apache/harmony/xnet/provider/jsse/HandshakeIODataStream;->readUint8()I

    move-result v6

    int-to-byte v6, v6

    aput-byte v6, v5, v8

    iget-object v5, p0, Lorg/apache/harmony/xnet/provider/jsse/ClientHello;->random:[B

    invoke-static {p1, v5}, Llibcore/io/Streams;->readFully(Ljava/io/InputStream;[B)V

    invoke-virtual {p1}, Lorg/apache/harmony/xnet/provider/jsse/HandshakeIODataStream;->read()I

    move-result v4

    new-array v5, v4, [B

    iput-object v5, p0, Lorg/apache/harmony/xnet/provider/jsse/ClientHello;->session_id:[B

    iget-object v5, p0, Lorg/apache/harmony/xnet/provider/jsse/ClientHello;->session_id:[B

    invoke-virtual {p1, v5, v7, v4}, Lorg/apache/harmony/xnet/provider/jsse/HandshakeIODataStream;->read([BII)I

    invoke-virtual {p1}, Lorg/apache/harmony/xnet/provider/jsse/HandshakeIODataStream;->readUint16()I

    move-result v3

    and-int/lit8 v5, v3, 0x1

    if-ne v5, v8, :cond_0

    const-string v5, "DECODE ERROR: incorrect ClientHello"

    invoke-virtual {p0, v9, v5}, Lorg/apache/harmony/xnet/provider/jsse/ClientHello;->fatalAlert(BLjava/lang/String;)V

    :cond_0
    shr-int/lit8 v4, v3, 0x1

    new-array v5, v4, [Lorg/apache/harmony/xnet/provider/jsse/CipherSuite;

    iput-object v5, p0, Lorg/apache/harmony/xnet/provider/jsse/ClientHello;->cipher_suites:[Lorg/apache/harmony/xnet/provider/jsse/CipherSuite;

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v4, :cond_1

    invoke-virtual {p1}, Lorg/apache/harmony/xnet/provider/jsse/HandshakeIODataStream;->read()I

    move-result v5

    int-to-byte v0, v5

    invoke-virtual {p1}, Lorg/apache/harmony/xnet/provider/jsse/HandshakeIODataStream;->read()I

    move-result v5

    int-to-byte v1, v5

    iget-object v5, p0, Lorg/apache/harmony/xnet/provider/jsse/ClientHello;->cipher_suites:[Lorg/apache/harmony/xnet/provider/jsse/CipherSuite;

    invoke-static {v0, v1}, Lorg/apache/harmony/xnet/provider/jsse/CipherSuite;->getByCode(BB)Lorg/apache/harmony/xnet/provider/jsse/CipherSuite;

    move-result-object v6

    aput-object v6, v5, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    invoke-virtual {p1}, Lorg/apache/harmony/xnet/provider/jsse/HandshakeIODataStream;->read()I

    move-result v4

    new-array v5, v4, [B

    iput-object v5, p0, Lorg/apache/harmony/xnet/provider/jsse/ClientHello;->compression_methods:[B

    iget-object v5, p0, Lorg/apache/harmony/xnet/provider/jsse/ClientHello;->compression_methods:[B

    invoke-virtual {p1, v5, v7, v4}, Lorg/apache/harmony/xnet/provider/jsse/HandshakeIODataStream;->read([BII)I

    iget-object v5, p0, Lorg/apache/harmony/xnet/provider/jsse/ClientHello;->session_id:[B

    array-length v5, v5

    add-int/lit8 v5, v5, 0x26

    iget-object v6, p0, Lorg/apache/harmony/xnet/provider/jsse/ClientHello;->cipher_suites:[Lorg/apache/harmony/xnet/provider/jsse/CipherSuite;

    array-length v6, v6

    shl-int/lit8 v6, v6, 0x1

    add-int/2addr v5, v6

    iget-object v6, p0, Lorg/apache/harmony/xnet/provider/jsse/ClientHello;->compression_methods:[B

    array-length v6, v6

    add-int/2addr v5, v6

    iput v5, p0, Lorg/apache/harmony/xnet/provider/jsse/Message;->length:I

    iget v5, p0, Lorg/apache/harmony/xnet/provider/jsse/Message;->length:I

    if-le v5, p2, :cond_2

    const-string v5, "DECODE ERROR: incorrect ClientHello"

    invoke-virtual {p0, v9, v5}, Lorg/apache/harmony/xnet/provider/jsse/ClientHello;->fatalAlert(BLjava/lang/String;)V

    :cond_2
    iget v5, p0, Lorg/apache/harmony/xnet/provider/jsse/Message;->length:I

    if-ge v5, p2, :cond_3

    iget v5, p0, Lorg/apache/harmony/xnet/provider/jsse/Message;->length:I

    sub-int v5, p2, v5

    int-to-long v5, v5

    invoke-virtual {p1, v5, v6}, Lorg/apache/harmony/xnet/provider/jsse/HandshakeIODataStream;->skip(J)J

    iput p2, p0, Lorg/apache/harmony/xnet/provider/jsse/Message;->length:I

    :cond_3
    return-void
.end method


# virtual methods
.method public getRandom()[B
    .locals 1

    iget-object v0, p0, Lorg/apache/harmony/xnet/provider/jsse/ClientHello;->random:[B

    return-object v0
.end method

.method public getType()I
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public send(Lorg/apache/harmony/xnet/provider/jsse/HandshakeIODataStream;)V
    .locals 4

    iget-object v2, p0, Lorg/apache/harmony/xnet/provider/jsse/ClientHello;->client_version:[B

    invoke-virtual {p1, v2}, Lorg/apache/harmony/xnet/provider/jsse/HandshakeIODataStream;->write([B)V

    iget-object v2, p0, Lorg/apache/harmony/xnet/provider/jsse/ClientHello;->random:[B

    invoke-virtual {p1, v2}, Lorg/apache/harmony/xnet/provider/jsse/HandshakeIODataStream;->write([B)V

    iget-object v2, p0, Lorg/apache/harmony/xnet/provider/jsse/ClientHello;->session_id:[B

    array-length v2, v2

    int-to-long v2, v2

    invoke-virtual {p1, v2, v3}, Lorg/apache/harmony/xnet/provider/jsse/HandshakeIODataStream;->writeUint8(J)V

    iget-object v2, p0, Lorg/apache/harmony/xnet/provider/jsse/ClientHello;->session_id:[B

    invoke-virtual {p1, v2}, Lorg/apache/harmony/xnet/provider/jsse/HandshakeIODataStream;->write([B)V

    iget-object v2, p0, Lorg/apache/harmony/xnet/provider/jsse/ClientHello;->cipher_suites:[Lorg/apache/harmony/xnet/provider/jsse/CipherSuite;

    array-length v2, v2

    shl-int/lit8 v1, v2, 0x1

    int-to-long v2, v1

    invoke-virtual {p1, v2, v3}, Lorg/apache/harmony/xnet/provider/jsse/HandshakeIODataStream;->writeUint16(J)V

    const/4 v0, 0x0

    :goto_0
    iget-object v2, p0, Lorg/apache/harmony/xnet/provider/jsse/ClientHello;->cipher_suites:[Lorg/apache/harmony/xnet/provider/jsse/CipherSuite;

    array-length v2, v2

    if-ge v0, v2, :cond_0

    iget-object v2, p0, Lorg/apache/harmony/xnet/provider/jsse/ClientHello;->cipher_suites:[Lorg/apache/harmony/xnet/provider/jsse/CipherSuite;

    aget-object v2, v2, v0

    invoke-virtual {v2}, Lorg/apache/harmony/xnet/provider/jsse/CipherSuite;->toBytes()[B

    move-result-object v2

    invoke-virtual {p1, v2}, Lorg/apache/harmony/xnet/provider/jsse/HandshakeIODataStream;->write([B)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    iget-object v2, p0, Lorg/apache/harmony/xnet/provider/jsse/ClientHello;->compression_methods:[B

    array-length v2, v2

    int-to-long v2, v2

    invoke-virtual {p1, v2, v3}, Lorg/apache/harmony/xnet/provider/jsse/HandshakeIODataStream;->writeUint8(J)V

    const/4 v0, 0x0

    :goto_1
    iget-object v2, p0, Lorg/apache/harmony/xnet/provider/jsse/ClientHello;->compression_methods:[B

    array-length v2, v2

    if-ge v0, v2, :cond_1

    iget-object v2, p0, Lorg/apache/harmony/xnet/provider/jsse/ClientHello;->compression_methods:[B

    aget-byte v2, v2, v0

    invoke-virtual {p1, v2}, Lorg/apache/harmony/xnet/provider/jsse/HandshakeIODataStream;->write(B)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1
    return-void
.end method
