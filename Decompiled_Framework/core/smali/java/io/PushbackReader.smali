.class public Ljava/io/PushbackReader;
.super Ljava/io/FilterReader;
.source "PushbackReader.java"


# instance fields
.field buf:[C

.field pos:I


# direct methods
.method public constructor <init>(Ljava/io/Reader;)V
    .locals 2

    const/4 v1, 0x1

    invoke-direct {p0, p1}, Ljava/io/FilterReader;-><init>(Ljava/io/Reader;)V

    new-array v0, v1, [C

    iput-object v0, p0, Ljava/io/PushbackReader;->buf:[C

    iput v1, p0, Ljava/io/PushbackReader;->pos:I

    return-void
.end method

.method public constructor <init>(Ljava/io/Reader;I)V
    .locals 2

    invoke-direct {p0, p1}, Ljava/io/FilterReader;-><init>(Ljava/io/Reader;)V

    if-gtz p2, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "size <= 0"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    new-array v0, p2, [C

    iput-object v0, p0, Ljava/io/PushbackReader;->buf:[C

    iput p2, p0, Ljava/io/PushbackReader;->pos:I

    return-void
.end method

.method private checkNotClosed()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Ljava/io/PushbackReader;->buf:[C

    if-nez v0, :cond_0

    new-instance v0, Ljava/io/IOException;

    const-string v1, "PushbackReader is closed"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    return-void
.end method


# virtual methods
.method public close()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v1, p0, Ljava/io/Reader;->lock:Ljava/lang/Object;

    monitor-enter v1

    const/4 v0, 0x0

    :try_start_0
    iput-object v0, p0, Ljava/io/PushbackReader;->buf:[C

    iget-object v0, p0, Ljava/io/FilterReader;->in:Ljava/io/Reader;

    invoke-virtual {v0}, Ljava/io/Reader;->close()V

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public mark(I)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    new-instance v0, Ljava/io/IOException;

    const-string v1, "mark/reset not supported"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public markSupported()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public read()I
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v1, p0, Ljava/io/Reader;->lock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    invoke-direct {p0}, Ljava/io/PushbackReader;->checkNotClosed()V

    iget v0, p0, Ljava/io/PushbackReader;->pos:I

    iget-object v2, p0, Ljava/io/PushbackReader;->buf:[C

    array-length v2, v2

    if-ge v0, v2, :cond_0

    iget-object v0, p0, Ljava/io/PushbackReader;->buf:[C

    iget v2, p0, Ljava/io/PushbackReader;->pos:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Ljava/io/PushbackReader;->pos:I

    aget-char v0, v0, v2

    monitor-exit v1

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Ljava/io/FilterReader;->in:Ljava/io/Reader;

    invoke-virtual {v0}, Ljava/io/Reader;->read()I

    move-result v0

    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public read([CII)I
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v5, p0, Ljava/io/Reader;->lock:Ljava/lang/Object;

    monitor-enter v5

    :try_start_0
    invoke-direct {p0}, Ljava/io/PushbackReader;->checkNotClosed()V

    array-length v4, p1

    invoke-static {v4, p2, p3}, Ljava/util/Arrays;->checkOffsetAndCount(III)V

    const/4 v0, 0x0

    const/4 v1, 0x0

    move v3, p2

    iget v4, p0, Ljava/io/PushbackReader;->pos:I

    iget-object v6, p0, Ljava/io/PushbackReader;->buf:[C

    array-length v6, v6

    if-ge v4, v6, :cond_0

    iget-object v4, p0, Ljava/io/PushbackReader;->buf:[C

    array-length v4, v4

    iget v6, p0, Ljava/io/PushbackReader;->pos:I

    sub-int/2addr v4, v6

    if-lt v4, p3, :cond_1

    move v1, p3

    :goto_0
    iget-object v4, p0, Ljava/io/PushbackReader;->buf:[C

    iget v6, p0, Ljava/io/PushbackReader;->pos:I

    invoke-static {v4, v6, p1, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/2addr v3, v1

    add-int/2addr v0, v1

    iget v4, p0, Ljava/io/PushbackReader;->pos:I

    add-int/2addr v4, v1

    iput v4, p0, Ljava/io/PushbackReader;->pos:I

    :cond_0
    if-ne v1, p3, :cond_2

    monitor-exit v5

    :goto_1
    return p3

    :cond_1
    iget-object v4, p0, Ljava/io/PushbackReader;->buf:[C

    array-length v4, v4

    iget v6, p0, Ljava/io/PushbackReader;->pos:I

    sub-int v1, v4, v6

    goto :goto_0

    :cond_2
    iget-object v4, p0, Ljava/io/FilterReader;->in:Ljava/io/Reader;

    sub-int v6, p3, v0

    invoke-virtual {v4, p1, v3, v6}, Ljava/io/Reader;->read([CII)I

    move-result v2

    if-lez v2, :cond_3

    add-int p3, v2, v0

    monitor-exit v5

    goto :goto_1

    :catchall_0
    move-exception v4

    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v4

    :cond_3
    if-nez v0, :cond_4

    :try_start_1
    monitor-exit v5

    move p3, v2

    goto :goto_1

    :cond_4
    monitor-exit v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move p3, v0

    goto :goto_1
.end method

.method public ready()Z
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v1, p0, Ljava/io/Reader;->lock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Ljava/io/PushbackReader;->buf:[C

    if-nez v0, :cond_0

    new-instance v0, Ljava/io/IOException;

    const-string v2, "Reader is closed"

    invoke-direct {v0, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_0
    :try_start_1
    iget-object v0, p0, Ljava/io/PushbackReader;->buf:[C

    array-length v0, v0

    iget v2, p0, Ljava/io/PushbackReader;->pos:I

    sub-int/2addr v0, v2

    if-gtz v0, :cond_1

    iget-object v0, p0, Ljava/io/FilterReader;->in:Ljava/io/Reader;

    invoke-virtual {v0}, Ljava/io/Reader;->ready()Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    const/4 v0, 0x1

    :goto_0
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return v0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public reset()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    new-instance v0, Ljava/io/IOException;

    const-string v1, "mark/reset not supported"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public skip(J)J
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-wide/16 v5, 0x0

    cmp-long v7, p1, v5

    if-gez v7, :cond_0

    new-instance v5, Ljava/lang/IllegalArgumentException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "charCount < 0: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v5

    :cond_0
    iget-object v7, p0, Ljava/io/Reader;->lock:Ljava/lang/Object;

    monitor-enter v7

    :try_start_0
    invoke-direct {p0}, Ljava/io/PushbackReader;->checkNotClosed()V

    cmp-long v8, p1, v5

    if-nez v8, :cond_1

    monitor-exit v7

    move-wide p1, v5

    :goto_0
    return-wide p1

    :cond_1
    iget-object v8, p0, Ljava/io/PushbackReader;->buf:[C

    array-length v8, v8

    iget v9, p0, Ljava/io/PushbackReader;->pos:I

    sub-int v0, v8, v9

    if-lez v0, :cond_3

    int-to-long v8, v0

    sub-long v3, p1, v8

    cmp-long v5, v3, v5

    if-gtz v5, :cond_2

    iget v5, p0, Ljava/io/PushbackReader;->pos:I

    int-to-long v5, v5

    add-long/2addr v5, p1

    long-to-int v5, v5

    iput v5, p0, Ljava/io/PushbackReader;->pos:I

    monitor-exit v7

    goto :goto_0

    :catchall_0
    move-exception v5

    monitor-exit v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v5

    :cond_2
    :try_start_1
    iget v5, p0, Ljava/io/PushbackReader;->pos:I

    add-int/2addr v5, v0

    iput v5, p0, Ljava/io/PushbackReader;->pos:I

    iget-object v5, p0, Ljava/io/FilterReader;->in:Ljava/io/Reader;

    invoke-virtual {v5, v3, v4}, Ljava/io/Reader;->skip(J)J

    move-result-wide v1

    :goto_1
    int-to-long v5, v0

    add-long p1, v1, v5

    monitor-exit v7

    goto :goto_0

    :cond_3
    iget-object v5, p0, Ljava/io/FilterReader;->in:Ljava/io/Reader;

    invoke-virtual {v5, p1, p2}, Ljava/io/Reader;->skip(J)J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-wide v1

    goto :goto_1
.end method

.method public unread(I)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v1, p0, Ljava/io/Reader;->lock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    invoke-direct {p0}, Ljava/io/PushbackReader;->checkNotClosed()V

    iget v0, p0, Ljava/io/PushbackReader;->pos:I

    if-nez v0, :cond_0

    new-instance v0, Ljava/io/IOException;

    const-string v2, "Pushback buffer full"

    invoke-direct {v0, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_0
    :try_start_1
    iget-object v0, p0, Ljava/io/PushbackReader;->buf:[C

    iget v2, p0, Ljava/io/PushbackReader;->pos:I

    add-int/lit8 v2, v2, -0x1

    iput v2, p0, Ljava/io/PushbackReader;->pos:I

    int-to-char v3, p1

    aput-char v3, v0, v2

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-void
.end method

.method public unread([C)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    array-length v1, p1

    invoke-virtual {p0, p1, v0, v1}, Ljava/io/PushbackReader;->unread([CII)V

    return-void
.end method

.method public unread([CII)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v2, p0, Ljava/io/Reader;->lock:Ljava/lang/Object;

    monitor-enter v2

    :try_start_0
    invoke-direct {p0}, Ljava/io/PushbackReader;->checkNotClosed()V

    iget v1, p0, Ljava/io/PushbackReader;->pos:I

    if-le p3, v1, :cond_0

    new-instance v1, Ljava/io/IOException;

    const-string v3, "Pushback buffer full"

    invoke-direct {v1, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

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

    add-int v1, p2, p3

    add-int/lit8 v0, v1, -0x1

    :goto_0
    if-lt v0, p2, :cond_1

    aget-char v1, p1, v0

    invoke-virtual {p0, v1}, Ljava/io/PushbackReader;->unread(I)V

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-void
.end method
