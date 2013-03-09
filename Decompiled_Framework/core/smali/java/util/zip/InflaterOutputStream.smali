.class public Ljava/util/zip/InflaterOutputStream;
.super Ljava/io/FilterOutputStream;
.source "InflaterOutputStream.java"


# static fields
.field private static final DEFAULT_BUFFER_SIZE:I = 0x400


# instance fields
.field protected final buf:[B

.field private closed:Z

.field protected final inf:Ljava/util/zip/Inflater;


# direct methods
.method public constructor <init>(Ljava/io/OutputStream;)V
    .locals 1

    new-instance v0, Ljava/util/zip/Inflater;

    invoke-direct {v0}, Ljava/util/zip/Inflater;-><init>()V

    invoke-direct {p0, p1, v0}, Ljava/util/zip/InflaterOutputStream;-><init>(Ljava/io/OutputStream;Ljava/util/zip/Inflater;)V

    return-void
.end method

.method public constructor <init>(Ljava/io/OutputStream;Ljava/util/zip/Inflater;)V
    .locals 1

    const/16 v0, 0x400

    invoke-direct {p0, p1, p2, v0}, Ljava/util/zip/InflaterOutputStream;-><init>(Ljava/io/OutputStream;Ljava/util/zip/Inflater;I)V

    return-void
.end method

.method public constructor <init>(Ljava/io/OutputStream;Ljava/util/zip/Inflater;I)V
    .locals 1

    invoke-direct {p0, p1}, Ljava/io/FilterOutputStream;-><init>(Ljava/io/OutputStream;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Ljava/util/zip/InflaterOutputStream;->closed:Z

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
    iput-object p2, p0, Ljava/util/zip/InflaterOutputStream;->inf:Ljava/util/zip/Inflater;

    new-array v0, p3, [B

    iput-object v0, p0, Ljava/util/zip/InflaterOutputStream;->buf:[B

    return-void
.end method

.method private checkClosed()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-boolean v0, p0, Ljava/util/zip/InflaterOutputStream;->closed:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/io/IOException;

    invoke-direct {v0}, Ljava/io/IOException;-><init>()V

    throw v0

    :cond_0
    return-void
.end method

.method private write()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/util/zip/ZipException;
        }
    .end annotation

    :goto_0
    :try_start_0
    iget-object v2, p0, Ljava/util/zip/InflaterOutputStream;->inf:Ljava/util/zip/Inflater;

    iget-object v3, p0, Ljava/util/zip/InflaterOutputStream;->buf:[B

    invoke-virtual {v2, v3}, Ljava/util/zip/Inflater;->inflate([B)I

    move-result v1

    if-lez v1, :cond_0

    iget-object v2, p0, Ljava/io/FilterOutputStream;->out:Ljava/io/OutputStream;

    iget-object v3, p0, Ljava/util/zip/InflaterOutputStream;->buf:[B

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4, v1}, Ljava/io/OutputStream;->write([BII)V
    :try_end_0
    .catch Ljava/util/zip/DataFormatException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    new-instance v2, Ljava/util/zip/ZipException;

    invoke-direct {v2}, Ljava/util/zip/ZipException;-><init>()V

    throw v2

    :cond_0
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

    iget-boolean v0, p0, Ljava/util/zip/InflaterOutputStream;->closed:Z

    if-nez v0, :cond_0

    invoke-virtual {p0}, Ljava/util/zip/InflaterOutputStream;->finish()V

    iget-object v0, p0, Ljava/util/zip/InflaterOutputStream;->inf:Ljava/util/zip/Inflater;

    invoke-virtual {v0}, Ljava/util/zip/Inflater;->end()V

    iget-object v0, p0, Ljava/io/FilterOutputStream;->out:Ljava/io/OutputStream;

    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Ljava/util/zip/InflaterOutputStream;->closed:Z

    :cond_0
    return-void
.end method

.method public finish()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-direct {p0}, Ljava/util/zip/InflaterOutputStream;->checkClosed()V

    invoke-direct {p0}, Ljava/util/zip/InflaterOutputStream;->write()V

    return-void
.end method

.method public flush()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0}, Ljava/util/zip/InflaterOutputStream;->finish()V

    iget-object v0, p0, Ljava/io/FilterOutputStream;->out:Ljava/io/OutputStream;

    invoke-virtual {v0}, Ljava/io/OutputStream;->flush()V

    return-void
.end method

.method public write(I)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/util/zip/ZipException;
        }
    .end annotation

    const/4 v3, 0x1

    const/4 v2, 0x0

    new-array v0, v3, [B

    int-to-byte v1, p1

    aput-byte v1, v0, v2

    invoke-virtual {p0, v0, v2, v3}, Ljava/util/zip/InflaterOutputStream;->write([BII)V

    return-void
.end method

.method public write([BII)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/util/zip/ZipException;
        }
    .end annotation

    invoke-direct {p0}, Ljava/util/zip/InflaterOutputStream;->checkClosed()V

    array-length v0, p1

    invoke-static {v0, p2, p3}, Ljava/util/Arrays;->checkOffsetAndCount(III)V

    iget-object v0, p0, Ljava/util/zip/InflaterOutputStream;->inf:Ljava/util/zip/Inflater;

    invoke-virtual {v0, p1, p2, p3}, Ljava/util/zip/Inflater;->setInput([BII)V

    invoke-direct {p0}, Ljava/util/zip/InflaterOutputStream;->write()V

    return-void
.end method
