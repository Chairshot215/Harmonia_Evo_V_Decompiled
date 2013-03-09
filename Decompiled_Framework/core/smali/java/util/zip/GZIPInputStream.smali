.class public Ljava/util/zip/GZIPInputStream;
.super Ljava/util/zip/InflaterInputStream;
.source "GZIPInputStream.java"


# static fields
.field private static final FCOMMENT:I = 0x10

.field private static final FEXTRA:I = 0x4

.field private static final FHCRC:I = 0x2

.field private static final FNAME:I = 0x8

.field public static final GZIP_MAGIC:I = 0x8b1f


# instance fields
.field protected crc:Ljava/util/zip/CRC32;

.field protected eos:Z


# direct methods
.method public constructor <init>(Ljava/io/InputStream;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/16 v0, 0x200

    invoke-direct {p0, p1, v0}, Ljava/util/zip/GZIPInputStream;-><init>(Ljava/io/InputStream;I)V

    return-void
.end method

.method public constructor <init>(Ljava/io/InputStream;I)V
    .locals 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v11, 0x2

    const/4 v2, 0x1

    const/4 v8, 0x0

    new-instance v9, Ljava/util/zip/Inflater;

    invoke-direct {v9, v2}, Ljava/util/zip/Inflater;-><init>(Z)V

    invoke-direct {p0, p1, v9, p2}, Ljava/util/zip/InflaterInputStream;-><init>(Ljava/io/InputStream;Ljava/util/zip/Inflater;I)V

    new-instance v9, Ljava/util/zip/CRC32;

    invoke-direct {v9}, Ljava/util/zip/CRC32;-><init>()V

    iput-object v9, p0, Ljava/util/zip/GZIPInputStream;->crc:Ljava/util/zip/CRC32;

    iput-boolean v8, p0, Ljava/util/zip/GZIPInputStream;->eos:Z

    const/16 v9, 0xa

    new-array v3, v9, [B

    array-length v9, v3

    invoke-direct {p0, v3, v8, v9}, Ljava/util/zip/GZIPInputStream;->readFully([BII)V

    sget-object v9, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-static {v3, v8, v9}, Llibcore/io/Memory;->peekShort([BILjava/nio/ByteOrder;)S

    move-result v5

    const/16 v9, -0x74e1

    if-eq v5, v9, :cond_0

    new-instance v9, Ljava/io/IOException;

    const-string v10, "unknown format (magic number %x)"

    new-array v11, v2, [Ljava/lang/Object;

    invoke-static {v5}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v12

    aput-object v12, v11, v8

    invoke-static {v10, v11}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v9, v8}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v9

    :cond_0
    const/4 v9, 0x3

    aget-byte v1, v3, v9

    and-int/lit8 v9, v1, 0x2

    if-eqz v9, :cond_3

    :goto_0
    if-eqz v2, :cond_1

    iget-object v9, p0, Ljava/util/zip/GZIPInputStream;->crc:Ljava/util/zip/CRC32;

    array-length v10, v3

    invoke-virtual {v9, v3, v8, v10}, Ljava/util/zip/CRC32;->update([BII)V

    :cond_1
    and-int/lit8 v9, v1, 0x4

    if-eqz v9, :cond_7

    invoke-direct {p0, v3, v8, v11}, Ljava/util/zip/GZIPInputStream;->readFully([BII)V

    if-eqz v2, :cond_2

    iget-object v9, p0, Ljava/util/zip/GZIPInputStream;->crc:Ljava/util/zip/CRC32;

    invoke-virtual {v9, v3, v8, v11}, Ljava/util/zip/CRC32;->update([BII)V

    :cond_2
    sget-object v9, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-static {v3, v8, v9}, Llibcore/io/Memory;->peekShort([BILjava/nio/ByteOrder;)S

    move-result v9

    const v10, 0xffff

    and-int v4, v9, v10

    :goto_1
    if-lez v4, :cond_7

    iget-object v9, p0, Ljava/util/zip/InflaterInputStream;->buf:[B

    array-length v9, v9

    if-le v4, v9, :cond_4

    iget-object v9, p0, Ljava/util/zip/InflaterInputStream;->buf:[B

    array-length v6, v9

    :goto_2
    iget-object v9, p0, Ljava/util/zip/GZIPInputStream;->in:Ljava/io/InputStream;

    iget-object v10, p0, Ljava/util/zip/InflaterInputStream;->buf:[B

    invoke-virtual {v9, v10, v8, v6}, Ljava/io/InputStream;->read([BII)I

    move-result v7

    const/4 v9, -0x1

    if-ne v7, v9, :cond_5

    new-instance v8, Ljava/io/EOFException;

    invoke-direct {v8}, Ljava/io/EOFException;-><init>()V

    throw v8

    :cond_3
    move v2, v8

    goto :goto_0

    :cond_4
    move v6, v4

    goto :goto_2

    :cond_5
    if-eqz v2, :cond_6

    iget-object v9, p0, Ljava/util/zip/GZIPInputStream;->crc:Ljava/util/zip/CRC32;

    iget-object v10, p0, Ljava/util/zip/InflaterInputStream;->buf:[B

    invoke-virtual {v9, v10, v8, v7}, Ljava/util/zip/CRC32;->update([BII)V

    :cond_6
    sub-int/2addr v4, v7

    goto :goto_1

    :cond_7
    and-int/lit8 v9, v1, 0x8

    if-eqz v9, :cond_8

    invoke-direct {p0, v2}, Ljava/util/zip/GZIPInputStream;->readZeroTerminated(Z)V

    :cond_8
    and-int/lit8 v9, v1, 0x10

    if-eqz v9, :cond_9

    invoke-direct {p0, v2}, Ljava/util/zip/GZIPInputStream;->readZeroTerminated(Z)V

    :cond_9
    if-eqz v2, :cond_b

    invoke-direct {p0, v3, v8, v11}, Ljava/util/zip/GZIPInputStream;->readFully([BII)V

    sget-object v9, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-static {v3, v8, v9}, Llibcore/io/Memory;->peekShort([BILjava/nio/ByteOrder;)S

    move-result v0

    iget-object v8, p0, Ljava/util/zip/GZIPInputStream;->crc:Ljava/util/zip/CRC32;

    invoke-virtual {v8}, Ljava/util/zip/CRC32;->getValue()J

    move-result-wide v8

    long-to-int v8, v8

    int-to-short v8, v8

    if-eq v8, v0, :cond_a

    new-instance v8, Ljava/io/IOException;

    const-string v9, "CRC mismatch"

    invoke-direct {v8, v9}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v8

    :cond_a
    iget-object v8, p0, Ljava/util/zip/GZIPInputStream;->crc:Ljava/util/zip/CRC32;

    invoke-virtual {v8}, Ljava/util/zip/CRC32;->reset()V

    :cond_b
    return-void
.end method

.method private readFully([BII)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    :goto_0
    if-lez p3, :cond_1

    iget-object v1, p0, Ljava/util/zip/GZIPInputStream;->in:Ljava/io/InputStream;

    invoke-virtual {v1, p1, p2, p3}, Ljava/io/InputStream;->read([BII)I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    new-instance v1, Ljava/io/EOFException;

    invoke-direct {v1}, Ljava/io/EOFException;-><init>()V

    throw v1

    :cond_0
    add-int/2addr p2, v0

    sub-int/2addr p3, v0

    goto :goto_0

    :cond_1
    return-void
.end method

.method private readZeroTerminated(Z)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    :cond_0
    :goto_0
    iget-object v1, p0, Ljava/util/zip/GZIPInputStream;->in:Ljava/io/InputStream;

    invoke-virtual {v1}, Ljava/io/InputStream;->read()I

    move-result v0

    if-lez v0, :cond_1

    if-eqz p1, :cond_0

    iget-object v1, p0, Ljava/util/zip/GZIPInputStream;->crc:Ljava/util/zip/CRC32;

    invoke-virtual {v1, v0}, Ljava/util/zip/CRC32;->update(I)V

    goto :goto_0

    :cond_1
    const/4 v1, -0x1

    if-ne v0, v1, :cond_2

    new-instance v1, Ljava/io/EOFException;

    invoke-direct {v1}, Ljava/io/EOFException;-><init>()V

    throw v1

    :cond_2
    if-eqz p1, :cond_3

    iget-object v1, p0, Ljava/util/zip/GZIPInputStream;->crc:Ljava/util/zip/CRC32;

    invoke-virtual {v1, v0}, Ljava/util/zip/CRC32;->update(I)V

    :cond_3
    return-void
.end method

.method private verifyCrc()V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v6, 0x0

    const/16 v1, 0x8

    iget-object v4, p0, Ljava/util/zip/InflaterInputStream;->inf:Ljava/util/zip/Inflater;

    invoke-virtual {v4}, Ljava/util/zip/Inflater;->getRemaining()I

    move-result v2

    const/16 v3, 0x8

    new-array v0, v1, [B

    if-le v2, v1, :cond_0

    :goto_0
    iget-object v4, p0, Ljava/util/zip/InflaterInputStream;->buf:[B

    iget v5, p0, Ljava/util/zip/InflaterInputStream;->len:I

    sub-int/2addr v5, v2

    invoke-static {v4, v5, v0, v6, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    rsub-int/lit8 v4, v1, 0x8

    invoke-direct {p0, v0, v1, v4}, Ljava/util/zip/GZIPInputStream;->readFully([BII)V

    sget-object v4, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-static {v0, v6, v4}, Llibcore/io/Memory;->peekInt([BILjava/nio/ByteOrder;)I

    move-result v4

    iget-object v5, p0, Ljava/util/zip/GZIPInputStream;->crc:Ljava/util/zip/CRC32;

    invoke-virtual {v5}, Ljava/util/zip/CRC32;->getValue()J

    move-result-wide v5

    long-to-int v5, v5

    if-eq v4, v5, :cond_1

    new-instance v4, Ljava/io/IOException;

    const-string v5, "CRC mismatch"

    invoke-direct {v4, v5}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v4

    :cond_0
    move v1, v2

    goto :goto_0

    :cond_1
    const/4 v4, 0x4

    sget-object v5, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-static {v0, v4, v5}, Llibcore/io/Memory;->peekInt([BILjava/nio/ByteOrder;)I

    move-result v4

    iget-object v5, p0, Ljava/util/zip/InflaterInputStream;->inf:Ljava/util/zip/Inflater;

    invoke-virtual {v5}, Ljava/util/zip/Inflater;->getTotalOut()I

    move-result v5

    if-eq v4, v5, :cond_2

    new-instance v4, Ljava/io/IOException;

    const-string v5, "Size mismatch"

    invoke-direct {v4, v5}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v4

    :cond_2
    return-void
.end method


# virtual methods
.method public close()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x1

    iput-boolean v0, p0, Ljava/util/zip/GZIPInputStream;->eos:Z

    invoke-super {p0}, Ljava/util/zip/InflaterInputStream;->close()V

    return-void
.end method

.method public read([BII)I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v1, -0x1

    iget-boolean v2, p0, Ljava/util/zip/InflaterInputStream;->closed:Z

    if-eqz v2, :cond_0

    new-instance v1, Ljava/io/IOException;

    const-string v2, "Stream is closed"

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_0
    iget-boolean v2, p0, Ljava/util/zip/GZIPInputStream;->eos:Z

    if-eqz v2, :cond_2

    move v0, v1

    :cond_1
    :goto_0
    return v0

    :cond_2
    array-length v2, p1

    invoke-static {v2, p2, p3}, Ljava/util/Arrays;->checkOffsetAndCount(III)V

    :try_start_0
    invoke-super {p0, p1, p2, p3}, Ljava/util/zip/InflaterInputStream;->read([BII)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    iget-boolean v2, p0, Ljava/util/zip/InflaterInputStream;->eof:Z

    iput-boolean v2, p0, Ljava/util/zip/GZIPInputStream;->eos:Z

    if-eq v0, v1, :cond_3

    iget-object v1, p0, Ljava/util/zip/GZIPInputStream;->crc:Ljava/util/zip/CRC32;

    invoke-virtual {v1, p1, p2, v0}, Ljava/util/zip/CRC32;->update([BII)V

    :cond_3
    iget-boolean v1, p0, Ljava/util/zip/GZIPInputStream;->eos:Z

    if-eqz v1, :cond_1

    invoke-direct {p0}, Ljava/util/zip/GZIPInputStream;->verifyCrc()V

    goto :goto_0

    :catchall_0
    move-exception v1

    iget-boolean v2, p0, Ljava/util/zip/InflaterInputStream;->eof:Z

    iput-boolean v2, p0, Ljava/util/zip/GZIPInputStream;->eos:Z

    throw v1
.end method
