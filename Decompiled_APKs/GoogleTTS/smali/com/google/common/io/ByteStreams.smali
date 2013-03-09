.class public final Lcom/google/common/io/ByteStreams;
.super Ljava/lang/Object;
.source "ByteStreams.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/common/io/ByteStreams$ByteArrayDataOutputStream;,
        Lcom/google/common/io/ByteStreams$ByteArrayDataInputStream;
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static copy(Ljava/io/InputStream;Ljava/io/OutputStream;)J
    .locals 6
    .parameter "from"
    .parameter "to"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 162
    const/16 v4, 0x1000

    new-array v0, v4, [B

    .line 163
    .local v0, buf:[B
    const-wide/16 v2, 0x0

    .line 165
    .local v2, total:J
    :goto_0
    invoke-virtual {p0, v0}, Ljava/io/InputStream;->read([B)I

    move-result v1

    .line 166
    .local v1, r:I
    const/4 v4, -0x1

    if-ne v1, v4, :cond_0

    .line 172
    return-wide v2

    .line 169
    :cond_0
    const/4 v4, 0x0

    invoke-virtual {p1, v0, v4, v1}, Ljava/io/OutputStream;->write([BII)V

    .line 170
    int-to-long v4, v1

    add-long/2addr v2, v4

    .line 171
    goto :goto_0
.end method

.method public static read(Ljava/io/InputStream;[BII)I
    .locals 4
    .parameter "in"
    .parameter "b"
    .parameter "off"
    .parameter "len"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 769
    if-gez p3, :cond_0

    .line 770
    new-instance v2, Ljava/lang/IndexOutOfBoundsException;

    const-string v3, "len is negative"

    invoke-direct {v2, v3}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 772
    :cond_0
    const/4 v1, 0x0

    .line 773
    .local v1, total:I
    :goto_0
    if-ge v1, p3, :cond_1

    .line 774
    add-int v2, p2, v1

    sub-int v3, p3, v1

    invoke-virtual {p0, p1, v2, v3}, Ljava/io/InputStream;->read([BII)I

    move-result v0

    .line 775
    .local v0, result:I
    const/4 v2, -0x1

    if-ne v0, v2, :cond_2

    .line 780
    .end local v0           #result:I
    :cond_1
    return v1

    .line 778
    .restart local v0       #result:I
    :cond_2
    add-int/2addr v1, v0

    .line 779
    goto :goto_0
.end method

.method public static readFully(Ljava/io/InputStream;[B)V
    .locals 2
    .parameter "in"
    .parameter "b"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 614
    const/4 v0, 0x0

    array-length v1, p1

    invoke-static {p0, p1, v0, v1}, Lcom/google/common/io/ByteStreams;->readFully(Ljava/io/InputStream;[BII)V

    .line 615
    return-void
.end method

.method public static readFully(Ljava/io/InputStream;[BII)V
    .locals 1
    .parameter "in"
    .parameter "b"
    .parameter "off"
    .parameter "len"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 633
    invoke-static {p0, p1, p2, p3}, Lcom/google/common/io/ByteStreams;->read(Ljava/io/InputStream;[BII)I

    move-result v0

    if-eq v0, p3, :cond_0

    .line 634
    new-instance v0, Ljava/io/EOFException;

    invoke-direct {v0}, Ljava/io/EOFException;-><init>()V

    throw v0

    .line 636
    :cond_0
    return-void
.end method

.method public static skipFully(Ljava/io/InputStream;J)V
    .locals 6
    .parameter "in"
    .parameter "n"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const-wide/16 v4, 0x0

    .line 651
    :goto_0
    cmp-long v2, p1, v4

    if-lez v2, :cond_2

    .line 652
    invoke-virtual {p0, p1, p2}, Ljava/io/InputStream;->skip(J)J

    move-result-wide v0

    .line 653
    .local v0, amt:J
    cmp-long v2, v0, v4

    if-nez v2, :cond_1

    .line 655
    invoke-virtual {p0}, Ljava/io/InputStream;->read()I

    move-result v2

    const/4 v3, -0x1

    if-ne v2, v3, :cond_0

    .line 656
    new-instance v2, Ljava/io/EOFException;

    invoke-direct {v2}, Ljava/io/EOFException;-><init>()V

    throw v2

    .line 658
    :cond_0
    const-wide/16 v2, 0x1

    sub-long/2addr p1, v2

    goto :goto_0

    .line 660
    :cond_1
    sub-long/2addr p1, v0

    goto :goto_0

    .line 663
    .end local v0           #amt:J
    :cond_2
    return-void
.end method

.method public static toByteArray(Lcom/google/common/io/InputSupplier;)[B
    .locals 4
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/io/InputSupplier",
            "<+",
            "Ljava/io/InputStream;",
            ">;)[B"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 220
    .local p0, supplier:Lcom/google/common/io/InputSupplier;,"Lcom/google/common/io/InputSupplier<+Ljava/io/InputStream;>;"
    const/4 v2, 0x1

    .line 221
    .local v2, threw:Z
    invoke-interface {p0}, Lcom/google/common/io/InputSupplier;->getInput()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/io/InputStream;

    .line 223
    .local v0, in:Ljava/io/InputStream;
    :try_start_0
    invoke-static {v0}, Lcom/google/common/io/ByteStreams;->toByteArray(Ljava/io/InputStream;)[B
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    .line 224
    .local v1, result:[B
    const/4 v2, 0x0

    .line 227
    invoke-static {v0, v2}, Lcom/google/common/io/Closeables;->close(Ljava/io/Closeable;Z)V

    return-object v1

    .end local v1           #result:[B
    :catchall_0
    move-exception v3

    invoke-static {v0, v2}, Lcom/google/common/io/Closeables;->close(Ljava/io/Closeable;Z)V

    throw v3
.end method

.method public static toByteArray(Ljava/io/InputStream;)[B
    .locals 2
    .parameter "in"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 207
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 208
    .local v0, out:Ljava/io/ByteArrayOutputStream;
    invoke-static {p0, v0}, Lcom/google/common/io/ByteStreams;->copy(Ljava/io/InputStream;Ljava/io/OutputStream;)J

    .line 209
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v1

    return-object v1
.end method

.method public static write([BLcom/google/common/io/OutputSupplier;)V
    .locals 3
    .parameter "from"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([B",
            "Lcom/google/common/io/OutputSupplier",
            "<+",
            "Ljava/io/OutputStream;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 90
    .local p1, to:Lcom/google/common/io/OutputSupplier;,"Lcom/google/common/io/OutputSupplier<+Ljava/io/OutputStream;>;"
    invoke-static {p0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 91
    const/4 v1, 0x1

    .line 92
    .local v1, threw:Z
    invoke-interface {p1}, Lcom/google/common/io/OutputSupplier;->getOutput()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/io/OutputStream;

    .line 94
    .local v0, out:Ljava/io/OutputStream;
    :try_start_0
    invoke-virtual {v0, p0}, Ljava/io/OutputStream;->write([B)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 95
    const/4 v1, 0x0

    .line 97
    invoke-static {v0, v1}, Lcom/google/common/io/Closeables;->close(Ljava/io/Closeable;Z)V

    .line 99
    return-void

    .line 97
    :catchall_0
    move-exception v2

    invoke-static {v0, v1}, Lcom/google/common/io/Closeables;->close(Ljava/io/Closeable;Z)V

    throw v2
.end method
