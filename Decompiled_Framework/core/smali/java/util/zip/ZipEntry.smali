.class public Ljava/util/zip/ZipEntry;
.super Ljava/lang/Object;
.source "ZipEntry.java"

# interfaces
.implements Ljava/util/zip/ZipConstants;
.implements Ljava/lang/Cloneable;


# static fields
.field public static final DEFLATED:I = 0x8

.field public static final STORED:I


# instance fields
.field comment:Ljava/lang/String;

.field compressedSize:J

.field compressionMethod:I

.field crc:J

.field extra:[B

.field mLocalHeaderRelOffset:J

.field modDate:I

.field name:Ljava/lang/String;

.field nameLength:I

.field size:J

.field time:I


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 3

    const-wide/16 v1, -0x1

    const/4 v0, -0x1

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    iput-wide v1, p0, Ljava/util/zip/ZipEntry;->compressedSize:J

    iput-wide v1, p0, Ljava/util/zip/ZipEntry;->crc:J

    iput-wide v1, p0, Ljava/util/zip/ZipEntry;->size:J

    iput v0, p0, Ljava/util/zip/ZipEntry;->compressionMethod:I

    iput v0, p0, Ljava/util/zip/ZipEntry;->time:I

    iput v0, p0, Ljava/util/zip/ZipEntry;->modDate:I

    iput v0, p0, Ljava/util/zip/ZipEntry;->nameLength:I

    iput-wide v1, p0, Ljava/util/zip/ZipEntry;->mLocalHeaderRelOffset:J

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const v1, 0xffff

    if-le v0, v1, :cond_1

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Name too long: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    iput-object p1, p0, Ljava/util/zip/ZipEntry;->name:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/util/zip/ZipEntry;)V
    .locals 3

    const-wide/16 v1, -0x1

    const/4 v0, -0x1

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    iput-wide v1, p0, Ljava/util/zip/ZipEntry;->compressedSize:J

    iput-wide v1, p0, Ljava/util/zip/ZipEntry;->crc:J

    iput-wide v1, p0, Ljava/util/zip/ZipEntry;->size:J

    iput v0, p0, Ljava/util/zip/ZipEntry;->compressionMethod:I

    iput v0, p0, Ljava/util/zip/ZipEntry;->time:I

    iput v0, p0, Ljava/util/zip/ZipEntry;->modDate:I

    iput v0, p0, Ljava/util/zip/ZipEntry;->nameLength:I

    iput-wide v1, p0, Ljava/util/zip/ZipEntry;->mLocalHeaderRelOffset:J

    iget-object v0, p1, Ljava/util/zip/ZipEntry;->name:Ljava/lang/String;

    iput-object v0, p0, Ljava/util/zip/ZipEntry;->name:Ljava/lang/String;

    iget-object v0, p1, Ljava/util/zip/ZipEntry;->comment:Ljava/lang/String;

    iput-object v0, p0, Ljava/util/zip/ZipEntry;->comment:Ljava/lang/String;

    iget v0, p1, Ljava/util/zip/ZipEntry;->time:I

    iput v0, p0, Ljava/util/zip/ZipEntry;->time:I

    iget-wide v0, p1, Ljava/util/zip/ZipEntry;->size:J

    iput-wide v0, p0, Ljava/util/zip/ZipEntry;->size:J

    iget-wide v0, p1, Ljava/util/zip/ZipEntry;->compressedSize:J

    iput-wide v0, p0, Ljava/util/zip/ZipEntry;->compressedSize:J

    iget-wide v0, p1, Ljava/util/zip/ZipEntry;->crc:J

    iput-wide v0, p0, Ljava/util/zip/ZipEntry;->crc:J

    iget v0, p1, Ljava/util/zip/ZipEntry;->compressionMethod:I

    iput v0, p0, Ljava/util/zip/ZipEntry;->compressionMethod:I

    iget v0, p1, Ljava/util/zip/ZipEntry;->modDate:I

    iput v0, p0, Ljava/util/zip/ZipEntry;->modDate:I

    iget-object v0, p1, Ljava/util/zip/ZipEntry;->extra:[B

    iput-object v0, p0, Ljava/util/zip/ZipEntry;->extra:[B

    iget v0, p1, Ljava/util/zip/ZipEntry;->nameLength:I

    iput v0, p0, Ljava/util/zip/ZipEntry;->nameLength:I

    iget-wide v0, p1, Ljava/util/zip/ZipEntry;->mLocalHeaderRelOffset:J

    iput-wide v0, p0, Ljava/util/zip/ZipEntry;->mLocalHeaderRelOffset:J

    return-void
.end method

.method constructor <init>([BLjava/io/InputStream;)V
    .locals 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-wide v11, 0xffffffffL

    const-wide/16 v7, -0x1

    const/4 v6, -0x1

    const/4 v10, 0x0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    iput-wide v7, p0, Ljava/util/zip/ZipEntry;->compressedSize:J

    iput-wide v7, p0, Ljava/util/zip/ZipEntry;->crc:J

    iput-wide v7, p0, Ljava/util/zip/ZipEntry;->size:J

    iput v6, p0, Ljava/util/zip/ZipEntry;->compressionMethod:I

    iput v6, p0, Ljava/util/zip/ZipEntry;->time:I

    iput v6, p0, Ljava/util/zip/ZipEntry;->modDate:I

    iput v6, p0, Ljava/util/zip/ZipEntry;->nameLength:I

    iput-wide v7, p0, Ljava/util/zip/ZipEntry;->mLocalHeaderRelOffset:J

    array-length v6, p1

    invoke-static {p2, p1, v10, v6}, Llibcore/io/Streams;->readFully(Ljava/io/InputStream;[BII)V

    array-length v6, p1

    sget-object v7, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-static {p1, v10, v6, v7}, Llibcore/io/HeapBufferIterator;->iterator([BIILjava/nio/ByteOrder;)Llibcore/io/BufferIterator;

    move-result-object v3

    invoke-virtual {v3}, Llibcore/io/BufferIterator;->readInt()I

    move-result v5

    int-to-long v6, v5

    const-wide/32 v8, 0x2014b50

    cmp-long v6, v6, v8

    if-eqz v6, :cond_0

    new-instance v6, Ljava/util/zip/ZipException;

    const-string v7, "Central Directory Entry not found"

    invoke-direct {v6, v7}, Ljava/util/zip/ZipException;-><init>(Ljava/lang/String;)V

    throw v6

    :cond_0
    const/16 v6, 0xa

    invoke-virtual {v3, v6}, Llibcore/io/BufferIterator;->seek(I)V

    invoke-virtual {v3}, Llibcore/io/BufferIterator;->readShort()S

    move-result v6

    iput v6, p0, Ljava/util/zip/ZipEntry;->compressionMethod:I

    invoke-virtual {v3}, Llibcore/io/BufferIterator;->readShort()S

    move-result v6

    iput v6, p0, Ljava/util/zip/ZipEntry;->time:I

    invoke-virtual {v3}, Llibcore/io/BufferIterator;->readShort()S

    move-result v6

    iput v6, p0, Ljava/util/zip/ZipEntry;->modDate:I

    invoke-virtual {v3}, Llibcore/io/BufferIterator;->readInt()I

    move-result v6

    int-to-long v6, v6

    and-long/2addr v6, v11

    iput-wide v6, p0, Ljava/util/zip/ZipEntry;->crc:J

    invoke-virtual {v3}, Llibcore/io/BufferIterator;->readInt()I

    move-result v6

    int-to-long v6, v6

    and-long/2addr v6, v11

    iput-wide v6, p0, Ljava/util/zip/ZipEntry;->compressedSize:J

    invoke-virtual {v3}, Llibcore/io/BufferIterator;->readInt()I

    move-result v6

    int-to-long v6, v6

    and-long/2addr v6, v11

    iput-wide v6, p0, Ljava/util/zip/ZipEntry;->size:J

    invoke-virtual {v3}, Llibcore/io/BufferIterator;->readShort()S

    move-result v6

    iput v6, p0, Ljava/util/zip/ZipEntry;->nameLength:I

    invoke-virtual {v3}, Llibcore/io/BufferIterator;->readShort()S

    move-result v2

    invoke-virtual {v3}, Llibcore/io/BufferIterator;->readShort()S

    move-result v1

    const/16 v6, 0x2a

    invoke-virtual {v3, v6}, Llibcore/io/BufferIterator;->seek(I)V

    invoke-virtual {v3}, Llibcore/io/BufferIterator;->readInt()I

    move-result v6

    int-to-long v6, v6

    and-long/2addr v6, v11

    iput-wide v6, p0, Ljava/util/zip/ZipEntry;->mLocalHeaderRelOffset:J

    iget v6, p0, Ljava/util/zip/ZipEntry;->nameLength:I

    new-array v4, v6, [B

    array-length v6, v4

    invoke-static {p2, v4, v10, v6}, Llibcore/io/Streams;->readFully(Ljava/io/InputStream;[BII)V

    new-instance v6, Ljava/lang/String;

    array-length v7, v4

    sget-object v8, Ljava/nio/charset/Charsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {v6, v4, v10, v7, v8}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    iput-object v6, p0, Ljava/util/zip/ZipEntry;->name:Ljava/lang/String;

    if-lez v1, :cond_1

    new-array v0, v1, [B

    invoke-static {p2, v0, v10, v1}, Llibcore/io/Streams;->readFully(Ljava/io/InputStream;[BII)V

    new-instance v6, Ljava/lang/String;

    array-length v7, v0

    sget-object v8, Ljava/nio/charset/Charsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {v6, v0, v10, v7, v8}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    iput-object v6, p0, Ljava/util/zip/ZipEntry;->comment:Ljava/lang/String;

    :cond_1
    if-lez v2, :cond_2

    new-array v6, v2, [B

    iput-object v6, p0, Ljava/util/zip/ZipEntry;->extra:[B

    iget-object v6, p0, Ljava/util/zip/ZipEntry;->extra:[B

    invoke-static {p2, v6, v10, v2}, Llibcore/io/Streams;->readFully(Ljava/io/InputStream;[BII)V

    :cond_2
    return-void
.end method


# virtual methods
.method public clone()Ljava/lang/Object;
    .locals 3

    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/zip/ZipEntry;

    iget-object v2, p0, Ljava/util/zip/ZipEntry;->extra:[B

    if-eqz v2, :cond_0

    iget-object v2, p0, Ljava/util/zip/ZipEntry;->extra:[B

    invoke-virtual {v2}, [B->clone()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [B

    :goto_0
    iput-object v2, v1, Ljava/util/zip/ZipEntry;->extra:[B
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    :cond_0
    const/4 v2, 0x0

    goto :goto_0

    :catch_0
    move-exception v0

    new-instance v2, Ljava/lang/AssertionError;

    invoke-direct {v2, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v2
.end method

.method public getComment()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Ljava/util/zip/ZipEntry;->comment:Ljava/lang/String;

    return-object v0
.end method

.method public getCompressedSize()J
    .locals 2

    iget-wide v0, p0, Ljava/util/zip/ZipEntry;->compressedSize:J

    return-wide v0
.end method

.method public getCrc()J
    .locals 2

    iget-wide v0, p0, Ljava/util/zip/ZipEntry;->crc:J

    return-wide v0
.end method

.method public getExtra()[B
    .locals 1

    iget-object v0, p0, Ljava/util/zip/ZipEntry;->extra:[B

    return-object v0
.end method

.method public getMethod()I
    .locals 1

    iget v0, p0, Ljava/util/zip/ZipEntry;->compressionMethod:I

    return v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Ljava/util/zip/ZipEntry;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getSize()J
    .locals 2

    iget-wide v0, p0, Ljava/util/zip/ZipEntry;->size:J

    return-wide v0
.end method

.method public getTime()J
    .locals 7

    iget v1, p0, Ljava/util/zip/ZipEntry;->time:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    new-instance v0, Ljava/util/GregorianCalendar;

    invoke-direct {v0}, Ljava/util/GregorianCalendar;-><init>()V

    const/16 v1, 0xe

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Ljava/util/GregorianCalendar;->set(II)V

    iget v1, p0, Ljava/util/zip/ZipEntry;->modDate:I

    shr-int/lit8 v1, v1, 0x9

    and-int/lit8 v1, v1, 0x7f

    add-int/lit16 v1, v1, 0x7bc

    iget v2, p0, Ljava/util/zip/ZipEntry;->modDate:I

    shr-int/lit8 v2, v2, 0x5

    and-int/lit8 v2, v2, 0xf

    add-int/lit8 v2, v2, -0x1

    iget v3, p0, Ljava/util/zip/ZipEntry;->modDate:I

    and-int/lit8 v3, v3, 0x1f

    iget v4, p0, Ljava/util/zip/ZipEntry;->time:I

    shr-int/lit8 v4, v4, 0xb

    and-int/lit8 v4, v4, 0x1f

    iget v5, p0, Ljava/util/zip/ZipEntry;->time:I

    shr-int/lit8 v5, v5, 0x5

    and-int/lit8 v5, v5, 0x3f

    iget v6, p0, Ljava/util/zip/ZipEntry;->time:I

    and-int/lit8 v6, v6, 0x1f

    shl-int/lit8 v6, v6, 0x1

    invoke-virtual/range {v0 .. v6}, Ljava/util/GregorianCalendar;->set(IIIIII)V

    invoke-virtual {v0}, Ljava/util/GregorianCalendar;->getTime()Ljava/util/Date;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Date;->getTime()J

    move-result-wide v1

    :goto_0
    return-wide v1

    :cond_0
    const-wide/16 v1, -0x1

    goto :goto_0
.end method

.method public hashCode()I
    .locals 1

    iget-object v0, p0, Ljava/util/zip/ZipEntry;->name:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    return v0
.end method

.method public isDirectory()Z
    .locals 2

    iget-object v0, p0, Ljava/util/zip/ZipEntry;->name:Ljava/lang/String;

    iget-object v1, p0, Ljava/util/zip/ZipEntry;->name:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v1, 0x2f

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setComment(Ljava/lang/String;)V
    .locals 2

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const v1, 0xffff

    if-gt v0, v1, :cond_1

    :cond_0
    iput-object p1, p0, Ljava/util/zip/ZipEntry;->comment:Ljava/lang/String;

    return-void

    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0
.end method

.method public setCompressedSize(J)V
    .locals 0

    iput-wide p1, p0, Ljava/util/zip/ZipEntry;->compressedSize:J

    return-void
.end method

.method public setCrc(J)V
    .locals 3

    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-ltz v0, :cond_0

    const-wide v0, 0xffffffffL

    cmp-long v0, p1, v0

    if-gtz v0, :cond_0

    iput-wide p1, p0, Ljava/util/zip/ZipEntry;->crc:J

    return-void

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Bad CRC32: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setExtra([B)V
    .locals 2

    if-eqz p1, :cond_0

    array-length v0, p1

    const v1, 0xffff

    if-gt v0, v1, :cond_1

    :cond_0
    iput-object p1, p0, Ljava/util/zip/ZipEntry;->extra:[B

    return-void

    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0
.end method

.method public setMethod(I)V
    .locals 3

    if-eqz p1, :cond_0

    const/16 v0, 0x8

    if-eq p1, v0, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Bad method: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iput p1, p0, Ljava/util/zip/ZipEntry;->compressionMethod:I

    return-void
.end method

.method public setSize(J)V
    .locals 3

    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-ltz v0, :cond_0

    const-wide v0, 0xffffffffL

    cmp-long v0, p1, v0

    if-gtz v0, :cond_0

    iput-wide p1, p0, Ljava/util/zip/ZipEntry;->size:J

    return-void

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Bad size: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setTime(J)V
    .locals 5

    const/4 v4, 0x1

    new-instance v0, Ljava/util/GregorianCalendar;

    invoke-direct {v0}, Ljava/util/GregorianCalendar;-><init>()V

    new-instance v2, Ljava/util/Date;

    invoke-direct {v2, p1, p2}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v0, v2}, Ljava/util/GregorianCalendar;->setTime(Ljava/util/Date;)V

    invoke-virtual {v0, v4}, Ljava/util/GregorianCalendar;->get(I)I

    move-result v1

    const/16 v2, 0x7bc

    if-ge v1, v2, :cond_0

    const/16 v2, 0x21

    iput v2, p0, Ljava/util/zip/ZipEntry;->modDate:I

    const/4 v2, 0x0

    iput v2, p0, Ljava/util/zip/ZipEntry;->time:I

    :goto_0
    return-void

    :cond_0
    const/4 v2, 0x5

    invoke-virtual {v0, v2}, Ljava/util/GregorianCalendar;->get(I)I

    move-result v2

    iput v2, p0, Ljava/util/zip/ZipEntry;->modDate:I

    const/4 v2, 0x2

    invoke-virtual {v0, v2}, Ljava/util/GregorianCalendar;->get(I)I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    shl-int/lit8 v2, v2, 0x5

    iget v3, p0, Ljava/util/zip/ZipEntry;->modDate:I

    or-int/2addr v2, v3

    iput v2, p0, Ljava/util/zip/ZipEntry;->modDate:I

    invoke-virtual {v0, v4}, Ljava/util/GregorianCalendar;->get(I)I

    move-result v2

    add-int/lit16 v2, v2, -0x7bc

    shl-int/lit8 v2, v2, 0x9

    iget v3, p0, Ljava/util/zip/ZipEntry;->modDate:I

    or-int/2addr v2, v3

    iput v2, p0, Ljava/util/zip/ZipEntry;->modDate:I

    const/16 v2, 0xd

    invoke-virtual {v0, v2}, Ljava/util/GregorianCalendar;->get(I)I

    move-result v2

    shr-int/lit8 v2, v2, 0x1

    iput v2, p0, Ljava/util/zip/ZipEntry;->time:I

    const/16 v2, 0xc

    invoke-virtual {v0, v2}, Ljava/util/GregorianCalendar;->get(I)I

    move-result v2

    shl-int/lit8 v2, v2, 0x5

    iget v3, p0, Ljava/util/zip/ZipEntry;->time:I

    or-int/2addr v2, v3

    iput v2, p0, Ljava/util/zip/ZipEntry;->time:I

    const/16 v2, 0xb

    invoke-virtual {v0, v2}, Ljava/util/GregorianCalendar;->get(I)I

    move-result v2

    shl-int/lit8 v2, v2, 0xb

    iget v3, p0, Ljava/util/zip/ZipEntry;->time:I

    or-int/2addr v2, v3

    iput v2, p0, Ljava/util/zip/ZipEntry;->time:I

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Ljava/util/zip/ZipEntry;->name:Ljava/lang/String;

    return-object v0
.end method
