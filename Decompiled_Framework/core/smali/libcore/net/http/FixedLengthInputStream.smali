.class final Llibcore/net/http/FixedLengthInputStream;
.super Llibcore/net/http/AbstractHttpInputStream;
.source "FixedLengthInputStream.java"


# instance fields
.field private bytesRemaining:I


# direct methods
.method public constructor <init>(Ljava/io/InputStream;Ljava/net/CacheRequest;Llibcore/net/http/HttpEngine;I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-direct {p0, p1, p3, p2}, Llibcore/net/http/AbstractHttpInputStream;-><init>(Ljava/io/InputStream;Llibcore/net/http/HttpEngine;Ljava/net/CacheRequest;)V

    iput p4, p0, Llibcore/net/http/FixedLengthInputStream;->bytesRemaining:I

    iget v0, p0, Llibcore/net/http/FixedLengthInputStream;->bytesRemaining:I

    if-nez v0, :cond_0

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Llibcore/net/http/FixedLengthInputStream;->endOfInput(Z)V

    :cond_0
    return-void
.end method


# virtual methods
.method public available()I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0}, Llibcore/net/http/FixedLengthInputStream;->checkNotClosed()V

    iget v0, p0, Llibcore/net/http/FixedLengthInputStream;->bytesRemaining:I

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Llibcore/net/http/AbstractHttpInputStream;->in:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->available()I

    move-result v0

    iget v1, p0, Llibcore/net/http/FixedLengthInputStream;->bytesRemaining:I

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    goto :goto_0
.end method

.method public close()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-boolean v0, p0, Llibcore/net/http/AbstractHttpInputStream;->closed:Z

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Llibcore/net/http/AbstractHttpInputStream;->closed:Z

    iget v0, p0, Llibcore/net/http/FixedLengthInputStream;->bytesRemaining:I

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Llibcore/net/http/FixedLengthInputStream;->unexpectedEndOfInput()V

    goto :goto_0
.end method

.method public read([BII)I
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v1, -0x1

    array-length v2, p1

    invoke-static {v2, p2, p3}, Ljava/util/Arrays;->checkOffsetAndCount(III)V

    invoke-virtual {p0}, Llibcore/net/http/FixedLengthInputStream;->checkNotClosed()V

    iget v2, p0, Llibcore/net/http/FixedLengthInputStream;->bytesRemaining:I

    if-nez v2, :cond_1

    move v0, v1

    :cond_0
    :goto_0
    return v0

    :cond_1
    iget-object v2, p0, Llibcore/net/http/AbstractHttpInputStream;->in:Ljava/io/InputStream;

    iget v3, p0, Llibcore/net/http/FixedLengthInputStream;->bytesRemaining:I

    invoke-static {p3, v3}, Ljava/lang/Math;->min(II)I

    move-result v3

    invoke-virtual {v2, p1, p2, v3}, Ljava/io/InputStream;->read([BII)I

    move-result v0

    if-ne v0, v1, :cond_2

    invoke-virtual {p0}, Llibcore/net/http/FixedLengthInputStream;->unexpectedEndOfInput()V

    new-instance v1, Ljava/io/IOException;

    const-string v2, "unexpected end of stream"

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_2
    iget v1, p0, Llibcore/net/http/FixedLengthInputStream;->bytesRemaining:I

    sub-int/2addr v1, v0

    iput v1, p0, Llibcore/net/http/FixedLengthInputStream;->bytesRemaining:I

    invoke-virtual {p0, p1, p2, v0}, Llibcore/net/http/FixedLengthInputStream;->cacheWrite([BII)V

    iget v1, p0, Llibcore/net/http/FixedLengthInputStream;->bytesRemaining:I

    if-nez v1, :cond_0

    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Llibcore/net/http/FixedLengthInputStream;->endOfInput(Z)V

    goto :goto_0
.end method
