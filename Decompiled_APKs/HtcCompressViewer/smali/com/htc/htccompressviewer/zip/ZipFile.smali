.class public Lcom/htc/htccompressviewer/zip/ZipFile;
.super Ljava/lang/Object;
.source "ZipFile.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/htccompressviewer/zip/ZipFile$1;,
        Lcom/htc/htccompressviewer/zip/ZipFile$BoundedInputStream;,
        Lcom/htc/htccompressviewer/zip/ZipFile$OffsetEntry;
    }
.end annotation


# static fields
.field private static final BYTE_SHIFT:I = 0x8

.field private static final CFD_LOCATOR_OFFSET:I = 0x10

.field private static final CFH_LEN:I = 0x2a

.field private static final HASH_SIZE:I = 0x1fd

.field private static final LFH_OFFSET_FOR_FILENAME_LENGTH:J = 0x1aL

.field private static final MIN_EOCD_SIZE:I = 0x16

.field private static final NIBLET_MASK:I = 0xf

.field private static final POS_0:I = 0x0

.field private static final POS_1:I = 0x1

.field private static final POS_2:I = 0x2

.field private static final POS_3:I = 0x3

.field private static final SHORT:I = 0x2

.field private static final WORD:I = 0x4


# instance fields
.field private archive:Ljava/io/RandomAccessFile;

.field private encoding:Ljava/lang/String;

.field private entries:Ljava/util/Hashtable;

.field private nameMap:Ljava/util/Hashtable;

.field private subEncoding:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/io/File;)V
    .locals 1
    .parameter "f"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 133
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/htc/htccompressviewer/zip/ZipFile;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 134
    return-void
.end method

.method public constructor <init>(Ljava/io/File;Ljava/lang/String;)V
    .locals 4
    .parameter "f"
    .parameter "encoding"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    const/16 v2, 0x1fd

    .line 170
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 87
    new-instance v1, Ljava/util/Hashtable;

    invoke-direct {v1, v2}, Ljava/util/Hashtable;-><init>(I)V

    iput-object v1, p0, Lcom/htc/htccompressviewer/zip/ZipFile;->entries:Ljava/util/Hashtable;

    .line 92
    new-instance v1, Ljava/util/Hashtable;

    invoke-direct {v1, v2}, Ljava/util/Hashtable;-><init>(I)V

    iput-object v1, p0, Lcom/htc/htccompressviewer/zip/ZipFile;->nameMap:Ljava/util/Hashtable;

    .line 106
    iput-object v3, p0, Lcom/htc/htccompressviewer/zip/ZipFile;->encoding:Ljava/lang/String;

    .line 116
    iput-object v3, p0, Lcom/htc/htccompressviewer/zip/ZipFile;->subEncoding:Ljava/lang/String;

    .line 171
    iput-object p2, p0, Lcom/htc/htccompressviewer/zip/ZipFile;->encoding:Ljava/lang/String;

    .line 172
    new-instance v1, Ljava/io/RandomAccessFile;

    const-string v2, "r"

    invoke-direct {v1, p1, v2}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v1, p0, Lcom/htc/htccompressviewer/zip/ZipFile;->archive:Ljava/io/RandomAccessFile;

    .line 174
    :try_start_0
    invoke-direct {p0}, Lcom/htc/htccompressviewer/zip/ZipFile;->populateFromCentralDirectory()V

    .line 175
    invoke-direct {p0}, Lcom/htc/htccompressviewer/zip/ZipFile;->resolveLocalFileHeaderData()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 184
    return-void

    .line 176
    :catch_0
    move-exception v0

    .line 178
    .local v0, e:Ljava/io/IOException;
    :try_start_1
    iget-object v1, p0, Lcom/htc/htccompressviewer/zip/ZipFile;->archive:Ljava/io/RandomAccessFile;

    invoke-virtual {v1}, Ljava/io/RandomAccessFile;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    .line 182
    :goto_0
    throw v0

    .line 179
    :catch_1
    move-exception v1

    goto :goto_0
.end method

