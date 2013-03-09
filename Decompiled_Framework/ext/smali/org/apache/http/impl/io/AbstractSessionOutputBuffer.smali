.class public abstract Lorg/apache/http/impl/io/AbstractSessionOutputBuffer;
.super Ljava/lang/Object;
.source "AbstractSessionOutputBuffer.java"

# interfaces
.implements Lorg/apache/http/io/SessionOutputBuffer;


# static fields
.field private static final CRLF:[B = null

.field private static final MAX_CHUNK:I = 0x100


# instance fields
.field private ascii:Z

.field private buffer:Lorg/apache/http/util/ByteArrayBuffer;

.field private charset:Ljava/lang/String;

.field private metrics:Lorg/apache/http/impl/io/HttpTransportMetricsImpl;

.field private outstream:Ljava/io/OutputStream;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x2

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lorg/apache/http/impl/io/AbstractSessionOutputBuffer;->CRLF:[B

    return-void

    nop

    :array_0
    .array-data 0x1
        0xdt
        0xat
    .end array-data
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "US-ASCII"

    iput-object v0, p0, Lorg/apache/http/impl/io/AbstractSessionOutputBuffer;->charset:Ljava/lang/String;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/apache/http/impl/io/AbstractSessionOutputBuffer;->ascii:Z

    return-void
.end method


# virtual methods
.method public flush()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0}, Lorg/apache/http/impl/io/AbstractSessionOutputBuffer;->flushBuffer()V

    iget-object v0, p0, Lorg/apache/http/impl/io/AbstractSessionOutputBuffer;->outstream:Ljava/io/OutputStream;

    invoke-virtual {v0}, Ljava/io/OutputStream;->flush()V

    return-void
.end method

.method protected flushBuffer()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v1, p0, Lorg/apache/http/impl/io/AbstractSessionOutputBuffer;->buffer:Lorg/apache/http/util/ByteArrayBuffer;

    invoke-virtual {v1}, Lorg/apache/http/util/ByteArrayBuffer;->length()I

    move-result v0

    if-lez v0, :cond_0

    iget-object v1, p0, Lorg/apache/http/impl/io/AbstractSessionOutputBuffer;->outstream:Ljava/io/OutputStream;

    iget-object v2, p0, Lorg/apache/http/impl/io/AbstractSessionOutputBuffer;->buffer:Lorg/apache/http/util/ByteArrayBuffer;

    invoke-virtual {v2}, Lorg/apache/http/util/ByteArrayBuffer;->buffer()[B

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3, v0}, Ljava/io/OutputStream;->write([BII)V

    iget-object v1, p0, Lorg/apache/http/impl/io/AbstractSessionOutputBuffer;->buffer:Lorg/apache/http/util/ByteArrayBuffer;

    invoke-virtual {v1}, Lorg/apache/http/util/ByteArrayBuffer;->clear()V

    iget-object v1, p0, Lorg/apache/http/impl/io/AbstractSessionOutputBuffer;->metrics:Lorg/apache/http/impl/io/HttpTransportMetricsImpl;

    int-to-long v2, v0

    invoke-virtual {v1, v2, v3}, Lorg/apache/http/impl/io/HttpTransportMetricsImpl;->incrementBytesTransferred(J)V

    :cond_0
    return-void
.end method

.method public getMetrics()Lorg/apache/http/io/HttpTransportMetrics;
    .locals 1

    iget-object v0, p0, Lorg/apache/http/impl/io/AbstractSessionOutputBuffer;->metrics:Lorg/apache/http/impl/io/HttpTransportMetricsImpl;

    return-object v0
.end method

.method protected init(Ljava/io/OutputStream;ILorg/apache/http/params/HttpParams;)V
    .locals 2

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Input stream may not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    if-gtz p2, :cond_1

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Buffer size may not be negative or zero"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    if-nez p3, :cond_2

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "HTTP parameters may not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    iput-object p1, p0, Lorg/apache/http/impl/io/AbstractSessionOutputBuffer;->outstream:Ljava/io/OutputStream;

    new-instance v0, Lorg/apache/http/util/ByteArrayBuffer;

    invoke-direct {v0, p2}, Lorg/apache/http/util/ByteArrayBuffer;-><init>(I)V

    iput-object v0, p0, Lorg/apache/http/impl/io/AbstractSessionOutputBuffer;->buffer:Lorg/apache/http/util/ByteArrayBuffer;

    invoke-static {p3}, Lorg/apache/http/params/HttpProtocolParams;->getHttpElementCharset(Lorg/apache/http/params/HttpParams;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/http/impl/io/AbstractSessionOutputBuffer;->charset:Ljava/lang/String;

    iget-object v0, p0, Lorg/apache/http/impl/io/AbstractSessionOutputBuffer;->charset:Ljava/lang/String;

    const-string v1, "US-ASCII"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lorg/apache/http/impl/io/AbstractSessionOutputBuffer;->charset:Ljava/lang/String;

    const-string v1, "ASCII"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    :cond_3
    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lorg/apache/http/impl/io/AbstractSessionOutputBuffer;->ascii:Z

    new-instance v0, Lorg/apache/http/impl/io/HttpTransportMetricsImpl;

    invoke-direct {v0}, Lorg/apache/http/impl/io/HttpTransportMetricsImpl;-><init>()V

    iput-object v0, p0, Lorg/apache/http/impl/io/AbstractSessionOutputBuffer;->metrics:Lorg/apache/http/impl/io/HttpTransportMetricsImpl;

    return-void

    :cond_4
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public write(I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lorg/apache/http/impl/io/AbstractSessionOutputBuffer;->buffer:Lorg/apache/http/util/ByteArrayBuffer;

    invoke-virtual {v0}, Lorg/apache/http/util/ByteArrayBuffer;->isFull()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lorg/apache/http/impl/io/AbstractSessionOutputBuffer;->flushBuffer()V

    :cond_0
    iget-object v0, p0, Lorg/apache/http/impl/io/AbstractSessionOutputBuffer;->buffer:Lorg/apache/http/util/ByteArrayBuffer;

    invoke-virtual {v0, p1}, Lorg/apache/http/util/ByteArrayBuffer;->append(I)V

    return-void
.end method

.method public write([B)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-nez p1, :cond_0

    :goto_0
    return-void

    :cond_0
    const/4 v0, 0x0

    array-length v1, p1

    invoke-virtual {p0, p1, v0, v1}, Lorg/apache/http/impl/io/AbstractSessionOutputBuffer;->write([BII)V

    goto :goto_0
.end method

.method public write([BII)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-nez p1, :cond_0

    :goto_0
    return-void

    :cond_0
    const/16 v1, 0x100

    if-gt p3, v1, :cond_1

    iget-object v1, p0, Lorg/apache/http/impl/io/AbstractSessionOutputBuffer;->buffer:Lorg/apache/http/util/ByteArrayBuffer;

    invoke-virtual {v1}, Lorg/apache/http/util/ByteArrayBuffer;->capacity()I

    move-result v1

    if-le p3, v1, :cond_2

    :cond_1
    invoke-virtual {p0}, Lorg/apache/http/impl/io/AbstractSessionOutputBuffer;->flushBuffer()V

    iget-object v1, p0, Lorg/apache/http/impl/io/AbstractSessionOutputBuffer;->outstream:Ljava/io/OutputStream;

    invoke-virtual {v1, p1, p2, p3}, Ljava/io/OutputStream;->write([BII)V

    iget-object v1, p0, Lorg/apache/http/impl/io/AbstractSessionOutputBuffer;->metrics:Lorg/apache/http/impl/io/HttpTransportMetricsImpl;

    int-to-long v2, p3

    invoke-virtual {v1, v2, v3}, Lorg/apache/http/impl/io/HttpTransportMetricsImpl;->incrementBytesTransferred(J)V

    goto :goto_0

    :cond_2
    iget-object v1, p0, Lorg/apache/http/impl/io/AbstractSessionOutputBuffer;->buffer:Lorg/apache/http/util/ByteArrayBuffer;

    invoke-virtual {v1}, Lorg/apache/http/util/ByteArrayBuffer;->capacity()I

    move-result v1

    iget-object v2, p0, Lorg/apache/http/impl/io/AbstractSessionOutputBuffer;->buffer:Lorg/apache/http/util/ByteArrayBuffer;

    invoke-virtual {v2}, Lorg/apache/http/util/ByteArrayBuffer;->length()I

    move-result v2

    sub-int v0, v1, v2

    if-le p3, v0, :cond_3

    invoke-virtual {p0}, Lorg/apache/http/impl/io/AbstractSessionOutputBuffer;->flushBuffer()V

    :cond_3
    iget-object v1, p0, Lorg/apache/http/impl/io/AbstractSessionOutputBuffer;->buffer:Lorg/apache/http/util/ByteArrayBuffer;

    invoke-virtual {v1, p1, p2, p3}, Lorg/apache/http/util/ByteArrayBuffer;->append([BII)V

    goto :goto_0
.end method

.method public writeLine(Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-nez p1, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_1

    iget-object v0, p0, Lorg/apache/http/impl/io/AbstractSessionOutputBuffer;->charset:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/apache/http/impl/io/AbstractSessionOutputBuffer;->write([B)V

    :cond_1
    sget-object v0, Lorg/apache/http/impl/io/AbstractSessionOutputBuffer;->CRLF:[B

    invoke-virtual {p0, v0}, Lorg/apache/http/impl/io/AbstractSessionOutputBuffer;->write([B)V

    goto :goto_0
.end method

.method public writeLine(Lorg/apache/http/util/CharArrayBuffer;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-nez p1, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-boolean v4, p0, Lorg/apache/http/impl/io/AbstractSessionOutputBuffer;->ascii:Z

    if-eqz v4, :cond_3

    const/4 v1, 0x0

    invoke-virtual {p1}, Lorg/apache/http/util/CharArrayBuffer;->length()I

    move-result v2

    :goto_1
    if-lez v2, :cond_4

    iget-object v4, p0, Lorg/apache/http/impl/io/AbstractSessionOutputBuffer;->buffer:Lorg/apache/http/util/ByteArrayBuffer;

    invoke-virtual {v4}, Lorg/apache/http/util/ByteArrayBuffer;->capacity()I

    move-result v4

    iget-object v5, p0, Lorg/apache/http/impl/io/AbstractSessionOutputBuffer;->buffer:Lorg/apache/http/util/ByteArrayBuffer;

    invoke-virtual {v5}, Lorg/apache/http/util/ByteArrayBuffer;->length()I

    move-result v5

    sub-int v0, v4, v5

    invoke-static {v0, v2}, Ljava/lang/Math;->min(II)I

    move-result v0

    if-lez v0, :cond_1

    iget-object v4, p0, Lorg/apache/http/impl/io/AbstractSessionOutputBuffer;->buffer:Lorg/apache/http/util/ByteArrayBuffer;

    invoke-virtual {v4, p1, v1, v0}, Lorg/apache/http/util/ByteArrayBuffer;->append(Lorg/apache/http/util/CharArrayBuffer;II)V

    :cond_1
    iget-object v4, p0, Lorg/apache/http/impl/io/AbstractSessionOutputBuffer;->buffer:Lorg/apache/http/util/ByteArrayBuffer;

    invoke-virtual {v4}, Lorg/apache/http/util/ByteArrayBuffer;->isFull()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-virtual {p0}, Lorg/apache/http/impl/io/AbstractSessionOutputBuffer;->flushBuffer()V

    :cond_2
    add-int/2addr v1, v0

    sub-int/2addr v2, v0

    goto :goto_1

    :cond_3
    invoke-virtual {p1}, Lorg/apache/http/util/CharArrayBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lorg/apache/http/impl/io/AbstractSessionOutputBuffer;->charset:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v3

    invoke-virtual {p0, v3}, Lorg/apache/http/impl/io/AbstractSessionOutputBuffer;->write([B)V

    :cond_4
    sget-object v4, Lorg/apache/http/impl/io/AbstractSessionOutputBuffer;->CRLF:[B

    invoke-virtual {p0, v4}, Lorg/apache/http/impl/io/AbstractSessionOutputBuffer;->write([B)V

    goto :goto_0
.end method
