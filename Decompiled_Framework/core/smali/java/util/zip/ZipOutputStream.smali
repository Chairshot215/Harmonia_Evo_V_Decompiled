.class public Ljava/util/zip/ZipOutputStream;
.super Ljava/util/zip/DeflaterOutputStream;
.source "ZipOutputStream.java"

# interfaces
.implements Ljava/util/zip/ZipConstants;


# static fields
.field public static final DEFLATED:I = 0x8

.field public static final STORED:I = 0x0

.field private static final ZIPLocalHeaderVersionNeeded:I = 0x14


# instance fields
.field private cDir:Ljava/io/ByteArrayOutputStream;

.field private comment:Ljava/lang/String;

.field private compressLevel:I

.field private compressMethod:I

.field private final crc:Ljava/util/zip/CRC32;

.field private curOffset:I

.field private currentEntry:Ljava/util/zip/ZipEntry;

.field private final entries:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private nameBytes:[B

.field private nameLength:I

.field private offset:I


# direct methods
.method public constructor <init>(Ljava/io/OutputStream;)V
    .locals 4

    const/4 v3, 0x0

    const/4 v2, -0x1

    new-instance v0, Ljava/util/zip/Deflater;

    const/4 v1, 0x1

    invoke-direct {v0, v2, v1}, Ljava/util/zip/Deflater;-><init>(IZ)V

    invoke-direct {p0, p1, v0}, Ljava/util/zip/DeflaterOutputStream;-><init>(Ljava/io/OutputStream;Ljava/util/zip/Deflater;)V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Ljava/util/zip/ZipOutputStream;->entries:Ljava/util/ArrayList;

    const/16 v0, 0x8

    iput v0, p0, Ljava/util/zip/ZipOutputStream;->compressMethod:I

    iput v2, p0, Ljava/util/zip/ZipOutputStream;->compressLevel:I

    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    iput-object v0, p0, Ljava/util/zip/ZipOutputStream;->cDir:Ljava/io/ByteArrayOutputStream;

    new-instance v0, Ljava/util/zip/CRC32;

    invoke-direct {v0}, Ljava/util/zip/CRC32;-><init>()V

    iput-object v0, p0, Ljava/util/zip/ZipOutputStream;->crc:Ljava/util/zip/CRC32;

    iput v3, p0, Ljava/util/zip/ZipOutputStream;->offset:I

    iput v3, p0, Ljava/util/zip/ZipOutputStream;->curOffset:I

    return-void
.end method

.method private checkClosed()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Ljava/util/zip/ZipOutputStream;->cDir:Ljava/io/ByteArrayOutputStream;

    if-nez v0, :cond_0

    new-instance v0, Ljava/io/IOException;

    const-string v1, "Stream is closed"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    return-void
.end method

.method private writeLong(Ljava/io/OutputStream;J)J
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-wide/16 v0, 0xff

    and-long/2addr v0, p2

    long-to-int v0, v0

    invoke-virtual {p1, v0}, Ljava/io/OutputStream;->write(I)V

    const/16 v0, 0x8

    shr-long v0, p2, v0

    long-to-int v0, v0

    and-int/lit16 v0, v0, 0xff

    invoke-virtual {p1, v0}, Ljava/io/OutputStream;->write(I)V

    const/16 v0, 0x10

    shr-long v0, p2, v0

    long-to-int v0, v0

    and-int/lit16 v0, v0, 0xff

    invoke-virtual {p1, v0}, Ljava/io/OutputStream;->write(I)V

    const/16 v0, 0x18

    shr-long v0, p2, v0

    long-to-int v0, v0

    and-int/lit16 v0, v0, 0xff

    invoke-virtual {p1, v0}, Ljava/io/OutputStream;->write(I)V

    return-wide p2
.end method

.method private writeShort(Ljava/io/OutputStream;I)I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    and-int/lit16 v0, p2, 0xff

    invoke-virtual {p1, v0}, Ljava/io/OutputStream;->write(I)V

    shr-int/lit8 v0, p2, 0x8

    and-int/lit16 v0, v0, 0xff

    invoke-virtual {p1, v0}, Ljava/io/OutputStream;->write(I)V

    return p2
.end method


# virtual methods
.method public close()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Ljava/io/FilterOutputStream;->out:Ljava/io/OutputStream;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Ljava/util/zip/ZipOutputStream;->finish()V

    iget-object v0, p0, Ljava/util/zip/DeflaterOutputStream;->def:Ljava/util/zip/Deflater;

    invoke-virtual {v0}, Ljava/util/zip/Deflater;->end()V

    iget-object v0, p0, Ljava/io/FilterOutputStream;->out:Ljava/io/OutputStream;

    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V

    const/4 v0, 0x0

    iput-object v0, p0, Ljava/io/FilterOutputStream;->out:Ljava/io/OutputStream;

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

    const/4 v9, 0x0

    const/16 v8, 0x14

    const/16 v3, 0x8

    const/4 v2, 0x0

    invoke-direct {p0}, Ljava/util/zip/ZipOutputStream;->checkClosed()V

    iget-object v4, p0, Ljava/util/zip/ZipOutputStream;->currentEntry:Ljava/util/zip/ZipEntry;

    if-nez v4, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v4, p0, Ljava/util/zip/ZipOutputStream;->currentEntry:Ljava/util/zip/ZipEntry;

    invoke-virtual {v4}, Ljava/util/zip/ZipEntry;->getMethod()I

    move-result v4

    if-ne v4, v3, :cond_1

    invoke-super {p0}, Ljava/util/zip/DeflaterOutputStream;->finish()V

    :cond_1
    iget-object v4, p0, Ljava/util/zip/ZipOutputStream;->currentEntry:Ljava/util/zip/ZipEntry;

    invoke-virtual {v4}, Ljava/util/zip/ZipEntry;->getMethod()I

    move-result v4

    if-nez v4, :cond_3

    iget-object v4, p0, Ljava/util/zip/ZipOutputStream;->crc:Ljava/util/zip/CRC32;

    invoke-virtual {v4}, Ljava/util/zip/CRC32;->getValue()J

    move-result-wide v4

    iget-object v6, p0, Ljava/util/zip/ZipOutputStream;->currentEntry:Ljava/util/zip/ZipEntry;

    iget-wide v6, v6, Ljava/util/zip/ZipEntry;->crc:J

    cmp-long v4, v4, v6

    if-eqz v4, :cond_2

    new-instance v2, Ljava/util/zip/ZipException;

    const-string v3, "CRC mismatch"

    invoke-direct {v2, v3}, Ljava/util/zip/ZipException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_2
    iget-object v4, p0, Ljava/util/zip/ZipOutputStream;->currentEntry:Ljava/util/zip/ZipEntry;

    iget-wide v4, v4, Ljava/util/zip/ZipEntry;->size:J

    iget-object v6, p0, Ljava/util/zip/ZipOutputStream;->crc:Ljava/util/zip/CRC32;

    iget-wide v6, v6, Ljava/util/zip/CRC32;->tbytes:J

    cmp-long v4, v4, v6

    if-eqz v4, :cond_3

    new-instance v2, Ljava/util/zip/ZipException;

    const-string v3, "Size mismatch"

    invoke-direct {v2, v3}, Ljava/util/zip/ZipException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_3
    const/16 v4, 0x1e

    iput v4, p0, Ljava/util/zip/ZipOutputStream;->curOffset:I

    iget-object v4, p0, Ljava/util/zip/ZipOutputStream;->currentEntry:Ljava/util/zip/ZipEntry;

    invoke-virtual {v4}, Ljava/util/zip/ZipEntry;->getMethod()I

    move-result v4

    if-eqz v4, :cond_4

    iget v4, p0, Ljava/util/zip/ZipOutputStream;->curOffset:I

    add-int/lit8 v4, v4, 0x10

    iput v4, p0, Ljava/util/zip/ZipOutputStream;->curOffset:I

    iget-object v4, p0, Ljava/io/FilterOutputStream;->out:Ljava/io/OutputStream;

    const-wide/32 v5, 0x8074b50

    invoke-direct {p0, v4, v5, v6}, Ljava/util/zip/ZipOutputStream;->writeLong(Ljava/io/OutputStream;J)J

    iget-object v4, p0, Ljava/io/FilterOutputStream;->out:Ljava/io/OutputStream;

    iget-object v5, p0, Ljava/util/zip/ZipOutputStream;->currentEntry:Ljava/util/zip/ZipEntry;

    iget-object v6, p0, Ljava/util/zip/ZipOutputStream;->crc:Ljava/util/zip/CRC32;

    invoke-virtual {v6}, Ljava/util/zip/CRC32;->getValue()J

    move-result-wide v6

    iput-wide v6, v5, Ljava/util/zip/ZipEntry;->crc:J

    invoke-direct {p0, v4, v6, v7}, Ljava/util/zip/ZipOutputStream;->writeLong(Ljava/io/OutputStream;J)J

    iget-object v4, p0, Ljava/io/FilterOutputStream;->out:Ljava/io/OutputStream;

    iget-object v5, p0, Ljava/util/zip/ZipOutputStream;->currentEntry:Ljava/util/zip/ZipEntry;

    iget-object v6, p0, Ljava/util/zip/DeflaterOutputStream;->def:Ljava/util/zip/Deflater;

    invoke-virtual {v6}, Ljava/util/zip/Deflater;->getTotalOut()I

    move-result v6

    int-to-long v6, v6

    iput-wide v6, v5, Ljava/util/zip/ZipEntry;->compressedSize:J

    invoke-direct {p0, v4, v6, v7}, Ljava/util/zip/ZipOutputStream;->writeLong(Ljava/io/OutputStream;J)J

    iget-object v4, p0, Ljava/io/FilterOutputStream;->out:Ljava/io/OutputStream;

    iget-object v5, p0, Ljava/util/zip/ZipOutputStream;->currentEntry:Ljava/util/zip/ZipEntry;

    iget-object v6, p0, Ljava/util/zip/DeflaterOutputStream;->def:Ljava/util/zip/Deflater;

    invoke-virtual {v6}, Ljava/util/zip/Deflater;->getTotalIn()I

    move-result v6

    int-to-long v6, v6

    iput-wide v6, v5, Ljava/util/zip/ZipEntry;->size:J

    invoke-direct {p0, v4, v6, v7}, Ljava/util/zip/ZipOutputStream;->writeLong(Ljava/io/OutputStream;J)J

    :cond_4
    iget-object v4, p0, Ljava/util/zip/ZipOutputStream;->currentEntry:Ljava/util/zip/ZipEntry;

    invoke-virtual {v4}, Ljava/util/zip/ZipEntry;->getMethod()I

    move-result v4

    if-nez v4, :cond_7

    move v1, v2

    :goto_1
    or-int/lit16 v1, v1, 0x800

    iget-object v4, p0, Ljava/util/zip/ZipOutputStream;->cDir:Ljava/io/ByteArrayOutputStream;

    const-wide/32 v5, 0x2014b50

    invoke-direct {p0, v4, v5, v6}, Ljava/util/zip/ZipOutputStream;->writeLong(Ljava/io/OutputStream;J)J

    iget-object v4, p0, Ljava/util/zip/ZipOutputStream;->cDir:Ljava/io/ByteArrayOutputStream;

    invoke-direct {p0, v4, v8}, Ljava/util/zip/ZipOutputStream;->writeShort(Ljava/io/OutputStream;I)I

    iget-object v4, p0, Ljava/util/zip/ZipOutputStream;->cDir:Ljava/io/ByteArrayOutputStream;

    invoke-direct {p0, v4, v8}, Ljava/util/zip/ZipOutputStream;->writeShort(Ljava/io/OutputStream;I)I

    iget-object v4, p0, Ljava/util/zip/ZipOutputStream;->cDir:Ljava/io/ByteArrayOutputStream;

    invoke-direct {p0, v4, v1}, Ljava/util/zip/ZipOutputStream;->writeShort(Ljava/io/OutputStream;I)I

    iget-object v4, p0, Ljava/util/zip/ZipOutputStream;->cDir:Ljava/io/ByteArrayOutputStream;

    iget-object v5, p0, Ljava/util/zip/ZipOutputStream;->currentEntry:Ljava/util/zip/ZipEntry;

    invoke-virtual {v5}, Ljava/util/zip/ZipEntry;->getMethod()I

    move-result v5

    invoke-direct {p0, v4, v5}, Ljava/util/zip/ZipOutputStream;->writeShort(Ljava/io/OutputStream;I)I

    iget-object v4, p0, Ljava/util/zip/ZipOutputStream;->cDir:Ljava/io/ByteArrayOutputStream;

    iget-object v5, p0, Ljava/util/zip/ZipOutputStream;->currentEntry:Ljava/util/zip/ZipEntry;

    iget v5, v5, Ljava/util/zip/ZipEntry;->time:I

    invoke-direct {p0, v4, v5}, Ljava/util/zip/ZipOutputStream;->writeShort(Ljava/io/OutputStream;I)I

    iget-object v4, p0, Ljava/util/zip/ZipOutputStream;->cDir:Ljava/io/ByteArrayOutputStream;

    iget-object v5, p0, Ljava/util/zip/ZipOutputStream;->currentEntry:Ljava/util/zip/ZipEntry;

    iget v5, v5, Ljava/util/zip/ZipEntry;->modDate:I

    invoke-direct {p0, v4, v5}, Ljava/util/zip/ZipOutputStream;->writeShort(Ljava/io/OutputStream;I)I

    iget-object v4, p0, Ljava/util/zip/ZipOutputStream;->cDir:Ljava/io/ByteArrayOutputStream;

    iget-object v5, p0, Ljava/util/zip/ZipOutputStream;->crc:Ljava/util/zip/CRC32;

    invoke-virtual {v5}, Ljava/util/zip/CRC32;->getValue()J

    move-result-wide v5

    invoke-direct {p0, v4, v5, v6}, Ljava/util/zip/ZipOutputStream;->writeLong(Ljava/io/OutputStream;J)J

    iget-object v4, p0, Ljava/util/zip/ZipOutputStream;->currentEntry:Ljava/util/zip/ZipEntry;

    invoke-virtual {v4}, Ljava/util/zip/ZipEntry;->getMethod()I

    move-result v4

    if-ne v4, v3, :cond_8

    iget v3, p0, Ljava/util/zip/ZipOutputStream;->curOffset:I

    int-to-long v3, v3

    iget-object v5, p0, Ljava/util/zip/ZipOutputStream;->cDir:Ljava/io/ByteArrayOutputStream;

    iget-object v6, p0, Ljava/util/zip/DeflaterOutputStream;->def:Ljava/util/zip/Deflater;

    invoke-virtual {v6}, Ljava/util/zip/Deflater;->getTotalOut()I

    move-result v6

    int-to-long v6, v6

    invoke-direct {p0, v5, v6, v7}, Ljava/util/zip/ZipOutputStream;->writeLong(Ljava/io/OutputStream;J)J

    move-result-wide v5

    add-long/2addr v3, v5

    long-to-int v3, v3

    iput v3, p0, Ljava/util/zip/ZipOutputStream;->curOffset:I

    iget-object v3, p0, Ljava/util/zip/ZipOutputStream;->cDir:Ljava/io/ByteArrayOutputStream;

    iget-object v4, p0, Ljava/util/zip/DeflaterOutputStream;->def:Ljava/util/zip/Deflater;

    invoke-virtual {v4}, Ljava/util/zip/Deflater;->getTotalIn()I

    move-result v4

    int-to-long v4, v4

    invoke-direct {p0, v3, v4, v5}, Ljava/util/zip/ZipOutputStream;->writeLong(Ljava/io/OutputStream;J)J

    :goto_2
    iget v3, p0, Ljava/util/zip/ZipOutputStream;->curOffset:I

    iget-object v4, p0, Ljava/util/zip/ZipOutputStream;->cDir:Ljava/io/ByteArrayOutputStream;

    iget v5, p0, Ljava/util/zip/ZipOutputStream;->nameLength:I

    invoke-direct {p0, v4, v5}, Ljava/util/zip/ZipOutputStream;->writeShort(Ljava/io/OutputStream;I)I

    move-result v4

    add-int/2addr v3, v4

    iput v3, p0, Ljava/util/zip/ZipOutputStream;->curOffset:I

    iget-object v3, p0, Ljava/util/zip/ZipOutputStream;->currentEntry:Ljava/util/zip/ZipEntry;

    iget-object v3, v3, Ljava/util/zip/ZipEntry;->extra:[B

    if-eqz v3, :cond_9

    iget v3, p0, Ljava/util/zip/ZipOutputStream;->curOffset:I

    iget-object v4, p0, Ljava/util/zip/ZipOutputStream;->cDir:Ljava/io/ByteArrayOutputStream;

    iget-object v5, p0, Ljava/util/zip/ZipOutputStream;->currentEntry:Ljava/util/zip/ZipEntry;

    iget-object v5, v5, Ljava/util/zip/ZipEntry;->extra:[B

    array-length v5, v5

    invoke-direct {p0, v4, v5}, Ljava/util/zip/ZipOutputStream;->writeShort(Ljava/io/OutputStream;I)I

    move-result v4

    add-int/2addr v3, v4

    iput v3, p0, Ljava/util/zip/ZipOutputStream;->curOffset:I

    :goto_3
    iget-object v3, p0, Ljava/util/zip/ZipOutputStream;->currentEntry:Ljava/util/zip/ZipEntry;

    invoke-virtual {v3}, Ljava/util/zip/ZipEntry;->getComment()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_a

    iget-object v3, p0, Ljava/util/zip/ZipOutputStream;->cDir:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v4

    invoke-direct {p0, v3, v4}, Ljava/util/zip/ZipOutputStream;->writeShort(Ljava/io/OutputStream;I)I

    :goto_4
    iget-object v3, p0, Ljava/util/zip/ZipOutputStream;->cDir:Ljava/io/ByteArrayOutputStream;

    invoke-direct {p0, v3, v2}, Ljava/util/zip/ZipOutputStream;->writeShort(Ljava/io/OutputStream;I)I

    iget-object v3, p0, Ljava/util/zip/ZipOutputStream;->cDir:Ljava/io/ByteArrayOutputStream;

    invoke-direct {p0, v3, v2}, Ljava/util/zip/ZipOutputStream;->writeShort(Ljava/io/OutputStream;I)I

    iget-object v3, p0, Ljava/util/zip/ZipOutputStream;->cDir:Ljava/io/ByteArrayOutputStream;

    const-wide/16 v4, 0x0

    invoke-direct {p0, v3, v4, v5}, Ljava/util/zip/ZipOutputStream;->writeLong(Ljava/io/OutputStream;J)J

    iget-object v3, p0, Ljava/util/zip/ZipOutputStream;->cDir:Ljava/io/ByteArrayOutputStream;

    iget v4, p0, Ljava/util/zip/ZipOutputStream;->offset:I

    int-to-long v4, v4

    invoke-direct {p0, v3, v4, v5}, Ljava/util/zip/ZipOutputStream;->writeLong(Ljava/io/OutputStream;J)J

    iget-object v3, p0, Ljava/util/zip/ZipOutputStream;->cDir:Ljava/io/ByteArrayOutputStream;

    iget-object v4, p0, Ljava/util/zip/ZipOutputStream;->nameBytes:[B

    invoke-virtual {v3, v4}, Ljava/io/ByteArrayOutputStream;->write([B)V

    iput-object v9, p0, Ljava/util/zip/ZipOutputStream;->nameBytes:[B

    iget-object v3, p0, Ljava/util/zip/ZipOutputStream;->currentEntry:Ljava/util/zip/ZipEntry;

    iget-object v3, v3, Ljava/util/zip/ZipEntry;->extra:[B

    if-eqz v3, :cond_5

    iget-object v3, p0, Ljava/util/zip/ZipOutputStream;->cDir:Ljava/io/ByteArrayOutputStream;

    iget-object v4, p0, Ljava/util/zip/ZipOutputStream;->currentEntry:Ljava/util/zip/ZipEntry;

    iget-object v4, v4, Ljava/util/zip/ZipEntry;->extra:[B

    invoke-virtual {v3, v4}, Ljava/io/ByteArrayOutputStream;->write([B)V

    :cond_5
    iget v3, p0, Ljava/util/zip/ZipOutputStream;->offset:I

    iget v4, p0, Ljava/util/zip/ZipOutputStream;->curOffset:I

    add-int/2addr v3, v4

    iput v3, p0, Ljava/util/zip/ZipOutputStream;->offset:I

    if-eqz v0, :cond_6

    iget-object v3, p0, Ljava/util/zip/ZipOutputStream;->cDir:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/io/ByteArrayOutputStream;->write([B)V

    :cond_6
    iput-object v9, p0, Ljava/util/zip/ZipOutputStream;->currentEntry:Ljava/util/zip/ZipEntry;

    iget-object v3, p0, Ljava/util/zip/ZipOutputStream;->crc:Ljava/util/zip/CRC32;

    invoke-virtual {v3}, Ljava/util/zip/CRC32;->reset()V

    iget-object v3, p0, Ljava/util/zip/DeflaterOutputStream;->def:Ljava/util/zip/Deflater;

    invoke-virtual {v3}, Ljava/util/zip/Deflater;->reset()V

    iput-boolean v2, p0, Ljava/util/zip/DeflaterOutputStream;->done:Z

    goto/16 :goto_0

    :cond_7
    move v1, v3

    goto/16 :goto_1

    :cond_8
    iget v3, p0, Ljava/util/zip/ZipOutputStream;->curOffset:I

    int-to-long v3, v3

    iget-object v5, p0, Ljava/util/zip/ZipOutputStream;->cDir:Ljava/io/ByteArrayOutputStream;

    iget-object v6, p0, Ljava/util/zip/ZipOutputStream;->crc:Ljava/util/zip/CRC32;

    iget-wide v6, v6, Ljava/util/zip/CRC32;->tbytes:J

    invoke-direct {p0, v5, v6, v7}, Ljava/util/zip/ZipOutputStream;->writeLong(Ljava/io/OutputStream;J)J

    move-result-wide v5

    add-long/2addr v3, v5

    long-to-int v3, v3

    iput v3, p0, Ljava/util/zip/ZipOutputStream;->curOffset:I

    iget-object v3, p0, Ljava/util/zip/ZipOutputStream;->cDir:Ljava/io/ByteArrayOutputStream;

    iget-object v4, p0, Ljava/util/zip/ZipOutputStream;->crc:Ljava/util/zip/CRC32;

    iget-wide v4, v4, Ljava/util/zip/CRC32;->tbytes:J

    invoke-direct {p0, v3, v4, v5}, Ljava/util/zip/ZipOutputStream;->writeLong(Ljava/io/OutputStream;J)J

    goto/16 :goto_2

    :cond_9
    iget-object v3, p0, Ljava/util/zip/ZipOutputStream;->cDir:Ljava/io/ByteArrayOutputStream;

    invoke-direct {p0, v3, v2}, Ljava/util/zip/ZipOutputStream;->writeShort(Ljava/io/OutputStream;I)I

    goto/16 :goto_3

    :cond_a
    iget-object v3, p0, Ljava/util/zip/ZipOutputStream;->cDir:Ljava/io/ByteArrayOutputStream;

    invoke-direct {p0, v3, v2}, Ljava/util/zip/ZipOutputStream;->writeShort(Ljava/io/OutputStream;I)I

    goto :goto_4
.end method

.method public finish()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v4, 0x0

    iget-object v1, p0, Ljava/io/FilterOutputStream;->out:Ljava/io/OutputStream;

    if-nez v1, :cond_0

    new-instance v1, Ljava/io/IOException;

    const-string v2, "Stream is closed"

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_0
    iget-object v1, p0, Ljava/util/zip/ZipOutputStream;->cDir:Ljava/io/ByteArrayOutputStream;

    if-nez v1, :cond_1

    :goto_0
    return-void

    :cond_1
    iget-object v1, p0, Ljava/util/zip/ZipOutputStream;->entries:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_2

    new-instance v1, Ljava/util/zip/ZipException;

    const-string v2, "No entries"

    invoke-direct {v1, v2}, Ljava/util/zip/ZipException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_2
    iget-object v1, p0, Ljava/util/zip/ZipOutputStream;->currentEntry:Ljava/util/zip/ZipEntry;

    if-eqz v1, :cond_3

    invoke-virtual {p0}, Ljava/util/zip/ZipOutputStream;->closeEntry()V

    :cond_3
    iget-object v1, p0, Ljava/util/zip/ZipOutputStream;->cDir:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->size()I

    move-result v0

    iget-object v1, p0, Ljava/util/zip/ZipOutputStream;->cDir:Ljava/io/ByteArrayOutputStream;

    const-wide/32 v2, 0x6054b50

    invoke-direct {p0, v1, v2, v3}, Ljava/util/zip/ZipOutputStream;->writeLong(Ljava/io/OutputStream;J)J

    iget-object v1, p0, Ljava/util/zip/ZipOutputStream;->cDir:Ljava/io/ByteArrayOutputStream;

    invoke-direct {p0, v1, v4}, Ljava/util/zip/ZipOutputStream;->writeShort(Ljava/io/OutputStream;I)I

    iget-object v1, p0, Ljava/util/zip/ZipOutputStream;->cDir:Ljava/io/ByteArrayOutputStream;

    invoke-direct {p0, v1, v4}, Ljava/util/zip/ZipOutputStream;->writeShort(Ljava/io/OutputStream;I)I

    iget-object v1, p0, Ljava/util/zip/ZipOutputStream;->cDir:Ljava/io/ByteArrayOutputStream;

    iget-object v2, p0, Ljava/util/zip/ZipOutputStream;->entries:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-direct {p0, v1, v2}, Ljava/util/zip/ZipOutputStream;->writeShort(Ljava/io/OutputStream;I)I

    iget-object v1, p0, Ljava/util/zip/ZipOutputStream;->cDir:Ljava/io/ByteArrayOutputStream;

    iget-object v2, p0, Ljava/util/zip/ZipOutputStream;->entries:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-direct {p0, v1, v2}, Ljava/util/zip/ZipOutputStream;->writeShort(Ljava/io/OutputStream;I)I

    iget-object v1, p0, Ljava/util/zip/ZipOutputStream;->cDir:Ljava/io/ByteArrayOutputStream;

    int-to-long v2, v0

    invoke-direct {p0, v1, v2, v3}, Ljava/util/zip/ZipOutputStream;->writeLong(Ljava/io/OutputStream;J)J

    iget-object v1, p0, Ljava/util/zip/ZipOutputStream;->cDir:Ljava/io/ByteArrayOutputStream;

    iget v2, p0, Ljava/util/zip/ZipOutputStream;->offset:I

    int-to-long v2, v2

    invoke-direct {p0, v1, v2, v3}, Ljava/util/zip/ZipOutputStream;->writeLong(Ljava/io/OutputStream;J)J

    iget-object v1, p0, Ljava/util/zip/ZipOutputStream;->comment:Ljava/lang/String;

    if-eqz v1, :cond_4

    iget-object v1, p0, Ljava/util/zip/ZipOutputStream;->cDir:Ljava/io/ByteArrayOutputStream;

    iget-object v2, p0, Ljava/util/zip/ZipOutputStream;->comment:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    invoke-direct {p0, v1, v2}, Ljava/util/zip/ZipOutputStream;->writeShort(Ljava/io/OutputStream;I)I

    iget-object v1, p0, Ljava/util/zip/ZipOutputStream;->cDir:Ljava/io/ByteArrayOutputStream;

    iget-object v2, p0, Ljava/util/zip/ZipOutputStream;->comment:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/ByteArrayOutputStream;->write([B)V

    :goto_1
    iget-object v1, p0, Ljava/io/FilterOutputStream;->out:Ljava/io/OutputStream;

    iget-object v2, p0, Ljava/util/zip/ZipOutputStream;->cDir:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/OutputStream;->write([B)V

    const/4 v1, 0x0

    iput-object v1, p0, Ljava/util/zip/ZipOutputStream;->cDir:Ljava/io/ByteArrayOutputStream;

    goto :goto_0

    :cond_4
    iget-object v1, p0, Ljava/util/zip/ZipOutputStream;->cDir:Ljava/io/ByteArrayOutputStream;

    invoke-direct {p0, v1, v4}, Ljava/util/zip/ZipOutputStream;->writeShort(Ljava/io/OutputStream;I)I

    goto :goto_1
.end method

.method public putNextEntry(Ljava/util/zip/ZipEntry;)V
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v1, 0x0

    const/4 v10, -0x1

    const-wide/16 v8, 0x0

    const-wide/16 v6, -0x1

    iget-object v2, p0, Ljava/util/zip/ZipOutputStream;->currentEntry:Ljava/util/zip/ZipEntry;

    if-eqz v2, :cond_0

    invoke-virtual {p0}, Ljava/util/zip/ZipOutputStream;->closeEntry()V

    :cond_0
    invoke-virtual {p1}, Ljava/util/zip/ZipEntry;->getMethod()I

    move-result v2

    if-eqz v2, :cond_1

    iget v2, p0, Ljava/util/zip/ZipOutputStream;->compressMethod:I

    if-nez v2, :cond_4

    invoke-virtual {p1}, Ljava/util/zip/ZipEntry;->getMethod()I

    move-result v2

    if-ne v2, v10, :cond_4

    :cond_1
    iget-wide v2, p1, Ljava/util/zip/ZipEntry;->crc:J

    cmp-long v2, v2, v6

    if-nez v2, :cond_2

    new-instance v1, Ljava/util/zip/ZipException;

    const-string v2, "CRC mismatch"

    invoke-direct {v1, v2}, Ljava/util/zip/ZipException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_2
    iget-wide v2, p1, Ljava/util/zip/ZipEntry;->size:J

    cmp-long v2, v2, v6

    if-nez v2, :cond_3

    iget-wide v2, p1, Ljava/util/zip/ZipEntry;->compressedSize:J

    cmp-long v2, v2, v6

    if-nez v2, :cond_3

    new-instance v1, Ljava/util/zip/ZipException;

    const-string v2, "Size mismatch"

    invoke-direct {v1, v2}, Ljava/util/zip/ZipException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_3
    iget-wide v2, p1, Ljava/util/zip/ZipEntry;->size:J

    iget-wide v4, p1, Ljava/util/zip/ZipEntry;->compressedSize:J

    cmp-long v2, v2, v4

    if-eqz v2, :cond_4

    iget-wide v2, p1, Ljava/util/zip/ZipEntry;->compressedSize:J

    cmp-long v2, v2, v6

    if-eqz v2, :cond_4

    iget-wide v2, p1, Ljava/util/zip/ZipEntry;->size:J

    cmp-long v2, v2, v6

    if-eqz v2, :cond_4

    new-instance v1, Ljava/util/zip/ZipException;

    const-string v2, "Size mismatch"

    invoke-direct {v1, v2}, Ljava/util/zip/ZipException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_4
    invoke-direct {p0}, Ljava/util/zip/ZipOutputStream;->checkClosed()V

    iget-object v2, p0, Ljava/util/zip/ZipOutputStream;->entries:Ljava/util/ArrayList;

    iget-object v3, p1, Ljava/util/zip/ZipEntry;->name:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    new-instance v1, Ljava/util/zip/ZipException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Entry already exists: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p1, Ljava/util/zip/ZipEntry;->name:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/util/zip/ZipException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_5
    iget-object v2, p1, Ljava/util/zip/ZipEntry;->name:Ljava/lang/String;

    sget-object v3, Ljava/nio/charset/Charsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v2, v3}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v2

    iput-object v2, p0, Ljava/util/zip/ZipOutputStream;->nameBytes:[B

    iget-object v2, p0, Ljava/util/zip/ZipOutputStream;->nameBytes:[B

    array-length v2, v2

    iput v2, p0, Ljava/util/zip/ZipOutputStream;->nameLength:I

    iget v2, p0, Ljava/util/zip/ZipOutputStream;->nameLength:I

    const v3, 0xffff

    if-le v2, v3, :cond_6

    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Name too long: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Ljava/util/zip/ZipOutputStream;->nameLength:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " UTF-8 bytes"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_6
    iget-object v2, p0, Ljava/util/zip/DeflaterOutputStream;->def:Ljava/util/zip/Deflater;

    iget v3, p0, Ljava/util/zip/ZipOutputStream;->compressLevel:I

    invoke-virtual {v2, v3}, Ljava/util/zip/Deflater;->setLevel(I)V

    iput-object p1, p0, Ljava/util/zip/ZipOutputStream;->currentEntry:Ljava/util/zip/ZipEntry;

    iget-object v2, p0, Ljava/util/zip/ZipOutputStream;->entries:Ljava/util/ArrayList;

    iget-object v3, p0, Ljava/util/zip/ZipOutputStream;->currentEntry:Ljava/util/zip/ZipEntry;

    iget-object v3, v3, Ljava/util/zip/ZipEntry;->name:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v2, p0, Ljava/util/zip/ZipOutputStream;->currentEntry:Ljava/util/zip/ZipEntry;

    invoke-virtual {v2}, Ljava/util/zip/ZipEntry;->getMethod()I

    move-result v2

    if-ne v2, v10, :cond_7

    iget-object v2, p0, Ljava/util/zip/ZipOutputStream;->currentEntry:Ljava/util/zip/ZipEntry;

    iget v3, p0, Ljava/util/zip/ZipOutputStream;->compressMethod:I

    invoke-virtual {v2, v3}, Ljava/util/zip/ZipEntry;->setMethod(I)V

    :cond_7
    iget-object v2, p0, Ljava/util/zip/ZipOutputStream;->currentEntry:Ljava/util/zip/ZipEntry;

    invoke-virtual {v2}, Ljava/util/zip/ZipEntry;->getMethod()I

    move-result v2

    if-nez v2, :cond_b

    move v0, v1

    :goto_0
    or-int/lit16 v0, v0, 0x800

    iget-object v2, p0, Ljava/io/FilterOutputStream;->out:Ljava/io/OutputStream;

    const-wide/32 v3, 0x4034b50

    invoke-direct {p0, v2, v3, v4}, Ljava/util/zip/ZipOutputStream;->writeLong(Ljava/io/OutputStream;J)J

    iget-object v2, p0, Ljava/io/FilterOutputStream;->out:Ljava/io/OutputStream;

    const/16 v3, 0x14

    invoke-direct {p0, v2, v3}, Ljava/util/zip/ZipOutputStream;->writeShort(Ljava/io/OutputStream;I)I

    iget-object v2, p0, Ljava/io/FilterOutputStream;->out:Ljava/io/OutputStream;

    invoke-direct {p0, v2, v0}, Ljava/util/zip/ZipOutputStream;->writeShort(Ljava/io/OutputStream;I)I

    iget-object v2, p0, Ljava/io/FilterOutputStream;->out:Ljava/io/OutputStream;

    iget-object v3, p0, Ljava/util/zip/ZipOutputStream;->currentEntry:Ljava/util/zip/ZipEntry;

    invoke-virtual {v3}, Ljava/util/zip/ZipEntry;->getMethod()I

    move-result v3

    invoke-direct {p0, v2, v3}, Ljava/util/zip/ZipOutputStream;->writeShort(Ljava/io/OutputStream;I)I

    iget-object v2, p0, Ljava/util/zip/ZipOutputStream;->currentEntry:Ljava/util/zip/ZipEntry;

    invoke-virtual {v2}, Ljava/util/zip/ZipEntry;->getTime()J

    move-result-wide v2

    cmp-long v2, v2, v6

    if-nez v2, :cond_8

    iget-object v2, p0, Ljava/util/zip/ZipOutputStream;->currentEntry:Ljava/util/zip/ZipEntry;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Ljava/util/zip/ZipEntry;->setTime(J)V

    :cond_8
    iget-object v2, p0, Ljava/io/FilterOutputStream;->out:Ljava/io/OutputStream;

    iget-object v3, p0, Ljava/util/zip/ZipOutputStream;->currentEntry:Ljava/util/zip/ZipEntry;

    iget v3, v3, Ljava/util/zip/ZipEntry;->time:I

    invoke-direct {p0, v2, v3}, Ljava/util/zip/ZipOutputStream;->writeShort(Ljava/io/OutputStream;I)I

    iget-object v2, p0, Ljava/io/FilterOutputStream;->out:Ljava/io/OutputStream;

    iget-object v3, p0, Ljava/util/zip/ZipOutputStream;->currentEntry:Ljava/util/zip/ZipEntry;

    iget v3, v3, Ljava/util/zip/ZipEntry;->modDate:I

    invoke-direct {p0, v2, v3}, Ljava/util/zip/ZipOutputStream;->writeShort(Ljava/io/OutputStream;I)I

    iget-object v2, p0, Ljava/util/zip/ZipOutputStream;->currentEntry:Ljava/util/zip/ZipEntry;

    invoke-virtual {v2}, Ljava/util/zip/ZipEntry;->getMethod()I

    move-result v2

    if-nez v2, :cond_d

    iget-object v2, p0, Ljava/util/zip/ZipOutputStream;->currentEntry:Ljava/util/zip/ZipEntry;

    iget-wide v2, v2, Ljava/util/zip/ZipEntry;->size:J

    cmp-long v2, v2, v6

    if-nez v2, :cond_c

    iget-object v2, p0, Ljava/util/zip/ZipOutputStream;->currentEntry:Ljava/util/zip/ZipEntry;

    iget-object v3, p0, Ljava/util/zip/ZipOutputStream;->currentEntry:Ljava/util/zip/ZipEntry;

    iget-wide v3, v3, Ljava/util/zip/ZipEntry;->compressedSize:J

    iput-wide v3, v2, Ljava/util/zip/ZipEntry;->size:J

    :cond_9
    :goto_1
    iget-object v2, p0, Ljava/io/FilterOutputStream;->out:Ljava/io/OutputStream;

    iget-object v3, p0, Ljava/util/zip/ZipOutputStream;->currentEntry:Ljava/util/zip/ZipEntry;

    iget-wide v3, v3, Ljava/util/zip/ZipEntry;->crc:J

    invoke-direct {p0, v2, v3, v4}, Ljava/util/zip/ZipOutputStream;->writeLong(Ljava/io/OutputStream;J)J

    iget-object v2, p0, Ljava/io/FilterOutputStream;->out:Ljava/io/OutputStream;

    iget-object v3, p0, Ljava/util/zip/ZipOutputStream;->currentEntry:Ljava/util/zip/ZipEntry;

    iget-wide v3, v3, Ljava/util/zip/ZipEntry;->size:J

    invoke-direct {p0, v2, v3, v4}, Ljava/util/zip/ZipOutputStream;->writeLong(Ljava/io/OutputStream;J)J

    iget-object v2, p0, Ljava/io/FilterOutputStream;->out:Ljava/io/OutputStream;

    iget-object v3, p0, Ljava/util/zip/ZipOutputStream;->currentEntry:Ljava/util/zip/ZipEntry;

    iget-wide v3, v3, Ljava/util/zip/ZipEntry;->size:J

    invoke-direct {p0, v2, v3, v4}, Ljava/util/zip/ZipOutputStream;->writeLong(Ljava/io/OutputStream;J)J

    :goto_2
    iget-object v2, p0, Ljava/io/FilterOutputStream;->out:Ljava/io/OutputStream;

    iget v3, p0, Ljava/util/zip/ZipOutputStream;->nameLength:I

    invoke-direct {p0, v2, v3}, Ljava/util/zip/ZipOutputStream;->writeShort(Ljava/io/OutputStream;I)I

    iget-object v2, p0, Ljava/util/zip/ZipOutputStream;->currentEntry:Ljava/util/zip/ZipEntry;

    iget-object v2, v2, Ljava/util/zip/ZipEntry;->extra:[B

    if-eqz v2, :cond_e

    iget-object v1, p0, Ljava/io/FilterOutputStream;->out:Ljava/io/OutputStream;

    iget-object v2, p0, Ljava/util/zip/ZipOutputStream;->currentEntry:Ljava/util/zip/ZipEntry;

    iget-object v2, v2, Ljava/util/zip/ZipEntry;->extra:[B

    array-length v2, v2

    invoke-direct {p0, v1, v2}, Ljava/util/zip/ZipOutputStream;->writeShort(Ljava/io/OutputStream;I)I

    :goto_3
    iget-object v1, p0, Ljava/io/FilterOutputStream;->out:Ljava/io/OutputStream;

    iget-object v2, p0, Ljava/util/zip/ZipOutputStream;->nameBytes:[B

    invoke-virtual {v1, v2}, Ljava/io/OutputStream;->write([B)V

    iget-object v1, p0, Ljava/util/zip/ZipOutputStream;->currentEntry:Ljava/util/zip/ZipEntry;

    iget-object v1, v1, Ljava/util/zip/ZipEntry;->extra:[B

    if-eqz v1, :cond_a

    iget-object v1, p0, Ljava/io/FilterOutputStream;->out:Ljava/io/OutputStream;

    iget-object v2, p0, Ljava/util/zip/ZipOutputStream;->currentEntry:Ljava/util/zip/ZipEntry;

    iget-object v2, v2, Ljava/util/zip/ZipEntry;->extra:[B

    invoke-virtual {v1, v2}, Ljava/io/OutputStream;->write([B)V

    :cond_a
    return-void

    :cond_b
    const/16 v0, 0x8

    goto/16 :goto_0

    :cond_c
    iget-object v2, p0, Ljava/util/zip/ZipOutputStream;->currentEntry:Ljava/util/zip/ZipEntry;

    iget-wide v2, v2, Ljava/util/zip/ZipEntry;->compressedSize:J

    cmp-long v2, v2, v6

    if-nez v2, :cond_9

    iget-object v2, p0, Ljava/util/zip/ZipOutputStream;->currentEntry:Ljava/util/zip/ZipEntry;

    iget-object v3, p0, Ljava/util/zip/ZipOutputStream;->currentEntry:Ljava/util/zip/ZipEntry;

    iget-wide v3, v3, Ljava/util/zip/ZipEntry;->size:J

    iput-wide v3, v2, Ljava/util/zip/ZipEntry;->compressedSize:J

    goto :goto_1

    :cond_d
    iget-object v2, p0, Ljava/io/FilterOutputStream;->out:Ljava/io/OutputStream;

    invoke-direct {p0, v2, v8, v9}, Ljava/util/zip/ZipOutputStream;->writeLong(Ljava/io/OutputStream;J)J

    iget-object v2, p0, Ljava/io/FilterOutputStream;->out:Ljava/io/OutputStream;

    invoke-direct {p0, v2, v8, v9}, Ljava/util/zip/ZipOutputStream;->writeLong(Ljava/io/OutputStream;J)J

    iget-object v2, p0, Ljava/io/FilterOutputStream;->out:Ljava/io/OutputStream;

    invoke-direct {p0, v2, v8, v9}, Ljava/util/zip/ZipOutputStream;->writeLong(Ljava/io/OutputStream;J)J

    goto :goto_2

    :cond_e
    iget-object v2, p0, Ljava/io/FilterOutputStream;->out:Ljava/io/OutputStream;

    invoke-direct {p0, v2, v1}, Ljava/util/zip/ZipOutputStream;->writeShort(Ljava/io/OutputStream;I)I

    goto :goto_3
.end method

.method public setComment(Ljava/lang/String;)V
    .locals 3

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const v1, 0xffff

    if-le v0, v1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Comment too long: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " characters"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iput-object p1, p0, Ljava/util/zip/ZipOutputStream;->comment:Ljava/lang/String;

    return-void
.end method

.method public setLevel(I)V
    .locals 1

    const/4 v0, -0x1

    if-lt p1, v0, :cond_0

    const/16 v0, 0x9

    if-le p1, v0, :cond_1

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    :cond_1
    iput p1, p0, Ljava/util/zip/ZipOutputStream;->compressLevel:I

    return-void
.end method

.method public setMethod(I)V
    .locals 1

    if-eqz p1, :cond_0

    const/16 v0, 0x8

    if-eq p1, v0, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    :cond_0
    iput p1, p0, Ljava/util/zip/ZipOutputStream;->compressMethod:I

    return-void
.end method

.method public write([BII)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    array-length v0, p1

    invoke-static {v0, p2, p3}, Ljava/util/Arrays;->checkOffsetAndCount(III)V

    iget-object v0, p0, Ljava/util/zip/ZipOutputStream;->currentEntry:Ljava/util/zip/ZipEntry;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/zip/ZipException;

    const-string v1, "No active entry"

    invoke-direct {v0, v1}, Ljava/util/zip/ZipException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget-object v0, p0, Ljava/util/zip/ZipOutputStream;->currentEntry:Ljava/util/zip/ZipEntry;

    invoke-virtual {v0}, Ljava/util/zip/ZipEntry;->getMethod()I

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Ljava/io/FilterOutputStream;->out:Ljava/io/OutputStream;

    invoke-virtual {v0, p1, p2, p3}, Ljava/io/OutputStream;->write([BII)V

    :goto_0
    iget-object v0, p0, Ljava/util/zip/ZipOutputStream;->crc:Ljava/util/zip/CRC32;

    invoke-virtual {v0, p1, p2, p3}, Ljava/util/zip/CRC32;->update([BII)V

    return-void

    :cond_1
    invoke-super {p0, p1, p2, p3}, Ljava/util/zip/DeflaterOutputStream;->write([BII)V

    goto :goto_0
.end method