.method public constructor <init>(Ljava/io/File;Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .parameter "f"
    .parameter "encoding"
    .parameter "subEncoding"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    const/16 v2, 0x1fd

    .line 211
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 87
    new-instance v1, Ljava/util/Hashtable;

    invoke-direct {v1, v2}, Ljava/util/Hashtable;-><init>(I)V

    iput-object v1, p0, Lcom/htc/htccompressviewer/zip/ZipFile;->entries:Ljava/util/Hashtable;

    .line 92
    new-instance v1, Ljava/util/Hashtable;

    invoke-direct {v1, v2}, Ljava/util/Hashtable;-><init>(I)V

    iput-object v1, p0, Lcom/htc/htccompressviewer/zip/ZipFile;->nameMap:Ljava/util/Hashtable;

    .line 106
    iput-object v3, p0, Lcom/htc/htccompressviewer/zip/ZipFile;->encoding:Ljava/lang/String;

    .line 116
    iput-object v3, p0, Lcom/htc/htccompressviewer/zip/ZipFile;->subEncoding:Ljava/lang/String;

    .line 212
    iput-object p2, p0, Lcom/htc/htccompressviewer/zip/ZipFile;->encoding:Ljava/lang/String;

    .line 213
    iput-object p3, p0, Lcom/htc/htccompressviewer/zip/ZipFile;->subEncoding:Ljava/lang/String;

    .line 214
    new-instance v1, Ljava/io/RandomAccessFile;

    const-string v2, "r"

    invoke-direct {v1, p1, v2}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v1, p0, Lcom/htc/htccompressviewer/zip/ZipFile;->archive:Ljava/io/RandomAccessFile;

    .line 216
    :try_start_0
    invoke-direct {p0}, Lcom/htc/htccompressviewer/zip/ZipFile;->populateFromCentralDirectory()V

    .line 217
    invoke-direct {p0}, Lcom/htc/htccompressviewer/zip/ZipFile;->resolveLocalFileHeaderData()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 226
    return-void

    .line 218
    :catch_0
    move-exception v0

    .line 220
    .local v0, e:Ljava/io/IOException;
    :try_start_1
    iget-object v1, p0, Lcom/htc/htccompressviewer/zip/ZipFile;->archive:Ljava/io/RandomAccessFile;

    invoke-virtual {v1}, Ljava/io/RandomAccessFile;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    .line 224
    :goto_0
    throw v0

    .line 221
    :catch_1
    move-exception v1

    goto :goto_0
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 2
    .parameter "name"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 145
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/htc/htccompressviewer/zip/ZipFile;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 146
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .parameter "name"
    .parameter "encoding"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 158
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v0, p2}, Lcom/htc/htccompressviewer/zip/ZipFile;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 159
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .parameter "name"
    .parameter "encoding"
    .parameter "subEncoding"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 198
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v0, p2, p3}, Lcom/htc/htccompressviewer/zip/ZipFile;-><init>(Ljava/io/File;Ljava/lang/String;Ljava/lang/String;)V

    .line 199
    return-void
.end method

.method static synthetic access$300(Lcom/htc/htccompressviewer/zip/ZipFile;)Ljava/io/RandomAccessFile;
    .locals 1
    .parameter "x0"

    .prologue
    .line 72
    iget-object v0, p0, Lcom/htc/htccompressviewer/zip/ZipFile;->archive:Ljava/io/RandomAccessFile;

    return-object v0
.end method

