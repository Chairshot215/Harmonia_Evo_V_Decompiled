.class public Ljava/io/ByteArrayInputStream;
.super Ljava/io/InputStream;
.source "ByteArrayInputStream.java"


# instance fields
.field protected buf:[B

.field protected count:I

.field protected mark:I

.field protected pos:I


# direct methods
.method public constructor <init>([B)V
    .locals 1

    invoke-direct {p0}, Ljava/io/InputStream;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Ljava/io/ByteArrayInputStream;->mark:I

    iput-object p1, p0, Ljava/io/ByteArrayInputStream;->buf:[B

    array-length v0, p1

    iput v0, p0, Ljava/io/ByteArrayInputStream;->count:I

    return-void
.end method

.method public constructor <init>([BII)V
    .locals 2

    invoke-direct {p0}, Ljava/io/InputStream;-><init>()V

    iput-object p1, p0, Ljava/io/ByteArrayInputStream;->buf:[B

    iput p2, p0, Ljava/io/ByteArrayInputStream;->pos:I

    iput p2, p0, Ljava/io/ByteArrayInputStream;->mark:I

    add-int v0, p2, p3

    array-length v1, p1

    if-le v0, v1, :cond_0

    array-length v0, p1

    :goto_0
    iput v0, p0, Ljava/io/ByteArrayInputStream;->count:I

    return-void

    :cond_0
    add-int v0, p2, p3

    goto :goto_0
.end method


# virtual methods
.method public declared-synchronized available()I
    .locals 2

    monitor-enter p0

    :try_start_0
    iget v0, p0, Ljava/io/ByteArrayInputStream;->count:I

    iget v1, p0, Ljava/io/ByteArrayInputStream;->pos:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    sub-int/2addr v0, v1

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public close()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    return-void
.end method

.method public declared-synchronized mark(I)V
    .locals 1

    monitor-enter p0

    :try_start_0
    iget v0, p0, Ljava/io/ByteArrayInputStream;->pos:I

    iput v0, p0, Ljava/io/ByteArrayInputStream;->mark:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public markSupported()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public declared-synchronized read()I
    .locals 3

    monitor-enter p0

    :try_start_0
    iget v0, p0, Ljava/io/ByteArrayInputStream;->pos:I

    iget v1, p0, Ljava/io/ByteArrayInputStream;->count:I

    if-ge v0, v1, :cond_0

    iget-object v0, p0, Ljava/io/ByteArrayInputStream;->buf:[B

    iget v1, p0, Ljava/io/ByteArrayInputStream;->pos:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Ljava/io/ByteArrayInputStream;->pos:I

    aget-byte v0, v0, v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    and-int/lit16 v0, v0, 0xff

    :goto_0
    monitor-exit p0

    return v0

    :cond_0
    const/4 v0, -0x1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized read([BII)I
    .locals 3

    monitor-enter p0

    :try_start_0
    array-length v1, p1

    invoke-static {v1, p2, p3}, Ljava/util/Arrays;->checkOffsetAndCount(III)V

    iget v1, p0, Ljava/io/ByteArrayInputStream;->pos:I

    iget v2, p0, Ljava/io/ByteArrayInputStream;->count:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-lt v1, v2, :cond_0

    const/4 v0, -0x1

    :goto_0
    monitor-exit p0

    return v0

    :cond_0
    if-nez p3, :cond_1

    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    :try_start_1
    iget v1, p0, Ljava/io/ByteArrayInputStream;->count:I

    iget v2, p0, Ljava/io/ByteArrayInputStream;->pos:I

    sub-int/2addr v1, v2

    if-ge v1, p3, :cond_2

    iget v1, p0, Ljava/io/ByteArrayInputStream;->count:I

    iget v2, p0, Ljava/io/ByteArrayInputStream;->pos:I

    sub-int v0, v1, v2

    :goto_1
    iget-object v1, p0, Ljava/io/ByteArrayInputStream;->buf:[B

    iget v2, p0, Ljava/io/ByteArrayInputStream;->pos:I

    invoke-static {v1, v2, p1, p2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget v1, p0, Ljava/io/ByteArrayInputStream;->pos:I

    add-int/2addr v1, v0

    iput v1, p0, Ljava/io/ByteArrayInputStream;->pos:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1

    :cond_2
    move v0, p3

    goto :goto_1
.end method

.method public declared-synchronized reset()V
    .locals 1

    monitor-enter p0

    :try_start_0
    iget v0, p0, Ljava/io/ByteArrayInputStream;->mark:I

    iput v0, p0, Ljava/io/ByteArrayInputStream;->pos:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized skip(J)J
    .locals 4

    const-wide/16 v1, 0x0

    monitor-enter p0

    cmp-long v3, p1, v1

    if-gtz v3, :cond_0

    :goto_0
    monitor-exit p0

    return-wide v1

    :cond_0
    :try_start_0
    iget v0, p0, Ljava/io/ByteArrayInputStream;->pos:I

    iget v1, p0, Ljava/io/ByteArrayInputStream;->count:I

    iget v2, p0, Ljava/io/ByteArrayInputStream;->pos:I

    sub-int/2addr v1, v2

    int-to-long v1, v1

    cmp-long v1, v1, p1

    if-gez v1, :cond_1

    iget v1, p0, Ljava/io/ByteArrayInputStream;->count:I

    :goto_1
    iput v1, p0, Ljava/io/ByteArrayInputStream;->pos:I

    iget v1, p0, Ljava/io/ByteArrayInputStream;->pos:I

    sub-int/2addr v1, v0

    int-to-long v1, v1

    goto :goto_0

    :cond_1
    iget v1, p0, Ljava/io/ByteArrayInputStream;->pos:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    int-to-long v1, v1

    add-long/2addr v1, p1

    long-to-int v1, v1

    goto :goto_1

    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method
