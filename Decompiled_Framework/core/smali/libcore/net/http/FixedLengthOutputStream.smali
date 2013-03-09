.class final Llibcore/net/http/FixedLengthOutputStream;
.super Llibcore/net/http/AbstractHttpOutputStream;
.source "FixedLengthOutputStream.java"


# instance fields
.field private bytesRemaining:I

.field private final socketOut:Ljava/io/OutputStream;


# direct methods
.method public constructor <init>(Ljava/io/OutputStream;I)V
    .locals 0

    invoke-direct {p0}, Llibcore/net/http/AbstractHttpOutputStream;-><init>()V

    iput-object p1, p0, Llibcore/net/http/FixedLengthOutputStream;->socketOut:Ljava/io/OutputStream;

    iput p2, p0, Llibcore/net/http/FixedLengthOutputStream;->bytesRemaining:I

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

    iget-boolean v0, p0, Llibcore/net/http/AbstractHttpOutputStream;->closed:Z

    if-eqz v0, :cond_1

    :cond_0
    return-void

    :cond_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Llibcore/net/http/AbstractHttpOutputStream;->closed:Z

    iget v0, p0, Llibcore/net/http/FixedLengthOutputStream;->bytesRemaining:I

    if-lez v0, :cond_0

    new-instance v0, Ljava/io/IOException;

    const-string v1, "unexpected end of stream"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public flush()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-boolean v0, p0, Llibcore/net/http/AbstractHttpOutputStream;->closed:Z

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Llibcore/net/http/FixedLengthOutputStream;->socketOut:Ljava/io/OutputStream;

    invoke-virtual {v0}, Ljava/io/OutputStream;->flush()V

    goto :goto_0
.end method

.method public write([BII)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0}, Llibcore/net/http/FixedLengthOutputStream;->checkNotClosed()V

    array-length v0, p1

    invoke-static {v0, p2, p3}, Ljava/util/Arrays;->checkOffsetAndCount(III)V

    iget v0, p0, Llibcore/net/http/FixedLengthOutputStream;->bytesRemaining:I

    if-le p3, v0, :cond_0

    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "expected "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Llibcore/net/http/FixedLengthOutputStream;->bytesRemaining:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " bytes but received "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget-object v0, p0, Llibcore/net/http/FixedLengthOutputStream;->socketOut:Ljava/io/OutputStream;

    invoke-virtual {v0, p1, p2, p3}, Ljava/io/OutputStream;->write([BII)V

    iget v0, p0, Llibcore/net/http/FixedLengthOutputStream;->bytesRemaining:I

    sub-int/2addr v0, p3

    iput v0, p0, Llibcore/net/http/FixedLengthOutputStream;->bytesRemaining:I

    return-void
.end method
