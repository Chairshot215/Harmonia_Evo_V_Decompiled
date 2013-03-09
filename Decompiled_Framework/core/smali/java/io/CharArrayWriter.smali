.class public Ljava/io/CharArrayWriter;
.super Ljava/io/Writer;
.source "CharArrayWriter.java"


# instance fields
.field protected buf:[C

.field protected count:I


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/io/Writer;-><init>()V

    const/16 v0, 0x20

    new-array v0, v0, [C

    iput-object v0, p0, Ljava/io/CharArrayWriter;->buf:[C

    iget-object v0, p0, Ljava/io/CharArrayWriter;->buf:[C

    iput-object v0, p0, Ljava/io/Writer;->lock:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(I)V
    .locals 2

    invoke-direct {p0}, Ljava/io/Writer;-><init>()V

    if-gez p1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "size < 0"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    new-array v0, p1, [C

    iput-object v0, p0, Ljava/io/CharArrayWriter;->buf:[C

    iget-object v0, p0, Ljava/io/CharArrayWriter;->buf:[C

    iput-object v0, p0, Ljava/io/Writer;->lock:Ljava/lang/Object;

    return-void
.end method

.method private expand(I)V
    .locals 5

    const/4 v4, 0x0

    iget v2, p0, Ljava/io/CharArrayWriter;->count:I

    add-int/2addr v2, p1

    iget-object v3, p0, Ljava/io/CharArrayWriter;->buf:[C

    array-length v3, v3

    if-gt v2, v3, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v2, p0, Ljava/io/CharArrayWriter;->buf:[C

    array-length v2, v2

    mul-int/lit8 v2, v2, 0x2

    iget v3, p0, Ljava/io/CharArrayWriter;->count:I

    add-int/2addr v3, p1

    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v0

    new-array v1, v0, [C

    iget-object v2, p0, Ljava/io/CharArrayWriter;->buf:[C

    iget v3, p0, Ljava/io/CharArrayWriter;->count:I

    invoke-static {v2, v4, v1, v4, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iput-object v1, p0, Ljava/io/CharArrayWriter;->buf:[C

    goto :goto_0
.end method


# virtual methods
.method public append(C)Ljava/io/CharArrayWriter;
    .locals 0

    invoke-virtual {p0, p1}, Ljava/io/CharArrayWriter;->write(I)V

    return-object p0
.end method

.method public append(Ljava/lang/CharSequence;)Ljava/io/CharArrayWriter;
    .locals 2

    if-nez p1, :cond_0

    const-string p1, "null"

    :cond_0
    const/4 v0, 0x0

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    invoke-virtual {p0, p1, v0, v1}, Ljava/io/CharArrayWriter;->append(Ljava/lang/CharSequence;II)Ljava/io/CharArrayWriter;

    return-object p0
.end method

.method public append(Ljava/lang/CharSequence;II)Ljava/io/CharArrayWriter;
    .locals 3

    if-nez p1, :cond_0

    const-string p1, "null"

    :cond_0
    invoke-interface {p1, p2, p3}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {p0, v0, v1, v2}, Ljava/io/CharArrayWriter;->write(Ljava/lang/String;II)V

    return-object p0
.end method

.method public bridge synthetic append(C)Ljava/io/Writer;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0, p1}, Ljava/io/CharArrayWriter;->append(C)Ljava/io/CharArrayWriter;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic append(Ljava/lang/CharSequence;)Ljava/io/Writer;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0, p1}, Ljava/io/CharArrayWriter;->append(Ljava/lang/CharSequence;)Ljava/io/CharArrayWriter;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic append(Ljava/lang/CharSequence;II)Ljava/io/Writer;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0, p1, p2, p3}, Ljava/io/CharArrayWriter;->append(Ljava/lang/CharSequence;II)Ljava/io/CharArrayWriter;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic append(C)Ljava/lang/Appendable;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0, p1}, Ljava/io/CharArrayWriter;->append(C)Ljava/io/CharArrayWriter;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0, p1}, Ljava/io/CharArrayWriter;->append(Ljava/lang/CharSequence;)Ljava/io/CharArrayWriter;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic append(Ljava/lang/CharSequence;II)Ljava/lang/Appendable;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0, p1, p2, p3}, Ljava/io/CharArrayWriter;->append(Ljava/lang/CharSequence;II)Ljava/io/CharArrayWriter;

    move-result-object v0

    return-object v0
.end method

.method public close()V
    .locals 0

    return-void
.end method

.method public flush()V
    .locals 0

    return-void
.end method

.method public reset()V
    .locals 2

    iget-object v1, p0, Ljava/io/Writer;->lock:Ljava/lang/Object;

    monitor-enter v1

    const/4 v0, 0x0

    :try_start_0
    iput v0, p0, Ljava/io/CharArrayWriter;->count:I

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public size()I
    .locals 2

    iget-object v1, p0, Ljava/io/Writer;->lock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget v0, p0, Ljava/io/CharArrayWriter;->count:I

    monitor-exit v1

    return v0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public toCharArray()[C
    .locals 6

    iget-object v2, p0, Ljava/io/Writer;->lock:Ljava/lang/Object;

    monitor-enter v2

    :try_start_0
    iget v1, p0, Ljava/io/CharArrayWriter;->count:I

    new-array v0, v1, [C

    iget-object v1, p0, Ljava/io/CharArrayWriter;->buf:[C

    const/4 v3, 0x0

    const/4 v4, 0x0

    iget v5, p0, Ljava/io/CharArrayWriter;->count:I

    invoke-static {v1, v3, v0, v4, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    monitor-exit v2

    return-object v0

    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public toString()Ljava/lang/String;
    .locals 5

    iget-object v1, p0, Ljava/io/Writer;->lock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    new-instance v0, Ljava/lang/String;

    iget-object v2, p0, Ljava/io/CharArrayWriter;->buf:[C

    const/4 v3, 0x0

    iget v4, p0, Ljava/io/CharArrayWriter;->count:I

    invoke-direct {v0, v2, v3, v4}, Ljava/lang/String;-><init>([CII)V

    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public write(I)V
    .locals 4

    iget-object v1, p0, Ljava/io/Writer;->lock:Ljava/lang/Object;

    monitor-enter v1

    const/4 v0, 0x1

    :try_start_0
    invoke-direct {p0, v0}, Ljava/io/CharArrayWriter;->expand(I)V

    iget-object v0, p0, Ljava/io/CharArrayWriter;->buf:[C

    iget v2, p0, Ljava/io/CharArrayWriter;->count:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Ljava/io/CharArrayWriter;->count:I

    int-to-char v3, p1

    aput-char v3, v0, v2

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public write(Ljava/lang/String;II)V
    .locals 4

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "str == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    or-int v0, p2, p3

    if-ltz v0, :cond_1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    sub-int/2addr v0, p3

    if-le p2, v0, :cond_2

    :cond_1
    new-instance v0, Ljava/lang/StringIndexOutOfBoundsException;

    invoke-direct {v0, p1, p2, p3}, Ljava/lang/StringIndexOutOfBoundsException;-><init>(Ljava/lang/String;II)V

    throw v0

    :cond_2
    iget-object v1, p0, Ljava/io/Writer;->lock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    invoke-direct {p0, p3}, Ljava/io/CharArrayWriter;->expand(I)V

    add-int v0, p2, p3

    iget-object v2, p0, Ljava/io/CharArrayWriter;->buf:[C

    iget v3, p0, Ljava/io/CharArrayWriter;->count:I

    invoke-virtual {p1, p2, v0, v2, v3}, Ljava/lang/String;->getChars(II[CI)V

    iget v0, p0, Ljava/io/CharArrayWriter;->count:I

    add-int/2addr v0, p3

    iput v0, p0, Ljava/io/CharArrayWriter;->count:I

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public write([CII)V
    .locals 3

    array-length v0, p1

    invoke-static {v0, p2, p3}, Ljava/util/Arrays;->checkOffsetAndCount(III)V

    iget-object v1, p0, Ljava/io/Writer;->lock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    invoke-direct {p0, p3}, Ljava/io/CharArrayWriter;->expand(I)V

    iget-object v0, p0, Ljava/io/CharArrayWriter;->buf:[C

    iget v2, p0, Ljava/io/CharArrayWriter;->count:I

    invoke-static {p1, p2, v0, v2, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget v0, p0, Ljava/io/CharArrayWriter;->count:I

    add-int/2addr v0, p3

    iput v0, p0, Ljava/io/CharArrayWriter;->count:I

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public writeTo(Ljava/io/Writer;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v1, p0, Ljava/io/Writer;->lock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Ljava/io/CharArrayWriter;->buf:[C

    const/4 v2, 0x0

    iget v3, p0, Ljava/io/CharArrayWriter;->count:I

    invoke-virtual {p1, v0, v2, v3}, Ljava/io/Writer;->write([CII)V

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
