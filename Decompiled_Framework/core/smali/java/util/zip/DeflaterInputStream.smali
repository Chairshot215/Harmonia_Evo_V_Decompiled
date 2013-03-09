.class public Ljava/util/zip/DeflaterInputStream;
.super Ljava/io/FilterInputStream;
.source "DeflaterInputStream.java"


# static fields
.field private static final DEFAULT_BUFFER_SIZE:I = 0x400


# instance fields
.field private available:Z

.field protected final buf:[B

.field private closed:Z

.field protected final def:Ljava/util/zip/Deflater;


# direct methods
.method public constructor <init>(Ljava/io/InputStream;)V
    .locals 2

    new-instance v0, Ljava/util/zip/Deflater;

    invoke-direct {v0}, Ljava/util/zip/Deflater;-><init>()V

    const/16 v1, 0x400

    invoke-direct {p0, p1, v0, v1}, Ljava/util/zip/DeflaterInputStream;-><init>(Ljava/io/InputStream;Ljava/util/zip/Deflater;I)V

    return-void
.end method

.method public constructor <init>(Ljava/io/InputStream;Ljava/util/zip/Deflater;)V
    .locals 1

    const/16 v0, 0x400

    invoke-direct {p0, p1, p2, v0}, Ljava/util/zip/DeflaterInputStream;-><init>(Ljava/io/InputStream;Ljava/util/zip/Deflater;I)V

    return-void
.end method

.method public constructor <init>(Ljava/io/InputStream;Ljava/util/zip/Deflater;I)V
    .locals 1

    invoke-direct {p0, p1}, Ljava/io/FilterInputStream;-><init>(Ljava/io/InputStream;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Ljava/util/zip/DeflaterInputStream;->closed:Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Ljava/util/zip/DeflaterInputStream;->available:Z

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
    iput-object p2, p0, Ljava/util/zip/DeflaterInputStream;->def:Ljava/util/zip/Deflater;

    new-array v0, p3, [B

    iput-object v0, p0, Ljava/util/zip/DeflaterInputStream;->buf:[B

    return-void
.end method

.method private checkClosed()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-boolean v0, p0, Ljava/util/zip/DeflaterInputStream;->closed:Z

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

    invoke-direct {p0}, Ljava/util/zip/DeflaterInputStream;->checkClosed()V

    iget-boolean v0, p0, Ljava/util/zip/DeflaterInputStream;->available:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public close()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x1

    iput-boolean v0, p0, Ljava/util/zip/DeflaterInputStream;->closed:Z

    iget-object v0, p0, Ljava/util/zip/DeflaterInputStream;->def:Ljava/util/zip/Deflater;

    invoke-virtual {v0}, Ljava/util/zip/Deflater;->end()V

    iget-object v0, p0, Ljava/util/zip/DeflaterInputStream;->in:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

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
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v4, -0x1

    const/4 v3, 0x0

    invoke-direct {p0}, Ljava/util/zip/DeflaterInputStream;->checkClosed()V

    array-length v5, p1

    invoke-static {v5, p2, p3}, Ljava/util/Arrays;->checkOffsetAndCount(III)V

    if-nez p3, :cond_1

    move v2, v3

    :cond_0
    :goto_0
    return v2

    :cond_1
    iget-boolean v5, p0, Ljava/util/zip/DeflaterInputStream;->available:Z

    if-nez v5, :cond_2

    move v2, v4

    goto :goto_0

    :cond_2
    const/4 v2, 0x0

    :goto_1
    if-ge v2, p3, :cond_4

    iget-object v5, p0, Ljava/util/zip/DeflaterInputStream;->def:Ljava/util/zip/Deflater;

    invoke-virtual {v5}, Ljava/util/zip/Deflater;->finished()Z

    move-result v5

    if-nez v5, :cond_4

    iget-object v5, p0, Ljava/util/zip/DeflaterInputStream;->def:Ljava/util/zip/Deflater;

    invoke-virtual {v5}, Ljava/util/zip/Deflater;->needsInput()Z

    move-result v5

    if-eqz v5, :cond_3

    iget-object v5, p0, Ljava/util/zip/DeflaterInputStream;->in:Ljava/io/InputStream;

    iget-object v6, p0, Ljava/util/zip/DeflaterInputStream;->buf:[B

    invoke-virtual {v5, v6}, Ljava/io/InputStream;->read([B)I

    move-result v1

    if-ne v1, v4, :cond_5

    iget-object v5, p0, Ljava/util/zip/DeflaterInputStream;->def:Ljava/util/zip/Deflater;

    invoke-virtual {v5}, Ljava/util/zip/Deflater;->finish()V

    :cond_3
    :goto_2
    iget-object v5, p0, Ljava/util/zip/DeflaterInputStream;->def:Ljava/util/zip/Deflater;

    iget-object v6, p0, Ljava/util/zip/DeflaterInputStream;->buf:[B

    iget-object v7, p0, Ljava/util/zip/DeflaterInputStream;->buf:[B

    array-length v7, v7

    sub-int v8, p3, v2

    invoke-static {v7, v8}, Ljava/lang/Math;->min(II)I

    move-result v7

    invoke-virtual {v5, v6, v3, v7}, Ljava/util/zip/Deflater;->deflate([BII)I

    move-result v0

    if-ne v0, v4, :cond_6

    :cond_4
    if-nez v2, :cond_0

    const/4 v2, -0x1

    iput-boolean v3, p0, Ljava/util/zip/DeflaterInputStream;->available:Z

    goto :goto_0

    :cond_5
    iget-object v5, p0, Ljava/util/zip/DeflaterInputStream;->def:Ljava/util/zip/Deflater;

    iget-object v6, p0, Ljava/util/zip/DeflaterInputStream;->buf:[B

    invoke-virtual {v5, v6, v3, v1}, Ljava/util/zip/Deflater;->setInput([BII)V

    goto :goto_2

    :cond_6
    iget-object v5, p0, Ljava/util/zip/DeflaterInputStream;->buf:[B

    add-int v6, p2, v2

    invoke-static {v5, v3, p1, v6, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/2addr v2, v0

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
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-wide/32 v0, 0x7fffffff

    invoke-static {v0, v1, p1, p2}, Ljava/lang/Math;->min(JJ)J

    move-result-wide p1

    invoke-static {p0, p1, p2}, Llibcore/io/Streams;->skipByReading(Ljava/io/InputStream;J)J

    move-result-wide v0

    return-wide v0
.end method
