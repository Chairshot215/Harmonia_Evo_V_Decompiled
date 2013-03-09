.class public Lorg/apache/harmony/xnet/provider/jsse/ClientKeyExchange;
.super Lorg/apache/harmony/xnet/provider/jsse/Message;
.source "ClientKeyExchange.java"


# instance fields
.field final exchange_keys:[B

.field final isRSA:Z

.field isTLS:Z


# direct methods
.method public constructor <init>()V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Lorg/apache/harmony/xnet/provider/jsse/Message;-><init>()V

    sget-object v0, Llibcore/util/EmptyArray;->BYTE:[B

    iput-object v0, p0, Lorg/apache/harmony/xnet/provider/jsse/ClientKeyExchange;->exchange_keys:[B

    iput v1, p0, Lorg/apache/harmony/xnet/provider/jsse/Message;->length:I

    iput-boolean v1, p0, Lorg/apache/harmony/xnet/provider/jsse/ClientKeyExchange;->isRSA:Z

    return-void
.end method

.method public constructor <init>(Ljava/math/BigInteger;)V
    .locals 5

    const/4 v4, 0x0

    invoke-direct {p0}, Lorg/apache/harmony/xnet/provider/jsse/Message;-><init>()V

    invoke-virtual {p1}, Ljava/math/BigInteger;->toByteArray()[B

    move-result-object v0

    aget-byte v1, v0, v4

    if-nez v1, :cond_0

    array-length v1, v0

    add-int/lit8 v1, v1, -0x1

    new-array v1, v1, [B

    iput-object v1, p0, Lorg/apache/harmony/xnet/provider/jsse/ClientKeyExchange;->exchange_keys:[B

    const/4 v1, 0x1

    iget-object v2, p0, Lorg/apache/harmony/xnet/provider/jsse/ClientKeyExchange;->exchange_keys:[B

    iget-object v3, p0, Lorg/apache/harmony/xnet/provider/jsse/ClientKeyExchange;->exchange_keys:[B

    array-length v3, v3

    invoke-static {v0, v1, v2, v4, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :goto_0
    iget-object v1, p0, Lorg/apache/harmony/xnet/provider/jsse/ClientKeyExchange;->exchange_keys:[B

    array-length v1, v1

    add-int/lit8 v1, v1, 0x2

    iput v1, p0, Lorg/apache/harmony/xnet/provider/jsse/Message;->length:I

    iput-boolean v4, p0, Lorg/apache/harmony/xnet/provider/jsse/ClientKeyExchange;->isRSA:Z

    return-void

    :cond_0
    iput-object v0, p0, Lorg/apache/harmony/xnet/provider/jsse/ClientKeyExchange;->exchange_keys:[B

    goto :goto_0
.end method

.method public constructor <init>(Lorg/apache/harmony/xnet/provider/jsse/HandshakeIODataStream;IZZ)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-direct {p0}, Lorg/apache/harmony/xnet/provider/jsse/Message;-><init>()V

    iput-boolean p3, p0, Lorg/apache/harmony/xnet/provider/jsse/ClientKeyExchange;->isTLS:Z

    iput-boolean p4, p0, Lorg/apache/harmony/xnet/provider/jsse/ClientKeyExchange;->isRSA:Z

    if-nez p2, :cond_1

    const/4 v1, 0x0

    iput v1, p0, Lorg/apache/harmony/xnet/provider/jsse/Message;->length:I

    sget-object v1, Llibcore/util/EmptyArray;->BYTE:[B

    iput-object v1, p0, Lorg/apache/harmony/xnet/provider/jsse/ClientKeyExchange;->exchange_keys:[B

    :cond_0
    :goto_0
    return-void

    :cond_1
    if-eqz p4, :cond_2

    if-nez p3, :cond_2

    move v0, p2

    iput v0, p0, Lorg/apache/harmony/xnet/provider/jsse/Message;->length:I

    :goto_1
    new-array v1, v0, [B

    iput-object v1, p0, Lorg/apache/harmony/xnet/provider/jsse/ClientKeyExchange;->exchange_keys:[B

    iget-object v1, p0, Lorg/apache/harmony/xnet/provider/jsse/ClientKeyExchange;->exchange_keys:[B

    invoke-static {p1, v1}, Llibcore/io/Streams;->readFully(Ljava/io/InputStream;[B)V

    iget v1, p0, Lorg/apache/harmony/xnet/provider/jsse/Message;->length:I

    if-eq v1, p2, :cond_0

    const/16 v1, 0x32

    const-string v2, "DECODE ERROR: incorrect ClientKeyExchange"

    invoke-virtual {p0, v1, v2}, Lorg/apache/harmony/xnet/provider/jsse/ClientKeyExchange;->fatalAlert(BLjava/lang/String;)V

    goto :goto_0

    :cond_2
    invoke-virtual {p1}, Lorg/apache/harmony/xnet/provider/jsse/HandshakeIODataStream;->readUint16()I

    move-result v0

    add-int/lit8 v1, v0, 0x2

    iput v1, p0, Lorg/apache/harmony/xnet/provider/jsse/Message;->length:I

    goto :goto_1
.end method

.method public constructor <init>([BZ)V
    .locals 1

    invoke-direct {p0}, Lorg/apache/harmony/xnet/provider/jsse/Message;-><init>()V

    iput-object p1, p0, Lorg/apache/harmony/xnet/provider/jsse/ClientKeyExchange;->exchange_keys:[B

    iget-object v0, p0, Lorg/apache/harmony/xnet/provider/jsse/ClientKeyExchange;->exchange_keys:[B

    array-length v0, v0

    iput v0, p0, Lorg/apache/harmony/xnet/provider/jsse/Message;->length:I

    if-eqz p2, :cond_0

    iget v0, p0, Lorg/apache/harmony/xnet/provider/jsse/Message;->length:I

    add-int/lit8 v0, v0, 0x2

    iput v0, p0, Lorg/apache/harmony/xnet/provider/jsse/Message;->length:I

    :cond_0
    iput-boolean p2, p0, Lorg/apache/harmony/xnet/provider/jsse/ClientKeyExchange;->isTLS:Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/apache/harmony/xnet/provider/jsse/ClientKeyExchange;->isRSA:Z

    return-void
.end method


# virtual methods
.method public getType()I
    .locals 1

    const/16 v0, 0x10

    return v0
.end method

.method public isEmpty()Z
    .locals 1

    iget-object v0, p0, Lorg/apache/harmony/xnet/provider/jsse/ClientKeyExchange;->exchange_keys:[B

    array-length v0, v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public send(Lorg/apache/harmony/xnet/provider/jsse/HandshakeIODataStream;)V
    .locals 2

    iget-object v0, p0, Lorg/apache/harmony/xnet/provider/jsse/ClientKeyExchange;->exchange_keys:[B

    array-length v0, v0

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lorg/apache/harmony/xnet/provider/jsse/ClientKeyExchange;->isRSA:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lorg/apache/harmony/xnet/provider/jsse/ClientKeyExchange;->isTLS:Z

    if-eqz v0, :cond_1

    :cond_0
    iget-object v0, p0, Lorg/apache/harmony/xnet/provider/jsse/ClientKeyExchange;->exchange_keys:[B

    array-length v0, v0

    int-to-long v0, v0

    invoke-virtual {p1, v0, v1}, Lorg/apache/harmony/xnet/provider/jsse/HandshakeIODataStream;->writeUint16(J)V

    :cond_1
    iget-object v0, p0, Lorg/apache/harmony/xnet/provider/jsse/ClientKeyExchange;->exchange_keys:[B

    invoke-virtual {p1, v0}, Lorg/apache/harmony/xnet/provider/jsse/HandshakeIODataStream;->write([B)V

    :cond_2
    return-void
.end method
