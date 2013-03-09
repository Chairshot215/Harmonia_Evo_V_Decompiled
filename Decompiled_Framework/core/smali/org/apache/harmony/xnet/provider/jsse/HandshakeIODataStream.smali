.class public Lorg/apache/harmony/xnet/provider/jsse/HandshakeIODataStream;
.super Lorg/apache/harmony/xnet/provider/jsse/SSLInputStream;
.source "HandshakeIODataStream.java"

# interfaces
.implements Lorg/apache/harmony/xnet/provider/jsse/Appendable;
.implements Lorg/apache/harmony/xnet/provider/jsse/DataStream;


# static fields
.field private static final md5:Ljava/security/MessageDigest;

.field private static final sha:Ljava/security/MessageDigest;


# instance fields
.field private buff_size:I

.field private buffer:[B

.field private inc_buff_size:I

.field private marked_pos:I

.field private read_pos:I

.field private read_pos_end:I

.field private write_pos:I

.field private write_pos_beg:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    :try_start_0
    const-string v1, "MD5"

    invoke-static {v1}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v1

    sput-object v1, Lorg/apache/harmony/xnet/provider/jsse/HandshakeIODataStream;->md5:Ljava/security/MessageDigest;

    const-string v1, "SHA-1"

    invoke-static {v1}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v1

    sput-object v1, Lorg/apache/harmony/xnet/provider/jsse/HandshakeIODataStream;->sha:Ljava/security/MessageDigest;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Could not initialize the Digest Algorithms."

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public constructor <init>()V
    .locals 1

    const/16 v0, 0x400

    invoke-direct {p0}, Lorg/apache/harmony/xnet/provider/jsse/SSLInputStream;-><init>()V

    iput v0, p0, Lorg/apache/harmony/xnet/provider/jsse/HandshakeIODataStream;->buff_size:I

    iput v0, p0, Lorg/apache/harmony/xnet/provider/jsse/HandshakeIODataStream;->inc_buff_size:I

    iget v0, p0, Lorg/apache/harmony/xnet/provider/jsse/HandshakeIODataStream;->buff_size:I

    new-array v0, v0, [B

    iput-object v0, p0, Lorg/apache/harmony/xnet/provider/jsse/HandshakeIODataStream;->buffer:[B

    return-void
.end method

.method private append([BII)V
    .locals 4

    iget v0, p0, Lorg/apache/harmony/xnet/provider/jsse/HandshakeIODataStream;->read_pos:I

    iget v1, p0, Lorg/apache/harmony/xnet/provider/jsse/HandshakeIODataStream;->read_pos_end:I

    if-ne v0, v1, :cond_1

    iget v0, p0, Lorg/apache/harmony/xnet/provider/jsse/HandshakeIODataStream;->write_pos_beg:I

    iget v1, p0, Lorg/apache/harmony/xnet/provider/jsse/HandshakeIODataStream;->write_pos:I

    if-eq v0, v1, :cond_0

    new-instance v0, Lorg/apache/harmony/xnet/provider/jsse/AlertException;

    const/16 v1, 0xa

    new-instance v2, Ljavax/net/ssl/SSLHandshakeException;

    const-string v3, "Handshake message has been received before the last oubound message had been sent."

    invoke-direct {v2, v3}, Ljavax/net/ssl/SSLHandshakeException;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v1, v2}, Lorg/apache/harmony/xnet/provider/jsse/AlertException;-><init>(BLjavax/net/ssl/SSLException;)V

    throw v0

    :cond_0
    iget v0, p0, Lorg/apache/harmony/xnet/provider/jsse/HandshakeIODataStream;->read_pos:I

    iget v1, p0, Lorg/apache/harmony/xnet/provider/jsse/HandshakeIODataStream;->write_pos:I

    if-ge v0, v1, :cond_1

    iget v0, p0, Lorg/apache/harmony/xnet/provider/jsse/HandshakeIODataStream;->write_pos:I

    iput v0, p0, Lorg/apache/harmony/xnet/provider/jsse/HandshakeIODataStream;->read_pos:I

    iget v0, p0, Lorg/apache/harmony/xnet/provider/jsse/HandshakeIODataStream;->read_pos:I

    iput v0, p0, Lorg/apache/harmony/xnet/provider/jsse/HandshakeIODataStream;->read_pos_end:I

    :cond_1
    iget v0, p0, Lorg/apache/harmony/xnet/provider/jsse/HandshakeIODataStream;->read_pos_end:I

    add-int/2addr v0, p3

    iget v1, p0, Lorg/apache/harmony/xnet/provider/jsse/HandshakeIODataStream;->buff_size:I

    if-le v0, v1, :cond_2

    iget v0, p0, Lorg/apache/harmony/xnet/provider/jsse/HandshakeIODataStream;->read_pos_end:I

    add-int/2addr v0, p3

    iget v1, p0, Lorg/apache/harmony/xnet/provider/jsse/HandshakeIODataStream;->buff_size:I

    sub-int/2addr v0, v1

    invoke-direct {p0, v0}, Lorg/apache/harmony/xnet/provider/jsse/HandshakeIODataStream;->enlargeBuffer(I)V

    :cond_2
    iget-object v0, p0, Lorg/apache/harmony/xnet/provider/jsse/HandshakeIODataStream;->buffer:[B

    iget v1, p0, Lorg/apache/harmony/xnet/provider/jsse/HandshakeIODataStream;->read_pos_end:I

    invoke-static {p1, p2, v0, v1, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget v0, p0, Lorg/apache/harmony/xnet/provider/jsse/HandshakeIODataStream;->read_pos_end:I

    add-int/2addr v0, p3

    iput v0, p0, Lorg/apache/harmony/xnet/provider/jsse/HandshakeIODataStream;->read_pos_end:I

    return-void
.end method

.method private check(I)V
    .locals 5

    iget v0, p0, Lorg/apache/harmony/xnet/provider/jsse/HandshakeIODataStream;->write_pos:I

    iget v1, p0, Lorg/apache/harmony/xnet/provider/jsse/HandshakeIODataStream;->write_pos_beg:I

    if-ne v0, v1, :cond_1

    iget v0, p0, Lorg/apache/harmony/xnet/provider/jsse/HandshakeIODataStream;->read_pos:I

    iget v1, p0, Lorg/apache/harmony/xnet/provider/jsse/HandshakeIODataStream;->read_pos_end:I

    if-eq v0, v1, :cond_0

    new-instance v0, Lorg/apache/harmony/xnet/provider/jsse/AlertException;

    const/16 v1, 0x50

    new-instance v2, Ljavax/net/ssl/SSLHandshakeException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Data was not fully read: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lorg/apache/harmony/xnet/provider/jsse/HandshakeIODataStream;->read_pos:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lorg/apache/harmony/xnet/provider/jsse/HandshakeIODataStream;->read_pos_end:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljavax/net/ssl/SSLHandshakeException;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v1, v2}, Lorg/apache/harmony/xnet/provider/jsse/AlertException;-><init>(BLjavax/net/ssl/SSLException;)V

    throw v0

    :cond_0
    iget v0, p0, Lorg/apache/harmony/xnet/provider/jsse/HandshakeIODataStream;->write_pos_beg:I

    iget v1, p0, Lorg/apache/harmony/xnet/provider/jsse/HandshakeIODataStream;->read_pos_end:I

    if-ge v0, v1, :cond_1

    iget v0, p0, Lorg/apache/harmony/xnet/provider/jsse/HandshakeIODataStream;->read_pos_end:I

    iput v0, p0, Lorg/apache/harmony/xnet/provider/jsse/HandshakeIODataStream;->write_pos_beg:I

    iget v0, p0, Lorg/apache/harmony/xnet/provider/jsse/HandshakeIODataStream;->write_pos_beg:I

    iput v0, p0, Lorg/apache/harmony/xnet/provider/jsse/HandshakeIODataStream;->write_pos:I

    :cond_1
    iget v0, p0, Lorg/apache/harmony/xnet/provider/jsse/HandshakeIODataStream;->write_pos:I

    add-int/2addr v0, p1

    iget v1, p0, Lorg/apache/harmony/xnet/provider/jsse/HandshakeIODataStream;->buff_size:I

    if-lt v0, v1, :cond_2

    invoke-direct {p0, p1}, Lorg/apache/harmony/xnet/provider/jsse/HandshakeIODataStream;->enlargeBuffer(I)V

    :cond_2
    return-void
.end method

.method private enlargeBuffer(I)V
    .locals 4

    const/4 v3, 0x0

    iget v1, p0, Lorg/apache/harmony/xnet/provider/jsse/HandshakeIODataStream;->inc_buff_size:I

    if-ge p1, v1, :cond_0

    iget v1, p0, Lorg/apache/harmony/xnet/provider/jsse/HandshakeIODataStream;->buff_size:I

    iget v2, p0, Lorg/apache/harmony/xnet/provider/jsse/HandshakeIODataStream;->inc_buff_size:I

    add-int/2addr v1, v2

    :goto_0
    iput v1, p0, Lorg/apache/harmony/xnet/provider/jsse/HandshakeIODataStream;->buff_size:I

    iget v1, p0, Lorg/apache/harmony/xnet/provider/jsse/HandshakeIODataStream;->buff_size:I

    new-array v0, v1, [B

    iget-object v1, p0, Lorg/apache/harmony/xnet/provider/jsse/HandshakeIODataStream;->buffer:[B

    iget-object v2, p0, Lorg/apache/harmony/xnet/provider/jsse/HandshakeIODataStream;->buffer:[B

    array-length v2, v2

    invoke-static {v1, v3, v0, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iput-object v0, p0, Lorg/apache/harmony/xnet/provider/jsse/HandshakeIODataStream;->buffer:[B

    return-void

    :cond_0
    iget v1, p0, Lorg/apache/harmony/xnet/provider/jsse/HandshakeIODataStream;->buff_size:I

    add-int/2addr v1, p1

    goto :goto_0
.end method


# virtual methods
.method public append([B)V
    .locals 2

    const/4 v0, 0x0

    array-length v1, p1

    invoke-direct {p0, p1, v0, v1}, Lorg/apache/harmony/xnet/provider/jsse/HandshakeIODataStream;->append([BII)V

    return-void
.end method

.method public available()I
    .locals 2

    iget v0, p0, Lorg/apache/harmony/xnet/provider/jsse/HandshakeIODataStream;->read_pos_end:I

    iget v1, p0, Lorg/apache/harmony/xnet/provider/jsse/HandshakeIODataStream;->read_pos:I

    sub-int/2addr v0, v1

    return v0
.end method

.method protected clearBuffer()V
    .locals 2

    const/4 v1, 0x0

    iput v1, p0, Lorg/apache/harmony/xnet/provider/jsse/HandshakeIODataStream;->read_pos:I

    iput v1, p0, Lorg/apache/harmony/xnet/provider/jsse/HandshakeIODataStream;->marked_pos:I

    iput v1, p0, Lorg/apache/harmony/xnet/provider/jsse/HandshakeIODataStream;->read_pos_end:I

    iput v1, p0, Lorg/apache/harmony/xnet/provider/jsse/HandshakeIODataStream;->write_pos:I

    iput v1, p0, Lorg/apache/harmony/xnet/provider/jsse/HandshakeIODataStream;->write_pos_beg:I

    iget-object v0, p0, Lorg/apache/harmony/xnet/provider/jsse/HandshakeIODataStream;->buffer:[B

    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([BB)V

    return-void
.end method

.method public getData(I)[B
    .locals 6

    const/4 v5, 0x0

    iget v1, p0, Lorg/apache/harmony/xnet/provider/jsse/HandshakeIODataStream;->write_pos:I

    iget v2, p0, Lorg/apache/harmony/xnet/provider/jsse/HandshakeIODataStream;->write_pos_beg:I

    sub-int/2addr v1, v2

    if-ge v1, p1, :cond_0

    iget v1, p0, Lorg/apache/harmony/xnet/provider/jsse/HandshakeIODataStream;->write_pos:I

    iget v2, p0, Lorg/apache/harmony/xnet/provider/jsse/HandshakeIODataStream;->write_pos_beg:I

    sub-int/2addr v1, v2

    new-array v0, v1, [B

    iget-object v1, p0, Lorg/apache/harmony/xnet/provider/jsse/HandshakeIODataStream;->buffer:[B

    iget v2, p0, Lorg/apache/harmony/xnet/provider/jsse/HandshakeIODataStream;->write_pos_beg:I

    iget v3, p0, Lorg/apache/harmony/xnet/provider/jsse/HandshakeIODataStream;->write_pos:I

    iget v4, p0, Lorg/apache/harmony/xnet/provider/jsse/HandshakeIODataStream;->write_pos_beg:I

    sub-int/2addr v3, v4

    invoke-static {v1, v2, v0, v5, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget v1, p0, Lorg/apache/harmony/xnet/provider/jsse/HandshakeIODataStream;->write_pos:I

    iput v1, p0, Lorg/apache/harmony/xnet/provider/jsse/HandshakeIODataStream;->write_pos_beg:I

    :goto_0
    return-object v0

    :cond_0
    new-array v0, p1, [B

    iget-object v1, p0, Lorg/apache/harmony/xnet/provider/jsse/HandshakeIODataStream;->buffer:[B

    iget v2, p0, Lorg/apache/harmony/xnet/provider/jsse/HandshakeIODataStream;->write_pos_beg:I

    invoke-static {v1, v2, v0, v5, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget v1, p0, Lorg/apache/harmony/xnet/provider/jsse/HandshakeIODataStream;->write_pos_beg:I

    add-int/2addr v1, p1

    iput v1, p0, Lorg/apache/harmony/xnet/provider/jsse/HandshakeIODataStream;->write_pos_beg:I

    goto :goto_0
.end method

.method protected getDigestMD5()[B
    .locals 5

    sget-object v2, Lorg/apache/harmony/xnet/provider/jsse/HandshakeIODataStream;->md5:Ljava/security/MessageDigest;

    monitor-enter v2

    :try_start_0
    iget v1, p0, Lorg/apache/harmony/xnet/provider/jsse/HandshakeIODataStream;->read_pos_end:I

    iget v3, p0, Lorg/apache/harmony/xnet/provider/jsse/HandshakeIODataStream;->write_pos:I

    if-le v1, v3, :cond_0

    iget v0, p0, Lorg/apache/harmony/xnet/provider/jsse/HandshakeIODataStream;->read_pos_end:I

    :goto_0
    sget-object v1, Lorg/apache/harmony/xnet/provider/jsse/HandshakeIODataStream;->md5:Ljava/security/MessageDigest;

    iget-object v3, p0, Lorg/apache/harmony/xnet/provider/jsse/HandshakeIODataStream;->buffer:[B

    const/4 v4, 0x0

    invoke-virtual {v1, v3, v4, v0}, Ljava/security/MessageDigest;->update([BII)V

    sget-object v1, Lorg/apache/harmony/xnet/provider/jsse/HandshakeIODataStream;->md5:Ljava/security/MessageDigest;

    invoke-virtual {v1}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v1

    monitor-exit v2

    return-object v1

    :cond_0
    iget v0, p0, Lorg/apache/harmony/xnet/provider/jsse/HandshakeIODataStream;->write_pos:I

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method protected getDigestMD5withoutLast()[B
    .locals 5

    sget-object v1, Lorg/apache/harmony/xnet/provider/jsse/HandshakeIODataStream;->md5:Ljava/security/MessageDigest;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lorg/apache/harmony/xnet/provider/jsse/HandshakeIODataStream;->md5:Ljava/security/MessageDigest;

    iget-object v2, p0, Lorg/apache/harmony/xnet/provider/jsse/HandshakeIODataStream;->buffer:[B

    const/4 v3, 0x0

    iget v4, p0, Lorg/apache/harmony/xnet/provider/jsse/HandshakeIODataStream;->marked_pos:I

    invoke-virtual {v0, v2, v3, v4}, Ljava/security/MessageDigest;->update([BII)V

    sget-object v0, Lorg/apache/harmony/xnet/provider/jsse/HandshakeIODataStream;->md5:Ljava/security/MessageDigest;

    invoke-virtual {v0}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v0

    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method protected getDigestSHA()[B
    .locals 5

    sget-object v2, Lorg/apache/harmony/xnet/provider/jsse/HandshakeIODataStream;->sha:Ljava/security/MessageDigest;

    monitor-enter v2

    :try_start_0
    iget v1, p0, Lorg/apache/harmony/xnet/provider/jsse/HandshakeIODataStream;->read_pos_end:I

    iget v3, p0, Lorg/apache/harmony/xnet/provider/jsse/HandshakeIODataStream;->write_pos:I

    if-le v1, v3, :cond_0

    iget v0, p0, Lorg/apache/harmony/xnet/provider/jsse/HandshakeIODataStream;->read_pos_end:I

    :goto_0
    sget-object v1, Lorg/apache/harmony/xnet/provider/jsse/HandshakeIODataStream;->sha:Ljava/security/MessageDigest;

    iget-object v3, p0, Lorg/apache/harmony/xnet/provider/jsse/HandshakeIODataStream;->buffer:[B

    const/4 v4, 0x0

    invoke-virtual {v1, v3, v4, v0}, Ljava/security/MessageDigest;->update([BII)V

    sget-object v1, Lorg/apache/harmony/xnet/provider/jsse/HandshakeIODataStream;->sha:Ljava/security/MessageDigest;

    invoke-virtual {v1}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v1

    monitor-exit v2

    return-object v1

    :cond_0
    iget v0, p0, Lorg/apache/harmony/xnet/provider/jsse/HandshakeIODataStream;->write_pos:I

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method protected getDigestSHAwithoutLast()[B
    .locals 5

    sget-object v1, Lorg/apache/harmony/xnet/provider/jsse/HandshakeIODataStream;->sha:Ljava/security/MessageDigest;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lorg/apache/harmony/xnet/provider/jsse/HandshakeIODataStream;->sha:Ljava/security/MessageDigest;

    iget-object v2, p0, Lorg/apache/harmony/xnet/provider/jsse/HandshakeIODataStream;->buffer:[B

    const/4 v3, 0x0

    iget v4, p0, Lorg/apache/harmony/xnet/provider/jsse/HandshakeIODataStream;->marked_pos:I

    invoke-virtual {v0, v2, v3, v4}, Ljava/security/MessageDigest;->update([BII)V

    sget-object v0, Lorg/apache/harmony/xnet/provider/jsse/HandshakeIODataStream;->sha:Ljava/security/MessageDigest;

    invoke-virtual {v0}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v0

    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method protected getMessages()[B
    .locals 5

    const/4 v4, 0x0

    iget v2, p0, Lorg/apache/harmony/xnet/provider/jsse/HandshakeIODataStream;->read_pos_end:I

    iget v3, p0, Lorg/apache/harmony/xnet/provider/jsse/HandshakeIODataStream;->write_pos:I

    if-le v2, v3, :cond_0

    iget v0, p0, Lorg/apache/harmony/xnet/provider/jsse/HandshakeIODataStream;->read_pos_end:I

    :goto_0
    new-array v1, v0, [B

    iget-object v2, p0, Lorg/apache/harmony/xnet/provider/jsse/HandshakeIODataStream;->buffer:[B

    invoke-static {v2, v4, v1, v4, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v1

    :cond_0
    iget v0, p0, Lorg/apache/harmony/xnet/provider/jsse/HandshakeIODataStream;->write_pos:I

    goto :goto_0
.end method

.method public hasData()Z
    .locals 2

    iget v0, p0, Lorg/apache/harmony/xnet/provider/jsse/HandshakeIODataStream;->write_pos:I

    iget v1, p0, Lorg/apache/harmony/xnet/provider/jsse/HandshakeIODataStream;->write_pos_beg:I

    if-le v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public mark()V
    .locals 1

    iget v0, p0, Lorg/apache/harmony/xnet/provider/jsse/HandshakeIODataStream;->read_pos:I

    iput v0, p0, Lorg/apache/harmony/xnet/provider/jsse/HandshakeIODataStream;->marked_pos:I

    return-void
.end method

.method public mark(I)V
    .locals 1

    iget v0, p0, Lorg/apache/harmony/xnet/provider/jsse/HandshakeIODataStream;->read_pos:I

    iput v0, p0, Lorg/apache/harmony/xnet/provider/jsse/HandshakeIODataStream;->marked_pos:I

    return-void
.end method

.method public markSupported()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public read()I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget v0, p0, Lorg/apache/harmony/xnet/provider/jsse/HandshakeIODataStream;->read_pos:I

    iget v1, p0, Lorg/apache/harmony/xnet/provider/jsse/HandshakeIODataStream;->read_pos_end:I

    if-ne v0, v1, :cond_0

    new-instance v0, Lorg/apache/harmony/xnet/provider/jsse/EndOfBufferException;

    invoke-direct {v0}, Lorg/apache/harmony/xnet/provider/jsse/EndOfBufferException;-><init>()V

    throw v0

    :cond_0
    iget-object v0, p0, Lorg/apache/harmony/xnet/provider/jsse/HandshakeIODataStream;->buffer:[B

    iget v1, p0, Lorg/apache/harmony/xnet/provider/jsse/HandshakeIODataStream;->read_pos:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/apache/harmony/xnet/provider/jsse/HandshakeIODataStream;->read_pos:I

    aget-byte v0, v0, v1

    and-int/lit16 v0, v0, 0xff

    return v0
.end method

.method public read([BII)I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0}, Lorg/apache/harmony/xnet/provider/jsse/HandshakeIODataStream;->available()I

    move-result v0

    if-le p3, v0, :cond_0

    new-instance v0, Lorg/apache/harmony/xnet/provider/jsse/EndOfBufferException;

    invoke-direct {v0}, Lorg/apache/harmony/xnet/provider/jsse/EndOfBufferException;-><init>()V

    throw v0

    :cond_0
    iget-object v0, p0, Lorg/apache/harmony/xnet/provider/jsse/HandshakeIODataStream;->buffer:[B

    iget v1, p0, Lorg/apache/harmony/xnet/provider/jsse/HandshakeIODataStream;->read_pos:I

    invoke-static {v0, v1, p1, p2, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget v0, p0, Lorg/apache/harmony/xnet/provider/jsse/HandshakeIODataStream;->read_pos:I

    add-int/2addr v0, p3

    iput v0, p0, Lorg/apache/harmony/xnet/provider/jsse/HandshakeIODataStream;->read_pos:I

    return p3
.end method

.method public read(I)[B
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0}, Lorg/apache/harmony/xnet/provider/jsse/HandshakeIODataStream;->available()I

    move-result v1

    if-le p1, v1, :cond_0

    new-instance v1, Lorg/apache/harmony/xnet/provider/jsse/EndOfBufferException;

    invoke-direct {v1}, Lorg/apache/harmony/xnet/provider/jsse/EndOfBufferException;-><init>()V

    throw v1

    :cond_0
    new-array v0, p1, [B

    iget-object v1, p0, Lorg/apache/harmony/xnet/provider/jsse/HandshakeIODataStream;->buffer:[B

    iget v2, p0, Lorg/apache/harmony/xnet/provider/jsse/HandshakeIODataStream;->read_pos:I

    const/4 v3, 0x0

    invoke-static {v1, v2, v0, v3, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget v1, p0, Lorg/apache/harmony/xnet/provider/jsse/HandshakeIODataStream;->read_pos:I

    add-int/2addr v1, p1

    iput v1, p0, Lorg/apache/harmony/xnet/provider/jsse/HandshakeIODataStream;->read_pos:I

    return-object v0
.end method

.method protected removeFromMarkedPosition()V
    .locals 6

    iget-object v0, p0, Lorg/apache/harmony/xnet/provider/jsse/HandshakeIODataStream;->buffer:[B

    iget v1, p0, Lorg/apache/harmony/xnet/provider/jsse/HandshakeIODataStream;->read_pos:I

    iget-object v2, p0, Lorg/apache/harmony/xnet/provider/jsse/HandshakeIODataStream;->buffer:[B

    iget v3, p0, Lorg/apache/harmony/xnet/provider/jsse/HandshakeIODataStream;->marked_pos:I

    iget v4, p0, Lorg/apache/harmony/xnet/provider/jsse/HandshakeIODataStream;->read_pos_end:I

    iget v5, p0, Lorg/apache/harmony/xnet/provider/jsse/HandshakeIODataStream;->read_pos:I

    sub-int/2addr v4, v5

    invoke-static {v0, v1, v2, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget v0, p0, Lorg/apache/harmony/xnet/provider/jsse/HandshakeIODataStream;->read_pos_end:I

    iget v1, p0, Lorg/apache/harmony/xnet/provider/jsse/HandshakeIODataStream;->read_pos:I

    iget v2, p0, Lorg/apache/harmony/xnet/provider/jsse/HandshakeIODataStream;->marked_pos:I

    sub-int/2addr v1, v2

    sub-int/2addr v0, v1

    iput v0, p0, Lorg/apache/harmony/xnet/provider/jsse/HandshakeIODataStream;->read_pos_end:I

    iget v0, p0, Lorg/apache/harmony/xnet/provider/jsse/HandshakeIODataStream;->marked_pos:I

    iput v0, p0, Lorg/apache/harmony/xnet/provider/jsse/HandshakeIODataStream;->read_pos:I

    return-void
.end method

.method public reset()V
    .locals 1

    iget v0, p0, Lorg/apache/harmony/xnet/provider/jsse/HandshakeIODataStream;->marked_pos:I

    iput v0, p0, Lorg/apache/harmony/xnet/provider/jsse/HandshakeIODataStream;->read_pos:I

    return-void
.end method

.method public write(B)V
    .locals 3

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lorg/apache/harmony/xnet/provider/jsse/HandshakeIODataStream;->check(I)V

    iget-object v0, p0, Lorg/apache/harmony/xnet/provider/jsse/HandshakeIODataStream;->buffer:[B

    iget v1, p0, Lorg/apache/harmony/xnet/provider/jsse/HandshakeIODataStream;->write_pos:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/apache/harmony/xnet/provider/jsse/HandshakeIODataStream;->write_pos:I

    aput-byte p1, v0, v1

    return-void
.end method

.method public write([B)V
    .locals 4

    array-length v0, p1

    invoke-direct {p0, v0}, Lorg/apache/harmony/xnet/provider/jsse/HandshakeIODataStream;->check(I)V

    const/4 v0, 0x0

    iget-object v1, p0, Lorg/apache/harmony/xnet/provider/jsse/HandshakeIODataStream;->buffer:[B

    iget v2, p0, Lorg/apache/harmony/xnet/provider/jsse/HandshakeIODataStream;->write_pos:I

    array-length v3, p1

    invoke-static {p1, v0, v1, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget v0, p0, Lorg/apache/harmony/xnet/provider/jsse/HandshakeIODataStream;->write_pos:I

    array-length v1, p1

    add-int/2addr v0, v1

    iput v0, p0, Lorg/apache/harmony/xnet/provider/jsse/HandshakeIODataStream;->write_pos:I

    return-void
.end method

.method public writeUint16(J)V
    .locals 5

    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lorg/apache/harmony/xnet/provider/jsse/HandshakeIODataStream;->check(I)V

    iget-object v0, p0, Lorg/apache/harmony/xnet/provider/jsse/HandshakeIODataStream;->buffer:[B

    iget v1, p0, Lorg/apache/harmony/xnet/provider/jsse/HandshakeIODataStream;->write_pos:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/apache/harmony/xnet/provider/jsse/HandshakeIODataStream;->write_pos:I

    const-wide/32 v2, 0xff00

    and-long/2addr v2, p1

    const/16 v4, 0x8

    shr-long/2addr v2, v4

    long-to-int v2, v2

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    iget-object v0, p0, Lorg/apache/harmony/xnet/provider/jsse/HandshakeIODataStream;->buffer:[B

    iget v1, p0, Lorg/apache/harmony/xnet/provider/jsse/HandshakeIODataStream;->write_pos:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/apache/harmony/xnet/provider/jsse/HandshakeIODataStream;->write_pos:I

    const-wide/16 v2, 0xff

    and-long/2addr v2, p1

    long-to-int v2, v2

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    return-void
.end method

.method public writeUint24(J)V
    .locals 5

    const/4 v0, 0x3

    invoke-direct {p0, v0}, Lorg/apache/harmony/xnet/provider/jsse/HandshakeIODataStream;->check(I)V

    iget-object v0, p0, Lorg/apache/harmony/xnet/provider/jsse/HandshakeIODataStream;->buffer:[B

    iget v1, p0, Lorg/apache/harmony/xnet/provider/jsse/HandshakeIODataStream;->write_pos:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/apache/harmony/xnet/provider/jsse/HandshakeIODataStream;->write_pos:I

    const-wide/32 v2, 0xff0000

    and-long/2addr v2, p1

    const/16 v4, 0x10

    shr-long/2addr v2, v4

    long-to-int v2, v2

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    iget-object v0, p0, Lorg/apache/harmony/xnet/provider/jsse/HandshakeIODataStream;->buffer:[B

    iget v1, p0, Lorg/apache/harmony/xnet/provider/jsse/HandshakeIODataStream;->write_pos:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/apache/harmony/xnet/provider/jsse/HandshakeIODataStream;->write_pos:I

    const-wide/32 v2, 0xff00

    and-long/2addr v2, p1

    const/16 v4, 0x8

    shr-long/2addr v2, v4

    long-to-int v2, v2

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    iget-object v0, p0, Lorg/apache/harmony/xnet/provider/jsse/HandshakeIODataStream;->buffer:[B

    iget v1, p0, Lorg/apache/harmony/xnet/provider/jsse/HandshakeIODataStream;->write_pos:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/apache/harmony/xnet/provider/jsse/HandshakeIODataStream;->write_pos:I

    const-wide/16 v2, 0xff

    and-long/2addr v2, p1

    long-to-int v2, v2

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    return-void
.end method

.method public writeUint32(J)V
    .locals 5

    const/4 v0, 0x4

    invoke-direct {p0, v0}, Lorg/apache/harmony/xnet/provider/jsse/HandshakeIODataStream;->check(I)V

    iget-object v0, p0, Lorg/apache/harmony/xnet/provider/jsse/HandshakeIODataStream;->buffer:[B

    iget v1, p0, Lorg/apache/harmony/xnet/provider/jsse/HandshakeIODataStream;->write_pos:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/apache/harmony/xnet/provider/jsse/HandshakeIODataStream;->write_pos:I

    const-wide/32 v2, -0x1000000

    and-long/2addr v2, p1

    const/16 v4, 0x18

    shr-long/2addr v2, v4

    long-to-int v2, v2

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    iget-object v0, p0, Lorg/apache/harmony/xnet/provider/jsse/HandshakeIODataStream;->buffer:[B

    iget v1, p0, Lorg/apache/harmony/xnet/provider/jsse/HandshakeIODataStream;->write_pos:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/apache/harmony/xnet/provider/jsse/HandshakeIODataStream;->write_pos:I

    const-wide/32 v2, 0xff0000

    and-long/2addr v2, p1

    const/16 v4, 0x10

    shr-long/2addr v2, v4

    long-to-int v2, v2

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    iget-object v0, p0, Lorg/apache/harmony/xnet/provider/jsse/HandshakeIODataStream;->buffer:[B

    iget v1, p0, Lorg/apache/harmony/xnet/provider/jsse/HandshakeIODataStream;->write_pos:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/apache/harmony/xnet/provider/jsse/HandshakeIODataStream;->write_pos:I

    const-wide/32 v2, 0xff00

    and-long/2addr v2, p1

    const/16 v4, 0x8

    shr-long/2addr v2, v4

    long-to-int v2, v2

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    iget-object v0, p0, Lorg/apache/harmony/xnet/provider/jsse/HandshakeIODataStream;->buffer:[B

    iget v1, p0, Lorg/apache/harmony/xnet/provider/jsse/HandshakeIODataStream;->write_pos:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/apache/harmony/xnet/provider/jsse/HandshakeIODataStream;->write_pos:I

    const-wide/16 v2, 0xff

    and-long/2addr v2, p1

    long-to-int v2, v2

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    return-void
.end method

.method public writeUint64(J)V
    .locals 6

    const/16 v5, 0x8

    invoke-direct {p0, v5}, Lorg/apache/harmony/xnet/provider/jsse/HandshakeIODataStream;->check(I)V

    iget-object v0, p0, Lorg/apache/harmony/xnet/provider/jsse/HandshakeIODataStream;->buffer:[B

    iget v1, p0, Lorg/apache/harmony/xnet/provider/jsse/HandshakeIODataStream;->write_pos:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/apache/harmony/xnet/provider/jsse/HandshakeIODataStream;->write_pos:I

    const-wide/high16 v2, -0x100

    and-long/2addr v2, p1

    const/16 v4, 0x38

    shr-long/2addr v2, v4

    long-to-int v2, v2

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    iget-object v0, p0, Lorg/apache/harmony/xnet/provider/jsse/HandshakeIODataStream;->buffer:[B

    iget v1, p0, Lorg/apache/harmony/xnet/provider/jsse/HandshakeIODataStream;->write_pos:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/apache/harmony/xnet/provider/jsse/HandshakeIODataStream;->write_pos:I

    const-wide/high16 v2, 0xff

    and-long/2addr v2, p1

    const/16 v4, 0x30

    shr-long/2addr v2, v4

    long-to-int v2, v2

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    iget-object v0, p0, Lorg/apache/harmony/xnet/provider/jsse/HandshakeIODataStream;->buffer:[B

    iget v1, p0, Lorg/apache/harmony/xnet/provider/jsse/HandshakeIODataStream;->write_pos:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/apache/harmony/xnet/provider/jsse/HandshakeIODataStream;->write_pos:I

    const-wide v2, 0xff0000000000L

    and-long/2addr v2, p1

    const/16 v4, 0x28

    shr-long/2addr v2, v4

    long-to-int v2, v2

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    iget-object v0, p0, Lorg/apache/harmony/xnet/provider/jsse/HandshakeIODataStream;->buffer:[B

    iget v1, p0, Lorg/apache/harmony/xnet/provider/jsse/HandshakeIODataStream;->write_pos:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/apache/harmony/xnet/provider/jsse/HandshakeIODataStream;->write_pos:I

    const-wide v2, 0xff00000000L

    and-long/2addr v2, p1

    const/16 v4, 0x20

    shr-long/2addr v2, v4

    long-to-int v2, v2

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    iget-object v0, p0, Lorg/apache/harmony/xnet/provider/jsse/HandshakeIODataStream;->buffer:[B

    iget v1, p0, Lorg/apache/harmony/xnet/provider/jsse/HandshakeIODataStream;->write_pos:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/apache/harmony/xnet/provider/jsse/HandshakeIODataStream;->write_pos:I

    const-wide/32 v2, -0x1000000

    and-long/2addr v2, p1

    const/16 v4, 0x18

    shr-long/2addr v2, v4

    long-to-int v2, v2

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    iget-object v0, p0, Lorg/apache/harmony/xnet/provider/jsse/HandshakeIODataStream;->buffer:[B

    iget v1, p0, Lorg/apache/harmony/xnet/provider/jsse/HandshakeIODataStream;->write_pos:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/apache/harmony/xnet/provider/jsse/HandshakeIODataStream;->write_pos:I

    const-wide/32 v2, 0xff0000

    and-long/2addr v2, p1

    const/16 v4, 0x10

    shr-long/2addr v2, v4

    long-to-int v2, v2

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    iget-object v0, p0, Lorg/apache/harmony/xnet/provider/jsse/HandshakeIODataStream;->buffer:[B

    iget v1, p0, Lorg/apache/harmony/xnet/provider/jsse/HandshakeIODataStream;->write_pos:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/apache/harmony/xnet/provider/jsse/HandshakeIODataStream;->write_pos:I

    const-wide/32 v2, 0xff00

    and-long/2addr v2, p1

    shr-long/2addr v2, v5

    long-to-int v2, v2

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    iget-object v0, p0, Lorg/apache/harmony/xnet/provider/jsse/HandshakeIODataStream;->buffer:[B

    iget v1, p0, Lorg/apache/harmony/xnet/provider/jsse/HandshakeIODataStream;->write_pos:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/apache/harmony/xnet/provider/jsse/HandshakeIODataStream;->write_pos:I

    const-wide/16 v2, 0xff

    and-long/2addr v2, p1

    long-to-int v2, v2

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    return-void
.end method

.method public writeUint8(J)V
    .locals 4

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lorg/apache/harmony/xnet/provider/jsse/HandshakeIODataStream;->check(I)V

    iget-object v0, p0, Lorg/apache/harmony/xnet/provider/jsse/HandshakeIODataStream;->buffer:[B

    iget v1, p0, Lorg/apache/harmony/xnet/provider/jsse/HandshakeIODataStream;->write_pos:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/apache/harmony/xnet/provider/jsse/HandshakeIODataStream;->write_pos:I

    const-wide/16 v2, 0xff

    and-long/2addr v2, p1

    long-to-int v2, v2

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    return-void
.end method
