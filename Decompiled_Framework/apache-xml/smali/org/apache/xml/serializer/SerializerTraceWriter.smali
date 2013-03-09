.class final Lorg/apache/xml/serializer/SerializerTraceWriter;
.super Ljava/io/Writer;
.source "SerializerTraceWriter.java"

# interfaces
.implements Lorg/apache/xml/serializer/WriterChain;


# instance fields
.field private buf:[B

.field private buf_length:I

.field private count:I

.field private final m_tracer:Lorg/apache/xml/serializer/SerializerTrace;

.field private final m_writer:Ljava/io/Writer;


# direct methods
.method public constructor <init>(Ljava/io/Writer;Lorg/apache/xml/serializer/SerializerTrace;)V
    .locals 1

    invoke-direct {p0}, Ljava/io/Writer;-><init>()V

    iput-object p1, p0, Lorg/apache/xml/serializer/SerializerTraceWriter;->m_writer:Ljava/io/Writer;

    iput-object p2, p0, Lorg/apache/xml/serializer/SerializerTraceWriter;->m_tracer:Lorg/apache/xml/serializer/SerializerTrace;

    const/16 v0, 0x400

    invoke-direct {p0, v0}, Lorg/apache/xml/serializer/SerializerTraceWriter;->setBufferSize(I)V

    return-void
.end method

.method private flushBuffer()V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v5, 0x0

    iget v2, p0, Lorg/apache/xml/serializer/SerializerTraceWriter;->count:I

    if-lez v2, :cond_2

    iget v2, p0, Lorg/apache/xml/serializer/SerializerTraceWriter;->count:I

    new-array v0, v2, [C

    const/4 v1, 0x0

    :goto_0
    iget v2, p0, Lorg/apache/xml/serializer/SerializerTraceWriter;->count:I

    if-ge v1, v2, :cond_0

    iget-object v2, p0, Lorg/apache/xml/serializer/SerializerTraceWriter;->buf:[B

    aget-byte v2, v2, v1

    int-to-char v2, v2

    aput-char v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    iget-object v2, p0, Lorg/apache/xml/serializer/SerializerTraceWriter;->m_tracer:Lorg/apache/xml/serializer/SerializerTrace;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lorg/apache/xml/serializer/SerializerTraceWriter;->m_tracer:Lorg/apache/xml/serializer/SerializerTrace;

    const/16 v3, 0xc

    array-length v4, v0

    invoke-interface {v2, v3, v0, v5, v4}, Lorg/apache/xml/serializer/SerializerTrace;->fireGenerateEvent(I[CII)V

    :cond_1
    iput v5, p0, Lorg/apache/xml/serializer/SerializerTraceWriter;->count:I

    :cond_2
    return-void
.end method

.method private setBufferSize(I)V
    .locals 1

    add-int/lit8 v0, p1, 0x3

    new-array v0, v0, [B

    iput-object v0, p0, Lorg/apache/xml/serializer/SerializerTraceWriter;->buf:[B

    iput p1, p0, Lorg/apache/xml/serializer/SerializerTraceWriter;->buf_length:I

    const/4 v0, 0x0

    iput v0, p0, Lorg/apache/xml/serializer/SerializerTraceWriter;->count:I

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

    iget-object v0, p0, Lorg/apache/xml/serializer/SerializerTraceWriter;->m_writer:Ljava/io/Writer;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/apache/xml/serializer/SerializerTraceWriter;->m_writer:Ljava/io/Writer;

    invoke-virtual {v0}, Ljava/io/Writer;->close()V

    :cond_0
    invoke-direct {p0}, Lorg/apache/xml/serializer/SerializerTraceWriter;->flushBuffer()V

    return-void
.end method

.method public flush()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lorg/apache/xml/serializer/SerializerTraceWriter;->m_writer:Ljava/io/Writer;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/apache/xml/serializer/SerializerTraceWriter;->m_writer:Ljava/io/Writer;

    invoke-virtual {v0}, Ljava/io/Writer;->flush()V

    :cond_0
    invoke-direct {p0}, Lorg/apache/xml/serializer/SerializerTraceWriter;->flushBuffer()V

    return-void
.end method

.method public getOutputStream()Ljava/io/OutputStream;
    .locals 2

    const/4 v0, 0x0

    iget-object v1, p0, Lorg/apache/xml/serializer/SerializerTraceWriter;->m_writer:Ljava/io/Writer;

    instance-of v1, v1, Lorg/apache/xml/serializer/WriterChain;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lorg/apache/xml/serializer/SerializerTraceWriter;->m_writer:Ljava/io/Writer;

    check-cast v1, Lorg/apache/xml/serializer/WriterChain;

    invoke-interface {v1}, Lorg/apache/xml/serializer/WriterChain;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public getWriter()Ljava/io/Writer;
    .locals 1

    iget-object v0, p0, Lorg/apache/xml/serializer/SerializerTraceWriter;->m_writer:Ljava/io/Writer;

    return-object v0
.end method

.method public write(I)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lorg/apache/xml/serializer/SerializerTraceWriter;->m_writer:Ljava/io/Writer;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/apache/xml/serializer/SerializerTraceWriter;->m_writer:Ljava/io/Writer;

    invoke-virtual {v0, p1}, Ljava/io/Writer;->write(I)V

    :cond_0
    iget v0, p0, Lorg/apache/xml/serializer/SerializerTraceWriter;->count:I

    iget v1, p0, Lorg/apache/xml/serializer/SerializerTraceWriter;->buf_length:I

    if-lt v0, v1, :cond_1

    invoke-direct {p0}, Lorg/apache/xml/serializer/SerializerTraceWriter;->flushBuffer()V

    :cond_1
    const/16 v0, 0x80

    if-ge p1, v0, :cond_2

    iget-object v0, p0, Lorg/apache/xml/serializer/SerializerTraceWriter;->buf:[B

    iget v1, p0, Lorg/apache/xml/serializer/SerializerTraceWriter;->count:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/apache/xml/serializer/SerializerTraceWriter;->count:I

    int-to-byte v2, p1

    aput-byte v2, v0, v1

    :goto_0
    return-void

    :cond_2
    const/16 v0, 0x800

    if-ge p1, v0, :cond_3

    iget-object v0, p0, Lorg/apache/xml/serializer/SerializerTraceWriter;->buf:[B

    iget v1, p0, Lorg/apache/xml/serializer/SerializerTraceWriter;->count:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/apache/xml/serializer/SerializerTraceWriter;->count:I

    shr-int/lit8 v2, p1, 0x6

    add-int/lit16 v2, v2, 0xc0

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    iget-object v0, p0, Lorg/apache/xml/serializer/SerializerTraceWriter;->buf:[B

    iget v1, p0, Lorg/apache/xml/serializer/SerializerTraceWriter;->count:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/apache/xml/serializer/SerializerTraceWriter;->count:I

    and-int/lit8 v2, p1, 0x3f

    add-int/lit16 v2, v2, 0x80

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lorg/apache/xml/serializer/SerializerTraceWriter;->buf:[B

    iget v1, p0, Lorg/apache/xml/serializer/SerializerTraceWriter;->count:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/apache/xml/serializer/SerializerTraceWriter;->count:I

    shr-int/lit8 v2, p1, 0xc

    add-int/lit16 v2, v2, 0xe0

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    iget-object v0, p0, Lorg/apache/xml/serializer/SerializerTraceWriter;->buf:[B

    iget v1, p0, Lorg/apache/xml/serializer/SerializerTraceWriter;->count:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/apache/xml/serializer/SerializerTraceWriter;->count:I

    shr-int/lit8 v2, p1, 0x6

    and-int/lit8 v2, v2, 0x3f

    add-int/lit16 v2, v2, 0x80

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    iget-object v0, p0, Lorg/apache/xml/serializer/SerializerTraceWriter;->buf:[B

    iget v1, p0, Lorg/apache/xml/serializer/SerializerTraceWriter;->count:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/apache/xml/serializer/SerializerTraceWriter;->count:I

    and-int/lit8 v2, p1, 0x3f

    add-int/lit16 v2, v2, 0x80

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    goto :goto_0
.end method

.method public write(Ljava/lang/String;)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v4, p0, Lorg/apache/xml/serializer/SerializerTraceWriter;->m_writer:Ljava/io/Writer;

    if-eqz v4, :cond_0

    iget-object v4, p0, Lorg/apache/xml/serializer/SerializerTraceWriter;->m_writer:Ljava/io/Writer;

    invoke-virtual {v4, p1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    shl-int/lit8 v4, v2, 0x1

    add-int v3, v4, v2

    iget v4, p0, Lorg/apache/xml/serializer/SerializerTraceWriter;->buf_length:I

    if-lt v3, v4, :cond_1

    invoke-direct {p0}, Lorg/apache/xml/serializer/SerializerTraceWriter;->flushBuffer()V

    mul-int/lit8 v4, v3, 0x2

    invoke-direct {p0, v4}, Lorg/apache/xml/serializer/SerializerTraceWriter;->setBufferSize(I)V

    :cond_1
    iget v4, p0, Lorg/apache/xml/serializer/SerializerTraceWriter;->buf_length:I

    iget v5, p0, Lorg/apache/xml/serializer/SerializerTraceWriter;->count:I

    sub-int/2addr v4, v5

    if-le v3, v4, :cond_2

    invoke-direct {p0}, Lorg/apache/xml/serializer/SerializerTraceWriter;->flushBuffer()V

    :cond_2
    const/4 v1, 0x0

    :goto_0
    if-ge v1, v2, :cond_5

    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v4, 0x80

    if-ge v0, v4, :cond_3

    iget-object v4, p0, Lorg/apache/xml/serializer/SerializerTraceWriter;->buf:[B

    iget v5, p0, Lorg/apache/xml/serializer/SerializerTraceWriter;->count:I

    add-int/lit8 v6, v5, 0x1

    iput v6, p0, Lorg/apache/xml/serializer/SerializerTraceWriter;->count:I

    int-to-byte v6, v0

    aput-byte v6, v4, v5

    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_3
    const/16 v4, 0x800

    if-ge v0, v4, :cond_4

    iget-object v4, p0, Lorg/apache/xml/serializer/SerializerTraceWriter;->buf:[B

    iget v5, p0, Lorg/apache/xml/serializer/SerializerTraceWriter;->count:I

    add-int/lit8 v6, v5, 0x1

    iput v6, p0, Lorg/apache/xml/serializer/SerializerTraceWriter;->count:I

    shr-int/lit8 v6, v0, 0x6

    add-int/lit16 v6, v6, 0xc0

    int-to-byte v6, v6

    aput-byte v6, v4, v5

    iget-object v4, p0, Lorg/apache/xml/serializer/SerializerTraceWriter;->buf:[B

    iget v5, p0, Lorg/apache/xml/serializer/SerializerTraceWriter;->count:I

    add-int/lit8 v6, v5, 0x1

    iput v6, p0, Lorg/apache/xml/serializer/SerializerTraceWriter;->count:I

    and-int/lit8 v6, v0, 0x3f

    add-int/lit16 v6, v6, 0x80

    int-to-byte v6, v6

    aput-byte v6, v4, v5

    goto :goto_1

    :cond_4
    iget-object v4, p0, Lorg/apache/xml/serializer/SerializerTraceWriter;->buf:[B

    iget v5, p0, Lorg/apache/xml/serializer/SerializerTraceWriter;->count:I

    add-int/lit8 v6, v5, 0x1

    iput v6, p0, Lorg/apache/xml/serializer/SerializerTraceWriter;->count:I

    shr-int/lit8 v6, v0, 0xc

    add-int/lit16 v6, v6, 0xe0

    int-to-byte v6, v6

    aput-byte v6, v4, v5

    iget-object v4, p0, Lorg/apache/xml/serializer/SerializerTraceWriter;->buf:[B

    iget v5, p0, Lorg/apache/xml/serializer/SerializerTraceWriter;->count:I

    add-int/lit8 v6, v5, 0x1

    iput v6, p0, Lorg/apache/xml/serializer/SerializerTraceWriter;->count:I

    shr-int/lit8 v6, v0, 0x6

    and-int/lit8 v6, v6, 0x3f

    add-int/lit16 v6, v6, 0x80

    int-to-byte v6, v6

    aput-byte v6, v4, v5

    iget-object v4, p0, Lorg/apache/xml/serializer/SerializerTraceWriter;->buf:[B

    iget v5, p0, Lorg/apache/xml/serializer/SerializerTraceWriter;->count:I

    add-int/lit8 v6, v5, 0x1

    iput v6, p0, Lorg/apache/xml/serializer/SerializerTraceWriter;->count:I

    and-int/lit8 v6, v0, 0x3f

    add-int/lit16 v6, v6, 0x80

    int-to-byte v6, v6

    aput-byte v6, v4, v5

    goto :goto_1

    :cond_5
    return-void
.end method

.method public write([CII)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v4, p0, Lorg/apache/xml/serializer/SerializerTraceWriter;->m_writer:Ljava/io/Writer;

    if-eqz v4, :cond_0

    iget-object v4, p0, Lorg/apache/xml/serializer/SerializerTraceWriter;->m_writer:Ljava/io/Writer;

    invoke-virtual {v4, p1, p2, p3}, Ljava/io/Writer;->write([CII)V

    :cond_0
    shl-int/lit8 v4, p3, 0x1

    add-int v2, v4, p3

    iget v4, p0, Lorg/apache/xml/serializer/SerializerTraceWriter;->buf_length:I

    if-lt v2, v4, :cond_1

    invoke-direct {p0}, Lorg/apache/xml/serializer/SerializerTraceWriter;->flushBuffer()V

    mul-int/lit8 v4, v2, 0x2

    invoke-direct {p0, v4}, Lorg/apache/xml/serializer/SerializerTraceWriter;->setBufferSize(I)V

    :cond_1
    iget v4, p0, Lorg/apache/xml/serializer/SerializerTraceWriter;->buf_length:I

    iget v5, p0, Lorg/apache/xml/serializer/SerializerTraceWriter;->count:I

    sub-int/2addr v4, v5

    if-le v2, v4, :cond_2

    invoke-direct {p0}, Lorg/apache/xml/serializer/SerializerTraceWriter;->flushBuffer()V

    :cond_2
    add-int v3, p3, p2

    move v1, p2

    :goto_0
    if-ge v1, v3, :cond_5

    aget-char v0, p1, v1

    const/16 v4, 0x80

    if-ge v0, v4, :cond_3

    iget-object v4, p0, Lorg/apache/xml/serializer/SerializerTraceWriter;->buf:[B

    iget v5, p0, Lorg/apache/xml/serializer/SerializerTraceWriter;->count:I

    add-int/lit8 v6, v5, 0x1

    iput v6, p0, Lorg/apache/xml/serializer/SerializerTraceWriter;->count:I

    int-to-byte v6, v0

    aput-byte v6, v4, v5

    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_3
    const/16 v4, 0x800

    if-ge v0, v4, :cond_4

    iget-object v4, p0, Lorg/apache/xml/serializer/SerializerTraceWriter;->buf:[B

    iget v5, p0, Lorg/apache/xml/serializer/SerializerTraceWriter;->count:I

    add-int/lit8 v6, v5, 0x1

    iput v6, p0, Lorg/apache/xml/serializer/SerializerTraceWriter;->count:I

    shr-int/lit8 v6, v0, 0x6

    add-int/lit16 v6, v6, 0xc0

    int-to-byte v6, v6

    aput-byte v6, v4, v5

    iget-object v4, p0, Lorg/apache/xml/serializer/SerializerTraceWriter;->buf:[B

    iget v5, p0, Lorg/apache/xml/serializer/SerializerTraceWriter;->count:I

    add-int/lit8 v6, v5, 0x1

    iput v6, p0, Lorg/apache/xml/serializer/SerializerTraceWriter;->count:I

    and-int/lit8 v6, v0, 0x3f

    add-int/lit16 v6, v6, 0x80

    int-to-byte v6, v6

    aput-byte v6, v4, v5

    goto :goto_1

    :cond_4
    iget-object v4, p0, Lorg/apache/xml/serializer/SerializerTraceWriter;->buf:[B

    iget v5, p0, Lorg/apache/xml/serializer/SerializerTraceWriter;->count:I

    add-int/lit8 v6, v5, 0x1

    iput v6, p0, Lorg/apache/xml/serializer/SerializerTraceWriter;->count:I

    shr-int/lit8 v6, v0, 0xc

    add-int/lit16 v6, v6, 0xe0

    int-to-byte v6, v6

    aput-byte v6, v4, v5

    iget-object v4, p0, Lorg/apache/xml/serializer/SerializerTraceWriter;->buf:[B

    iget v5, p0, Lorg/apache/xml/serializer/SerializerTraceWriter;->count:I

    add-int/lit8 v6, v5, 0x1

    iput v6, p0, Lorg/apache/xml/serializer/SerializerTraceWriter;->count:I

    shr-int/lit8 v6, v0, 0x6

    and-int/lit8 v6, v6, 0x3f

    add-int/lit16 v6, v6, 0x80

    int-to-byte v6, v6

    aput-byte v6, v4, v5

    iget-object v4, p0, Lorg/apache/xml/serializer/SerializerTraceWriter;->buf:[B

    iget v5, p0, Lorg/apache/xml/serializer/SerializerTraceWriter;->count:I

    add-int/lit8 v6, v5, 0x1

    iput v6, p0, Lorg/apache/xml/serializer/SerializerTraceWriter;->count:I

    and-int/lit8 v6, v0, 0x3f

    add-int/lit16 v6, v6, 0x80

    int-to-byte v6, v6

    aput-byte v6, v4, v5

    goto :goto_1

    :cond_5
    return-void
.end method
