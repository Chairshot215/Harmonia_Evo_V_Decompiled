.class public Ljava/io/BufferedWriter;
.super Ljava/io/Writer;
.source "BufferedWriter.java"


# instance fields
.field private buf:[C

.field private out:Ljava/io/Writer;

.field private pos:I


# direct methods
.method public constructor <init>(Ljava/io/Writer;)V
    .locals 1

    const/16 v0, 0x2000

    invoke-direct {p0, p1, v0}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;I)V

    return-void
.end method

.method public constructor <init>(Ljava/io/Writer;I)V
    .locals 2

    invoke-direct {p0, p1}, Ljava/io/Writer;-><init>(Ljava/lang/Object;)V

    if-gtz p2, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "size <= 0"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iput-object p1, p0, Ljava/io/BufferedWriter;->out:Ljava/io/Writer;

    new-array v0, p2, [C

    iput-object v0, p0, Ljava/io/BufferedWriter;->buf:[C

    return-void
.end method

.method private checkNotClosed()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-direct {p0}, Ljava/io/BufferedWriter;->isClosed()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/io/IOException;

    const-string v1, "BufferedWriter is closed"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    return-void
.end method

.method private flushInternal()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v3, 0x0

    iget v0, p0, Ljava/io/BufferedWriter;->pos:I

    if-lez v0, :cond_0

    iget-object v0, p0, Ljava/io/BufferedWriter;->out:Ljava/io/Writer;

    iget-object v1, p0, Ljava/io/BufferedWriter;->buf:[C

    iget v2, p0, Ljava/io/BufferedWriter;->pos:I

    invoke-virtual {v0, v1, v3, v2}, Ljava/io/Writer;->write([CII)V

    :cond_0
    iput v3, p0, Ljava/io/BufferedWriter;->pos:I

    return-void
.end method

.method private isClosed()Z
    .locals 1

    iget-object v0, p0, Ljava/io/BufferedWriter;->out:Ljava/io/Writer;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public close()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v3, p0, Ljava/io/Writer;->lock:Ljava/lang/Object;

    monitor-enter v3

    :try_start_0
    invoke-direct {p0}, Ljava/io/BufferedWriter;->isClosed()Z

    move-result v2

    if-eqz v2, :cond_0

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    return-void

    :cond_0
    const/4 v1, 0x0

    :try_start_1
    invoke-direct {p0}, Ljava/io/BufferedWriter;->flushInternal()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    :goto_1
    const/4 v2, 0x0

    :try_start_2
    iput-object v2, p0, Ljava/io/BufferedWriter;->buf:[C
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    iget-object v2, p0, Ljava/io/BufferedWriter;->out:Ljava/io/Writer;

    invoke-virtual {v2}, Ljava/io/Writer;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_1

    :cond_1
    :goto_2
    const/4 v2, 0x0

    :try_start_4
    iput-object v2, p0, Ljava/io/BufferedWriter;->out:Ljava/io/Writer;

    if-eqz v1, :cond_2

    invoke-static {v1}, Llibcore/util/SneakyThrow;->sneakyThrow(Ljava/lang/Throwable;)V

    :cond_2
    monitor-exit v3

    goto :goto_0

    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw v2

    :catch_0
    move-exception v0

    move-object v1, v0

    goto :goto_1

    :catch_1
    move-exception v0

    if-nez v1, :cond_1

    move-object v1, v0

    goto :goto_2
.end method

.method public flush()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v1, p0, Ljava/io/Writer;->lock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    invoke-direct {p0}, Ljava/io/BufferedWriter;->checkNotClosed()V

    invoke-direct {p0}, Ljava/io/BufferedWriter;->flushInternal()V

    iget-object v0, p0, Ljava/io/BufferedWriter;->out:Ljava/io/Writer;

    invoke-virtual {v0}, Ljava/io/Writer;->flush()V

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public newLine()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-static {}, Ljava/lang/System;->lineSeparator()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    return-void
.end method

.method public write(I)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v1, p0, Ljava/io/Writer;->lock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    invoke-direct {p0}, Ljava/io/BufferedWriter;->checkNotClosed()V

    iget v0, p0, Ljava/io/BufferedWriter;->pos:I

    iget-object v2, p0, Ljava/io/BufferedWriter;->buf:[C

    array-length v2, v2

    if-lt v0, v2, :cond_0

    iget-object v0, p0, Ljava/io/BufferedWriter;->out:Ljava/io/Writer;

    iget-object v2, p0, Ljava/io/BufferedWriter;->buf:[C

    const/4 v3, 0x0

    iget-object v4, p0, Ljava/io/BufferedWriter;->buf:[C

    array-length v4, v4

    invoke-virtual {v0, v2, v3, v4}, Ljava/io/Writer;->write([CII)V

    const/4 v0, 0x0

    iput v0, p0, Ljava/io/BufferedWriter;->pos:I

    :cond_0
    iget-object v0, p0, Ljava/io/BufferedWriter;->buf:[C

    iget v2, p0, Ljava/io/BufferedWriter;->pos:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Ljava/io/BufferedWriter;->pos:I

    int-to-char v3, p1

    aput-char v3, v0, v2

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public write(Ljava/lang/String;II)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v3, p0, Ljava/io/Writer;->lock:Ljava/lang/Object;

    monitor-enter v3

    :try_start_0
    invoke-direct {p0}, Ljava/io/BufferedWriter;->checkNotClosed()V

    if-gtz p3, :cond_0

    monitor-exit v3

    :goto_0
    return-void

    :cond_0
    if-ltz p2, :cond_1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    sub-int/2addr v2, p3

    if-le p2, v2, :cond_2

    :cond_1
    new-instance v2, Ljava/lang/StringIndexOutOfBoundsException;

    invoke-direct {v2, p1, p2, p3}, Ljava/lang/StringIndexOutOfBoundsException;-><init>(Ljava/lang/String;II)V

    throw v2

    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    :cond_2
    :try_start_1
    iget v2, p0, Ljava/io/BufferedWriter;->pos:I

    if-nez v2, :cond_3

    iget-object v2, p0, Ljava/io/BufferedWriter;->buf:[C

    array-length v2, v2

    if-lt p3, v2, :cond_3

    new-array v1, p3, [C

    add-int v2, p2, p3

    const/4 v4, 0x0

    invoke-virtual {p1, p2, v2, v1, v4}, Ljava/lang/String;->getChars(II[CI)V

    iget-object v2, p0, Ljava/io/BufferedWriter;->out:Ljava/io/Writer;

    const/4 v4, 0x0

    invoke-virtual {v2, v1, v4, p3}, Ljava/io/Writer;->write([CII)V

    monitor-exit v3

    goto :goto_0

    :cond_3
    iget-object v2, p0, Ljava/io/BufferedWriter;->buf:[C

    array-length v2, v2

    iget v4, p0, Ljava/io/BufferedWriter;->pos:I

    sub-int v0, v2, v4

    if-ge p3, v0, :cond_4

    move v0, p3

    :cond_4
    if-lez v0, :cond_5

    add-int v2, p2, v0

    iget-object v4, p0, Ljava/io/BufferedWriter;->buf:[C

    iget v5, p0, Ljava/io/BufferedWriter;->pos:I

    invoke-virtual {p1, p2, v2, v4, v5}, Ljava/lang/String;->getChars(II[CI)V

    iget v2, p0, Ljava/io/BufferedWriter;->pos:I

    add-int/2addr v2, v0

    iput v2, p0, Ljava/io/BufferedWriter;->pos:I

    :cond_5
    iget v2, p0, Ljava/io/BufferedWriter;->pos:I

    iget-object v4, p0, Ljava/io/BufferedWriter;->buf:[C

    array-length v4, v4

    if-ne v2, v4, :cond_7

    iget-object v2, p0, Ljava/io/BufferedWriter;->out:Ljava/io/Writer;

    iget-object v4, p0, Ljava/io/BufferedWriter;->buf:[C

    const/4 v5, 0x0

    iget-object v6, p0, Ljava/io/BufferedWriter;->buf:[C

    array-length v6, v6

    invoke-virtual {v2, v4, v5, v6}, Ljava/io/Writer;->write([CII)V

    const/4 v2, 0x0

    iput v2, p0, Ljava/io/BufferedWriter;->pos:I

    if-le p3, v0, :cond_7

    add-int/2addr p2, v0

    sub-int v0, p3, v0

    iget-object v2, p0, Ljava/io/BufferedWriter;->buf:[C

    array-length v2, v2

    if-lt v0, v2, :cond_6

    new-array v1, p3, [C

    add-int v2, p2, v0

    const/4 v4, 0x0

    invoke-virtual {p1, p2, v2, v1, v4}, Ljava/lang/String;->getChars(II[CI)V

    iget-object v2, p0, Ljava/io/BufferedWriter;->out:Ljava/io/Writer;

    const/4 v4, 0x0

    invoke-virtual {v2, v1, v4, v0}, Ljava/io/Writer;->write([CII)V

    monitor-exit v3

    goto :goto_0

    :cond_6
    add-int v2, p2, v0

    iget-object v4, p0, Ljava/io/BufferedWriter;->buf:[C

    iget v5, p0, Ljava/io/BufferedWriter;->pos:I

    invoke-virtual {p1, p2, v2, v4, v5}, Ljava/lang/String;->getChars(II[CI)V

    iget v2, p0, Ljava/io/BufferedWriter;->pos:I

    add-int/2addr v2, v0

    iput v2, p0, Ljava/io/BufferedWriter;->pos:I

    :cond_7
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/16 :goto_0
.end method

.method public write([CII)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v2, p0, Ljava/io/Writer;->lock:Ljava/lang/Object;

    monitor-enter v2

    :try_start_0
    invoke-direct {p0}, Ljava/io/BufferedWriter;->checkNotClosed()V

    if-nez p1, :cond_0

    new-instance v1, Ljava/lang/NullPointerException;

    const-string v3, "buffer == null"

    invoke-direct {v1, v3}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1

    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    :cond_0
    :try_start_1
    array-length v1, p1

    invoke-static {v1, p2, p3}, Ljava/util/Arrays;->checkOffsetAndCount(III)V

    iget v1, p0, Ljava/io/BufferedWriter;->pos:I

    if-nez v1, :cond_1

    iget-object v1, p0, Ljava/io/BufferedWriter;->buf:[C

    array-length v1, v1

    if-lt p3, v1, :cond_1

    iget-object v1, p0, Ljava/io/BufferedWriter;->out:Ljava/io/Writer;

    invoke-virtual {v1, p1, p2, p3}, Ljava/io/Writer;->write([CII)V

    monitor-exit v2

    :goto_0
    return-void

    :cond_1
    iget-object v1, p0, Ljava/io/BufferedWriter;->buf:[C

    array-length v1, v1

    iget v3, p0, Ljava/io/BufferedWriter;->pos:I

    sub-int v0, v1, v3

    if-ge p3, v0, :cond_2

    move v0, p3

    :cond_2
    if-lez v0, :cond_3

    iget-object v1, p0, Ljava/io/BufferedWriter;->buf:[C

    iget v3, p0, Ljava/io/BufferedWriter;->pos:I

    invoke-static {p1, p2, v1, v3, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget v1, p0, Ljava/io/BufferedWriter;->pos:I

    add-int/2addr v1, v0

    iput v1, p0, Ljava/io/BufferedWriter;->pos:I

    :cond_3
    iget v1, p0, Ljava/io/BufferedWriter;->pos:I

    iget-object v3, p0, Ljava/io/BufferedWriter;->buf:[C

    array-length v3, v3

    if-ne v1, v3, :cond_5

    iget-object v1, p0, Ljava/io/BufferedWriter;->out:Ljava/io/Writer;

    iget-object v3, p0, Ljava/io/BufferedWriter;->buf:[C

    const/4 v4, 0x0

    iget-object v5, p0, Ljava/io/BufferedWriter;->buf:[C

    array-length v5, v5

    invoke-virtual {v1, v3, v4, v5}, Ljava/io/Writer;->write([CII)V

    const/4 v1, 0x0

    iput v1, p0, Ljava/io/BufferedWriter;->pos:I

    if-le p3, v0, :cond_5

    add-int/2addr p2, v0

    sub-int v0, p3, v0

    iget-object v1, p0, Ljava/io/BufferedWriter;->buf:[C

    array-length v1, v1

    if-lt v0, v1, :cond_4

    iget-object v1, p0, Ljava/io/BufferedWriter;->out:Ljava/io/Writer;

    invoke-virtual {v1, p1, p2, v0}, Ljava/io/Writer;->write([CII)V

    monitor-exit v2

    goto :goto_0

    :cond_4
    iget-object v1, p0, Ljava/io/BufferedWriter;->buf:[C

    iget v3, p0, Ljava/io/BufferedWriter;->pos:I

    invoke-static {p1, p2, v1, v3, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget v1, p0, Ljava/io/BufferedWriter;->pos:I

    add-int/2addr v1, v0

    iput v1, p0, Ljava/io/BufferedWriter;->pos:I

    :cond_5
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method
