.class public Ljava/util/zip/ZipInputStream;
.super Ljava/util/zip/InflaterInputStream;
.source "ZipInputStream.java"

# interfaces
.implements Ljava/util/zip/ZipConstants;


# static fields
.field private static final ZIPLocalHeaderVersionNeeded:I = 0x14


# instance fields
.field private charBuf:[C

.field private final crc:Ljava/util/zip/CRC32;

.field private currentEntry:Ljava/util/zip/ZipEntry;

.field private entriesEnd:Z

.field private entryIn:I

.field private hasDD:Z

.field private final hdrBuf:[B

.field private inRead:I

.field private lastRead:I

.field private nameBuf:[B


# direct methods
.method public constructor <init>(Ljava/io/InputStream;)V
    .locals 5

    const/16 v4, 0x100

    const/4 v3, 0x0

    new-instance v0, Ljava/io/PushbackInputStream;

    const/16 v1, 0x200

    invoke-direct {v0, p1, v1}, Ljava/io/PushbackInputStream;-><init>(Ljava/io/InputStream;I)V

    new-instance v1, Ljava/util/zip/Inflater;

    const/4 v2, 0x1

    invoke-direct {v1, v2}, Ljava/util/zip/Inflater;-><init>(Z)V

    invoke-direct {p0, v0, v1}, Ljava/util/zip/InflaterInputStream;-><init>(Ljava/io/InputStream;Ljava/util/zip/Inflater;)V

    iput-boolean v3, p0, Ljava/util/zip/ZipInputStream;->entriesEnd:Z

    iput-boolean v3, p0, Ljava/util/zip/ZipInputStream;->hasDD:Z

    iput v3, p0, Ljava/util/zip/ZipInputStream;->entryIn:I

    iput v3, p0, Ljava/util/zip/ZipInputStream;->lastRead:I

    const/16 v0, 0x1a

    new-array v0, v0, [B

    iput-object v0, p0, Ljava/util/zip/ZipInputStream;->hdrBuf:[B

    new-instance v0, Ljava/util/zip/CRC32;

    invoke-direct {v0}, Ljava/util/zip/CRC32;-><init>()V

    iput-object v0, p0, Ljava/util/zip/ZipInputStream;->crc:Ljava/util/zip/CRC32;

    new-array v0, v4, [B

    iput-object v0, p0, Ljava/util/zip/ZipInputStream;->nameBuf:[B

    new-array v0, v4, [C

    iput-object v0, p0, Ljava/util/zip/ZipInputStream;->charBuf:[C

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    :cond_0
    return-void
.end method

.method private checkClosed()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-boolean v0, p0, Ljava/util/zip/InflaterInputStream;->closed:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/io/IOException;

    const-string v1, "Stream is closed"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    return-void
.end method

.method private readAndVerifyDataDescriptor(II)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-wide v6, 0xffffffffL

    const/4 v5, 0x0

    iget-boolean v1, p0, Ljava/util/zip/ZipInputStream;->hasDD:Z

    if-eqz v1, :cond_1

    iget-object v1, p0, Ljava/util/zip/ZipInputStream;->in:Ljava/io/InputStream;

    iget-object v2, p0, Ljava/util/zip/ZipInputStream;->hdrBuf:[B

    const/16 v3, 0x10

    invoke-static {v1, v2, v5, v3}, Llibcore/io/Streams;->readFully(Ljava/io/InputStream;[BII)V

    iget-object v1, p0, Ljava/util/zip/ZipInputStream;->hdrBuf:[B

    sget-object v2, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-static {v1, v5, v2}, Llibcore/io/Memory;->peekInt([BILjava/nio/ByteOrder;)I

    move-result v0

    const v1, 0x8074b50

    if-eq v0, v1, :cond_0

    new-instance v1, Ljava/util/zip/ZipException;

    const-string v2, "unknown format (EXTSIG=%x)"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/util/zip/ZipException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_0
    iget-object v1, p0, Ljava/util/zip/ZipInputStream;->currentEntry:Ljava/util/zip/ZipEntry;

    iget-object v2, p0, Ljava/util/zip/ZipInputStream;->hdrBuf:[B

    const/4 v3, 0x4

    sget-object v4, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-static {v2, v3, v4}, Llibcore/io/Memory;->peekInt([BILjava/nio/ByteOrder;)I

    move-result v2

    int-to-long v2, v2

    and-long/2addr v2, v6

    iput-wide v2, v1, Ljava/util/zip/ZipEntry;->crc:J

    iget-object v1, p0, Ljava/util/zip/ZipInputStream;->currentEntry:Ljava/util/zip/ZipEntry;

    iget-object v2, p0, Ljava/util/zip/ZipInputStream;->hdrBuf:[B

    const/16 v3, 0x8

    sget-object v4, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-static {v2, v3, v4}, Llibcore/io/Memory;->peekInt([BILjava/nio/ByteOrder;)I

    move-result v2

    int-to-long v2, v2

    and-long/2addr v2, v6

    iput-wide v2, v1, Ljava/util/zip/ZipEntry;->compressedSize:J

    iget-object v1, p0, Ljava/util/zip/ZipInputStream;->currentEntry:Ljava/util/zip/ZipEntry;

    iget-object v2, p0, Ljava/util/zip/ZipInputStream;->hdrBuf:[B

    const/16 v3, 0xc

    sget-object v4, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-static {v2, v3, v4}, Llibcore/io/Memory;->peekInt([BILjava/nio/ByteOrder;)I

    move-result v2

    int-to-long v2, v2

    and-long/2addr v2, v6

    iput-wide v2, v1, Ljava/util/zip/ZipEntry;->size:J

    :cond_1
    iget-object v1, p0, Ljava/util/zip/ZipInputStream;->currentEntry:Ljava/util/zip/ZipEntry;

    iget-wide v1, v1, Ljava/util/zip/ZipEntry;->crc:J

    iget-object v3, p0, Ljava/util/zip/ZipInputStream;->crc:Ljava/util/zip/CRC32;

    invoke-virtual {v3}, Ljava/util/zip/CRC32;->getValue()J

    move-result-wide v3

    cmp-long v1, v1, v3

    if-eqz v1, :cond_2

    new-instance v1, Ljava/util/zip/ZipException;

    const-string v2, "CRC mismatch"

    invoke-direct {v1, v2}, Ljava/util/zip/ZipException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_2
    iget-object v1, p0, Ljava/util/zip/ZipInputStream;->currentEntry:Ljava/util/zip/ZipEntry;

    iget-wide v1, v1, Ljava/util/zip/ZipEntry;->compressedSize:J

    int-to-long v3, p1

    cmp-long v1, v1, v3

    if-nez v1, :cond_3

    iget-object v1, p0, Ljava/util/zip/ZipInputStream;->currentEntry:Ljava/util/zip/ZipEntry;

    iget-wide v1, v1, Ljava/util/zip/ZipEntry;->size:J

    int-to-long v3, p2

    cmp-long v1, v1, v3

    if-eqz v1, :cond_4

    :cond_3
    new-instance v1, Ljava/util/zip/ZipException;

    const-string v2, "Size mismatch"

    invoke-direct {v1, v2}, Ljava/util/zip/ZipException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_4
    return-void
.end method


# virtual methods
.method public available()I
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-direct {p0}, Ljava/util/zip/ZipInputStream;->checkClosed()V

    iget-object v0, p0, Ljava/util/zip/ZipInputStream;->currentEntry:Ljava/util/zip/ZipEntry;

    if-eqz v0, :cond_0

    iget v0, p0, Ljava/util/zip/ZipInputStream;->inRead:I

    int-to-long v0, v0

    iget-object v2, p0, Ljava/util/zip/ZipInputStream;->currentEntry:Ljava/util/zip/ZipEntry;

    iget-wide v2, v2, Ljava/util/zip/ZipEntry;->size:J

    cmp-long v0, v0, v2

    if-gez v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public close()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-boolean v0, p0, Ljava/util/zip/InflaterInputStream;->closed:Z

    if-nez v0, :cond_0

    invoke-virtual {p0}, Ljava/util/zip/ZipInputStream;->closeEntry()V

    invoke-super {p0}, Ljava/util/zip/InflaterInputStream;->close()V

    :cond_0
    return-void
.end method

.method public closeEntry()V
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-direct {p0}, Ljava/util/zip/ZipInputStream;->checkClosed()V

    iget-object v7, p0, Ljava/util/zip/ZipInputStream;->currentEntry:Ljava/util/zip/ZipEntry;

    if-nez v7, :cond_1

    :cond_0
    return-void

    :cond_1
    iget-object v7, p0, Ljava/util/zip/ZipInputStream;->currentEntry:Ljava/util/zip/ZipEntry;

    instance-of v7, v7, Ljava/util/jar/JarEntry;

    if-eqz v7, :cond_2

    iget-object v7, p0, Ljava/util/zip/ZipInputStream;->currentEntry:Ljava/util/zip/ZipEntry;

    check-cast v7, Ljava/util/jar/JarEntry;

    invoke-virtual {v7}, Ljava/util/jar/JarEntry;->getAttributes()Ljava/util/jar/Attributes;

    move-result-object v6

    if-eqz v6, :cond_2

    const-string v7, "hidden"

    invoke-virtual {v6, v7}, Ljava/util/jar/Attributes;->containsKey(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_0

    :cond_2
    const/4 v3, 0x0

    :try_start_0
    invoke-static {p0}, Llibcore/io/Streams;->skipAll(Ljava/io/InputStream;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    iget-object v7, p0, Ljava/util/zip/ZipInputStream;->currentEntry:Ljava/util/zip/ZipEntry;

    iget v7, v7, Ljava/util/zip/ZipEntry;->compressionMethod:I

    const/16 v8, 0x8

    if-ne v7, v8, :cond_5

    iget-object v7, p0, Ljava/util/zip/InflaterInputStream;->inf:Ljava/util/zip/Inflater;

    invoke-virtual {v7}, Ljava/util/zip/Inflater;->getTotalIn()I

    move-result v4

    iget-object v7, p0, Ljava/util/zip/InflaterInputStream;->inf:Ljava/util/zip/Inflater;

    invoke-virtual {v7}, Ljava/util/zip/Inflater;->getTotalOut()I

    move-result v5

    :goto_1
    iget v7, p0, Ljava/util/zip/ZipInputStream;->entryIn:I

    sub-int v0, v7, v4

    if-eqz v0, :cond_3

    iget-object v7, p0, Ljava/util/zip/ZipInputStream;->in:Ljava/io/InputStream;

    check-cast v7, Ljava/io/PushbackInputStream;

    iget-object v8, p0, Ljava/util/zip/InflaterInputStream;->buf:[B

    iget v9, p0, Ljava/util/zip/InflaterInputStream;->len:I

    sub-int/2addr v9, v0

    invoke-virtual {v7, v8, v9, v0}, Ljava/io/PushbackInputStream;->unread([BII)V

    :cond_3
    :try_start_1
    invoke-direct {p0, v4, v5}, Ljava/util/zip/ZipInputStream;->readAndVerifyDataDescriptor(II)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    :cond_4
    :goto_2
    iget-object v7, p0, Ljava/util/zip/InflaterInputStream;->inf:Ljava/util/zip/Inflater;

    invoke-virtual {v7}, Ljava/util/zip/Inflater;->reset()V

    const/4 v7, 0x0

    iput v7, p0, Ljava/util/zip/InflaterInputStream;->len:I

    iput v7, p0, Ljava/util/zip/ZipInputStream;->entryIn:I

    iput v7, p0, Ljava/util/zip/ZipInputStream;->inRead:I

    iput v7, p0, Ljava/util/zip/ZipInputStream;->lastRead:I

    iget-object v7, p0, Ljava/util/zip/ZipInputStream;->crc:Ljava/util/zip/CRC32;

    invoke-virtual {v7}, Ljava/util/zip/CRC32;->reset()V

    const/4 v7, 0x0

    iput-object v7, p0, Ljava/util/zip/ZipInputStream;->currentEntry:Ljava/util/zip/ZipEntry;

    if-eqz v3, :cond_0

    instance-of v7, v3, Ljava/io/IOException;

    if-eqz v7, :cond_6

    check-cast v3, Ljava/io/IOException;

    throw v3

    :catch_0
    move-exception v1

    move-object v3, v1

    goto :goto_0

    :cond_5
    iget v4, p0, Ljava/util/zip/ZipInputStream;->inRead:I

    iget v5, p0, Ljava/util/zip/ZipInputStream;->inRead:I

    goto :goto_1

    :catch_1
    move-exception v1

    if-nez v3, :cond_4

    move-object v3, v1

    goto :goto_2

    :cond_6
    instance-of v7, v3, Ljava/lang/RuntimeException;

    if-eqz v7, :cond_7

    check-cast v3, Ljava/lang/RuntimeException;

    throw v3

    :cond_7
    new-instance v2, Ljava/lang/AssertionError;

    invoke-direct {v2}, Ljava/lang/AssertionError;-><init>()V

    invoke-virtual {v2, v3}, Ljava/lang/AssertionError;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    throw v2
.end method

.method protected createZipEntry(Ljava/lang/String;)Ljava/util/zip/ZipEntry;
    .locals 1

    new-instance v0, Ljava/util/zip/ZipEntry;

    invoke-direct {v0, p1}, Ljava/util/zip/ZipEntry;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public getNextEntry()Ljava/util/zip/ZipEntry;
    .locals 23
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual/range {p0 .. p0}, Ljava/util/zip/ZipInputStream;->closeEntry()V

    move-object/from16 v0, p0

    iget-boolean v0, v0, Ljava/util/zip/ZipInputStream;->entriesEnd:Z

    move/from16 v19, v0

    if-eqz v19, :cond_0

    const/16 v19, 0x0

    :goto_0
    return-object v19

    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Ljava/util/zip/ZipInputStream;->in:Ljava/io/InputStream;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Ljava/util/zip/ZipInputStream;->hdrBuf:[B

    move-object/from16 v20, v0

    const/16 v21, 0x0

    const/16 v22, 0x4

    invoke-static/range {v19 .. v22}, Llibcore/io/Streams;->readFully(Ljava/io/InputStream;[BII)V

    move-object/from16 v0, p0

    iget-object v0, v0, Ljava/util/zip/ZipInputStream;->hdrBuf:[B

    move-object/from16 v19, v0

    const/16 v20, 0x0

    sget-object v21, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-static/range {v19 .. v21}, Llibcore/io/Memory;->peekInt([BILjava/nio/ByteOrder;)I

    move-result v16

    move/from16 v0, v16

    int-to-long v0, v0

    move-wide/from16 v19, v0

    const-wide/32 v21, 0x2014b50

    cmp-long v19, v19, v21

    if-nez v19, :cond_1

    const/16 v19, 0x1

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput-boolean v0, v1, Ljava/util/zip/ZipInputStream;->entriesEnd:Z

    const/16 v19, 0x0

    goto :goto_0

    :cond_1
    move/from16 v0, v16

    int-to-long v0, v0

    move-wide/from16 v19, v0

    const-wide/32 v21, 0x4034b50

    cmp-long v19, v19, v21

    if-eqz v19, :cond_2

    const/16 v19, 0x0

    goto :goto_0

    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Ljava/util/zip/ZipInputStream;->in:Ljava/io/InputStream;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Ljava/util/zip/ZipInputStream;->hdrBuf:[B

    move-object/from16 v20, v0

    const/16 v21, 0x0

    const/16 v22, 0x1a

    invoke-static/range {v19 .. v22}, Llibcore/io/Streams;->readFully(Ljava/io/InputStream;[BII)V

    move-object/from16 v0, p0

    iget-object v0, v0, Ljava/util/zip/ZipInputStream;->hdrBuf:[B

    move-object/from16 v19, v0

    const/16 v20, 0x0

    sget-object v21, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-static/range {v19 .. v21}, Llibcore/io/Memory;->peekShort([BILjava/nio/ByteOrder;)S

    move-result v19

    move/from16 v0, v19

    and-int/lit16 v0, v0, 0xff

    move/from16 v18, v0

    const/16 v19, 0x14

    move/from16 v0, v18

    move/from16 v1, v19

    if-le v0, v1, :cond_3

    new-instance v19, Ljava/util/zip/ZipException;

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "Cannot read local header version "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-direct/range {v19 .. v20}, Ljava/util/zip/ZipException;-><init>(Ljava/lang/String;)V

    throw v19

    :cond_3
    move-object/from16 v0, p0

    iget-object v0, v0, Ljava/util/zip/ZipInputStream;->hdrBuf:[B

    move-object/from16 v19, v0

    const/16 v20, 0x2

    sget-object v21, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-static/range {v19 .. v21}, Llibcore/io/Memory;->peekShort([BILjava/nio/ByteOrder;)S

    move-result v15

    and-int/lit8 v19, v15, 0x8

    if-eqz v19, :cond_5

    const/16 v19, 0x1

    :goto_1
    move/from16 v0, v19

    move-object/from16 v1, p0

    iput-boolean v0, v1, Ljava/util/zip/ZipInputStream;->hasDD:Z

    move-object/from16 v0, p0

    iget-object v0, v0, Ljava/util/zip/ZipInputStream;->hdrBuf:[B

    move-object/from16 v19, v0

    const/16 v20, 0x6

    sget-object v21, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-static/range {v19 .. v21}, Llibcore/io/Memory;->peekShort([BILjava/nio/ByteOrder;)S

    move-result v19

    const v20, 0xffff

    and-int v12, v19, v20

    move-object/from16 v0, p0

    iget-object v0, v0, Ljava/util/zip/ZipInputStream;->hdrBuf:[B

    move-object/from16 v19, v0

    const/16 v20, 0x8

    sget-object v21, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-static/range {v19 .. v21}, Llibcore/io/Memory;->peekShort([BILjava/nio/ByteOrder;)S

    move-result v19

    const v20, 0xffff

    and-int v9, v19, v20

    move-object/from16 v0, p0

    iget-object v0, v0, Ljava/util/zip/ZipInputStream;->hdrBuf:[B

    move-object/from16 v19, v0

    const/16 v20, 0x4

    sget-object v21, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-static/range {v19 .. v21}, Llibcore/io/Memory;->peekShort([BILjava/nio/ByteOrder;)S

    move-result v19

    const v20, 0xffff

    and-int v6, v19, v20

    const-wide/16 v7, 0x0

    const-wide/16 v4, 0x0

    const-wide/16 v10, -0x1

    move-object/from16 v0, p0

    iget-boolean v0, v0, Ljava/util/zip/ZipInputStream;->hasDD:Z

    move/from16 v19, v0

    if-nez v19, :cond_4

    move-object/from16 v0, p0

    iget-object v0, v0, Ljava/util/zip/ZipInputStream;->hdrBuf:[B

    move-object/from16 v19, v0

    const/16 v20, 0xa

    sget-object v21, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-static/range {v19 .. v21}, Llibcore/io/Memory;->peekInt([BILjava/nio/ByteOrder;)I

    move-result v19

    move/from16 v0, v19

    int-to-long v0, v0

    move-wide/from16 v19, v0

    const-wide v21, 0xffffffffL

    and-long v7, v19, v21

    move-object/from16 v0, p0

    iget-object v0, v0, Ljava/util/zip/ZipInputStream;->hdrBuf:[B

    move-object/from16 v19, v0

    const/16 v20, 0xe

    sget-object v21, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-static/range {v19 .. v21}, Llibcore/io/Memory;->peekInt([BILjava/nio/ByteOrder;)I

    move-result v19

    move/from16 v0, v19

    int-to-long v0, v0

    move-wide/from16 v19, v0

    const-wide v21, 0xffffffffL

    and-long v4, v19, v21

    move-object/from16 v0, p0

    iget-object v0, v0, Ljava/util/zip/ZipInputStream;->hdrBuf:[B

    move-object/from16 v19, v0

    const/16 v20, 0x12

    sget-object v21, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-static/range {v19 .. v21}, Llibcore/io/Memory;->peekInt([BILjava/nio/ByteOrder;)I

    move-result v19

    move/from16 v0, v19

    int-to-long v0, v0

    move-wide/from16 v19, v0

    const-wide v21, 0xffffffffL

    and-long v10, v19, v21

    :cond_4
    move-object/from16 v0, p0

    iget-object v0, v0, Ljava/util/zip/ZipInputStream;->hdrBuf:[B

    move-object/from16 v19, v0

    const/16 v20, 0x16

    sget-object v21, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-static/range {v19 .. v21}, Llibcore/io/Memory;->peekShort([BILjava/nio/ByteOrder;)S

    move-result v19

    const v20, 0xffff

    and-int v17, v19, v20

    if-nez v17, :cond_6

    new-instance v19, Ljava/util/zip/ZipException;

    const-string v20, "Entry is not named"

    invoke-direct/range {v19 .. v20}, Ljava/util/zip/ZipException;-><init>(Ljava/lang/String;)V

    throw v19

    :cond_5
    const/16 v19, 0x0

    goto/16 :goto_1

    :cond_6
    move-object/from16 v0, p0

    iget-object v0, v0, Ljava/util/zip/ZipInputStream;->hdrBuf:[B

    move-object/from16 v19, v0

    const/16 v20, 0x18

    sget-object v21, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-static/range {v19 .. v21}, Llibcore/io/Memory;->peekShort([BILjava/nio/ByteOrder;)S

    move-result v19

    const v20, 0xffff

    and-int v14, v19, v20

    move-object/from16 v0, p0

    iget-object v0, v0, Ljava/util/zip/ZipInputStream;->nameBuf:[B

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    array-length v0, v0

    move/from16 v19, v0

    move/from16 v0, v17

    move/from16 v1, v19

    if-le v0, v1, :cond_7

    move/from16 v0, v17

    new-array v0, v0, [B

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Ljava/util/zip/ZipInputStream;->nameBuf:[B

    move/from16 v0, v17

    new-array v0, v0, [C

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Ljava/util/zip/ZipInputStream;->charBuf:[C

    :cond_7
    move-object/from16 v0, p0

    iget-object v0, v0, Ljava/util/zip/ZipInputStream;->in:Ljava/io/InputStream;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Ljava/util/zip/ZipInputStream;->nameBuf:[B

    move-object/from16 v20, v0

    const/16 v21, 0x0

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    move/from16 v2, v21

    move/from16 v3, v17

    invoke-static {v0, v1, v2, v3}, Llibcore/io/Streams;->readFully(Ljava/io/InputStream;[BII)V

    move-object/from16 v0, p0

    iget-object v0, v0, Ljava/util/zip/ZipInputStream;->nameBuf:[B

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Ljava/util/zip/ZipInputStream;->charBuf:[C

    move-object/from16 v20, v0

    const/16 v21, 0x0

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    move/from16 v2, v21

    move/from16 v3, v17

    invoke-static {v0, v1, v2, v3}, Ljava/nio/charset/ModifiedUtf8;->decode([B[CII)Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/util/zip/ZipInputStream;->createZipEntry(Ljava/lang/String;)Ljava/util/zip/ZipEntry;

    move-result-object v19

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Ljava/util/zip/ZipInputStream;->currentEntry:Ljava/util/zip/ZipEntry;

    move-object/from16 v0, p0

    iget-object v0, v0, Ljava/util/zip/ZipInputStream;->currentEntry:Ljava/util/zip/ZipEntry;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iput v12, v0, Ljava/util/zip/ZipEntry;->time:I

    move-object/from16 v0, p0

    iget-object v0, v0, Ljava/util/zip/ZipInputStream;->currentEntry:Ljava/util/zip/ZipEntry;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iput v9, v0, Ljava/util/zip/ZipEntry;->modDate:I

    move-object/from16 v0, p0

    iget-object v0, v0, Ljava/util/zip/ZipInputStream;->currentEntry:Ljava/util/zip/ZipEntry;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-virtual {v0, v6}, Ljava/util/zip/ZipEntry;->setMethod(I)V

    const-wide/16 v19, -0x1

    cmp-long v19, v10, v19

    if-eqz v19, :cond_8

    move-object/from16 v0, p0

    iget-object v0, v0, Ljava/util/zip/ZipInputStream;->currentEntry:Ljava/util/zip/ZipEntry;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-virtual {v0, v7, v8}, Ljava/util/zip/ZipEntry;->setCrc(J)V

    move-object/from16 v0, p0

    iget-object v0, v0, Ljava/util/zip/ZipInputStream;->currentEntry:Ljava/util/zip/ZipEntry;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-virtual {v0, v10, v11}, Ljava/util/zip/ZipEntry;->setSize(J)V

    move-object/from16 v0, p0

    iget-object v0, v0, Ljava/util/zip/ZipInputStream;->currentEntry:Ljava/util/zip/ZipEntry;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-virtual {v0, v4, v5}, Ljava/util/zip/ZipEntry;->setCompressedSize(J)V

    :cond_8
    if-lez v14, :cond_9

    new-array v13, v14, [B

    move-object/from16 v0, p0

    iget-object v0, v0, Ljava/util/zip/ZipInputStream;->in:Ljava/io/InputStream;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    move-object/from16 v0, v19

    move/from16 v1, v20

    invoke-static {v0, v13, v1, v14}, Llibcore/io/Streams;->readFully(Ljava/io/InputStream;[BII)V

    move-object/from16 v0, p0

    iget-object v0, v0, Ljava/util/zip/ZipInputStream;->currentEntry:Ljava/util/zip/ZipEntry;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-virtual {v0, v13}, Ljava/util/zip/ZipEntry;->setExtra([B)V

    :cond_9
    move-object/from16 v0, p0

    iget-object v0, v0, Ljava/util/zip/ZipInputStream;->currentEntry:Ljava/util/zip/ZipEntry;

    move-object/from16 v19, v0

    goto/16 :goto_0
.end method

.method public read([BII)I
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v3, -0x1

    invoke-direct {p0}, Ljava/util/zip/ZipInputStream;->checkClosed()V

    array-length v4, p1

    invoke-static {v4, p2, p3}, Ljava/util/Arrays;->checkOffsetAndCount(III)V

    iget-object v4, p0, Ljava/util/zip/InflaterInputStream;->inf:Ljava/util/zip/Inflater;

    invoke-virtual {v4}, Ljava/util/zip/Inflater;->finished()Z

    move-result v4

    if-nez v4, :cond_0

    iget-object v4, p0, Ljava/util/zip/ZipInputStream;->currentEntry:Ljava/util/zip/ZipEntry;

    if-nez v4, :cond_1

    :cond_0
    :goto_0
    return v3

    :cond_1
    iget-object v4, p0, Ljava/util/zip/ZipInputStream;->currentEntry:Ljava/util/zip/ZipEntry;

    iget v4, v4, Ljava/util/zip/ZipEntry;->compressionMethod:I

    if-nez v4, :cond_6

    iget-object v4, p0, Ljava/util/zip/ZipInputStream;->currentEntry:Ljava/util/zip/ZipEntry;

    iget-wide v4, v4, Ljava/util/zip/ZipEntry;->size:J

    long-to-int v0, v4

    iget v4, p0, Ljava/util/zip/ZipInputStream;->inRead:I

    if-ge v4, v0, :cond_0

    iget v4, p0, Ljava/util/zip/ZipInputStream;->lastRead:I

    iget v5, p0, Ljava/util/zip/InflaterInputStream;->len:I

    if-lt v4, v5, :cond_3

    const/4 v4, 0x0

    iput v4, p0, Ljava/util/zip/ZipInputStream;->lastRead:I

    iget-object v4, p0, Ljava/util/zip/ZipInputStream;->in:Ljava/io/InputStream;

    iget-object v5, p0, Ljava/util/zip/InflaterInputStream;->buf:[B

    invoke-virtual {v4, v5}, Ljava/io/InputStream;->read([B)I

    move-result v4

    iput v4, p0, Ljava/util/zip/InflaterInputStream;->len:I

    if-ne v4, v3, :cond_2

    const/4 v4, 0x1

    iput-boolean v4, p0, Ljava/util/zip/InflaterInputStream;->eof:Z

    goto :goto_0

    :cond_2
    iget v4, p0, Ljava/util/zip/ZipInputStream;->entryIn:I

    iget v5, p0, Ljava/util/zip/InflaterInputStream;->len:I

    add-int/2addr v4, v5

    iput v4, p0, Ljava/util/zip/ZipInputStream;->entryIn:I

    :cond_3
    iget v4, p0, Ljava/util/zip/InflaterInputStream;->len:I

    iget v5, p0, Ljava/util/zip/ZipInputStream;->lastRead:I

    sub-int/2addr v4, v5

    if-le p3, v4, :cond_5

    iget v4, p0, Ljava/util/zip/InflaterInputStream;->len:I

    iget v5, p0, Ljava/util/zip/ZipInputStream;->lastRead:I

    sub-int v3, v4, v5

    :goto_1
    iget v4, p0, Ljava/util/zip/ZipInputStream;->inRead:I

    sub-int v4, v0, v4

    if-ge v4, v3, :cond_4

    iget v4, p0, Ljava/util/zip/ZipInputStream;->inRead:I

    sub-int v3, v0, v4

    :cond_4
    iget-object v4, p0, Ljava/util/zip/InflaterInputStream;->buf:[B

    iget v5, p0, Ljava/util/zip/ZipInputStream;->lastRead:I

    invoke-static {v4, v5, p1, p2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget v4, p0, Ljava/util/zip/ZipInputStream;->lastRead:I

    add-int/2addr v4, v3

    iput v4, p0, Ljava/util/zip/ZipInputStream;->lastRead:I

    iget v4, p0, Ljava/util/zip/ZipInputStream;->inRead:I

    add-int/2addr v4, v3

    iput v4, p0, Ljava/util/zip/ZipInputStream;->inRead:I

    iget-object v4, p0, Ljava/util/zip/ZipInputStream;->crc:Ljava/util/zip/CRC32;

    invoke-virtual {v4, p1, p2, v3}, Ljava/util/zip/CRC32;->update([BII)V

    goto :goto_0

    :cond_5
    move v3, p3

    goto :goto_1

    :cond_6
    iget-object v4, p0, Ljava/util/zip/InflaterInputStream;->inf:Ljava/util/zip/Inflater;

    invoke-virtual {v4}, Ljava/util/zip/Inflater;->needsInput()Z

    move-result v4

    if-eqz v4, :cond_7

    invoke-virtual {p0}, Ljava/util/zip/ZipInputStream;->fill()V

    iget v4, p0, Ljava/util/zip/InflaterInputStream;->len:I

    if-lez v4, :cond_7

    iget v4, p0, Ljava/util/zip/ZipInputStream;->entryIn:I

    iget v5, p0, Ljava/util/zip/InflaterInputStream;->len:I

    add-int/2addr v4, v5

    iput v4, p0, Ljava/util/zip/ZipInputStream;->entryIn:I

    :cond_7
    :try_start_0
    iget-object v4, p0, Ljava/util/zip/InflaterInputStream;->inf:Ljava/util/zip/Inflater;

    invoke-virtual {v4, p1, p2, p3}, Ljava/util/zip/Inflater;->inflate([BII)I
    :try_end_0
    .catch Ljava/util/zip/DataFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    if-nez v2, :cond_8

    iget-object v4, p0, Ljava/util/zip/InflaterInputStream;->inf:Ljava/util/zip/Inflater;

    invoke-virtual {v4}, Ljava/util/zip/Inflater;->finished()Z

    move-result v4

    if-nez v4, :cond_0

    :cond_8
    iget-object v4, p0, Ljava/util/zip/ZipInputStream;->crc:Ljava/util/zip/CRC32;

    invoke-virtual {v4, p1, p2, v2}, Ljava/util/zip/CRC32;->update([BII)V

    move v3, v2

    goto/16 :goto_0

    :catch_0
    move-exception v1

    new-instance v4, Ljava/util/zip/ZipException;

    invoke-virtual {v1}, Ljava/util/zip/DataFormatException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/util/zip/ZipException;-><init>(Ljava/lang/String;)V

    throw v4
.end method
