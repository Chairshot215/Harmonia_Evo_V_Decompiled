.class public Lcom/htc/htccompressviewer/zip/ZipOutputStream;
.super Ljava/io/FilterOutputStream;
.source "ZipOutputStream.java"


# static fields
.field private static final BUFFER_SIZE:I = 0x200

.field private static final BYTE_MASK:I = 0xff

.field protected static final CFH_SIG:[B = null

.field protected static final DD_SIG:[B = null

.field public static final DEFAULT_COMPRESSION:I = -0x1

.field public static final DEFLATED:I = 0x8

.field private static final DOS_TIME_MIN:[B = null

.field protected static final EOCD_SIG:[B = null

.field protected static final LFH_SIG:[B = null

.field private static final LZERO:[B = null

.field private static final SHORT:I = 0x2

.field public static final STORED:I = 0x0

.field private static final WORD:I = 0x4

.field private static final ZERO:[B


# instance fields
.field protected buf:[B

.field private cdLength:J

.field private cdOffset:J

.field private comment:Ljava/lang/String;

.field private crc:Ljava/util/zip/CRC32;

.field private dataStart:J

.field protected def:Ljava/util/zip/Deflater;

.field private encoding:Ljava/lang/String;

.field private entries:Ljava/util/Vector;

.field private entry:Lcom/htc/htccompressviewer/zip/ZipEntry;

.field private hasCompressionLevelChanged:Z

.field private level:I

.field private localDataStart:J

.field private method:I

.field private offsets:Ljava/util/Hashtable;

.field private raf:Ljava/io/RandomAccessFile;

.field private written:J


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 177
    const/4 v0, 0x2

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/htc/htccompressviewer/zip/ZipOutputStream;->ZERO:[B

    .line 184
    const/4 v0, 0x4

    new-array v0, v0, [B

    fill-array-data v0, :array_1

    sput-object v0, Lcom/htc/htccompressviewer/zip/ZipOutputStream;->LZERO:[B

    .line 554
    const-wide/32 v0, 0x4034b50

    invoke-static {v0, v1}, Lcom/htc/htccompressviewer/zip/ZipLong;->getBytes(J)[B

    move-result-object v0

    sput-object v0, Lcom/htc/htccompressviewer/zip/ZipOutputStream;->LFH_SIG:[B

    .line 560
    const-wide/32 v0, 0x8074b50

    invoke-static {v0, v1}, Lcom/htc/htccompressviewer/zip/ZipLong;->getBytes(J)[B

    move-result-object v0

    sput-object v0, Lcom/htc/htccompressviewer/zip/ZipOutputStream;->DD_SIG:[B

    .line 566
    const-wide/32 v0, 0x2014b50

    invoke-static {v0, v1}, Lcom/htc/htccompressviewer/zip/ZipLong;->getBytes(J)[B

    move-result-object v0

    sput-object v0, Lcom/htc/htccompressviewer/zip/ZipOutputStream;->CFH_SIG:[B

    .line 572
    const-wide/32 v0, 0x6054b50

    invoke-static {v0, v1}, Lcom/htc/htccompressviewer/zip/ZipLong;->getBytes(J)[B

    move-result-object v0

    sput-object v0, Lcom/htc/htccompressviewer/zip/ZipOutputStream;->EOCD_SIG:[B

    .line 817
    const-wide/16 v0, 0x2100

    invoke-static {v0, v1}, Lcom/htc/htccompressviewer/zip/ZipLong;->getBytes(J)[B

    move-result-object v0

    sput-object v0, Lcom/htc/htccompressviewer/zip/ZipOutputStream;->DOS_TIME_MIN:[B

    return-void

    .line 177
    nop

    :array_0
    .array-data 0x1
        0x0t
        0x0t
    .end array-data

    .line 184
    nop

    :array_1
    .array-data 0x1
        0x0t
        0x0t
        0x0t
        0x0t
    .end array-data
.end method

.method public constructor <init>(Ljava/io/File;)V
    .locals 5
    .parameter "file"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    const-wide/16 v2, 0x0

    .line 256
    invoke-direct {p0, v4}, Ljava/io/FilterOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 98
    const-string v1, ""

    iput-object v1, p0, Lcom/htc/htccompressviewer/zip/ZipOutputStream;->comment:Ljava/lang/String;

    .line 105
    const/4 v1, -0x1

    iput v1, p0, Lcom/htc/htccompressviewer/zip/ZipOutputStream;->level:I

    .line 113
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/htc/htccompressviewer/zip/ZipOutputStream;->hasCompressionLevelChanged:Z

    .line 120
    const/16 v1, 0x8

    iput v1, p0, Lcom/htc/htccompressviewer/zip/ZipOutputStream;->method:I

    .line 127
    new-instance v1, Ljava/util/Vector;

    invoke-direct {v1}, Ljava/util/Vector;-><init>()V

    iput-object v1, p0, Lcom/htc/htccompressviewer/zip/ZipOutputStream;->entries:Ljava/util/Vector;

    .line 134
    new-instance v1, Ljava/util/zip/CRC32;

    invoke-direct {v1}, Ljava/util/zip/CRC32;-><init>()V

    iput-object v1, p0, Lcom/htc/htccompressviewer/zip/ZipOutputStream;->crc:Ljava/util/zip/CRC32;

    .line 141
    iput-wide v2, p0, Lcom/htc/htccompressviewer/zip/ZipOutputStream;->written:J

    .line 148
    iput-wide v2, p0, Lcom/htc/htccompressviewer/zip/ZipOutputStream;->dataStart:J

    .line 156
    iput-wide v2, p0, Lcom/htc/htccompressviewer/zip/ZipOutputStream;->localDataStart:J

    .line 163
    iput-wide v2, p0, Lcom/htc/htccompressviewer/zip/ZipOutputStream;->cdOffset:J

    .line 170
    iput-wide v2, p0, Lcom/htc/htccompressviewer/zip/ZipOutputStream;->cdLength:J

    .line 191
    new-instance v1, Ljava/util/Hashtable;

    invoke-direct {v1}, Ljava/util/Hashtable;-><init>()V

    iput-object v1, p0, Lcom/htc/htccompressviewer/zip/ZipOutputStream;->offsets:Ljava/util/Hashtable;

    .line 202
    iput-object v4, p0, Lcom/htc/htccompressviewer/zip/ZipOutputStream;->encoding:Ljava/lang/String;

    .line 216
    new-instance v1, Ljava/util/zip/Deflater;

    iget v2, p0, Lcom/htc/htccompressviewer/zip/ZipOutputStream;->level:I

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Ljava/util/zip/Deflater;-><init>(IZ)V

    iput-object v1, p0, Lcom/htc/htccompressviewer/zip/ZipOutputStream;->def:Ljava/util/zip/Deflater;

    .line 228
    const/16 v1, 0x200

    new-array v1, v1, [B

    iput-object v1, p0, Lcom/htc/htccompressviewer/zip/ZipOutputStream;->buf:[B

    .line 237
    iput-object v4, p0, Lcom/htc/htccompressviewer/zip/ZipOutputStream;->raf:Ljava/io/RandomAccessFile;

    .line 259
    :try_start_0
    new-instance v1, Ljava/io/RandomAccessFile;

    const-string v2, "rw"

    invoke-direct {v1, p1, v2}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v1, p0, Lcom/htc/htccompressviewer/zip/ZipOutputStream;->raf:Ljava/io/RandomAccessFile;

    .line 260
    iget-object v1, p0, Lcom/htc/htccompressviewer/zip/ZipOutputStream;->raf:Ljava/io/RandomAccessFile;

    const-wide/16 v2, 0x0

    invoke-virtual {v1, v2, v3}, Ljava/io/RandomAccessFile;->setLength(J)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 272
    :goto_0
    return-void

    .line 261
    :catch_0
    move-exception v0

    .line 262
    .local v0, e:Ljava/io/IOException;
    iget-object v1, p0, Lcom/htc/htccompressviewer/zip/ZipOutputStream;->raf:Ljava/io/RandomAccessFile;

    if-eqz v1, :cond_0

    .line 264
    :try_start_1
    iget-object v1, p0, Lcom/htc/htccompressviewer/zip/ZipOutputStream;->raf:Ljava/io/RandomAccessFile;

    invoke-virtual {v1}, Ljava/io/RandomAccessFile;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    .line 268
    :goto_1
    iput-object v4, p0, Lcom/htc/htccompressviewer/zip/ZipOutputStream;->raf:Ljava/io/RandomAccessFile;

    .line 270
    :cond_0
    new-instance v1, Ljava/io/FileOutputStream;

    invoke-direct {v1, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    iput-object v1, p0, Lcom/htc/htccompressviewer/zip/ZipOutputStream;->out:Ljava/io/OutputStream;

    goto :goto_0

    .line 265
    :catch_1
    move-exception v1

    goto :goto_1
.end method

.method public constructor <init>(Ljava/io/OutputStream;)V
    .locals 4
    .parameter "out"

    .prologue
    const/4 v3, 0x0

    const-wide/16 v1, 0x0

    .line 245
    invoke-direct {p0, p1}, Ljava/io/FilterOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 98
    const-string v0, ""

    iput-object v0, p0, Lcom/htc/htccompressviewer/zip/ZipOutputStream;->comment:Ljava/lang/String;

    .line 105
    const/4 v0, -0x1

    iput v0, p0, Lcom/htc/htccompressviewer/zip/ZipOutputStream;->level:I

    .line 113
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/htccompressviewer/zip/ZipOutputStream;->hasCompressionLevelChanged:Z

    .line 120
    const/16 v0, 0x8

    iput v0, p0, Lcom/htc/htccompressviewer/zip/ZipOutputStream;->method:I

    .line 127
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lcom/htc/htccompressviewer/zip/ZipOutputStream;->entries:Ljava/util/Vector;

    .line 134
    new-instance v0, Ljava/util/zip/CRC32;

    invoke-direct {v0}, Ljava/util/zip/CRC32;-><init>()V

    iput-object v0, p0, Lcom/htc/htccompressviewer/zip/ZipOutputStream;->crc:Ljava/util/zip/CRC32;

    .line 141
    iput-wide v1, p0, Lcom/htc/htccompressviewer/zip/ZipOutputStream;->written:J

    .line 148
    iput-wide v1, p0, Lcom/htc/htccompressviewer/zip/ZipOutputStream;->dataStart:J

    .line 156
    iput-wide v1, p0, Lcom/htc/htccompressviewer/zip/ZipOutputStream;->localDataStart:J

    .line 163
    iput-wide v1, p0, Lcom/htc/htccompressviewer/zip/ZipOutputStream;->cdOffset:J

    .line 170
    iput-wide v1, p0, Lcom/htc/htccompressviewer/zip/ZipOutputStream;->cdLength:J

    .line 191
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    iput-object v0, p0, Lcom/htc/htccompressviewer/zip/ZipOutputStream;->offsets:Ljava/util/Hashtable;

    .line 202
    iput-object v3, p0, Lcom/htc/htccompressviewer/zip/ZipOutputStream;->encoding:Ljava/lang/String;

    .line 216
    new-instance v0, Ljava/util/zip/Deflater;

    iget v1, p0, Lcom/htc/htccompressviewer/zip/ZipOutputStream;->level:I

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Ljava/util/zip/Deflater;-><init>(IZ)V

    iput-object v0, p0, Lcom/htc/htccompressviewer/zip/ZipOutputStream;->def:Ljava/util/zip/Deflater;

    .line 228
    const/16 v0, 0x200

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/htc/htccompressviewer/zip/ZipOutputStream;->buf:[B

    .line 237
    iput-object v3, p0, Lcom/htc/htccompressviewer/zip/ZipOutputStream;->raf:Ljava/io/RandomAccessFile;

    .line 246
    return-void
.end method

.method protected static adjustToLong(I)J
    .locals 4
    .parameter "i"

    .prologue
    .line 917
    if-gez p0, :cond_0

    .line 918
    const-wide v0, 0x100000000L

    int-to-long v2, p0

    add-long/2addr v0, v2

    .line 920
    :goto_0
    return-wide v0

    :cond_0
    int-to-long v0, p0

    goto :goto_0
.end method

.method protected static toDosTime(Ljava/util/Date;)Lcom/htc/htccompressviewer/zip/ZipLong;
    .locals 3
    .parameter "time"

    .prologue
    .line 826
    new-instance v0, Lcom/htc/htccompressviewer/zip/ZipLong;

    invoke-virtual {p0}, Ljava/util/Date;->getTime()J

    move-result-wide v1

    invoke-static {v1, v2}, Lcom/htc/htccompressviewer/zip/ZipOutputStream;->toDosTime(J)[B

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/htc/htccompressviewer/zip/ZipLong;-><init>([B)V

    return-object v0
.end method

.method protected static toDosTime(J)[B
    .locals 7
    .parameter "t"

    .prologue
    const/4 v5, 0x1

    .line 838
    new-instance v0, Ljava/util/GregorianCalendar;

    invoke-direct {v0}, Ljava/util/GregorianCalendar;-><init>()V

    .line 842
    .local v0, cal:Ljava/util/Calendar;
    invoke-virtual {v0, v5}, Ljava/util/Calendar;->get(I)I

    move-result v4

    .line 844
    .local v4, year:I
    invoke-virtual {v0, v5}, Ljava/util/Calendar;->get(I)I

    .line 845
    const/16 v5, 0x7bc

    if-ge v4, v5, :cond_0

    .line 846
    sget-object v5, Lcom/htc/htccompressviewer/zip/ZipOutputStream;->DOS_TIME_MIN:[B

    .line 855
    :goto_0
    return-object v5

    .line 848
    :cond_0
    const/4 v5, 0x2

    invoke-virtual {v0, v5}, Ljava/util/Calendar;->get(I)I

    move-result v5

    add-int/lit8 v1, v5, 0x1

    .line 849
    .local v1, month:I
    add-int/lit16 v5, v4, -0x7bc

    shl-int/lit8 v5, v5, 0x19

    shl-int/lit8 v6, v1, 0x15

    or-int/2addr v5, v6

    const/4 v6, 0x5

    invoke-virtual {v0, v6}, Ljava/util/Calendar;->get(I)I

    move-result v6

    shl-int/lit8 v6, v6, 0x10

    or-int/2addr v5, v6

    const/16 v6, 0xa

    invoke-virtual {v0, v6}, Ljava/util/Calendar;->get(I)I

    move-result v6

    shl-int/lit8 v6, v6, 0xb

    or-int/2addr v5, v6

    const/16 v6, 0xc

    invoke-virtual {v0, v6}, Ljava/util/Calendar;->get(I)I

    move-result v6

    shl-int/lit8 v6, v6, 0x5

    or-int/2addr v5, v6

    const/16 v6, 0xd

    invoke-virtual {v0, v6}, Ljava/util/Calendar;->get(I)I

    move-result v6

    shr-int/lit8 v6, v6, 0x1

    or-int/2addr v5, v6

    int-to-long v2, v5

    .line 855
    .local v2, value:J
    invoke-static {v2, v3}, Lcom/htc/htccompressviewer/zip/ZipLong;->getBytes(J)[B

    move-result-object v5

    goto :goto_0
.end method


# virtual methods
.method public close()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 523
    invoke-virtual {p0}, Lcom/htc/htccompressviewer/zip/ZipOutputStream;->finish()V

    .line 525
    iget-object v0, p0, Lcom/htc/htccompressviewer/zip/ZipOutputStream;->raf:Ljava/io/RandomAccessFile;

    if-eqz v0, :cond_0

    .line 526
    iget-object v0, p0, Lcom/htc/htccompressviewer/zip/ZipOutputStream;->raf:Ljava/io/RandomAccessFile;

    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->close()V

    .line 528
    :cond_0
    iget-object v0, p0, Lcom/htc/htccompressviewer/zip/ZipOutputStream;->out:Ljava/io/OutputStream;

    if-eqz v0, :cond_1

    .line 529
    iget-object v0, p0, Lcom/htc/htccompressviewer/zip/ZipOutputStream;->out:Ljava/io/OutputStream;

    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V

    .line 531
    :cond_1
    return-void
.end method

.method public closeEntry()V
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 338
    iget-object v6, p0, Lcom/htc/htccompressviewer/zip/ZipOutputStream;->entry:Lcom/htc/htccompressviewer/zip/ZipEntry;

    if-nez v6, :cond_0

    .line 396
    :goto_0
    return-void

    .line 342
    :cond_0
    iget-object v6, p0, Lcom/htc/htccompressviewer/zip/ZipOutputStream;->crc:Ljava/util/zip/CRC32;

    invoke-virtual {v6}, Ljava/util/zip/CRC32;->getValue()J

    move-result-wide v0

    .line 343
    .local v0, realCrc:J
    iget-object v6, p0, Lcom/htc/htccompressviewer/zip/ZipOutputStream;->crc:Ljava/util/zip/CRC32;

    invoke-virtual {v6}, Ljava/util/zip/CRC32;->reset()V

    .line 345
    iget-object v6, p0, Lcom/htc/htccompressviewer/zip/ZipOutputStream;->entry:Lcom/htc/htccompressviewer/zip/ZipEntry;

    invoke-virtual {v6}, Lcom/htc/htccompressviewer/zip/ZipEntry;->getMethod()I

    move-result v6

    const/16 v7, 0x8

    if-ne v6, v7, :cond_4

    .line 346
    iget-object v6, p0, Lcom/htc/htccompressviewer/zip/ZipOutputStream;->def:Ljava/util/zip/Deflater;

    invoke-virtual {v6}, Ljava/util/zip/Deflater;->finish()V

    .line 347
    :goto_1
    iget-object v6, p0, Lcom/htc/htccompressviewer/zip/ZipOutputStream;->def:Ljava/util/zip/Deflater;

    invoke-virtual {v6}, Ljava/util/zip/Deflater;->finished()Z

    move-result v6

    if-nez v6, :cond_1

    .line 348
    invoke-virtual {p0}, Lcom/htc/htccompressviewer/zip/ZipOutputStream;->deflate()V

    goto :goto_1

    .line 351
    :cond_1
    iget-object v6, p0, Lcom/htc/htccompressviewer/zip/ZipOutputStream;->entry:Lcom/htc/htccompressviewer/zip/ZipEntry;

    iget-object v7, p0, Lcom/htc/htccompressviewer/zip/ZipOutputStream;->def:Ljava/util/zip/Deflater;

    invoke-virtual {v7}, Ljava/util/zip/Deflater;->getTotalIn()I

    move-result v7

    invoke-static {v7}, Lcom/htc/htccompressviewer/zip/ZipOutputStream;->adjustToLong(I)J

    move-result-wide v7

    invoke-virtual {v6, v7, v8}, Lcom/htc/htccompressviewer/zip/ZipEntry;->setSize(J)V

    .line 352
    iget-object v6, p0, Lcom/htc/htccompressviewer/zip/ZipOutputStream;->entry:Lcom/htc/htccompressviewer/zip/ZipEntry;

    iget-object v7, p0, Lcom/htc/htccompressviewer/zip/ZipOutputStream;->def:Ljava/util/zip/Deflater;

    invoke-virtual {v7}, Ljava/util/zip/Deflater;->getTotalOut()I

    move-result v7

    invoke-static {v7}, Lcom/htc/htccompressviewer/zip/ZipOutputStream;->adjustToLong(I)J

    move-result-wide v7

    invoke-virtual {v6, v7, v8}, Lcom/htc/htccompressviewer/zip/ZipEntry;->setCompressedSize(J)V

    .line 353
    iget-object v6, p0, Lcom/htc/htccompressviewer/zip/ZipOutputStream;->entry:Lcom/htc/htccompressviewer/zip/ZipEntry;

    invoke-virtual {v6, v0, v1}, Lcom/htc/htccompressviewer/zip/ZipEntry;->setCrc(J)V

    .line 355
    iget-object v6, p0, Lcom/htc/htccompressviewer/zip/ZipOutputStream;->def:Ljava/util/zip/Deflater;

    invoke-virtual {v6}, Ljava/util/zip/Deflater;->reset()V

    .line 357
    iget-wide v6, p0, Lcom/htc/htccompressviewer/zip/ZipOutputStream;->written:J

    iget-object v8, p0, Lcom/htc/htccompressviewer/zip/ZipOutputStream;->entry:Lcom/htc/htccompressviewer/zip/ZipEntry;

    invoke-virtual {v8}, Lcom/htc/htccompressviewer/zip/ZipEntry;->getCompressedSize()J

    move-result-wide v8

    add-long/2addr v6, v8

    iput-wide v6, p0, Lcom/htc/htccompressviewer/zip/ZipOutputStream;->written:J

    .line 384
    :cond_2
    :goto_2
    iget-object v6, p0, Lcom/htc/htccompressviewer/zip/ZipOutputStream;->raf:Ljava/io/RandomAccessFile;

    if-eqz v6, :cond_3

    .line 385
    iget-object v6, p0, Lcom/htc/htccompressviewer/zip/ZipOutputStream;->raf:Ljava/io/RandomAccessFile;

    invoke-virtual {v6}, Ljava/io/RandomAccessFile;->getFilePointer()J

    move-result-wide v2

    .line 387
    .local v2, save:J
    iget-object v6, p0, Lcom/htc/htccompressviewer/zip/ZipOutputStream;->raf:Ljava/io/RandomAccessFile;

    iget-wide v7, p0, Lcom/htc/htccompressviewer/zip/ZipOutputStream;->localDataStart:J

    invoke-virtual {v6, v7, v8}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 388
    iget-object v6, p0, Lcom/htc/htccompressviewer/zip/ZipOutputStream;->entry:Lcom/htc/htccompressviewer/zip/ZipEntry;

    invoke-virtual {v6}, Lcom/htc/htccompressviewer/zip/ZipEntry;->getCrc()J

    move-result-wide v6

    invoke-static {v6, v7}, Lcom/htc/htccompressviewer/zip/ZipLong;->getBytes(J)[B

    move-result-object v6

    invoke-virtual {p0, v6}, Lcom/htc/htccompressviewer/zip/ZipOutputStream;->writeOut([B)V

    .line 389
    iget-object v6, p0, Lcom/htc/htccompressviewer/zip/ZipOutputStream;->entry:Lcom/htc/htccompressviewer/zip/ZipEntry;

    invoke-virtual {v6}, Lcom/htc/htccompressviewer/zip/ZipEntry;->getCompressedSize()J

    move-result-wide v6

    invoke-static {v6, v7}, Lcom/htc/htccompressviewer/zip/ZipLong;->getBytes(J)[B

    move-result-object v6

    invoke-virtual {p0, v6}, Lcom/htc/htccompressviewer/zip/ZipOutputStream;->writeOut([B)V

    .line 390
    iget-object v6, p0, Lcom/htc/htccompressviewer/zip/ZipOutputStream;->entry:Lcom/htc/htccompressviewer/zip/ZipEntry;

    invoke-virtual {v6}, Lcom/htc/htccompressviewer/zip/ZipEntry;->getSize()J

    move-result-wide v6

    invoke-static {v6, v7}, Lcom/htc/htccompressviewer/zip/ZipLong;->getBytes(J)[B

    move-result-object v6

    invoke-virtual {p0, v6}, Lcom/htc/htccompressviewer/zip/ZipOutputStream;->writeOut([B)V

    .line 391
    iget-object v6, p0, Lcom/htc/htccompressviewer/zip/ZipOutputStream;->raf:Ljava/io/RandomAccessFile;

    invoke-virtual {v6, v2, v3}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 394
    .end local v2           #save:J
    :cond_3
    iget-object v6, p0, Lcom/htc/htccompressviewer/zip/ZipOutputStream;->entry:Lcom/htc/htccompressviewer/zip/ZipEntry;

    invoke-virtual {p0, v6}, Lcom/htc/htccompressviewer/zip/ZipOutputStream;->writeDataDescriptor(Lcom/htc/htccompressviewer/zip/ZipEntry;)V

    .line 395
    const/4 v6, 0x0

    iput-object v6, p0, Lcom/htc/htccompressviewer/zip/ZipOutputStream;->entry:Lcom/htc/htccompressviewer/zip/ZipEntry;

    goto/16 :goto_0

    .line 358
    :cond_4
    iget-object v6, p0, Lcom/htc/htccompressviewer/zip/ZipOutputStream;->raf:Ljava/io/RandomAccessFile;

    if-nez v6, :cond_6

    .line 359
    iget-object v6, p0, Lcom/htc/htccompressviewer/zip/ZipOutputStream;->entry:Lcom/htc/htccompressviewer/zip/ZipEntry;

    invoke-virtual {v6}, Lcom/htc/htccompressviewer/zip/ZipEntry;->getCrc()J

    move-result-wide v6

    cmp-long v6, v6, v0

    if-eqz v6, :cond_5

    .line 360
    new-instance v6, Ljava/util/zip/ZipException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "bad CRC checksum for entry "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/htc/htccompressviewer/zip/ZipOutputStream;->entry:Lcom/htc/htccompressviewer/zip/ZipEntry;

    invoke-virtual {v8}, Lcom/htc/htccompressviewer/zip/ZipEntry;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ": "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/htc/htccompressviewer/zip/ZipOutputStream;->entry:Lcom/htc/htccompressviewer/zip/ZipEntry;

    invoke-virtual {v8}, Lcom/htc/htccompressviewer/zip/ZipEntry;->getCrc()J

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/Long;->toHexString(J)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " instead of "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-static {v0, v1}, Ljava/lang/Long;->toHexString(J)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/util/zip/ZipException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 367
    :cond_5
    iget-object v6, p0, Lcom/htc/htccompressviewer/zip/ZipOutputStream;->entry:Lcom/htc/htccompressviewer/zip/ZipEntry;

    invoke-virtual {v6}, Lcom/htc/htccompressviewer/zip/ZipEntry;->getSize()J

    move-result-wide v6

    iget-wide v8, p0, Lcom/htc/htccompressviewer/zip/ZipOutputStream;->written:J

    iget-wide v10, p0, Lcom/htc/htccompressviewer/zip/ZipOutputStream;->dataStart:J

    sub-long/2addr v8, v10

    cmp-long v6, v6, v8

    if-eqz v6, :cond_2

    .line 368
    new-instance v6, Ljava/util/zip/ZipException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "bad size for entry "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/htc/htccompressviewer/zip/ZipOutputStream;->entry:Lcom/htc/htccompressviewer/zip/ZipEntry;

    invoke-virtual {v8}, Lcom/htc/htccompressviewer/zip/ZipEntry;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ": "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/htc/htccompressviewer/zip/ZipOutputStream;->entry:Lcom/htc/htccompressviewer/zip/ZipEntry;

    invoke-virtual {v8}, Lcom/htc/htccompressviewer/zip/ZipEntry;->getSize()J

    move-result-wide v8

    invoke-virtual {v7, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " instead of "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-wide v8, p0, Lcom/htc/htccompressviewer/zip/ZipOutputStream;->written:J

    iget-wide v10, p0, Lcom/htc/htccompressviewer/zip/ZipOutputStream;->dataStart:J

    sub-long/2addr v8, v10

    invoke-virtual {v7, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/util/zip/ZipException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 375
    :cond_6
    iget-wide v6, p0, Lcom/htc/htccompressviewer/zip/ZipOutputStream;->written:J

    iget-wide v8, p0, Lcom/htc/htccompressviewer/zip/ZipOutputStream;->dataStart:J

    sub-long v4, v6, v8

    .line 377
    .local v4, size:J
    iget-object v6, p0, Lcom/htc/htccompressviewer/zip/ZipOutputStream;->entry:Lcom/htc/htccompressviewer/zip/ZipEntry;

    invoke-virtual {v6, v4, v5}, Lcom/htc/htccompressviewer/zip/ZipEntry;->setSize(J)V

    .line 378
    iget-object v6, p0, Lcom/htc/htccompressviewer/zip/ZipOutputStream;->entry:Lcom/htc/htccompressviewer/zip/ZipEntry;

    invoke-virtual {v6, v4, v5}, Lcom/htc/htccompressviewer/zip/ZipEntry;->setCompressedSize(J)V

    .line 379
    iget-object v6, p0, Lcom/htc/htccompressviewer/zip/ZipOutputStream;->entry:Lcom/htc/htccompressviewer/zip/ZipEntry;

    invoke-virtual {v6, v0, v1}, Lcom/htc/htccompressviewer/zip/ZipEntry;->setCrc(J)V

    goto/16 :goto_2
.end method

.method protected final deflate()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 581
    iget-object v1, p0, Lcom/htc/htccompressviewer/zip/ZipOutputStream;->def:Ljava/util/zip/Deflater;

    iget-object v2, p0, Lcom/htc/htccompressviewer/zip/ZipOutputStream;->buf:[B

    iget-object v3, p0, Lcom/htc/htccompressviewer/zip/ZipOutputStream;->buf:[B

    array-length v3, v3

    invoke-virtual {v1, v2, v4, v3}, Ljava/util/zip/Deflater;->deflate([BII)I

    move-result v0

    .line 582
    .local v0, len:I
    if-lez v0, :cond_0

    .line 583
    iget-object v1, p0, Lcom/htc/htccompressviewer/zip/ZipOutputStream;->buf:[B

    invoke-virtual {p0, v1, v4, v0}, Lcom/htc/htccompressviewer/zip/ZipOutputStream;->writeOut([BII)V

    .line 585
    :cond_0
    return-void
.end method

.method public finish()V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 320
    invoke-virtual {p0}, Lcom/htc/htccompressviewer/zip/ZipOutputStream;->closeEntry()V

    .line 321
    iget-wide v2, p0, Lcom/htc/htccompressviewer/zip/ZipOutputStream;->written:J

    iput-wide v2, p0, Lcom/htc/htccompressviewer/zip/ZipOutputStream;->cdOffset:J

    .line 322
    const/4 v1, 0x0

    .local v1, i:I
    iget-object v2, p0, Lcom/htc/htccompressviewer/zip/ZipOutputStream;->entries:Ljava/util/Vector;

    invoke-virtual {v2}, Ljava/util/Vector;->size()I

    move-result v0

    .local v0, entriesSize:I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 323
    iget-object v2, p0, Lcom/htc/htccompressviewer/zip/ZipOutputStream;->entries:Ljava/util/Vector;

    invoke-virtual {v2, v1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/htc/htccompressviewer/zip/ZipEntry;

    invoke-virtual {p0, v2}, Lcom/htc/htccompressviewer/zip/ZipOutputStream;->writeCentralFileHeader(Lcom/htc/htccompressviewer/zip/ZipEntry;)V

    .line 322
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 325
    :cond_0
    iget-wide v2, p0, Lcom/htc/htccompressviewer/zip/ZipOutputStream;->written:J

    iget-wide v4, p0, Lcom/htc/htccompressviewer/zip/ZipOutputStream;->cdOffset:J

    sub-long/2addr v2, v4

    iput-wide v2, p0, Lcom/htc/htccompressviewer/zip/ZipOutputStream;->cdLength:J

    .line 326
    invoke-virtual {p0}, Lcom/htc/htccompressviewer/zip/ZipOutputStream;->writeCentralDirectoryEnd()V

    .line 327
    iget-object v2, p0, Lcom/htc/htccompressviewer/zip/ZipOutputStream;->offsets:Ljava/util/Hashtable;

    invoke-virtual {v2}, Ljava/util/Hashtable;->clear()V

    .line 328
    iget-object v2, p0, Lcom/htc/htccompressviewer/zip/ZipOutputStream;->entries:Ljava/util/Vector;

    invoke-virtual {v2}, Ljava/util/Vector;->removeAllElements()V

    .line 329
    return-void
.end method

.method public flush()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 541
    iget-object v0, p0, Lcom/htc/htccompressviewer/zip/ZipOutputStream;->out:Ljava/io/OutputStream;

    if-eqz v0, :cond_0

    .line 542
    iget-object v0, p0, Lcom/htc/htccompressviewer/zip/ZipOutputStream;->out:Ljava/io/OutputStream;

    invoke-virtual {v0}, Ljava/io/OutputStream;->flush()V

    .line 544
    :cond_0
    return-void
.end method

.method protected getBytes(Ljava/lang/String;)[B
    .locals 3
    .parameter "name"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/util/zip/ZipException;
        }
    .end annotation

    .prologue
    .line 869
    iget-object v1, p0, Lcom/htc/htccompressviewer/zip/ZipOutputStream;->encoding:Ljava/lang/String;

    if-nez v1, :cond_0

    .line 870
    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    .line 873
    :goto_0
    return-object v1

    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/htc/htccompressviewer/zip/ZipOutputStream;->encoding:Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    goto :goto_0

    .line 874
    :catch_0
    move-exception v0

    .line 875
    .local v0, uee:Ljava/io/UnsupportedEncodingException;
    new-instance v1, Ljava/util/zip/ZipException;

    invoke-virtual {v0}, Ljava/io/UnsupportedEncodingException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/util/zip/ZipException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public getEncoding()Ljava/lang/String;
    .locals 1

    .prologue
    .line 309
    iget-object v0, p0, Lcom/htc/htccompressviewer/zip/ZipOutputStream;->encoding:Ljava/lang/String;

    return-object v0
.end method

.method public isSeekable()Z
    .locals 1

    .prologue
    .line 285
    iget-object v0, p0, Lcom/htc/htccompressviewer/zip/ZipOutputStream;->raf:Ljava/io/RandomAccessFile;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public putNextEntry(Lcom/htc/htccompressviewer/zip/ZipEntry;)V
    .locals 5
    .parameter "ze"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const-wide/16 v3, -0x1

    .line 405
    invoke-virtual {p0}, Lcom/htc/htccompressviewer/zip/ZipOutputStream;->closeEntry()V

    .line 407
    iput-object p1, p0, Lcom/htc/htccompressviewer/zip/ZipOutputStream;->entry:Lcom/htc/htccompressviewer/zip/ZipEntry;

    .line 408
    iget-object v0, p0, Lcom/htc/htccompressviewer/zip/ZipOutputStream;->entries:Ljava/util/Vector;

    iget-object v1, p0, Lcom/htc/htccompressviewer/zip/ZipOutputStream;->entry:Lcom/htc/htccompressviewer/zip/ZipEntry;

    invoke-virtual {v0, v1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 410
    iget-object v0, p0, Lcom/htc/htccompressviewer/zip/ZipOutputStream;->entry:Lcom/htc/htccompressviewer/zip/ZipEntry;

    invoke-virtual {v0}, Lcom/htc/htccompressviewer/zip/ZipEntry;->getMethod()I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 411
    iget-object v0, p0, Lcom/htc/htccompressviewer/zip/ZipOutputStream;->entry:Lcom/htc/htccompressviewer/zip/ZipEntry;

    iget v1, p0, Lcom/htc/htccompressviewer/zip/ZipOutputStream;->method:I

    invoke-virtual {v0, v1}, Lcom/htc/htccompressviewer/zip/ZipEntry;->setMethod(I)V

    .line 414
    :cond_0
    iget-object v0, p0, Lcom/htc/htccompressviewer/zip/ZipOutputStream;->entry:Lcom/htc/htccompressviewer/zip/ZipEntry;

    invoke-virtual {v0}, Lcom/htc/htccompressviewer/zip/ZipEntry;->getTime()J

    move-result-wide v0

    cmp-long v0, v0, v3

    if-nez v0, :cond_1

    .line 415
    iget-object v0, p0, Lcom/htc/htccompressviewer/zip/ZipOutputStream;->entry:Lcom/htc/htccompressviewer/zip/ZipEntry;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/htc/htccompressviewer/zip/ZipEntry;->setTime(J)V

    .line 419
    :cond_1
    iget-object v0, p0, Lcom/htc/htccompressviewer/zip/ZipOutputStream;->entry:Lcom/htc/htccompressviewer/zip/ZipEntry;

    invoke-virtual {v0}, Lcom/htc/htccompressviewer/zip/ZipEntry;->getMethod()I

    move-result v0

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/htc/htccompressviewer/zip/ZipOutputStream;->raf:Ljava/io/RandomAccessFile;

    if-nez v0, :cond_4

    .line 420
    iget-object v0, p0, Lcom/htc/htccompressviewer/zip/ZipOutputStream;->entry:Lcom/htc/htccompressviewer/zip/ZipEntry;

    invoke-virtual {v0}, Lcom/htc/htccompressviewer/zip/ZipEntry;->getSize()J

    move-result-wide v0

    cmp-long v0, v0, v3

    if-nez v0, :cond_2

    .line 421
    new-instance v0, Ljava/util/zip/ZipException;

    const-string v1, "uncompressed size is required for STORED method when not writing to a file"

    invoke-direct {v0, v1}, Ljava/util/zip/ZipException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 425
    :cond_2
    iget-object v0, p0, Lcom/htc/htccompressviewer/zip/ZipOutputStream;->entry:Lcom/htc/htccompressviewer/zip/ZipEntry;

    invoke-virtual {v0}, Lcom/htc/htccompressviewer/zip/ZipEntry;->getCrc()J

    move-result-wide v0

    cmp-long v0, v0, v3

    if-nez v0, :cond_3

    .line 426
    new-instance v0, Ljava/util/zip/ZipException;

    const-string v1, "crc checksum is required for STORED method when not writing to a file"

    invoke-direct {v0, v1}, Ljava/util/zip/ZipException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 429
    :cond_3
    iget-object v0, p0, Lcom/htc/htccompressviewer/zip/ZipOutputStream;->entry:Lcom/htc/htccompressviewer/zip/ZipEntry;

    iget-object v1, p0, Lcom/htc/htccompressviewer/zip/ZipOutputStream;->entry:Lcom/htc/htccompressviewer/zip/ZipEntry;

    invoke-virtual {v1}, Lcom/htc/htccompressviewer/zip/ZipEntry;->getSize()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/htc/htccompressviewer/zip/ZipEntry;->setCompressedSize(J)V

    .line 432
    :cond_4
    iget-object v0, p0, Lcom/htc/htccompressviewer/zip/ZipOutputStream;->entry:Lcom/htc/htccompressviewer/zip/ZipEntry;

    invoke-virtual {v0}, Lcom/htc/htccompressviewer/zip/ZipEntry;->getMethod()I

    move-result v0

    const/16 v1, 0x8

    if-ne v0, v1, :cond_5

    iget-boolean v0, p0, Lcom/htc/htccompressviewer/zip/ZipOutputStream;->hasCompressionLevelChanged:Z

    if-eqz v0, :cond_5

    .line 433
    iget-object v0, p0, Lcom/htc/htccompressviewer/zip/ZipOutputStream;->def:Ljava/util/zip/Deflater;

    iget v1, p0, Lcom/htc/htccompressviewer/zip/ZipOutputStream;->level:I

    invoke-virtual {v0, v1}, Ljava/util/zip/Deflater;->setLevel(I)V

    .line 434
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/htccompressviewer/zip/ZipOutputStream;->hasCompressionLevelChanged:Z

    .line 436
    :cond_5
    iget-object v0, p0, Lcom/htc/htccompressviewer/zip/ZipOutputStream;->entry:Lcom/htc/htccompressviewer/zip/ZipEntry;

    invoke-virtual {p0, v0}, Lcom/htc/htccompressviewer/zip/ZipOutputStream;->writeLocalFileHeader(Lcom/htc/htccompressviewer/zip/ZipEntry;)V

    .line 437
    return-void
.end method

.method public setComment(Ljava/lang/String;)V
    .locals 0
    .parameter "comment"

    .prologue
    .line 445
    iput-object p1, p0, Lcom/htc/htccompressviewer/zip/ZipOutputStream;->comment:Ljava/lang/String;

    .line 446
    return-void
.end method

.method public setEncoding(Ljava/lang/String;)V
    .locals 0
    .parameter "encoding"

    .prologue
    .line 298
    iput-object p1, p0, Lcom/htc/htccompressviewer/zip/ZipOutputStream;->encoding:Ljava/lang/String;

    .line 299
    return-void
.end method

.method public setLevel(I)V
    .locals 3
    .parameter "level"

    .prologue
    .line 457
    const/4 v0, -0x1

    if-lt p1, v0, :cond_0

    const/16 v0, 0x9

    if-le p1, v0, :cond_1

    .line 459
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid compression level: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 462
    :cond_1
    iget v0, p0, Lcom/htc/htccompressviewer/zip/ZipOutputStream;->level:I

    if-eq v0, p1, :cond_2

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lcom/htc/htccompressviewer/zip/ZipOutputStream;->hasCompressionLevelChanged:Z

    .line 463
    iput p1, p0, Lcom/htc/htccompressviewer/zip/ZipOutputStream;->level:I

    .line 464
    return-void

    .line 462
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setMethod(I)V
    .locals 0
    .parameter "method"

    .prologue
    .line 474
    iput p1, p0, Lcom/htc/htccompressviewer/zip/ZipOutputStream;->method:I

    .line 475
    return-void
.end method

.method public write(I)V
    .locals 4
    .parameter "b"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 510
    new-array v0, v3, [B

    .line 511
    .local v0, buff:[B
    and-int/lit16 v1, p1, 0xff

    int-to-byte v1, v1

    aput-byte v1, v0, v2

    .line 512
    invoke-virtual {p0, v0, v2, v3}, Lcom/htc/htccompressviewer/zip/ZipOutputStream;->write([BII)V

    .line 513
    return-void
.end method

.method public write([BII)V
    .locals 4
    .parameter "b"
    .parameter "offset"
    .parameter "length"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 485
    iget-object v0, p0, Lcom/htc/htccompressviewer/zip/ZipOutputStream;->entry:Lcom/htc/htccompressviewer/zip/ZipEntry;

    invoke-virtual {v0}, Lcom/htc/htccompressviewer/zip/ZipEntry;->getMethod()I

    move-result v0

    const/16 v1, 0x8

    if-ne v0, v1, :cond_0

    .line 486
    if-lez p3, :cond_1

    .line 487
    iget-object v0, p0, Lcom/htc/htccompressviewer/zip/ZipOutputStream;->def:Ljava/util/zip/Deflater;

    invoke-virtual {v0}, Ljava/util/zip/Deflater;->finished()Z

    move-result v0

    if-nez v0, :cond_1

    .line 488
    iget-object v0, p0, Lcom/htc/htccompressviewer/zip/ZipOutputStream;->def:Ljava/util/zip/Deflater;

    invoke-virtual {v0, p1, p2, p3}, Ljava/util/zip/Deflater;->setInput([BII)V

    .line 489
    :goto_0
    iget-object v0, p0, Lcom/htc/htccompressviewer/zip/ZipOutputStream;->def:Ljava/util/zip/Deflater;

    invoke-virtual {v0}, Ljava/util/zip/Deflater;->needsInput()Z

    move-result v0

    if-nez v0, :cond_1

    .line 490
    invoke-virtual {p0}, Lcom/htc/htccompressviewer/zip/ZipOutputStream;->deflate()V

    goto :goto_0

    .line 495
    :cond_0
    invoke-virtual {p0, p1, p2, p3}, Lcom/htc/htccompressviewer/zip/ZipOutputStream;->writeOut([BII)V

    .line 496
    iget-wide v0, p0, Lcom/htc/htccompressviewer/zip/ZipOutputStream;->written:J

    int-to-long v2, p3

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/htc/htccompressviewer/zip/ZipOutputStream;->written:J

    .line 498
    :cond_1
    iget-object v0, p0, Lcom/htc/htccompressviewer/zip/ZipOutputStream;->crc:Ljava/util/zip/CRC32;

    invoke-virtual {v0, p1, p2, p3}, Ljava/util/zip/CRC32;->update([BII)V

    .line 499
    return-void
.end method

.method protected writeCentralDirectoryEnd()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 791
    sget-object v2, Lcom/htc/htccompressviewer/zip/ZipOutputStream;->EOCD_SIG:[B

    invoke-virtual {p0, v2}, Lcom/htc/htccompressviewer/zip/ZipOutputStream;->writeOut([B)V

    .line 794
    sget-object v2, Lcom/htc/htccompressviewer/zip/ZipOutputStream;->ZERO:[B

    invoke-virtual {p0, v2}, Lcom/htc/htccompressviewer/zip/ZipOutputStream;->writeOut([B)V

    .line 795
    sget-object v2, Lcom/htc/htccompressviewer/zip/ZipOutputStream;->ZERO:[B

    invoke-virtual {p0, v2}, Lcom/htc/htccompressviewer/zip/ZipOutputStream;->writeOut([B)V

    .line 798
    iget-object v2, p0, Lcom/htc/htccompressviewer/zip/ZipOutputStream;->entries:Ljava/util/Vector;

    invoke-virtual {v2}, Ljava/util/Vector;->size()I

    move-result v2

    invoke-static {v2}, Lcom/htc/htccompressviewer/zip/ZipShort;->getBytes(I)[B

    move-result-object v1

    .line 799
    .local v1, num:[B
    invoke-virtual {p0, v1}, Lcom/htc/htccompressviewer/zip/ZipOutputStream;->writeOut([B)V

    .line 800
    invoke-virtual {p0, v1}, Lcom/htc/htccompressviewer/zip/ZipOutputStream;->writeOut([B)V

    .line 803
    iget-wide v2, p0, Lcom/htc/htccompressviewer/zip/ZipOutputStream;->cdLength:J

    invoke-static {v2, v3}, Lcom/htc/htccompressviewer/zip/ZipLong;->getBytes(J)[B

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/htc/htccompressviewer/zip/ZipOutputStream;->writeOut([B)V

    .line 804
    iget-wide v2, p0, Lcom/htc/htccompressviewer/zip/ZipOutputStream;->cdOffset:J

    invoke-static {v2, v3}, Lcom/htc/htccompressviewer/zip/ZipLong;->getBytes(J)[B

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/htc/htccompressviewer/zip/ZipOutputStream;->writeOut([B)V

    .line 807
    iget-object v2, p0, Lcom/htc/htccompressviewer/zip/ZipOutputStream;->comment:Ljava/lang/String;

    invoke-virtual {p0, v2}, Lcom/htc/htccompressviewer/zip/ZipOutputStream;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    .line 808
    .local v0, data:[B
    array-length v2, v0

    invoke-static {v2}, Lcom/htc/htccompressviewer/zip/ZipShort;->getBytes(I)[B

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/htc/htccompressviewer/zip/ZipOutputStream;->writeOut([B)V

    .line 809
    invoke-virtual {p0, v0}, Lcom/htc/htccompressviewer/zip/ZipOutputStream;->writeOut([B)V

    .line 810
    return-void
.end method

.method protected writeCentralFileHeader(Lcom/htc/htccompressviewer/zip/ZipEntry;)V
    .locals 12
    .parameter "ze"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/16 v6, 0x8

    const-wide/16 v10, 0x4

    const-wide/16 v8, 0x2

    .line 694
    sget-object v4, Lcom/htc/htccompressviewer/zip/ZipOutputStream;->CFH_SIG:[B

    invoke-virtual {p0, v4}, Lcom/htc/htccompressviewer/zip/ZipOutputStream;->writeOut([B)V

    .line 695
    iget-wide v4, p0, Lcom/htc/htccompressviewer/zip/ZipOutputStream;->written:J

    add-long/2addr v4, v10

    iput-wide v4, p0, Lcom/htc/htccompressviewer/zip/ZipOutputStream;->written:J

    .line 699
    invoke-virtual {p1}, Lcom/htc/htccompressviewer/zip/ZipEntry;->getPlatform()I

    move-result v4

    shl-int/lit8 v4, v4, 0x8

    or-int/lit8 v4, v4, 0x14

    invoke-static {v4}, Lcom/htc/htccompressviewer/zip/ZipShort;->getBytes(I)[B

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/htc/htccompressviewer/zip/ZipOutputStream;->writeOut([B)V

    .line 700
    iget-wide v4, p0, Lcom/htc/htccompressviewer/zip/ZipOutputStream;->written:J

    add-long/2addr v4, v8

    iput-wide v4, p0, Lcom/htc/htccompressviewer/zip/ZipOutputStream;->written:J

    .line 704
    invoke-virtual {p1}, Lcom/htc/htccompressviewer/zip/ZipEntry;->getMethod()I

    move-result v4

    if-ne v4, v6, :cond_1

    iget-object v4, p0, Lcom/htc/htccompressviewer/zip/ZipOutputStream;->raf:Ljava/io/RandomAccessFile;

    if-nez v4, :cond_1

    .line 707
    const/16 v4, 0x14

    invoke-static {v4}, Lcom/htc/htccompressviewer/zip/ZipShort;->getBytes(I)[B

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/htc/htccompressviewer/zip/ZipOutputStream;->writeOut([B)V

    .line 710
    invoke-static {v6}, Lcom/htc/htccompressviewer/zip/ZipShort;->getBytes(I)[B

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/htc/htccompressviewer/zip/ZipOutputStream;->writeOut([B)V

    .line 716
    :goto_0
    iget-wide v4, p0, Lcom/htc/htccompressviewer/zip/ZipOutputStream;->written:J

    add-long/2addr v4, v10

    iput-wide v4, p0, Lcom/htc/htccompressviewer/zip/ZipOutputStream;->written:J

    .line 719
    invoke-virtual {p1}, Lcom/htc/htccompressviewer/zip/ZipEntry;->getMethod()I

    move-result v4

    invoke-static {v4}, Lcom/htc/htccompressviewer/zip/ZipShort;->getBytes(I)[B

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/htc/htccompressviewer/zip/ZipOutputStream;->writeOut([B)V

    .line 720
    iget-wide v4, p0, Lcom/htc/htccompressviewer/zip/ZipOutputStream;->written:J

    add-long/2addr v4, v8

    iput-wide v4, p0, Lcom/htc/htccompressviewer/zip/ZipOutputStream;->written:J

    .line 723
    invoke-virtual {p1}, Lcom/htc/htccompressviewer/zip/ZipEntry;->getTime()J

    move-result-wide v4

    invoke-static {v4, v5}, Lcom/htc/htccompressviewer/zip/ZipOutputStream;->toDosTime(J)[B

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/htc/htccompressviewer/zip/ZipOutputStream;->writeOut([B)V

    .line 724
    iget-wide v4, p0, Lcom/htc/htccompressviewer/zip/ZipOutputStream;->written:J

    add-long/2addr v4, v10

    iput-wide v4, p0, Lcom/htc/htccompressviewer/zip/ZipOutputStream;->written:J

    .line 729
    invoke-virtual {p1}, Lcom/htc/htccompressviewer/zip/ZipEntry;->getCrc()J

    move-result-wide v4

    invoke-static {v4, v5}, Lcom/htc/htccompressviewer/zip/ZipLong;->getBytes(J)[B

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/htc/htccompressviewer/zip/ZipOutputStream;->writeOut([B)V

    .line 730
    invoke-virtual {p1}, Lcom/htc/htccompressviewer/zip/ZipEntry;->getCompressedSize()J

    move-result-wide v4

    invoke-static {v4, v5}, Lcom/htc/htccompressviewer/zip/ZipLong;->getBytes(J)[B

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/htc/htccompressviewer/zip/ZipOutputStream;->writeOut([B)V

    .line 731
    invoke-virtual {p1}, Lcom/htc/htccompressviewer/zip/ZipEntry;->getSize()J

    move-result-wide v4

    invoke-static {v4, v5}, Lcom/htc/htccompressviewer/zip/ZipLong;->getBytes(J)[B

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/htc/htccompressviewer/zip/ZipOutputStream;->writeOut([B)V

    .line 733
    iget-wide v4, p0, Lcom/htc/htccompressviewer/zip/ZipOutputStream;->written:J

    const-wide/16 v6, 0xc

    add-long/2addr v4, v6

    iput-wide v4, p0, Lcom/htc/htccompressviewer/zip/ZipOutputStream;->written:J

    .line 737
    invoke-virtual {p1}, Lcom/htc/htccompressviewer/zip/ZipEntry;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/htc/htccompressviewer/zip/ZipOutputStream;->getBytes(Ljava/lang/String;)[B

    move-result-object v3

    .line 738
    .local v3, name:[B
    array-length v4, v3

    invoke-static {v4}, Lcom/htc/htccompressviewer/zip/ZipShort;->getBytes(I)[B

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/htc/htccompressviewer/zip/ZipOutputStream;->writeOut([B)V

    .line 739
    iget-wide v4, p0, Lcom/htc/htccompressviewer/zip/ZipOutputStream;->written:J

    add-long/2addr v4, v8

    iput-wide v4, p0, Lcom/htc/htccompressviewer/zip/ZipOutputStream;->written:J

    .line 742
    invoke-virtual {p1}, Lcom/htc/htccompressviewer/zip/ZipEntry;->getCentralDirectoryExtra()[B

    move-result-object v2

    .line 743
    .local v2, extra:[B
    array-length v4, v2

    invoke-static {v4}, Lcom/htc/htccompressviewer/zip/ZipShort;->getBytes(I)[B

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/htc/htccompressviewer/zip/ZipOutputStream;->writeOut([B)V

    .line 744
    iget-wide v4, p0, Lcom/htc/htccompressviewer/zip/ZipOutputStream;->written:J

    add-long/2addr v4, v8

    iput-wide v4, p0, Lcom/htc/htccompressviewer/zip/ZipOutputStream;->written:J

    .line 747
    invoke-virtual {p1}, Lcom/htc/htccompressviewer/zip/ZipEntry;->getComment()Ljava/lang/String;

    move-result-object v0

    .line 748
    .local v0, comm:Ljava/lang/String;
    if-nez v0, :cond_0

    .line 749
    const-string v0, ""

    .line 751
    :cond_0
    invoke-virtual {p0, v0}, Lcom/htc/htccompressviewer/zip/ZipOutputStream;->getBytes(Ljava/lang/String;)[B

    move-result-object v1

    .line 752
    .local v1, commentB:[B
    array-length v4, v1

    invoke-static {v4}, Lcom/htc/htccompressviewer/zip/ZipShort;->getBytes(I)[B

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/htc/htccompressviewer/zip/ZipOutputStream;->writeOut([B)V

    .line 753
    iget-wide v4, p0, Lcom/htc/htccompressviewer/zip/ZipOutputStream;->written:J

    add-long/2addr v4, v8

    iput-wide v4, p0, Lcom/htc/htccompressviewer/zip/ZipOutputStream;->written:J

    .line 756
    sget-object v4, Lcom/htc/htccompressviewer/zip/ZipOutputStream;->ZERO:[B

    invoke-virtual {p0, v4}, Lcom/htc/htccompressviewer/zip/ZipOutputStream;->writeOut([B)V

    .line 757
    iget-wide v4, p0, Lcom/htc/htccompressviewer/zip/ZipOutputStream;->written:J

    add-long/2addr v4, v8

    iput-wide v4, p0, Lcom/htc/htccompressviewer/zip/ZipOutputStream;->written:J

    .line 760
    invoke-virtual {p1}, Lcom/htc/htccompressviewer/zip/ZipEntry;->getInternalAttributes()I

    move-result v4

    invoke-static {v4}, Lcom/htc/htccompressviewer/zip/ZipShort;->getBytes(I)[B

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/htc/htccompressviewer/zip/ZipOutputStream;->writeOut([B)V

    .line 761
    iget-wide v4, p0, Lcom/htc/htccompressviewer/zip/ZipOutputStream;->written:J

    add-long/2addr v4, v8

    iput-wide v4, p0, Lcom/htc/htccompressviewer/zip/ZipOutputStream;->written:J

    .line 764
    invoke-virtual {p1}, Lcom/htc/htccompressviewer/zip/ZipEntry;->getExternalAttributes()J

    move-result-wide v4

    invoke-static {v4, v5}, Lcom/htc/htccompressviewer/zip/ZipLong;->getBytes(J)[B

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/htc/htccompressviewer/zip/ZipOutputStream;->writeOut([B)V

    .line 765
    iget-wide v4, p0, Lcom/htc/htccompressviewer/zip/ZipOutputStream;->written:J

    add-long/2addr v4, v10

    iput-wide v4, p0, Lcom/htc/htccompressviewer/zip/ZipOutputStream;->written:J

    .line 768
    iget-object v4, p0, Lcom/htc/htccompressviewer/zip/ZipOutputStream;->offsets:Ljava/util/Hashtable;

    invoke-virtual {v4, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [B

    check-cast v4, [B

    invoke-virtual {p0, v4}, Lcom/htc/htccompressviewer/zip/ZipOutputStream;->writeOut([B)V

    .line 769
    iget-wide v4, p0, Lcom/htc/htccompressviewer/zip/ZipOutputStream;->written:J

    add-long/2addr v4, v10

    iput-wide v4, p0, Lcom/htc/htccompressviewer/zip/ZipOutputStream;->written:J

    .line 772
    invoke-virtual {p0, v3}, Lcom/htc/htccompressviewer/zip/ZipOutputStream;->writeOut([B)V

    .line 773
    iget-wide v4, p0, Lcom/htc/htccompressviewer/zip/ZipOutputStream;->written:J

    array-length v6, v3

    int-to-long v6, v6

    add-long/2addr v4, v6

    iput-wide v4, p0, Lcom/htc/htccompressviewer/zip/ZipOutputStream;->written:J

    .line 776
    invoke-virtual {p0, v2}, Lcom/htc/htccompressviewer/zip/ZipOutputStream;->writeOut([B)V

    .line 777
    iget-wide v4, p0, Lcom/htc/htccompressviewer/zip/ZipOutputStream;->written:J

    array-length v6, v2

    int-to-long v6, v6

    add-long/2addr v4, v6

    iput-wide v4, p0, Lcom/htc/htccompressviewer/zip/ZipOutputStream;->written:J

    .line 780
    invoke-virtual {p0, v1}, Lcom/htc/htccompressviewer/zip/ZipOutputStream;->writeOut([B)V

    .line 781
    iget-wide v4, p0, Lcom/htc/htccompressviewer/zip/ZipOutputStream;->written:J

    array-length v6, v1

    int-to-long v6, v6

    add-long/2addr v4, v6

    iput-wide v4, p0, Lcom/htc/htccompressviewer/zip/ZipOutputStream;->written:J

    .line 782
    return-void

    .line 712
    .end local v0           #comm:Ljava/lang/String;
    .end local v1           #commentB:[B
    .end local v2           #extra:[B
    .end local v3           #name:[B
    :cond_1
    const/16 v4, 0xa

    invoke-static {v4}, Lcom/htc/htccompressviewer/zip/ZipShort;->getBytes(I)[B

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/htc/htccompressviewer/zip/ZipOutputStream;->writeOut([B)V

    .line 713
    sget-object v4, Lcom/htc/htccompressviewer/zip/ZipOutputStream;->ZERO:[B

    invoke-virtual {p0, v4}, Lcom/htc/htccompressviewer/zip/ZipOutputStream;->writeOut([B)V

    goto/16 :goto_0
.end method

.method protected writeDataDescriptor(Lcom/htc/htccompressviewer/zip/ZipEntry;)V
    .locals 4
    .parameter "ze"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 674
    invoke-virtual {p1}, Lcom/htc/htccompressviewer/zip/ZipEntry;->getMethod()I

    move-result v0

    const/16 v1, 0x8

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/htc/htccompressviewer/zip/ZipOutputStream;->raf:Ljava/io/RandomAccessFile;

    if-eqz v0, :cond_1

    .line 684
    :cond_0
    :goto_0
    return-void

    .line 677
    :cond_1
    sget-object v0, Lcom/htc/htccompressviewer/zip/ZipOutputStream;->DD_SIG:[B

    invoke-virtual {p0, v0}, Lcom/htc/htccompressviewer/zip/ZipOutputStream;->writeOut([B)V

    .line 678
    iget-object v0, p0, Lcom/htc/htccompressviewer/zip/ZipOutputStream;->entry:Lcom/htc/htccompressviewer/zip/ZipEntry;

    invoke-virtual {v0}, Lcom/htc/htccompressviewer/zip/ZipEntry;->getCrc()J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/htc/htccompressviewer/zip/ZipLong;->getBytes(J)[B

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/htc/htccompressviewer/zip/ZipOutputStream;->writeOut([B)V

    .line 679
    iget-object v0, p0, Lcom/htc/htccompressviewer/zip/ZipOutputStream;->entry:Lcom/htc/htccompressviewer/zip/ZipEntry;

    invoke-virtual {v0}, Lcom/htc/htccompressviewer/zip/ZipEntry;->getCompressedSize()J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/htc/htccompressviewer/zip/ZipLong;->getBytes(J)[B

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/htc/htccompressviewer/zip/ZipOutputStream;->writeOut([B)V

    .line 680
    iget-object v0, p0, Lcom/htc/htccompressviewer/zip/ZipOutputStream;->entry:Lcom/htc/htccompressviewer/zip/ZipEntry;

    invoke-virtual {v0}, Lcom/htc/htccompressviewer/zip/ZipEntry;->getSize()J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/htc/htccompressviewer/zip/ZipLong;->getBytes(J)[B

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/htc/htccompressviewer/zip/ZipOutputStream;->writeOut([B)V

    .line 682
    iget-wide v0, p0, Lcom/htc/htccompressviewer/zip/ZipOutputStream;->written:J

    const-wide/16 v2, 0x10

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/htc/htccompressviewer/zip/ZipOutputStream;->written:J

    goto :goto_0
.end method

.method protected writeLocalFileHeader(Lcom/htc/htccompressviewer/zip/ZipEntry;)V
    .locals 11
    .parameter "ze"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const-wide/16 v9, 0x4

    const-wide/16 v7, 0x2

    const/16 v6, 0x8

    .line 595
    iget-object v3, p0, Lcom/htc/htccompressviewer/zip/ZipOutputStream;->offsets:Ljava/util/Hashtable;

    iget-wide v4, p0, Lcom/htc/htccompressviewer/zip/ZipOutputStream;->written:J

    invoke-static {v4, v5}, Lcom/htc/htccompressviewer/zip/ZipLong;->getBytes(J)[B

    move-result-object v4

    invoke-virtual {v3, p1, v4}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 597
    sget-object v3, Lcom/htc/htccompressviewer/zip/ZipOutputStream;->LFH_SIG:[B

    invoke-virtual {p0, v3}, Lcom/htc/htccompressviewer/zip/ZipOutputStream;->writeOut([B)V

    .line 598
    iget-wide v3, p0, Lcom/htc/htccompressviewer/zip/ZipOutputStream;->written:J

    add-long/2addr v3, v9

    iput-wide v3, p0, Lcom/htc/htccompressviewer/zip/ZipOutputStream;->written:J

    .line 601
    invoke-virtual {p1}, Lcom/htc/htccompressviewer/zip/ZipEntry;->getMethod()I

    move-result v2

    .line 606
    .local v2, zipMethod:I
    if-ne v2, v6, :cond_1

    iget-object v3, p0, Lcom/htc/htccompressviewer/zip/ZipOutputStream;->raf:Ljava/io/RandomAccessFile;

    if-nez v3, :cond_1

    .line 609
    const/16 v3, 0x14

    invoke-static {v3}, Lcom/htc/htccompressviewer/zip/ZipShort;->getBytes(I)[B

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/htc/htccompressviewer/zip/ZipOutputStream;->writeOut([B)V

    .line 612
    invoke-static {v6}, Lcom/htc/htccompressviewer/zip/ZipShort;->getBytes(I)[B

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/htc/htccompressviewer/zip/ZipOutputStream;->writeOut([B)V

    .line 618
    :goto_0
    iget-wide v3, p0, Lcom/htc/htccompressviewer/zip/ZipOutputStream;->written:J

    add-long/2addr v3, v9

    iput-wide v3, p0, Lcom/htc/htccompressviewer/zip/ZipOutputStream;->written:J

    .line 621
    invoke-static {v2}, Lcom/htc/htccompressviewer/zip/ZipShort;->getBytes(I)[B

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/htc/htccompressviewer/zip/ZipOutputStream;->writeOut([B)V

    .line 622
    iget-wide v3, p0, Lcom/htc/htccompressviewer/zip/ZipOutputStream;->written:J

    add-long/2addr v3, v7

    iput-wide v3, p0, Lcom/htc/htccompressviewer/zip/ZipOutputStream;->written:J

    .line 625
    invoke-virtual {p1}, Lcom/htc/htccompressviewer/zip/ZipEntry;->getTime()J

    move-result-wide v3

    invoke-static {v3, v4}, Lcom/htc/htccompressviewer/zip/ZipOutputStream;->toDosTime(J)[B

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/htc/htccompressviewer/zip/ZipOutputStream;->writeOut([B)V

    .line 626
    iget-wide v3, p0, Lcom/htc/htccompressviewer/zip/ZipOutputStream;->written:J

    add-long/2addr v3, v9

    iput-wide v3, p0, Lcom/htc/htccompressviewer/zip/ZipOutputStream;->written:J

    .line 631
    iget-wide v3, p0, Lcom/htc/htccompressviewer/zip/ZipOutputStream;->written:J

    iput-wide v3, p0, Lcom/htc/htccompressviewer/zip/ZipOutputStream;->localDataStart:J

    .line 632
    if-eq v2, v6, :cond_0

    iget-object v3, p0, Lcom/htc/htccompressviewer/zip/ZipOutputStream;->raf:Ljava/io/RandomAccessFile;

    if-eqz v3, :cond_2

    .line 633
    :cond_0
    sget-object v3, Lcom/htc/htccompressviewer/zip/ZipOutputStream;->LZERO:[B

    invoke-virtual {p0, v3}, Lcom/htc/htccompressviewer/zip/ZipOutputStream;->writeOut([B)V

    .line 634
    sget-object v3, Lcom/htc/htccompressviewer/zip/ZipOutputStream;->LZERO:[B

    invoke-virtual {p0, v3}, Lcom/htc/htccompressviewer/zip/ZipOutputStream;->writeOut([B)V

    .line 635
    sget-object v3, Lcom/htc/htccompressviewer/zip/ZipOutputStream;->LZERO:[B

    invoke-virtual {p0, v3}, Lcom/htc/htccompressviewer/zip/ZipOutputStream;->writeOut([B)V

    .line 642
    :goto_1
    iget-wide v3, p0, Lcom/htc/htccompressviewer/zip/ZipOutputStream;->written:J

    const-wide/16 v5, 0xc

    add-long/2addr v3, v5

    iput-wide v3, p0, Lcom/htc/htccompressviewer/zip/ZipOutputStream;->written:J

    .line 646
    invoke-virtual {p1}, Lcom/htc/htccompressviewer/zip/ZipEntry;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/htc/htccompressviewer/zip/ZipOutputStream;->getBytes(Ljava/lang/String;)[B

    move-result-object v1

    .line 647
    .local v1, name:[B
    array-length v3, v1

    invoke-static {v3}, Lcom/htc/htccompressviewer/zip/ZipShort;->getBytes(I)[B

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/htc/htccompressviewer/zip/ZipOutputStream;->writeOut([B)V

    .line 648
    iget-wide v3, p0, Lcom/htc/htccompressviewer/zip/ZipOutputStream;->written:J

    add-long/2addr v3, v7

    iput-wide v3, p0, Lcom/htc/htccompressviewer/zip/ZipOutputStream;->written:J

    .line 651
    invoke-virtual {p1}, Lcom/htc/htccompressviewer/zip/ZipEntry;->getLocalFileDataExtra()[B

    move-result-object v0

    .line 652
    .local v0, extra:[B
    array-length v3, v0

    invoke-static {v3}, Lcom/htc/htccompressviewer/zip/ZipShort;->getBytes(I)[B

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/htc/htccompressviewer/zip/ZipOutputStream;->writeOut([B)V

    .line 653
    iget-wide v3, p0, Lcom/htc/htccompressviewer/zip/ZipOutputStream;->written:J

    add-long/2addr v3, v7

    iput-wide v3, p0, Lcom/htc/htccompressviewer/zip/ZipOutputStream;->written:J

    .line 656
    invoke-virtual {p0, v1}, Lcom/htc/htccompressviewer/zip/ZipOutputStream;->writeOut([B)V

    .line 657
    iget-wide v3, p0, Lcom/htc/htccompressviewer/zip/ZipOutputStream;->written:J

    array-length v5, v1

    int-to-long v5, v5

    add-long/2addr v3, v5

    iput-wide v3, p0, Lcom/htc/htccompressviewer/zip/ZipOutputStream;->written:J

    .line 660
    invoke-virtual {p0, v0}, Lcom/htc/htccompressviewer/zip/ZipOutputStream;->writeOut([B)V

    .line 661
    iget-wide v3, p0, Lcom/htc/htccompressviewer/zip/ZipOutputStream;->written:J

    array-length v5, v0

    int-to-long v5, v5

    add-long/2addr v3, v5

    iput-wide v3, p0, Lcom/htc/htccompressviewer/zip/ZipOutputStream;->written:J

    .line 663
    iget-wide v3, p0, Lcom/htc/htccompressviewer/zip/ZipOutputStream;->written:J

    iput-wide v3, p0, Lcom/htc/htccompressviewer/zip/ZipOutputStream;->dataStart:J

    .line 664
    return-void

    .line 614
    .end local v0           #extra:[B
    .end local v1           #name:[B
    :cond_1
    const/16 v3, 0xa

    invoke-static {v3}, Lcom/htc/htccompressviewer/zip/ZipShort;->getBytes(I)[B

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/htc/htccompressviewer/zip/ZipOutputStream;->writeOut([B)V

    .line 615
    sget-object v3, Lcom/htc/htccompressviewer/zip/ZipOutputStream;->ZERO:[B

    invoke-virtual {p0, v3}, Lcom/htc/htccompressviewer/zip/ZipOutputStream;->writeOut([B)V

    goto/16 :goto_0

    .line 637
    :cond_2
    invoke-virtual {p1}, Lcom/htc/htccompressviewer/zip/ZipEntry;->getCrc()J

    move-result-wide v3

    invoke-static {v3, v4}, Lcom/htc/htccompressviewer/zip/ZipLong;->getBytes(J)[B

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/htc/htccompressviewer/zip/ZipOutputStream;->writeOut([B)V

    .line 638
    invoke-virtual {p1}, Lcom/htc/htccompressviewer/zip/ZipEntry;->getSize()J

    move-result-wide v3

    invoke-static {v3, v4}, Lcom/htc/htccompressviewer/zip/ZipLong;->getBytes(J)[B

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/htc/htccompressviewer/zip/ZipOutputStream;->writeOut([B)V

    .line 639
    invoke-virtual {p1}, Lcom/htc/htccompressviewer/zip/ZipEntry;->getSize()J

    move-result-wide v3

    invoke-static {v3, v4}, Lcom/htc/htccompressviewer/zip/ZipLong;->getBytes(J)[B

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/htc/htccompressviewer/zip/ZipOutputStream;->writeOut([B)V

    goto :goto_1
.end method

.method protected final writeOut([B)V
    .locals 2
    .parameter "data"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 888
    const/4 v0, 0x0

    array-length v1, p1

    invoke-virtual {p0, p1, v0, v1}, Lcom/htc/htccompressviewer/zip/ZipOutputStream;->writeOut([BII)V

    .line 889
    return-void
.end method

.method protected final writeOut([BII)V
    .locals 1
    .parameter "data"
    .parameter "offset"
    .parameter "length"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 902
    iget-object v0, p0, Lcom/htc/htccompressviewer/zip/ZipOutputStream;->raf:Ljava/io/RandomAccessFile;

    if-eqz v0, :cond_0

    .line 903
    iget-object v0, p0, Lcom/htc/htccompressviewer/zip/ZipOutputStream;->raf:Ljava/io/RandomAccessFile;

    invoke-virtual {v0, p1, p2, p3}, Ljava/io/RandomAccessFile;->write([BII)V

    .line 907
    :goto_0
    return-void

    .line 905
    :cond_0
    iget-object v0, p0, Lcom/htc/htccompressviewer/zip/ZipOutputStream;->out:Ljava/io/OutputStream;

    invoke-virtual {v0, p1, p2, p3}, Ljava/io/OutputStream;->write([BII)V

    goto :goto_0
.end method
