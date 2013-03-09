.class public Ljava/util/zip/InflaterInputStream;
.super Ljava/io/FilterInputStream;
.source "InflaterInputStream.java"


# static fields
.field static final BUF_SIZE:I = 0x200


# instance fields
.field protected buf:[B

.field closed:Z

.field eof:Z

.field protected inf:Ljava/util/zip/Inflater;

.field protected len:I

.field nativeEndBufSize:I


# direct methods
.method public constructor <init>(Ljava/io/InputStream;)V
    .locals 2

    new-instance v0, Ljava/util/zip/Inflater;

    invoke-direct {v0}, Ljava/util/zip/Inflater;-><init>()V

    const/16 v1, 0x200

    invoke-direct {p0, p1, v0, v1}, Ljava/util/zip/InflaterInputStream;-><init>(Ljava/io/InputStream;Ljava/util/zip/Inflater;I)V

    return-void
.end method

.method public constructor <init>(Ljava/io/InputStream;Ljava/util/zip/Inflater;)V
    .locals 1

    const/16 v0, 0x200

    invoke-direct {p0, p1, p2, v0}, Ljava/util/zip/InflaterInputStream;-><init>(Ljava/io/InputStream;Ljava/util/zip/Inflater;I)V

    return-void
.end method

.method public constructor <init>(Ljava/io/InputStream;Ljava/util/zip/Inflater;I)V
    .locals 1

    invoke-direct {p0, p1}, Ljava/io/FilterInputStream;-><init>(Ljava/io/InputStream;)V

    const/4 v0, 0x0

    iput v0, p0, Ljava/util/zip/InflaterInputStream;->nativeEndBufSize:I

    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    :cond_1
    if-gtz p3, :cond_2

    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    :cond_2
    iput-object p2, p0, Ljava/util/zip/InflaterInputStream;->inf:Ljava/util/zip/Inflater;

    instance-of v0, p1, Ljava/util/zip/ZipFile$RAFStream;

    if-eqz v0, :cond_3

    iput p3, p0, Ljava/util/zip/InflaterInputStream;->nativeEndBufSize:I

    :goto_0
    return-void

    :cond_3
    new-array v0, p3, [B

    iput-object v0, p0, Ljava/util/zip/InflaterInputStream;->buf:[B

    goto :goto_0
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


# virtual methods
.method public available()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-direct {p0}, Ljava/util/zip/InflaterInputStream;->checkClosed()V

    iget-boolean v0, p0, Ljava/util/zip/InflaterInputStream;->eof:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public close()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v1, 0x1

    iget-boolean v0, p0, Ljava/util/zip/InflaterInputStream;->closed:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Ljava/util/zip/InflaterInputStream;->inf:Ljava/util/zip/Inflater;

    invoke-virtual {v0}, Ljava/util/zip/Inflater;->end()V

    iput-boolean v1, p0, Ljava/util/zip/InflaterInputStream;->closed:Z

    iput-boolean v1, p0, Ljava/util/zip/InflaterInputStream;->eof:Z

    invoke-super {p0}, Ljava/io/FilterInputStream;->close()V

    :cond_0
    return-void
.end method

.method protected fill()V
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-direct {p0}, Ljava/util/zip/InflaterInputStream;->checkClosed()V

    iget v4, p0, Ljava/util/zip/InflaterInputStream;->nativeEndBufSize:I

    if-lez v4, :cond_2

    iget-object v1, p0, Ljava/util/zip/InflaterInputStream;->in:Ljava/io/InputStream;

    check-cast v1, Ljava/util/zip/ZipFile$RAFStream;

    iget-object v5, v1, Ljava/util/zip/ZipFile$RAFStream;->mSharedRaf:Ljava/io/RandomAccessFile;

    monitor-enter v5

    :try_start_0
    iget-wide v6, v1, Ljava/util/zip/ZipFile$RAFStream;->mLength:J

    iget-wide v8, v1, Ljava/util/zip/ZipFile$RAFStream;->mOffset:J

    sub-long v2, v6, v8

    iget v4, p0, Ljava/util/zip/InflaterInputStream;->nativeEndBufSize:I

    int-to-long v6, v4

    cmp-long v4, v2, v6

    if-lez v4, :cond_0

    iget v4, p0, Ljava/util/zip/InflaterInputStream;->nativeEndBufSize:I

    int-to-long v2, v4

    :cond_0
    iget-object v4, p0, Ljava/util/zip/InflaterInputStream;->inf:Ljava/util/zip/Inflater;

    iget-object v6, v1, Ljava/util/zip/ZipFile$RAFStream;->mSharedRaf:Ljava/io/RandomAccessFile;

    invoke-virtual {v6}, Ljava/io/RandomAccessFile;->getFD()Ljava/io/FileDescriptor;

    move-result-object v6

    iget-wide v7, v1, Ljava/util/zip/ZipFile$RAFStream;->mOffset:J

    iget v9, p0, Ljava/util/zip/InflaterInputStream;->nativeEndBufSize:I

    invoke-virtual {v4, v6, v7, v8, v9}, Ljava/util/zip/Inflater;->setFileInput(Ljava/io/FileDescriptor;JI)I

    move-result v0

    int-to-long v6, v0

    invoke-virtual {v1, v6, v7}, Ljava/util/zip/ZipFile$RAFStream;->skip(J)J

    monitor-exit v5

    :cond_1
    :goto_0
    return-void

    :catchall_0
    move-exception v4

    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v4

    :cond_2
    iget-object v4, p0, Ljava/util/zip/InflaterInputStream;->in:Ljava/io/InputStream;

    iget-object v5, p0, Ljava/util/zip/InflaterInputStream;->buf:[B

    invoke-virtual {v4, v5}, Ljava/io/InputStream;->read([B)I

    move-result v4

    iput v4, p0, Ljava/util/zip/InflaterInputStream;->len:I

    if-lez v4, :cond_1

    iget-object v4, p0, Ljava/util/zip/InflaterInputStream;->inf:Ljava/util/zip/Inflater;

    iget-object v5, p0, Ljava/util/zip/InflaterInputStream;->buf:[B

    const/4 v6, 0x0

    iget v7, p0, Ljava/util/zip/InflaterInputStream;->len:I

    invoke-virtual {v4, v5, v6, v7}, Ljava/util/zip/Inflater;->setInput([BII)V

    goto :goto_0
.end method

.method public mark(I)V
    .locals 0

    return-void
.end method

.method public markSupported()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public read()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-static {p0}, Llibcore/io/Streams;->readSingleByte(Ljava/io/InputStream;)I

    move-result v0

    return v0
.end method

.method public read([BII)I
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v4, 0x1

    const/4 v2, -0x1

    invoke-direct {p0}, Ljava/util/zip/InflaterInputStream;->checkClosed()V

    array-length v3, p1

    invoke-static {v3, p2, p3}, Ljava/util/Arrays;->checkOffsetAndCount(III)V

    if-nez p3, :cond_1

    const/4 v1, 0x0

    :cond_0
    :goto_0
    return v1

    :cond_1
    iget-boolean v3, p0, Ljava/util/zip/InflaterInputStream;->eof:Z

    if-eqz v3, :cond_2

    move v1, v2

    goto :goto_0

    :cond_2
    iget-object v3, p0, Ljava/util/zip/InflaterInputStream;->inf:Ljava/util/zip/Inflater;

    invoke-virtual {v3}, Ljava/util/zip/Inflater;->needsInput()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-virtual {p0}, Ljava/util/zip/InflaterInputStream;->fill()V

    :cond_3
    :try_start_0
    iget-object v3, p0, Ljava/util/zip/InflaterInputStream;->inf:Ljava/util/zip/Inflater;

    invoke-virtual {v3, p1, p2, p3}, Ljava/util/zip/Inflater;->inflate([BII)I

    move-result v1

    iget-object v3, p0, Ljava/util/zip/InflaterInputStream;->inf:Ljava/util/zip/Inflater;

    invoke-virtual {v3}, Ljava/util/zip/Inflater;->finished()Z

    move-result v3

    iput-boolean v3, p0, Ljava/util/zip/InflaterInputStream;->eof:Z

    if-gtz v1, :cond_0

    iget-boolean v3, p0, Ljava/util/zip/InflaterInputStream;->eof:Z

    if-eqz v3, :cond_4

    move v1, v2

    goto :goto_0

    :cond_4
    iget-object v3, p0, Ljava/util/zip/InflaterInputStream;->inf:Ljava/util/zip/Inflater;

    invoke-virtual {v3}, Ljava/util/zip/Inflater;->needsDictionary()Z

    move-result v3

    if-eqz v3, :cond_5

    const/4 v3, 0x1

    iput-boolean v3, p0, Ljava/util/zip/InflaterInputStream;->eof:Z

    move v1, v2

    goto :goto_0

    :cond_5
    iget v3, p0, Ljava/util/zip/InflaterInputStream;->len:I

    if-ne v3, v2, :cond_2

    const/4 v3, 0x1

    iput-boolean v3, p0, Ljava/util/zip/InflaterInputStream;->eof:Z

    new-instance v3, Ljava/io/EOFException;

    invoke-direct {v3}, Ljava/io/EOFException;-><init>()V

    throw v3
    :try_end_0
    .catch Ljava/util/zip/DataFormatException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception v0

    iput-boolean v4, p0, Ljava/util/zip/InflaterInputStream;->eof:Z

    iget v3, p0, Ljava/util/zip/InflaterInputStream;->len:I

    if-ne v3, v2, :cond_6

    new-instance v2, Ljava/io/EOFException;

    invoke-direct {v2}, Ljava/io/EOFException;-><init>()V

    throw v2

    :cond_6
    new-instance v2, Ljava/io/IOException;

    invoke-direct {v2}, Ljava/io/IOException;-><init>()V

    invoke-virtual {v2, v0}, Ljava/io/IOException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    move-result-object v2

    check-cast v2, Ljava/io/IOException;

    check-cast v2, Ljava/io/IOException;

    throw v2
.end method

.method public reset()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    new-instance v0, Ljava/io/IOException;

    invoke-direct {v0}, Ljava/io/IOException;-><init>()V

    throw v0
.end method

.method public skip(J)J
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-gez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "byteCount < 0"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    invoke-static {p0, p1, p2}, Llibcore/io/Streams;->skipByReading(Ljava/io/InputStream;J)J

    move-result-wide v0

    return-wide v0
.end method
