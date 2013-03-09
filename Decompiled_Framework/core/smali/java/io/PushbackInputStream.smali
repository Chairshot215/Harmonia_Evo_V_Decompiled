.class public Ljava/io/PushbackInputStream;
.super Ljava/io/FilterInputStream;
.source "PushbackInputStream.java"


# instance fields
.field protected buf:[B

.field protected pos:I


# direct methods
.method public constructor <init>(Ljava/io/InputStream;)V
    .locals 2

    const/4 v1, 0x1

    invoke-direct {p0, p1}, Ljava/io/FilterInputStream;-><init>(Ljava/io/InputStream;)V

    if-nez p1, :cond_0

    const/4 v0, 0x0

    :goto_0
    iput-object v0, p0, Ljava/io/PushbackInputStream;->buf:[B

    iput v1, p0, Ljava/io/PushbackInputStream;->pos:I

    return-void

    :cond_0
    new-array v0, v1, [B

    goto :goto_0
.end method

.method public constructor <init>(Ljava/io/InputStream;I)V
    .locals 2

    invoke-direct {p0, p1}, Ljava/io/FilterInputStream;-><init>(Ljava/io/InputStream;)V

    if-gtz p2, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "size <= 0"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    if-nez p1, :cond_1

    const/4 v0, 0x0

    :goto_0
    iput-object v0, p0, Ljava/io/PushbackInputStream;->buf:[B

    iput p2, p0, Ljava/io/PushbackInputStream;->pos:I

    return-void

    :cond_1
    new-array v0, p2, [B

    goto :goto_0
.end method

.method private streamClosed()Ljava/io/IOException;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    new-instance v0, Ljava/io/IOException;

    const-string v1, "PushbackInputStream is closed"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public available()I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Ljava/io/PushbackInputStream;->buf:[B

    if-nez v0, :cond_0

    new-instance v0, Ljava/io/IOException;

    invoke-direct {v0}, Ljava/io/IOException;-><init>()V

    throw v0

    :cond_0
    iget-object v0, p0, Ljava/io/PushbackInputStream;->buf:[B

    array-length v0, v0

    iget v1, p0, Ljava/io/PushbackInputStream;->pos:I

    sub-int/2addr v0, v1

    iget-object v1, p0, Ljava/io/PushbackInputStream;->in:Ljava/io/InputStream;

    invoke-virtual {v1}, Ljava/io/InputStream;->available()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public close()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v1, 0x0

    iget-object v0, p0, Ljava/io/PushbackInputStream;->in:Ljava/io/InputStream;

    if-eqz v0, :cond_0

    iget-object v0, p0, Ljava/io/PushbackInputStream;->in:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    iput-object v1, p0, Ljava/io/PushbackInputStream;->in:Ljava/io/InputStream;

    iput-object v1, p0, Ljava/io/PushbackInputStream;->buf:[B

    :cond_0
    return-void
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
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Ljava/io/PushbackInputStream;->buf:[B

    if-nez v0, :cond_0

    new-instance v0, Ljava/io/IOException;

    invoke-direct {v0}, Ljava/io/IOException;-><init>()V

    throw v0

    :cond_0
    iget v0, p0, Ljava/io/PushbackInputStream;->pos:I

    iget-object v1, p0, Ljava/io/PushbackInputStream;->buf:[B

    array-length v1, v1

    if-ge v0, v1, :cond_1

    iget-object v0, p0, Ljava/io/PushbackInputStream;->buf:[B

    iget v1, p0, Ljava/io/PushbackInputStream;->pos:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Ljava/io/PushbackInputStream;->pos:I

    aget-byte v0, v0, v1

    and-int/lit16 v0, v0, 0xff

    :goto_0
    return v0

    :cond_1
    iget-object v0, p0, Ljava/io/PushbackInputStream;->in:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->read()I

    move-result v0

    goto :goto_0
.end method

.method public read([BII)I
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v4, p0, Ljava/io/PushbackInputStream;->buf:[B

    if-nez v4, :cond_0

    invoke-direct {p0}, Ljava/io/PushbackInputStream;->streamClosed()Ljava/io/IOException;

    move-result-object v4

    throw v4

    :cond_0
    array-length v4, p1

    invoke-static {v4, p2, p3}, Ljava/util/Arrays;->checkOffsetAndCount(III)V

    const/4 v0, 0x0

    const/4 v1, 0x0

    move v3, p2

    iget v4, p0, Ljava/io/PushbackInputStream;->pos:I

    iget-object v5, p0, Ljava/io/PushbackInputStream;->buf:[B

    array-length v5, v5

    if-ge v4, v5, :cond_1

    iget-object v4, p0, Ljava/io/PushbackInputStream;->buf:[B

    array-length v4, v4

    iget v5, p0, Ljava/io/PushbackInputStream;->pos:I

    sub-int/2addr v4, v5

    if-lt v4, p3, :cond_2

    move v1, p3

    :goto_0
    iget-object v4, p0, Ljava/io/PushbackInputStream;->buf:[B

    iget v5, p0, Ljava/io/PushbackInputStream;->pos:I

    invoke-static {v4, v5, p1, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/2addr v3, v1

    add-int/2addr v0, v1

    iget v4, p0, Ljava/io/PushbackInputStream;->pos:I

    add-int/2addr v4, v1

    iput v4, p0, Ljava/io/PushbackInputStream;->pos:I

    :cond_1
    if-ne v1, p3, :cond_3

    :goto_1
    return p3

    :cond_2
    iget-object v4, p0, Ljava/io/PushbackInputStream;->buf:[B

    array-length v4, v4

    iget v5, p0, Ljava/io/PushbackInputStream;->pos:I

    sub-int v1, v4, v5

    goto :goto_0

    :cond_3
    iget-object v4, p0, Ljava/io/PushbackInputStream;->in:Ljava/io/InputStream;

    sub-int v5, p3, v0

    invoke-virtual {v4, p1, v3, v5}, Ljava/io/InputStream;->read([BII)I

    move-result v2

    if-lez v2, :cond_4

    add-int p3, v2, v0

    goto :goto_1

    :cond_4
    if-nez v0, :cond_5

    move p3, v2

    goto :goto_1

    :cond_5
    move p3, v0

    goto :goto_1
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
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-wide/16 v1, 0x0

    iget-object v3, p0, Ljava/io/PushbackInputStream;->in:Ljava/io/InputStream;

    if-nez v3, :cond_0

    invoke-direct {p0}, Ljava/io/PushbackInputStream;->streamClosed()Ljava/io/IOException;

    move-result-object v1

    throw v1

    :cond_0
    cmp-long v3, p1, v1

    if-gtz v3, :cond_1

    :goto_0
    return-wide v1

    :cond_1
    const/4 v0, 0x0

    iget v1, p0, Ljava/io/PushbackInputStream;->pos:I

    iget-object v2, p0, Ljava/io/PushbackInputStream;->buf:[B

    array-length v2, v2

    if-ge v1, v2, :cond_2

    int-to-long v3, v0

    iget-object v1, p0, Ljava/io/PushbackInputStream;->buf:[B

    array-length v1, v1

    iget v2, p0, Ljava/io/PushbackInputStream;->pos:I

    sub-int/2addr v1, v2

    int-to-long v1, v1

    cmp-long v1, p1, v1

    if-gez v1, :cond_4

    move-wide v1, p1

    :goto_1
    add-long/2addr v1, v3

    long-to-int v0, v1

    iget v1, p0, Ljava/io/PushbackInputStream;->pos:I

    add-int/2addr v1, v0

    iput v1, p0, Ljava/io/PushbackInputStream;->pos:I

    :cond_2
    int-to-long v1, v0

    cmp-long v1, v1, p1

    if-gez v1, :cond_3

    int-to-long v1, v0

    iget-object v3, p0, Ljava/io/PushbackInputStream;->in:Ljava/io/InputStream;

    int-to-long v4, v0

    sub-long v4, p1, v4

    invoke-virtual {v3, v4, v5}, Ljava/io/InputStream;->skip(J)J

    move-result-wide v3

    add-long/2addr v1, v3

    long-to-int v0, v1

    :cond_3
    int-to-long v1, v0

    goto :goto_0

    :cond_4
    iget-object v1, p0, Ljava/io/PushbackInputStream;->buf:[B

    array-length v1, v1

    iget v2, p0, Ljava/io/PushbackInputStream;->pos:I

    sub-int/2addr v1, v2

    int-to-long v1, v1

    goto :goto_1
.end method

.method public unread(I)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Ljava/io/PushbackInputStream;->buf:[B

    if-nez v0, :cond_0

    new-instance v0, Ljava/io/IOException;

    invoke-direct {v0}, Ljava/io/IOException;-><init>()V

    throw v0

    :cond_0
    iget v0, p0, Ljava/io/PushbackInputStream;->pos:I

    if-nez v0, :cond_1

    new-instance v0, Ljava/io/IOException;

    const-string v1, "Pushback buffer full"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    iget-object v0, p0, Ljava/io/PushbackInputStream;->buf:[B

    iget v1, p0, Ljava/io/PushbackInputStream;->pos:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Ljava/io/PushbackInputStream;->pos:I

    int-to-byte v2, p1

    aput-byte v2, v0, v1

    return-void
.end method

.method public unread([B)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    array-length v1, p1

    invoke-virtual {p0, p1, v0, v1}, Ljava/io/PushbackInputStream;->unread([BII)V

    return-void
.end method

.method public unread([BII)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget v0, p0, Ljava/io/PushbackInputStream;->pos:I

    if-le p3, v0, :cond_0

    new-instance v0, Ljava/io/IOException;

    const-string v1, "Pushback buffer full"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    array-length v0, p1

    invoke-static {v0, p2, p3}, Ljava/util/Arrays;->checkOffsetAndCount(III)V

    iget-object v0, p0, Ljava/io/PushbackInputStream;->buf:[B

    if-nez v0, :cond_1

    invoke-direct {p0}, Ljava/io/PushbackInputStream;->streamClosed()Ljava/io/IOException;

    move-result-object v0

    throw v0

    :cond_1
    iget-object v0, p0, Ljava/io/PushbackInputStream;->buf:[B

    iget v1, p0, Ljava/io/PushbackInputStream;->pos:I

    sub-int/2addr v1, p3

    invoke-static {p1, p2, v0, v1, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget v0, p0, Ljava/io/PushbackInputStream;->pos:I

    sub-int/2addr v0, p3

    iput v0, p0, Ljava/io/PushbackInputStream;->pos:I

    return-void
.end method
