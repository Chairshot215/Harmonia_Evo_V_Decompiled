.class public Lorg/apache/harmony/xnet/provider/jsse/ServerHello;
.super Lorg/apache/harmony/xnet/provider/jsse/Message;
.source "ServerHello.java"


# instance fields
.field cipher_suite:Lorg/apache/harmony/xnet/provider/jsse/CipherSuite;

.field compression_method:B

.field random:[B

.field server_version:[B

.field session_id:[B


# direct methods
.method public constructor <init>(Ljava/security/SecureRandom;[B[BLorg/apache/harmony/xnet/provider/jsse/CipherSuite;B)V
    .locals 8

    const/4 v7, 0x2

    invoke-direct {p0}, Lorg/apache/harmony/xnet/provider/jsse/Message;-><init>()V

    new-array v2, v7, [B

    iput-object v2, p0, Lorg/apache/harmony/xnet/provider/jsse/ServerHello;->server_version:[B

    const/16 v2, 0x20

    new-array v2, v2, [B

    iput-object v2, p0, Lorg/apache/harmony/xnet/provider/jsse/ServerHello;->random:[B

    new-instance v2, Ljava/util/Date;

    invoke-direct {v2}, Ljava/util/Date;-><init>()V

    invoke-virtual {v2}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    const-wide/16 v4, 0x3e8

    div-long v0, v2, v4

    iget-object v2, p0, Lorg/apache/harmony/xnet/provider/jsse/ServerHello;->random:[B

    invoke-virtual {p1, v2}, Ljava/security/SecureRandom;->nextBytes([B)V

    iget-object v2, p0, Lorg/apache/harmony/xnet/provider/jsse/ServerHello;->random:[B

    const/4 v3, 0x0

    const-wide/32 v4, -0x1000000

    and-long/2addr v4, v0

    const/16 v6, 0x18

    ushr-long/2addr v4, v6

    long-to-int v4, v4

    int-to-byte v4, v4

    aput-byte v4, v2, v3

    iget-object v2, p0, Lorg/apache/harmony/xnet/provider/jsse/ServerHello;->random:[B

    const/4 v3, 0x1

    const-wide/32 v4, 0xff0000

    and-long/2addr v4, v0

    const/16 v6, 0x10

    ushr-long/2addr v4, v6

    long-to-int v4, v4

    int-to-byte v4, v4

    aput-byte v4, v2, v3

    iget-object v2, p0, Lorg/apache/harmony/xnet/provider/jsse/ServerHello;->random:[B

    const-wide/32 v3, 0xff00

    and-long/2addr v3, v0

    const/16 v5, 0x8

    ushr-long/2addr v3, v5

    long-to-int v3, v3

    int-to-byte v3, v3

    aput-byte v3, v2, v7

    iget-object v2, p0, Lorg/apache/harmony/xnet/provider/jsse/ServerHello;->random:[B

    const/4 v3, 0x3

    const-wide/16 v4, 0xff

    and-long/2addr v4, v0

    long-to-int v4, v4

    int-to-byte v4, v4

    aput-byte v4, v2, v3

    iput-object p3, p0, Lorg/apache/harmony/xnet/provider/jsse/ServerHello;->session_id:[B

    iput-object p4, p0, Lorg/apache/harmony/xnet/provider/jsse/ServerHello;->cipher_suite:Lorg/apache/harmony/xnet/provider/jsse/CipherSuite;

    iput-byte p5, p0, Lorg/apache/harmony/xnet/provider/jsse/ServerHello;->compression_method:B

    iput-object p2, p0, Lorg/apache/harmony/xnet/provider/jsse/ServerHello;->server_version:[B

    array-length v2, p3

    add-int/lit8 v2, v2, 0x26

    iput v2, p0, Lorg/apache/harmony/xnet/provider/jsse/Message;->length:I

    return-void
.end method

.method public constructor <init>(Lorg/apache/harmony/xnet/provider/jsse/HandshakeIODataStream;I)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v6, 0x0

    invoke-direct {p0}, Lorg/apache/harmony/xnet/provider/jsse/Message;-><init>()V

    const/4 v3, 0x2

    new-array v3, v3, [B

    iput-object v3, p0, Lorg/apache/harmony/xnet/provider/jsse/ServerHello;->server_version:[B

    const/16 v3, 0x20

    new-array v3, v3, [B

    iput-object v3, p0, Lorg/apache/harmony/xnet/provider/jsse/ServerHello;->random:[B

    iget-object v3, p0, Lorg/apache/harmony/xnet/provider/jsse/ServerHello;->server_version:[B

    invoke-virtual {p1}, Lorg/apache/harmony/xnet/provider/jsse/HandshakeIODataStream;->read()I

    move-result v4

    int-to-byte v4, v4

    aput-byte v4, v3, v6

    iget-object v3, p0, Lorg/apache/harmony/xnet/provider/jsse/ServerHello;->server_version:[B

    const/4 v4, 0x1

    invoke-virtual {p1}, Lorg/apache/harmony/xnet/provider/jsse/HandshakeIODataStream;->read()I

    move-result v5

    int-to-byte v5, v5

    aput-byte v5, v3, v4

    iget-object v3, p0, Lorg/apache/harmony/xnet/provider/jsse/ServerHello;->random:[B

    invoke-static {p1, v3}, Llibcore/io/Streams;->readFully(Ljava/io/InputStream;[B)V

    invoke-virtual {p1}, Lorg/apache/harmony/xnet/provider/jsse/HandshakeIODataStream;->readUint8()I

    move-result v2

    new-array v3, v2, [B

    iput-object v3, p0, Lorg/apache/harmony/xnet/provider/jsse/ServerHello;->session_id:[B

    iget-object v3, p0, Lorg/apache/harmony/xnet/provider/jsse/ServerHello;->session_id:[B

    invoke-virtual {p1, v3, v6, v2}, Lorg/apache/harmony/xnet/provider/jsse/HandshakeIODataStream;->read([BII)I

    invoke-virtual {p1}, Lorg/apache/harmony/xnet/provider/jsse/HandshakeIODataStream;->read()I

    move-result v3

    int-to-byte v0, v3

    invoke-virtual {p1}, Lorg/apache/harmony/xnet/provider/jsse/HandshakeIODataStream;->read()I

    move-result v3

    int-to-byte v1, v3

    invoke-static {v0, v1}, Lorg/apache/harmony/xnet/provider/jsse/CipherSuite;->getByCode(BB)Lorg/apache/harmony/xnet/provider/jsse/CipherSuite;

    move-result-object v3

    iput-object v3, p0, Lorg/apache/harmony/xnet/provider/jsse/ServerHello;->cipher_suite:Lorg/apache/harmony/xnet/provider/jsse/CipherSuite;

    invoke-virtual {p1}, Lorg/apache/harmony/xnet/provider/jsse/HandshakeIODataStream;->read()I

    move-result v3

    int-to-byte v3, v3

    iput-byte v3, p0, Lorg/apache/harmony/xnet/provider/jsse/ServerHello;->compression_method:B

    iget-object v3, p0, Lorg/apache/harmony/xnet/provider/jsse/ServerHello;->session_id:[B

    array-length v3, v3

    add-int/lit8 v3, v3, 0x26

    iput v3, p0, Lorg/apache/harmony/xnet/provider/jsse/Message;->length:I

    iget v3, p0, Lorg/apache/harmony/xnet/provider/jsse/Message;->length:I

    if-eq v3, p2, :cond_0

    const/16 v3, 0x32

    const-string v4, "DECODE ERROR: incorrect ServerHello"

    invoke-virtual {p0, v3, v4}, Lorg/apache/harmony/xnet/provider/jsse/ServerHello;->fatalAlert(BLjava/lang/String;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public getRandom()[B
    .locals 1

    iget-object v0, p0, Lorg/apache/harmony/xnet/provider/jsse/ServerHello;->random:[B

    return-object v0
.end method

.method public getType()I
    .locals 1

    const/4 v0, 0x2

    return v0
.end method

.method public send(Lorg/apache/harmony/xnet/provider/jsse/HandshakeIODataStream;)V
    .locals 2

    iget-object v0, p0, Lorg/apache/harmony/xnet/provider/jsse/ServerHello;->server_version:[B

    invoke-virtual {p1, v0}, Lorg/apache/harmony/xnet/provider/jsse/HandshakeIODataStream;->write([B)V

    iget-object v0, p0, Lorg/apache/harmony/xnet/provider/jsse/ServerHello;->random:[B

    invoke-virtual {p1, v0}, Lorg/apache/harmony/xnet/provider/jsse/HandshakeIODataStream;->write([B)V

    iget-object v0, p0, Lorg/apache/harmony/xnet/provider/jsse/ServerHello;->session_id:[B

    array-length v0, v0

    int-to-long v0, v0

    invoke-virtual {p1, v0, v1}, Lorg/apache/harmony/xnet/provider/jsse/HandshakeIODataStream;->writeUint8(J)V

    iget-object v0, p0, Lorg/apache/harmony/xnet/provider/jsse/ServerHello;->session_id:[B

    invoke-virtual {p1, v0}, Lorg/apache/harmony/xnet/provider/jsse/HandshakeIODataStream;->write([B)V

    iget-object v0, p0, Lorg/apache/harmony/xnet/provider/jsse/ServerHello;->cipher_suite:Lorg/apache/harmony/xnet/provider/jsse/CipherSuite;

    invoke-virtual {v0}, Lorg/apache/harmony/xnet/provider/jsse/CipherSuite;->toBytes()[B

    move-result-object v0

    invoke-virtual {p1, v0}, Lorg/apache/harmony/xnet/provider/jsse/HandshakeIODataStream;->write([B)V

    iget-byte v0, p0, Lorg/apache/harmony/xnet/provider/jsse/ServerHello;->compression_method:B

    invoke-virtual {p1, v0}, Lorg/apache/harmony/xnet/provider/jsse/HandshakeIODataStream;->write(B)V

    iget-object v0, p0, Lorg/apache/harmony/xnet/provider/jsse/ServerHello;->session_id:[B

    array-length v0, v0

    add-int/lit8 v0, v0, 0x26

    iput v0, p0, Lorg/apache/harmony/xnet/provider/jsse/Message;->length:I

    return-void
.end method