.method public static closeQuietly(Lcom/htc/htccompressviewer/zip/ZipFile;)V
    .locals 1
    .parameter "zipfile"

    .prologue
    .line 252
    if-eqz p0, :cond_0

    .line 254
    :try_start_0
    invoke-virtual {p0}, Lcom/htc/htccompressviewer/zip/ZipFile;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 259
    :cond_0
    :goto_0
    return-void

    .line 255
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private static dosToJavaTime(J)J
    .locals 9
    .parameter "dosTime"

    .prologue
    const/16 v8, 0xb

    const/4 v7, 0x5

    const/4 v6, 0x1

    .line 550
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 552
    .local v0, cal:Ljava/util/Calendar;
    const/16 v1, 0x19

    shr-long v1, p0, v1

    const-wide/16 v3, 0x7f

    and-long/2addr v1, v3

    long-to-int v1, v1

    add-int/lit16 v1, v1, 0x7bc

    invoke-virtual {v0, v6, v1}, Ljava/util/Calendar;->set(II)V

    .line 553
    const/4 v1, 0x2

    const/16 v2, 0x15

    shr-long v2, p0, v2

    const-wide/16 v4, 0xf

    and-long/2addr v2, v4

    long-to-int v2, v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->set(II)V

    .line 554
    const/16 v1, 0x10

    shr-long v1, p0, v1

    long-to-int v1, v1

    and-int/lit8 v1, v1, 0x1f

    invoke-virtual {v0, v7, v1}, Ljava/util/Calendar;->set(II)V

    .line 555
    shr-long v1, p0, v8

    long-to-int v1, v1

    and-int/lit8 v1, v1, 0x1f

    invoke-virtual {v0, v8, v1}, Ljava/util/Calendar;->set(II)V

    .line 556
    const/16 v1, 0xc

    shr-long v2, p0, v7

    long-to-int v2, v2

    and-int/lit8 v2, v2, 0x3f

    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->set(II)V

    .line 557
    const/16 v1, 0xd

    shl-long v2, p0, v6

    long-to-int v2, v2

    and-int/lit8 v2, v2, 0x3e

    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->set(II)V

    .line 559
    invoke-virtual {v0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Date;->getTime()J

    move-result-wide v1

    return-wide v1
.end method

.method protected static fromDosTime(Lcom/htc/htccompressviewer/zip/ZipLong;)Ljava/util/Date;
    .locals 5
    .parameter "zipDosTime"

    .prologue
    .line 542
    invoke-virtual {p0}, Lcom/htc/htccompressviewer/zip/ZipLong;->getValue()J

    move-result-wide v0

    .line 543
    .local v0, dosTime:J
    new-instance v2, Ljava/util/Date;

    invoke-static {v0, v1}, Lcom/htc/htccompressviewer/zip/ZipFile;->dosToJavaTime(J)J

    move-result-wide v3

    invoke-direct {v2, v3, v4}, Ljava/util/Date;-><init>(J)V

    return-object v2
.end method

.method private populateFromCentralDirectory()V
    .locals 23
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 336
    invoke-direct/range {p0 .. p0}, Lcom/htc/htccompressviewer/zip/ZipFile;->positionAtCentralDirectory()V

    .line 338
    const/16 v21, 0x2a

    move/from16 v0, v21

    new-array v3, v0, [B

    .line 340
    .local v3, cfh:[B
    const/16 v21, 0x4

    move/from16 v0, v21

    new-array v0, v0, [B

    move-object/from16 v16, v0

    .line 341
    .local v16, signatureBytes:[B
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/htccompressviewer/zip/ZipFile;->archive:Ljava/io/RandomAccessFile;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/io/RandomAccessFile;->readFully([B)V

    .line 342
    invoke-static/range {v16 .. v16}, Lcom/htc/htccompressviewer/zip/ZipLong;->getValue([B)J

    move-result-wide v14

    .line 343
    .local v14, sig:J
    sget-object v21, Lcom/htc/htccompressviewer/zip/ZipOutputStream;->CFH_SIG:[B

    invoke-static/range {v21 .. v21}, Lcom/htc/htccompressviewer/zip/ZipLong;->getValue([B)J

    move-result-wide v4

    .line 344
    .local v4, cfhSig:J
    const/4 v11, 0x0

    .line 345
    .local v11, isSigCorrect:Z
    :goto_0
    cmp-long v21, v14, v4

    if-nez v21, :cond_0

    .line 346
    const/4 v11, 0x1

    .line 347
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/htccompressviewer/zip/ZipFile;->archive:Ljava/io/RandomAccessFile;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    invoke-virtual {v0, v3}, Ljava/io/RandomAccessFile;->readFully([B)V

    .line 348
    const/4 v12, 0x0

    .line 349
    .local v12, off:I
    new-instance v20, Lcom/htc/htccompressviewer/zip/ZipEntry;

    invoke-direct/range {v20 .. v20}, Lcom/htc/htccompressviewer/zip/ZipEntry;-><init>()V

    .line 351
    .local v20, ze:Lcom/htc/htccompressviewer/zip/ZipEntry;
    invoke-static {v3, v12}, Lcom/htc/htccompressviewer/zip/ZipShort;->getValue([BI)I

    move-result v19

    .line 352
    .local v19, versionMadeBy:I
    add-int/lit8 v12, v12, 0x2

    .line 353
    shr-int/lit8 v21, v19, 0x8

    and-int/lit8 v21, v21, 0xf

    invoke-virtual/range {v20 .. v21}, Lcom/htc/htccompressviewer/zip/ZipEntry;->setPlatform(I)V

    .line 355
    add-int/lit8 v12, v12, 0x4

    .line 357
    invoke-static {v3, v12}, Lcom/htc/htccompressviewer/zip/ZipShort;->getValue([BI)I

    move-result v21

    invoke-virtual/range {v20 .. v21}, Lcom/htc/htccompressviewer/zip/ZipEntry;->setMethod(I)V

    .line 358
    add-int/lit8 v12, v12, 0x2

    .line 363
    invoke-static {v3, v12}, Lcom/htc/htccompressviewer/zip/ZipLong;->getValue([BI)J

    move-result-wide v21

    invoke-static/range {v21 .. v22}, Lcom/htc/htccompressviewer/zip/ZipFile;->dosToJavaTime(J)J

    move-result-wide v17

    .line 364
    .local v17, time:J
    move-object/from16 v0, v20

    move-wide/from16 v1, v17

    invoke-virtual {v0, v1, v2}, Lcom/htc/htccompressviewer/zip/ZipEntry;->setTime(J)V

    .line 365
    add-int/lit8 v12, v12, 0x4

    .line 367
    invoke-static {v3, v12}, Lcom/htc/htccompressviewer/zip/ZipLong;->getValue([BI)J

    move-result-wide v21

    invoke-virtual/range {v20 .. v22}, Lcom/htc/htccompressviewer/zip/ZipEntry;->setCrc(J)V

    .line 368
    add-int/lit8 v12, v12, 0x4

    .line 370
    invoke-static {v3, v12}, Lcom/htc/htccompressviewer/zip/ZipLong;->getValue([BI)J

    move-result-wide v21

    invoke-virtual/range {v20 .. v22}, Lcom/htc/htccompressviewer/zip/ZipEntry;->setCompressedSize(J)V

    .line 371
    add-int/lit8 v12, v12, 0x4

    .line 373
    invoke-static {v3, v12}, Lcom/htc/htccompressviewer/zip/ZipLong;->getValue([BI)J

    move-result-wide v21

    invoke-virtual/range {v20 .. v22}, Lcom/htc/htccompressviewer/zip/ZipEntry;->setSize(J)V

    .line 374
    add-int/lit8 v12, v12, 0x4

    .line 376
    invoke-static {v3, v12}, Lcom/htc/htccompressviewer/zip/ZipShort;->getValue([BI)I

    move-result v10

    .line 377
    .local v10, fileNameLen:I
    add-int/lit8 v12, v12, 0x2

    .line 379
    invoke-static {v3, v12}, Lcom/htc/htccompressviewer/zip/ZipShort;->getValue([BI)I

    move-result v8

    .line 380
    .local v8, extraLen:I
    add-int/lit8 v12, v12, 0x2

    .line 382
    invoke-static {v3, v12}, Lcom/htc/htccompressviewer/zip/ZipShort;->getValue([BI)I

    move-result v7

    .line 383
    .local v7, commentLen:I
    add-int/lit8 v12, v12, 0x2

    .line 385
    add-int/lit8 v12, v12, 0x2

    .line 387
    invoke-static {v3, v12}, Lcom/htc/htccompressviewer/zip/ZipShort;->getValue([BI)I

    move-result v21

    invoke-virtual/range {v20 .. v21}, Lcom/htc/htccompressviewer/zip/ZipEntry;->setInternalAttributes(I)V

    .line 388
    add-int/lit8 v12, v12, 0x2

    .line 390
    invoke-static {v3, v12}, Lcom/htc/htccompressviewer/zip/ZipLong;->getValue([BI)J

    move-result-wide v21

    invoke-virtual/range {v20 .. v22}, Lcom/htc/htccompressviewer/zip/ZipEntry;->setExternalAttributes(J)V

    .line 391
    add-int/lit8 v12, v12, 0x4

    .line 393
    new-array v9, v10, [B

    .line 394
    .local v9, fileName:[B
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/htccompressviewer/zip/ZipFile;->archive:Ljava/io/RandomAccessFile;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    invoke-virtual {v0, v9}, Ljava/io/RandomAccessFile;->readFully([B)V

    .line 395
    move-object/from16 v0, p0

    invoke-virtual {v0, v9}, Lcom/htc/htccompressviewer/zip/ZipFile;->getString([B)Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Lcom/htc/htccompressviewer/zip/ZipEntry;->setName(Ljava/lang/String;)V

    .line 399
    new-instance v13, Lcom/htc/htccompressviewer/zip/ZipFile$OffsetEntry;

    const/16 v21, 0x0

    move-object/from16 v0, v21

    invoke-direct {v13, v0}, Lcom/htc/htccompressviewer/zip/ZipFile$OffsetEntry;-><init>(Lcom/htc/htccompressviewer/zip/ZipFile$1;)V

    .line 400
    .local v13, offset:Lcom/htc/htccompressviewer/zip/ZipFile$OffsetEntry;
    invoke-static {v3, v12}, Lcom/htc/htccompressviewer/zip/ZipLong;->getValue([BI)J

    move-result-wide v21

    move-wide/from16 v0, v21

    #setter for: Lcom/htc/htccompressviewer/zip/ZipFile$OffsetEntry;->headerOffset:J
    invoke-static {v13, v0, v1}, Lcom/htc/htccompressviewer/zip/ZipFile$OffsetEntry;->access$202(Lcom/htc/htccompressviewer/zip/ZipFile$OffsetEntry;J)J

    .line 402
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/htccompressviewer/zip/ZipFile;->entries:Ljava/util/Hashtable;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    move-object/from16 v1, v20

    invoke-virtual {v0, v1, v13}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 404
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/htccompressviewer/zip/ZipFile;->nameMap:Ljava/util/Hashtable;

    move-object/from16 v21, v0

    invoke-virtual/range {v20 .. v20}, Lcom/htc/htccompressviewer/zip/ZipEntry;->getName()Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    move-object/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 406
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/htccompressviewer/zip/ZipFile;->archive:Ljava/io/RandomAccessFile;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    invoke-virtual {v0, v8}, Ljava/io/RandomAccessFile;->skipBytes(I)I

    .line 408
    new-array v6, v7, [B

    .line 409
    .local v6, comment:[B
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/htccompressviewer/zip/ZipFile;->archive:Ljava/io/RandomAccessFile;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    invoke-virtual {v0, v6}, Ljava/io/RandomAccessFile;->readFully([B)V

    .line 410
    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Lcom/htc/htccompressviewer/zip/ZipFile;->getString([B)Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Lcom/htc/htccompressviewer/zip/ZipEntry;->setComment(Ljava/lang/String;)V

    .line 412
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/htccompressviewer/zip/ZipFile;->archive:Ljava/io/RandomAccessFile;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/io/RandomAccessFile;->readFully([B)V

    .line 413
    invoke-static/range {v16 .. v16}, Lcom/htc/htccompressviewer/zip/ZipLong;->getValue([B)J

    move-result-wide v14

    .line 414
    goto/16 :goto_0

    .line 416
    .end local v6           #comment:[B
    .end local v7           #commentLen:I
    .end local v8           #extraLen:I
    .end local v9           #fileName:[B
    .end local v10           #fileNameLen:I
    .end local v12           #off:I
    .end local v13           #offset:Lcom/htc/htccompressviewer/zip/ZipFile$OffsetEntry;
    .end local v17           #time:J
    .end local v19           #versionMadeBy:I
    .end local v20           #ze:Lcom/htc/htccompressviewer/zip/ZipEntry;
    :cond_0
    if-nez v11, :cond_1

    .line 417
    new-instance v21, Ljava/io/IOException;

    const-string v22, "signature verify fail"

    invoke-direct/range {v21 .. v22}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v21

    .line 419
    :cond_1
    return-void
.end method

.method private positionAtCentralDirectory()V
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 454
    const/4 v2, 0x0

    .line 455
    .local v2, found:Z
    iget-object v6, p0, Lcom/htc/htccompressviewer/zip/ZipFile;->archive:Ljava/io/RandomAccessFile;

    invoke-virtual {v6}, Ljava/io/RandomAccessFile;->length()J

    move-result-wide v6

    const-wide/16 v8, 0x16

    sub-long v3, v6, v8

    .line 456
    .local v3, off:J
    const-wide/16 v6, 0x0

    cmp-long v6, v3, v6

    if-ltz v6, :cond_0

    .line 457
    iget-object v6, p0, Lcom/htc/htccompressviewer/zip/ZipFile;->archive:Ljava/io/RandomAccessFile;

    invoke-virtual {v6, v3, v4}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 458
    sget-object v5, Lcom/htc/htccompressviewer/zip/ZipOutputStream;->EOCD_SIG:[B

    .line 459
    .local v5, sig:[B
    iget-object v6, p0, Lcom/htc/htccompressviewer/zip/ZipFile;->archive:Ljava/io/RandomAccessFile;

    invoke-virtual {v6}, Ljava/io/RandomAccessFile;->read()I

    move-result v1

    .line 460
    .local v1, curr:I
    :goto_0
    const/4 v6, -0x1

    if-eq v1, v6, :cond_0

    .line 461
    const/4 v6, 0x0

    aget-byte v6, v5, v6

    if-ne v1, v6, :cond_1

    .line 462
    iget-object v6, p0, Lcom/htc/htccompressviewer/zip/ZipFile;->archive:Ljava/io/RandomAccessFile;

    invoke-virtual {v6}, Ljava/io/RandomAccessFile;->read()I

    move-result v1

    .line 463
    const/4 v6, 0x1

    aget-byte v6, v5, v6

    if-ne v1, v6, :cond_1

    .line 464
    iget-object v6, p0, Lcom/htc/htccompressviewer/zip/ZipFile;->archive:Ljava/io/RandomAccessFile;

    invoke-virtual {v6}, Ljava/io/RandomAccessFile;->read()I

    move-result v1

    .line 465
    const/4 v6, 0x2

    aget-byte v6, v5, v6

    if-ne v1, v6, :cond_1

    .line 466
    iget-object v6, p0, Lcom/htc/htccompressviewer/zip/ZipFile;->archive:Ljava/io/RandomAccessFile;

    invoke-virtual {v6}, Ljava/io/RandomAccessFile;->read()I

    move-result v1

    .line 467
    const/4 v6, 0x3

    aget-byte v6, v5, v6

    if-ne v1, v6, :cond_1

    .line 468
    const/4 v2, 0x1

    .line 478
    .end local v1           #curr:I
    .end local v5           #sig:[B
    :cond_0
    if-nez v2, :cond_2

    .line 479
    new-instance v6, Ljava/util/zip/ZipException;

    const-string v7, "archive is not a ZIP archive"

    invoke-direct {v6, v7}, Ljava/util/zip/ZipException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 474
    .restart local v1       #curr:I
    .restart local v5       #sig:[B
    :cond_1
    iget-object v6, p0, Lcom/htc/htccompressviewer/zip/ZipFile;->archive:Ljava/io/RandomAccessFile;

    const-wide/16 v7, 0x1

    sub-long/2addr v3, v7

    invoke-virtual {v6, v3, v4}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 475
    iget-object v6, p0, Lcom/htc/htccompressviewer/zip/ZipFile;->archive:Ljava/io/RandomAccessFile;

    invoke-virtual {v6}, Ljava/io/RandomAccessFile;->read()I

    move-result v1

    goto :goto_0

    .line 481
    .end local v1           #curr:I
    .end local v5           #sig:[B
    :cond_2
    iget-object v6, p0, Lcom/htc/htccompressviewer/zip/ZipFile;->archive:Ljava/io/RandomAccessFile;

    const-wide/16 v7, 0x10

    add-long/2addr v7, v3

    invoke-virtual {v6, v7, v8}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 482
    const/4 v6, 0x4

    new-array v0, v6, [B

    .line 483
    .local v0, cfdOffset:[B
    iget-object v6, p0, Lcom/htc/htccompressviewer/zip/ZipFile;->archive:Ljava/io/RandomAccessFile;

    invoke-virtual {v6, v0}, Ljava/io/RandomAccessFile;->readFully([B)V

    .line 484
    iget-object v6, p0, Lcom/htc/htccompressviewer/zip/ZipFile;->archive:Ljava/io/RandomAccessFile;

    invoke-static {v0}, Lcom/htc/htccompressviewer/zip/ZipLong;->getValue([B)J

    move-result-wide v7

    invoke-virtual {v6, v7, v8}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 485
    return-void
.end method

.method private resolveLocalFileHeaderData()V
    .locals 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 511
    invoke-virtual {p0}, Lcom/htc/htccompressviewer/zip/ZipFile;->getEntries()Ljava/util/Enumeration;

    move-result-object v1

    .line 512
    .local v1, e:Ljava/util/Enumeration;
    :goto_0
    invoke-interface {v1}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v9

    if-eqz v9, :cond_0

    .line 513
    invoke-interface {v1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/htc/htccompressviewer/zip/ZipEntry;

    .line 514
    .local v8, ze:Lcom/htc/htccompressviewer/zip/ZipEntry;
    iget-object v9, p0, Lcom/htc/htccompressviewer/zip/ZipFile;->entries:Ljava/util/Hashtable;

    invoke-virtual {v9, v8}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/htc/htccompressviewer/zip/ZipFile$OffsetEntry;

    .line 515
    .local v7, offsetEntry:Lcom/htc/htccompressviewer/zip/ZipFile$OffsetEntry;
    #getter for: Lcom/htc/htccompressviewer/zip/ZipFile$OffsetEntry;->headerOffset:J
    invoke-static {v7}, Lcom/htc/htccompressviewer/zip/ZipFile$OffsetEntry;->access$200(Lcom/htc/htccompressviewer/zip/ZipFile$OffsetEntry;)J

    move-result-wide v5

    .line 516
    .local v5, offset:J
    iget-object v9, p0, Lcom/htc/htccompressviewer/zip/ZipFile;->archive:Ljava/io/RandomAccessFile;

    const-wide/16 v10, 0x1a

    add-long/2addr v10, v5

    invoke-virtual {v9, v10, v11}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 517
    const/4 v9, 0x2

    new-array v0, v9, [B

    .line 518
    .local v0, b:[B
    iget-object v9, p0, Lcom/htc/htccompressviewer/zip/ZipFile;->archive:Ljava/io/RandomAccessFile;

    invoke-virtual {v9, v0}, Ljava/io/RandomAccessFile;->readFully([B)V

    .line 519
    invoke-static {v0}, Lcom/htc/htccompressviewer/zip/ZipShort;->getValue([B)I

    move-result v3

    .line 520
    .local v3, fileNameLen:I
    iget-object v9, p0, Lcom/htc/htccompressviewer/zip/ZipFile;->archive:Ljava/io/RandomAccessFile;

    invoke-virtual {v9, v0}, Ljava/io/RandomAccessFile;->readFully([B)V

    .line 521
    invoke-static {v0}, Lcom/htc/htccompressviewer/zip/ZipShort;->getValue([B)I

    move-result v2

    .line 522
    .local v2, extraFieldLen:I
    iget-object v9, p0, Lcom/htc/htccompressviewer/zip/ZipFile;->archive:Ljava/io/RandomAccessFile;

    invoke-virtual {v9, v3}, Ljava/io/RandomAccessFile;->skipBytes(I)I

    .line 523
    new-array v4, v2, [B

    .line 524
    .local v4, localExtraData:[B
    iget-object v9, p0, Lcom/htc/htccompressviewer/zip/ZipFile;->archive:Ljava/io/RandomAccessFile;

    invoke-virtual {v9, v4}, Ljava/io/RandomAccessFile;->readFully([B)V

    .line 525
    invoke-virtual {v8, v4}, Lcom/htc/htccompressviewer/zip/ZipEntry;->setExtra([B)V

    .line 530
    const-wide/16 v9, 0x1a

    add-long/2addr v9, v5

    const-wide/16 v11, 0x2

    add-long/2addr v9, v11

    const-wide/16 v11, 0x2

    add-long/2addr v9, v11

    int-to-long v11, v3

    add-long/2addr v9, v11

    int-to-long v11, v2

    add-long/2addr v9, v11

    #setter for: Lcom/htc/htccompressviewer/zip/ZipFile$OffsetEntry;->dataOffset:J
    invoke-static {v7, v9, v10}, Lcom/htc/htccompressviewer/zip/ZipFile$OffsetEntry;->access$002(Lcom/htc/htccompressviewer/zip/ZipFile$OffsetEntry;J)J

    goto :goto_0

    .line 533
    .end local v0           #b:[B
    .end local v2           #extraFieldLen:I
    .end local v3           #fileNameLen:I
    .end local v4           #localExtraData:[B
    .end local v5           #offset:J
    .end local v7           #offsetEntry:Lcom/htc/htccompressviewer/zip/ZipFile$OffsetEntry;
    .end local v8           #ze:Lcom/htc/htccompressviewer/zip/ZipEntry;
    :cond_0
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

    .prologue
    .line 243
    iget-object v0, p0, Lcom/htc/htccompressviewer/zip/ZipFile;->archive:Ljava/io/RandomAccessFile;

    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->close()V

    .line 244
    return-void
.end method

.method public getEncoding()Ljava/lang/String;
    .locals 1

    .prologue
    .line 235
    iget-object v0, p0, Lcom/htc/htccompressviewer/zip/ZipFile;->encoding:Ljava/lang/String;

    return-object v0
.end method

.method public getEntries()Ljava/util/Enumeration;
    .locals 1

    .prologue
    .line 266
    iget-object v0, p0, Lcom/htc/htccompressviewer/zip/ZipFile;->entries:Ljava/util/Hashtable;

    invoke-virtual {v0}, Ljava/util/Hashtable;->keys()Ljava/util/Enumeration;

    move-result-object v0

    return-object v0
.end method

.method public getEntry(Ljava/lang/String;)Lcom/htc/htccompressviewer/zip/ZipEntry;
    .locals 1
    .parameter "name"

    .prologue
    .line 277
    iget-object v0, p0, Lcom/htc/htccompressviewer/zip/ZipFile;->nameMap:Ljava/util/Hashtable;

    invoke-virtual {v0, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/htccompressviewer/zip/ZipEntry;

    return-object v0
.end method

.method public getInputStream(Lcom/htc/htccompressviewer/zip/ZipEntry;)Ljava/io/InputStream;
    .locals 7
    .parameter "ze"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/util/zip/ZipException;
        }
    .end annotation

    .prologue
    .line 289
    iget-object v1, p0, Lcom/htc/htccompressviewer/zip/ZipFile;->entries:Ljava/util/Hashtable;

    invoke-virtual {v1, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/htc/htccompressviewer/zip/ZipFile$OffsetEntry;

    .line 290
    .local v6, offsetEntry:Lcom/htc/htccompressviewer/zip/ZipFile$OffsetEntry;
    if-nez v6, :cond_0

    .line 291
    const/4 v0, 0x0

    .line 301
    :goto_0
    :sswitch_0
    return-object v0

    .line 293
    :cond_0
    #getter for: Lcom/htc/htccompressviewer/zip/ZipFile$OffsetEntry;->dataOffset:J
    invoke-static {v6}, Lcom/htc/htccompressviewer/zip/ZipFile$OffsetEntry;->access$000(Lcom/htc/htccompressviewer/zip/ZipFile$OffsetEntry;)J

    move-result-wide v2

    .line 294
    .local v2, start:J
    new-instance v0, Lcom/htc/htccompressviewer/zip/ZipFile$BoundedInputStream;

    invoke-virtual {p1}, Lcom/htc/htccompressviewer/zip/ZipEntry;->getCompressedSize()J

    move-result-wide v4

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/htc/htccompressviewer/zip/ZipFile$BoundedInputStream;-><init>(Lcom/htc/htccompressviewer/zip/ZipFile;JJ)V

    .line 296
    .local v0, bis:Lcom/htc/htccompressviewer/zip/ZipFile$BoundedInputStream;
    invoke-virtual {p1}, Lcom/htc/htccompressviewer/zip/ZipEntry;->getMethod()I

    move-result v1

    sparse-switch v1, :sswitch_data_0

    .line 303
    new-instance v1, Ljava/util/zip/ZipException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Found unsupported compression method "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p1}, Lcom/htc/htccompressviewer/zip/ZipEntry;->getMethod()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v1, v4}, Ljava/util/zip/ZipException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 300
    :sswitch_1
    invoke-virtual {v0}, Lcom/htc/htccompressviewer/zip/ZipFile$BoundedInputStream;->addDummy()V

    .line 301
    new-instance v1, Ljava/util/zip/InflaterInputStream;

    new-instance v4, Ljava/util/zip/Inflater;

    const/4 v5, 0x1

    invoke-direct {v4, v5}, Ljava/util/zip/Inflater;-><init>(Z)V

    invoke-direct {v1, v0, v4}, Ljava/util/zip/InflaterInputStream;-><init>(Ljava/io/InputStream;Ljava/util/zip/Inflater;)V

    move-object v0, v1

    goto :goto_0

    .line 296
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x8 -> :sswitch_1
    .end sparse-switch
.end method

.method protected getString([B)Ljava/lang/String;
    .locals 12
    .parameter "bytes"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/util/zip/ZipException;
        }
    .end annotation

    .prologue
    .line 574
    :try_start_0
    iget-object v9, p0, Lcom/htc/htccompressviewer/zip/ZipFile;->encoding:Ljava/lang/String;

    if-nez v9, :cond_2

    .line 575
    invoke-static {}, Ljava/nio/charset/Charset;->defaultCharset()Ljava/nio/charset/Charset;

    move-result-object v4

    .line 580
    .local v4, primaryCharset:Ljava/nio/charset/Charset;
    :goto_0
    invoke-virtual {v4}, Ljava/nio/charset/Charset;->newDecoder()Ljava/nio/charset/CharsetDecoder;

    move-result-object v5

    .line 581
    .local v5, primaryDecoder:Ljava/nio/charset/CharsetDecoder;
    iget-object v9, p0, Lcom/htc/htccompressviewer/zip/ZipFile;->subEncoding:Ljava/lang/String;

    if-eqz v9, :cond_3

    .line 582
    sget-object v9, Ljava/nio/charset/CodingErrorAction;->REPORT:Ljava/nio/charset/CodingErrorAction;

    invoke-virtual {v5, v9}, Ljava/nio/charset/CharsetDecoder;->onMalformedInput(Ljava/nio/charset/CodingErrorAction;)Ljava/nio/charset/CharsetDecoder;

    move-result-object v9

    sget-object v10, Ljava/nio/charset/CodingErrorAction;->REPORT:Ljava/nio/charset/CodingErrorAction;

    invoke-virtual {v9, v10}, Ljava/nio/charset/CharsetDecoder;->onUnmappableCharacter(Ljava/nio/charset/CodingErrorAction;)Ljava/nio/charset/CharsetDecoder;

    .line 589
    :goto_1
    invoke-static {p1}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v2

    .line 590
    .local v2, inBuffer:Ljava/nio/ByteBuffer;
    array-length v9, p1

    invoke-static {v9}, Ljava/nio/CharBuffer;->allocate(I)Ljava/nio/CharBuffer;

    move-result-object v3

    .line 592
    .local v3, outBuffer:Ljava/nio/CharBuffer;
    const/4 v9, 0x1

    invoke-virtual {v5, v2, v3, v9}, Ljava/nio/charset/CharsetDecoder;->decode(Ljava/nio/ByteBuffer;Ljava/nio/CharBuffer;Z)Ljava/nio/charset/CoderResult;

    move-result-object v6

    .line 593
    .local v6, result:Ljava/nio/charset/CoderResult;
    invoke-virtual {v5, v3}, Ljava/nio/charset/CharsetDecoder;->flush(Ljava/nio/CharBuffer;)Ljava/nio/charset/CoderResult;

    .line 595
    iget-object v9, p0, Lcom/htc/htccompressviewer/zip/ZipFile;->subEncoding:Ljava/lang/String;

    if-eqz v9, :cond_1

    invoke-virtual {v6}, Ljava/nio/charset/CoderResult;->isMalformed()Z

    move-result v9

    if-nez v9, :cond_0

    invoke-virtual {v6}, Ljava/nio/charset/CoderResult;->isUnmappable()Z

    move-result v9

    if-eqz v9, :cond_1

    .line 596
    :cond_0
    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    .line 597
    invoke-virtual {v3}, Ljava/nio/CharBuffer;->clear()Ljava/nio/Buffer;

    .line 598
    iget-object v9, p0, Lcom/htc/htccompressviewer/zip/ZipFile;->subEncoding:Ljava/lang/String;

    invoke-static {v9}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v9

    invoke-virtual {v9}, Ljava/nio/charset/Charset;->newDecoder()Ljava/nio/charset/CharsetDecoder;

    move-result-object v9

    sget-object v10, Ljava/nio/charset/CodingErrorAction;->REPLACE:Ljava/nio/charset/CodingErrorAction;

    invoke-virtual {v9, v10}, Ljava/nio/charset/CharsetDecoder;->onMalformedInput(Ljava/nio/charset/CodingErrorAction;)Ljava/nio/charset/CharsetDecoder;

    move-result-object v9

    sget-object v10, Ljava/nio/charset/CodingErrorAction;->REPLACE:Ljava/nio/charset/CodingErrorAction;

    invoke-virtual {v9, v10}, Ljava/nio/charset/CharsetDecoder;->onUnmappableCharacter(Ljava/nio/charset/CodingErrorAction;)Ljava/nio/charset/CharsetDecoder;

    move-result-object v7

    .line 601
    .local v7, subDecoder:Ljava/nio/charset/CharsetDecoder;
    const/4 v9, 0x1

    invoke-virtual {v7, v2, v3, v9}, Ljava/nio/charset/CharsetDecoder;->decode(Ljava/nio/ByteBuffer;Ljava/nio/CharBuffer;Z)Ljava/nio/charset/CoderResult;

    .line 602
    invoke-virtual {v7, v3}, Ljava/nio/charset/CharsetDecoder;->flush(Ljava/nio/CharBuffer;)Ljava/nio/charset/CoderResult;

    .line 605
    .end local v7           #subDecoder:Ljava/nio/charset/CharsetDecoder;
    :cond_1
    invoke-virtual {v3}, Ljava/nio/CharBuffer;->flip()Ljava/nio/Buffer;

    .line 606
    invoke-virtual {v3}, Ljava/nio/CharBuffer;->length()I

    move-result v0

    .line 607
    .local v0, count:I
    new-array v8, v0, [C

    .line 608
    .local v8, value:[C
    invoke-virtual {v3}, Ljava/nio/CharBuffer;->array()[C

    move-result-object v9

    const/4 v10, 0x0

    const/4 v11, 0x0

    invoke-static {v9, v10, v8, v11, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 610
    new-instance v9, Ljava/lang/String;

    invoke-direct {v9, v8}, Ljava/lang/String;-><init>([C)V

    return-object v9

    .line 577
    .end local v0           #count:I
    .end local v2           #inBuffer:Ljava/nio/ByteBuffer;
    .end local v3           #outBuffer:Ljava/nio/CharBuffer;
    .end local v4           #primaryCharset:Ljava/nio/charset/Charset;
    .end local v5           #primaryDecoder:Ljava/nio/charset/CharsetDecoder;
    .end local v6           #result:Ljava/nio/charset/CoderResult;
    .end local v8           #value:[C
    :cond_2
    iget-object v9, p0, Lcom/htc/htccompressviewer/zip/ZipFile;->encoding:Ljava/lang/String;

    invoke-static {v9}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v4

    .restart local v4       #primaryCharset:Ljava/nio/charset/Charset;
    goto :goto_0

    .line 585
    .restart local v5       #primaryDecoder:Ljava/nio/charset/CharsetDecoder;
    :cond_3
    sget-object v9, Ljava/nio/charset/CodingErrorAction;->REPLACE:Ljava/nio/charset/CodingErrorAction;

    invoke-virtual {v5, v9}, Ljava/nio/charset/CharsetDecoder;->onMalformedInput(Ljava/nio/charset/CodingErrorAction;)Ljava/nio/charset/CharsetDecoder;

    move-result-object v9

    sget-object v10, Ljava/nio/charset/CodingErrorAction;->REPLACE:Ljava/nio/charset/CodingErrorAction;

    invoke-virtual {v9, v10}, Ljava/nio/charset/CharsetDecoder;->onUnmappableCharacter(Ljava/nio/charset/CodingErrorAction;)Ljava/nio/charset/CharsetDecoder;
    :try_end_0
    .catch Ljava/nio/charset/IllegalCharsetNameException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/nio/charset/UnsupportedCharsetException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_1

    .line 612
    .end local v4           #primaryCharset:Ljava/nio/charset/Charset;
    .end local v5           #primaryDecoder:Ljava/nio/charset/CharsetDecoder;
    :catch_0
    move-exception v1

    .line 613
    .local v1, e:Ljava/nio/charset/IllegalCharsetNameException;
    new-instance v9, Ljava/util/zip/ZipException;

    invoke-virtual {v1}, Ljava/nio/charset/IllegalCharsetNameException;->getMessage()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Ljava/util/zip/ZipException;-><init>(Ljava/lang/String;)V

    throw v9

    .line 614
    .end local v1           #e:Ljava/nio/charset/IllegalCharsetNameException;
    :catch_1
    move-exception v1

    .line 615
    .local v1, e:Ljava/nio/charset/UnsupportedCharsetException;
    new-instance v9, Ljava/util/zip/ZipException;

    invoke-virtual {v1}, Ljava/nio/charset/UnsupportedCharsetException;->getMessage()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Ljava/util/zip/ZipException;-><init>(Ljava/lang/String;)V

    throw v9
.end method
