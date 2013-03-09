.class public Ljava/util/zip/ZipFile;
.super Ljava/lang/Object;
.source "ZipFile.java"

# interfaces
.implements Ljava/util/zip/ZipConstants;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljava/util/zip/ZipFile$ZipInflaterInputStream;,
        Ljava/util/zip/ZipFile$RAFStream;
    }
.end annotation


# static fields
.field static final GPBF_DATA_DESCRIPTOR_FLAG:I = 0x8

.field static final GPBF_UTF8_FLAG:I = 0x800

.field public static final OPEN_DELETE:I = 0x4

.field public static final OPEN_READ:I = 0x1


# instance fields
.field private final fileName:Ljava/lang/String;

.field private fileToDeleteOnClose:Ljava/io/File;

.field private final guard:Ldalvik/system/CloseGuard;

.field private final mEntries:Ljava/util/LinkedHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedHashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/zip/ZipEntry;",
            ">;"
        }
    .end annotation
.end field

.field private mRaf:Ljava/io/RandomAccessFile;


# direct methods
.method public constructor <init>(Ljava/io/File;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/util/zip/ZipException;,
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Ljava/util/zip/ZipFile;-><init>(Ljava/io/File;I)V

    return-void
.end method

.method public constructor <init>(Ljava/io/File;I)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Ljava/util/zip/ZipFile;->mEntries:Ljava/util/LinkedHashMap;

    invoke-static {}, Ldalvik/system/CloseGuard;->get()Ldalvik/system/CloseGuard;

    move-result-object v0

    iput-object v0, p0, Ljava/util/zip/ZipFile;->guard:Ldalvik/system/CloseGuard;

    invoke-virtual {p1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Ljava/util/zip/ZipFile;->fileName:Ljava/lang/String;

    const/4 v0, 0x1

    if-eq p2, v0, :cond_0

    const/4 v0, 0x5

    if-eq p2, v0, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    :cond_0
    and-int/lit8 v0, p2, 0x4

    if-eqz v0, :cond_1

    iput-object p1, p0, Ljava/util/zip/ZipFile;->fileToDeleteOnClose:Ljava/io/File;

    :goto_0
    new-instance v0, Ljava/io/RandomAccessFile;

    iget-object v1, p0, Ljava/util/zip/ZipFile;->fileName:Ljava/lang/String;

    const-string v2, "r"

    invoke-direct {v0, v1, v2}, Ljava/io/RandomAccessFile;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Ljava/util/zip/ZipFile;->mRaf:Ljava/io/RandomAccessFile;

    invoke-direct {p0}, Ljava/util/zip/ZipFile;->readCentralDir()V

    iget-object v0, p0, Ljava/util/zip/ZipFile;->guard:Ldalvik/system/CloseGuard;

    const-string v1, "close"

    invoke-virtual {v0, v1}, Ldalvik/system/CloseGuard;->open(Ljava/lang/String;)V

    return-void

    :cond_1
    const/4 v0, 0x0

    iput-object v0, p0, Ljava/util/zip/ZipFile;->fileToDeleteOnClose:Ljava/io/File;

    goto :goto_0
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Ljava/util/zip/ZipFile;-><init>(Ljava/io/File;I)V

    return-void
.end method

.method static synthetic access$000(Ljava/util/zip/ZipFile;)V
    .locals 0

    invoke-direct {p0}, Ljava/util/zip/ZipFile;->checkNotClosed()V

    return-void
.end method

.method private checkNotClosed()V
    .locals 2

    iget-object v0, p0, Ljava/util/zip/ZipFile;->mRaf:Ljava/io/RandomAccessFile;

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Zip file closed"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    return-void
.end method

.method private readCentralDir()V
    .locals 24
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    move-object/from16 v0, p0

    iget-object v0, v0, Ljava/util/zip/ZipFile;->mRaf:Ljava/io/RandomAccessFile;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Ljava/io/RandomAccessFile;->length()J

    move-result-wide v20

    const-wide/16 v22, 0x16

    sub-long v15, v20, v22

    const-wide/16 v20, 0x0

    cmp-long v20, v15, v20

    if-gez v20, :cond_0

    new-instance v20, Ljava/util/zip/ZipException;

    const-string v21, "too short to be Zip"

    invoke-direct/range {v20 .. v21}, Ljava/util/zip/ZipException;-><init>(Ljava/lang/String;)V

    throw v20

    :cond_0
    const-wide/32 v20, 0x10000

    sub-long v17, v15, v20

    const-wide/16 v20, 0x0

    cmp-long v20, v17, v20

    if-gez v20, :cond_1

    const-wide/16 v17, 0x0

    :cond_1
    const v3, 0x6054b50

    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Ljava/util/zip/ZipFile;->mRaf:Ljava/io/RandomAccessFile;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    move-wide v1, v15

    invoke-virtual {v0, v1, v2}, Ljava/io/RandomAccessFile;->seek(J)V

    move-object/from16 v0, p0

    iget-object v0, v0, Ljava/util/zip/ZipFile;->mRaf:Ljava/io/RandomAccessFile;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Ljava/io/RandomAccessFile;->readInt()I

    move-result v20

    invoke-static/range {v20 .. v20}, Ljava/lang/Integer;->reverseBytes(I)I

    move-result v20

    const v21, 0x6054b50

    move/from16 v0, v20

    move/from16 v1, v21

    if-ne v0, v1, :cond_4

    const/16 v20, 0x12

    move/from16 v0, v20

    new-array v8, v0, [B

    move-object/from16 v0, p0

    iget-object v0, v0, Ljava/util/zip/ZipFile;->mRaf:Ljava/io/RandomAccessFile;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-virtual {v0, v8}, Ljava/io/RandomAccessFile;->readFully([B)V

    const/16 v20, 0x0

    array-length v0, v8

    move/from16 v21, v0

    sget-object v22, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    move/from16 v0, v20

    move/from16 v1, v21

    move-object/from16 v2, v22

    invoke-static {v8, v0, v1, v2}, Llibcore/io/HeapBufferIterator;->iterator([BIILjava/nio/ByteOrder;)Llibcore/io/BufferIterator;

    move-result-object v11

    invoke-virtual {v11}, Llibcore/io/BufferIterator;->readShort()S

    move-result v6

    invoke-virtual {v11}, Llibcore/io/BufferIterator;->readShort()S

    move-result v7

    invoke-virtual {v11}, Llibcore/io/BufferIterator;->readShort()S

    move-result v13

    invoke-virtual {v11}, Llibcore/io/BufferIterator;->readShort()S

    move-result v19

    const/16 v20, 0x4

    move/from16 v0, v20

    invoke-virtual {v11, v0}, Llibcore/io/BufferIterator;->skip(I)V

    invoke-virtual {v11}, Llibcore/io/BufferIterator;->readInt()I

    move-result v5

    move/from16 v0, v19

    if-ne v13, v0, :cond_3

    if-nez v6, :cond_3

    if-eqz v7, :cond_5

    :cond_3
    new-instance v20, Ljava/util/zip/ZipException;

    const-string v21, "spanned archives not supported"

    invoke-direct/range {v20 .. v21}, Ljava/util/zip/ZipException;-><init>(Ljava/lang/String;)V

    throw v20

    :cond_4
    const-wide/16 v20, 0x1

    sub-long v15, v15, v20

    cmp-long v20, v15, v17

    if-gez v20, :cond_2

    new-instance v20, Ljava/util/zip/ZipException;

    const-string v21, "EOCD not found; not a Zip archive?"

    invoke-direct/range {v20 .. v21}, Ljava/util/zip/ZipException;-><init>(Ljava/lang/String;)V

    throw v20

    :cond_5
    new-instance v14, Ljava/util/zip/ZipFile$RAFStream;

    move-object/from16 v0, p0

    iget-object v0, v0, Ljava/util/zip/ZipFile;->mRaf:Ljava/io/RandomAccessFile;

    move-object/from16 v20, v0

    int-to-long v0, v5

    move-wide/from16 v21, v0

    move-object/from16 v0, v20

    move-wide/from16 v1, v21

    invoke-direct {v14, v0, v1, v2}, Ljava/util/zip/ZipFile$RAFStream;-><init>(Ljava/io/RandomAccessFile;J)V

    new-instance v4, Ljava/io/BufferedInputStream;

    const/16 v20, 0x1000

    move/from16 v0, v20

    invoke-direct {v4, v14, v0}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;I)V

    const/16 v20, 0x2e

    move/from16 v0, v20

    new-array v9, v0, [B

    const/4 v10, 0x0

    :goto_0
    if-ge v10, v13, :cond_6

    new-instance v12, Ljava/util/zip/ZipEntry;

    invoke-direct {v12, v9, v4}, Ljava/util/zip/ZipEntry;-><init>([BLjava/io/InputStream;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Ljava/util/zip/ZipFile;->mEntries:Ljava/util/LinkedHashMap;

    move-object/from16 v20, v0

    invoke-virtual {v12}, Ljava/util/zip/ZipEntry;->getName()Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    invoke-virtual {v0, v1, v12}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v10, v10, 0x1

    goto :goto_0

    :cond_6
    return-void
.end method


# virtual methods
.method public close()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v2, 0x0

    iget-object v1, p0, Ljava/util/zip/ZipFile;->guard:Ldalvik/system/CloseGuard;

    invoke-virtual {v1}, Ldalvik/system/CloseGuard;->close()V

    iget-object v0, p0, Ljava/util/zip/ZipFile;->mRaf:Ljava/io/RandomAccessFile;

    if-eqz v0, :cond_0

    monitor-enter v0

    const/4 v1, 0x0

    :try_start_0
    iput-object v1, p0, Ljava/util/zip/ZipFile;->mRaf:Ljava/io/RandomAccessFile;

    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->close()V

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v1, p0, Ljava/util/zip/ZipFile;->fileToDeleteOnClose:Ljava/io/File;

    if-eqz v1, :cond_0

    iget-object v1, p0, Ljava/util/zip/ZipFile;->fileToDeleteOnClose:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    iput-object v2, p0, Ljava/util/zip/ZipFile;->fileToDeleteOnClose:Ljava/io/File;

    :cond_0
    return-void

    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public entries()Ljava/util/Enumeration;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Enumeration",
            "<+",
            "Ljava/util/zip/ZipEntry;",
            ">;"
        }
    .end annotation

    invoke-direct {p0}, Ljava/util/zip/ZipFile;->checkNotClosed()V

    iget-object v1, p0, Ljava/util/zip/ZipFile;->mEntries:Ljava/util/LinkedHashMap;

    invoke-virtual {v1}, Ljava/util/LinkedHashMap;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    new-instance v1, Ljava/util/zip/ZipFile$1;

    invoke-direct {v1, p0, v0}, Ljava/util/zip/ZipFile$1;-><init>(Ljava/util/zip/ZipFile;Ljava/util/Iterator;)V

    return-object v1
.end method

.method protected finalize()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    :try_start_0
    iget-object v1, p0, Ljava/util/zip/ZipFile;->guard:Ldalvik/system/CloseGuard;

    if-eqz v1, :cond_0

    iget-object v1, p0, Ljava/util/zip/ZipFile;->guard:Ldalvik/system/CloseGuard;

    invoke-virtual {v1}, Ldalvik/system/CloseGuard;->warnIfOpen()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    :try_start_1
    invoke-super {p0}, Ljava/lang/Object;->finalize()V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    return-void

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v1

    :catchall_0
    move-exception v1

    :try_start_2
    invoke-super {p0}, Ljava/lang/Object;->finalize()V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_1

    throw v1

    :catch_1
    move-exception v0

    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v1
.end method

.method public getEntry(Ljava/lang/String;)Ljava/util/zip/ZipEntry;
    .locals 4

    invoke-direct {p0}, Ljava/util/zip/ZipFile;->checkNotClosed()V

    if-nez p1, :cond_0

    new-instance v1, Ljava/lang/NullPointerException;

    invoke-direct {v1}, Ljava/lang/NullPointerException;-><init>()V

    throw v1

    :cond_0
    iget-object v1, p0, Ljava/util/zip/ZipFile;->mEntries:Ljava/util/LinkedHashMap;

    invoke-virtual {v1, p1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/zip/ZipEntry;

    if-nez v0, :cond_1

    iget-object v1, p0, Ljava/util/zip/ZipFile;->mEntries:Ljava/util/LinkedHashMap;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/zip/ZipEntry;

    :cond_1
    return-object v0
.end method

.method public getInputStream(Ljava/util/zip/ZipEntry;)Ljava/io/InputStream;
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p1}, Ljava/util/zip/ZipEntry;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v5}, Ljava/util/zip/ZipFile;->getEntry(Ljava/lang/String;)Ljava/util/zip/ZipEntry;

    move-result-object p1

    if-nez p1, :cond_0

    const/4 v4, 0x0

    :goto_0
    return-object v4

    :cond_0
    iget-object v3, p0, Ljava/util/zip/ZipFile;->mRaf:Ljava/io/RandomAccessFile;

    monitor-enter v3

    :try_start_0
    new-instance v4, Ljava/util/zip/ZipFile$RAFStream;

    iget-wide v5, p1, Ljava/util/zip/ZipEntry;->mLocalHeaderRelOffset:J

    const-wide/16 v7, 0x1c

    add-long/2addr v5, v7

    invoke-direct {v4, v3, v5, v6}, Ljava/util/zip/ZipFile$RAFStream;-><init>(Ljava/io/RandomAccessFile;J)V

    new-instance v1, Ljava/io/DataInputStream;

    invoke-direct {v1, v4}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    invoke-virtual {v1}, Ljava/io/DataInputStream;->readShort()S

    move-result v5

    invoke-static {v5}, Ljava/lang/Short;->reverseBytes(S)S

    move-result v2

    invoke-virtual {v1}, Ljava/io/DataInputStream;->close()V

    iget v5, p1, Ljava/util/zip/ZipEntry;->nameLength:I

    add-int/2addr v5, v2

    int-to-long v5, v5

    invoke-virtual {v4, v5, v6}, Ljava/util/zip/ZipFile$RAFStream;->skip(J)J

    iget-wide v5, v4, Ljava/util/zip/ZipFile$RAFStream;->mOffset:J

    iget-wide v7, p1, Ljava/util/zip/ZipEntry;->compressedSize:J

    add-long/2addr v5, v7

    iput-wide v5, v4, Ljava/util/zip/ZipFile$RAFStream;->mLength:J

    iget v5, p1, Ljava/util/zip/ZipEntry;->compressionMethod:I

    const/16 v6, 0x8

    if-ne v5, v6, :cond_1

    const/16 v5, 0x400

    invoke-virtual {p1}, Ljava/util/zip/ZipEntry;->getSize()J

    move-result-wide v6

    const-wide/32 v8, 0xffff

    invoke-static {v6, v7, v8, v9}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v6

    long-to-int v6, v6

    invoke-static {v5, v6}, Ljava/lang/Math;->max(II)I

    move-result v0

    new-instance v5, Ljava/util/zip/ZipFile$ZipInflaterInputStream;

    new-instance v6, Ljava/util/zip/Inflater;

    const/4 v7, 0x1

    invoke-direct {v6, v7}, Ljava/util/zip/Inflater;-><init>(Z)V

    invoke-direct {v5, v4, v6, v0, p1}, Ljava/util/zip/ZipFile$ZipInflaterInputStream;-><init>(Ljava/io/InputStream;Ljava/util/zip/Inflater;ILjava/util/zip/ZipEntry;)V

    monitor-exit v3

    move-object v4, v5

    goto :goto_0

    :cond_1
    monitor-exit v3

    goto :goto_0

    :catchall_0
    move-exception v5

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v5
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Ljava/util/zip/ZipFile;->fileName:Ljava/lang/String;

    return-object v0
.end method

.method public size()I
    .locals 1

    invoke-direct {p0}, Ljava/util/zip/ZipFile;->checkNotClosed()V

    iget-object v0, p0, Ljava/util/zip/ZipFile;->mEntries:Ljava/util/LinkedHashMap;

    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->size()I

    move-result v0

    return v0
.end method
