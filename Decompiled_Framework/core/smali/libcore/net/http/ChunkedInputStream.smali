.class final Llibcore/net/http/ChunkedInputStream;
.super Llibcore/net/http/AbstractHttpInputStream;
.source "ChunkedInputStream.java"


# static fields
#the value of this static final field might be set in the static constructor
.field private static final MIN_LAST_CHUNK_LENGTH:I = 0x0

.field private static final NO_CHUNK_YET:I = -0x1


# instance fields
.field private bytesRemainingInChunk:I

.field private hasMoreChunks:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "\r\n0\r\n\r\n"

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    sput v0, Llibcore/net/http/ChunkedInputStream;->MIN_LAST_CHUNK_LENGTH:I

    return-void
.end method

.method constructor <init>(Ljava/io/InputStream;Ljava/net/CacheRequest;Llibcore/net/http/HttpEngine;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-direct {p0, p1, p3, p2}, Llibcore/net/http/AbstractHttpInputStream;-><init>(Ljava/io/InputStream;Llibcore/net/http/HttpEngine;Ljava/net/CacheRequest;)V

    const/4 v0, -0x1

    iput v0, p0, Llibcore/net/http/ChunkedInputStream;->bytesRemainingInChunk:I

    const/4 v0, 0x1

    iput-boolean v0, p0, Llibcore/net/http/ChunkedInputStream;->hasMoreChunks:Z

    return-void
.end method

.method private readChunkSize()V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v5, 0x0

    const/4 v4, -0x1

    iget v3, p0, Llibcore/net/http/ChunkedInputStream;->bytesRemainingInChunk:I

    if-eq v3, v4, :cond_0

    iget-object v3, p0, Llibcore/net/http/AbstractHttpInputStream;->in:Ljava/io/InputStream;

    invoke-static {v3}, Llibcore/io/Streams;->readAsciiLine(Ljava/io/InputStream;)Ljava/lang/String;

    :cond_0
    iget-object v3, p0, Llibcore/net/http/AbstractHttpInputStream;->in:Ljava/io/InputStream;

    invoke-static {v3}, Llibcore/io/Streams;->readAsciiLine(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v0

    const-string v3, ";"

    invoke-virtual {v0, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    if-eq v2, v4, :cond_1

    invoke-virtual {v0, v5, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    :cond_1
    :try_start_0
    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    const/16 v4, 0x10

    invoke-static {v3, v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v3

    iput v3, p0, Llibcore/net/http/ChunkedInputStream;->bytesRemainingInChunk:I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    iget v3, p0, Llibcore/net/http/ChunkedInputStream;->bytesRemainingInChunk:I

    if-nez v3, :cond_2

    iput-boolean v5, p0, Llibcore/net/http/ChunkedInputStream;->hasMoreChunks:Z

    iget-object v3, p0, Llibcore/net/http/AbstractHttpInputStream;->httpEngine:Llibcore/net/http/HttpEngine;

    invoke-virtual {v3}, Llibcore/net/http/HttpEngine;->readTrailers()V

    const/4 v3, 0x1

    invoke-virtual {p0, v3}, Llibcore/net/http/ChunkedInputStream;->endOfInput(Z)V

    :cond_2
    return-void

    :catch_0
    move-exception v1

    new-instance v3, Ljava/io/IOException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Expected a hex chunk size, but was "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v3
.end method


# virtual methods
.method public available()I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0}, Llibcore/net/http/ChunkedInputStream;->checkNotClosed()V

    iget-boolean v0, p0, Llibcore/net/http/ChunkedInputStream;->hasMoreChunks:Z

    if-eqz v0, :cond_0

    iget v0, p0, Llibcore/net/http/ChunkedInputStream;->bytesRemainingInChunk:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_1

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_1
    iget-object v0, p0, Llibcore/net/http/AbstractHttpInputStream;->in:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->available()I

    move-result v0

    iget v1, p0, Llibcore/net/http/ChunkedInputStream;->bytesRemainingInChunk:I

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

    iget-boolean v0, p0, Llibcore/net/http/ChunkedInputStream;->hasMoreChunks:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Llibcore/net/http/ChunkedInputStream;->unexpectedEndOfInput()V

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

    invoke-virtual {p0}, Llibcore/net/http/ChunkedInputStream;->checkNotClosed()V

    iget-boolean v2, p0, Llibcore/net/http/ChunkedInputStream;->hasMoreChunks:Z

    if-nez v2, :cond_1

    move v0, v1

    :cond_0
    :goto_0
    return v0

    :cond_1
    iget v2, p0, Llibcore/net/http/ChunkedInputStream;->bytesRemainingInChunk:I

    if-eqz v2, :cond_2

    iget v2, p0, Llibcore/net/http/ChunkedInputStream;->bytesRemainingInChunk:I

    if-ne v2, v1, :cond_3

    :cond_2
    invoke-direct {p0}, Llibcore/net/http/ChunkedInputStream;->readChunkSize()V

    iget-boolean v2, p0, Llibcore/net/http/ChunkedInputStream;->hasMoreChunks:Z

    if-nez v2, :cond_3

    move v0, v1

    goto :goto_0

    :cond_3
    iget-object v2, p0, Llibcore/net/http/AbstractHttpInputStream;->in:Ljava/io/InputStream;

    iget v3, p0, Llibcore/net/http/ChunkedInputStream;->bytesRemainingInChunk:I

    invoke-static {p3, v3}, Ljava/lang/Math;->min(II)I

    move-result v3

    invoke-virtual {v2, p1, p2, v3}, Ljava/io/InputStream;->read([BII)I

    move-result v0

    if-ne v0, v1, :cond_4

    invoke-virtual {p0}, Llibcore/net/http/ChunkedInputStream;->unexpectedEndOfInput()V

    new-instance v1, Ljava/io/IOException;

    const-string v2, "unexpected end of stream"

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_4
    iget v1, p0, Llibcore/net/http/ChunkedInputStream;->bytesRemainingInChunk:I

    sub-int/2addr v1, v0

    iput v1, p0, Llibcore/net/http/ChunkedInputStream;->bytesRemainingInChunk:I

    invoke-virtual {p0, p1, p2, v0}, Llibcore/net/http/ChunkedInputStream;->cacheWrite([BII)V

    iget v1, p0, Llibcore/net/http/ChunkedInputStream;->bytesRemainingInChunk:I

    if-nez v1, :cond_0

    iget-object v1, p0, Llibcore/net/http/AbstractHttpInputStream;->in:Ljava/io/InputStream;

    invoke-virtual {v1}, Ljava/io/InputStream;->available()I

    move-result v1

    sget v2, Llibcore/net/http/ChunkedInputStream;->MIN_LAST_CHUNK_LENGTH:I

    if-lt v1, v2, :cond_0

    invoke-direct {p0}, Llibcore/net/http/ChunkedInputStream;->readChunkSize()V

    goto :goto_0
.end method
