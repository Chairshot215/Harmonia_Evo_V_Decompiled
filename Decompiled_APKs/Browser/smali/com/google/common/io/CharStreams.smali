.class public final Lcom/google/common/io/CharStreams;
.super Ljava/lang/Object;
.source "CharStreams.java"


# static fields
.field private static final BUF_SIZE:I = 0x800


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static asWriter(Ljava/lang/Appendable;)Ljava/io/Writer;
    .locals 1
    .parameter "target"

    .prologue
    .line 429
    instance-of v0, p0, Ljava/io/Writer;

    if-eqz v0, :cond_0

    .line 430
    check-cast p0, Ljava/io/Writer;

    .line 432
    .end local p0
    :goto_0
    return-object p0

    .restart local p0
    :cond_0
    new-instance v0, Lcom/google/common/io/AppendableWriter;

    invoke-direct {v0, p0}, Lcom/google/common/io/AppendableWriter;-><init>(Ljava/lang/Appendable;)V

    move-object p0, v0

    goto :goto_0
.end method

.method public static copy(Lcom/google/common/io/InputSupplier;Lcom/google/common/io/OutputSupplier;)J
    .locals 6
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R::",
            "Ljava/lang/Readable;",
            ":",
            "Ljava/io/Closeable;",
            "W::",
            "Ljava/lang/Appendable;",
            ":",
            "Ljava/io/Closeable;",
            ">(",
            "Lcom/google/common/io/InputSupplier",
            "<TR;>;",
            "Lcom/google/common/io/OutputSupplier",
            "<TW;>;)J"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 144
    .local p0, from:Lcom/google/common/io/InputSupplier;,"Lcom/google/common/io/InputSupplier<TR;>;"
    .local p1, to:Lcom/google/common/io/OutputSupplier;,"Lcom/google/common/io/OutputSupplier<TW;>;"
    const/4 v4, 0x1

    .line 145
    .local v4, threw:Z
    invoke-interface {p0}, Lcom/google/common/io/InputSupplier;->getInput()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Readable;

    .line 147
    .local v2, in:Ljava/lang/Readable;,"TR;"
    :try_start_0
    invoke-interface {p1}, Lcom/google/common/io/OutputSupplier;->getOutput()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Appendable;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 149
    .local v3, out:Ljava/lang/Appendable;,"TW;"
    :try_start_1
    invoke-static {v2, v3}, Lcom/google/common/io/CharStreams;->copy(Ljava/lang/Readable;Ljava/lang/Appendable;)J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-wide v0

    .line 150
    .local v0, count:J
    const/4 v4, 0x0

    .line 153
    :try_start_2
    check-cast v3, Ljava/io/Closeable;

    .end local v3           #out:Ljava/lang/Appendable;,"TW;"
    invoke-static {v3, v4}, Lcom/google/common/io/Closeables;->close(Ljava/io/Closeable;Z)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 156
    check-cast v2, Ljava/io/Closeable;

    .end local v2           #in:Ljava/lang/Readable;,"TR;"
    invoke-static {v2, v4}, Lcom/google/common/io/Closeables;->close(Ljava/io/Closeable;Z)V

    return-wide v0

    .line 153
    .end local v0           #count:J
    .restart local v2       #in:Ljava/lang/Readable;,"TR;"
    .restart local v3       #out:Ljava/lang/Appendable;,"TW;"
    :catchall_0
    move-exception v5

    :try_start_3
    check-cast v3, Ljava/io/Closeable;

    .end local v3           #out:Ljava/lang/Appendable;,"TW;"
    invoke-static {v3, v4}, Lcom/google/common/io/Closeables;->close(Ljava/io/Closeable;Z)V

    throw v5
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 156
    :catchall_1
    move-exception v5

    check-cast v2, Ljava/io/Closeable;

    .end local v2           #in:Ljava/lang/Readable;,"TR;"
    invoke-static {v2, v4}, Lcom/google/common/io/Closeables;->close(Ljava/io/Closeable;Z)V

    throw v5
.end method

.method public static copy(Lcom/google/common/io/InputSupplier;Ljava/lang/Appendable;)J
    .locals 5
    .parameter
    .parameter "to"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R::",
            "Ljava/lang/Readable;",
            ":",
            "Ljava/io/Closeable;",
            ">(",
            "Lcom/google/common/io/InputSupplier",
            "<TR;>;",
            "Ljava/lang/Appendable;",
            ")J"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 172
    .local p0, from:Lcom/google/common/io/InputSupplier;,"Lcom/google/common/io/InputSupplier<TR;>;"
    const/4 v3, 0x1

    .line 173
    .local v3, threw:Z
    invoke-interface {p0}, Lcom/google/common/io/InputSupplier;->getInput()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Readable;

    .line 175
    .local v2, in:Ljava/lang/Readable;,"TR;"
    :try_start_0
    invoke-static {v2, p1}, Lcom/google/common/io/CharStreams;->copy(Ljava/lang/Readable;Ljava/lang/Appendable;)J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-wide v0

    .line 176
    .local v0, count:J
    const/4 v3, 0x0

    .line 179
    check-cast v2, Ljava/io/Closeable;

    .end local v2           #in:Ljava/lang/Readable;,"TR;"
    invoke-static {v2, v3}, Lcom/google/common/io/Closeables;->close(Ljava/io/Closeable;Z)V

    return-wide v0

    .end local v0           #count:J
    .restart local v2       #in:Ljava/lang/Readable;,"TR;"
    :catchall_0
    move-exception v4

    check-cast v2, Ljava/io/Closeable;

    .end local v2           #in:Ljava/lang/Readable;,"TR;"
    invoke-static {v2, v3}, Lcom/google/common/io/Closeables;->close(Ljava/io/Closeable;Z)V

    throw v4
.end method

.method public static copy(Ljava/lang/Readable;Ljava/lang/Appendable;)J
    .locals 6
    .parameter "from"
    .parameter "to"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 193
    const/16 v4, 0x800

    invoke-static {v4}, Ljava/nio/CharBuffer;->allocate(I)Ljava/nio/CharBuffer;

    move-result-object v0

    .line 194
    .local v0, buf:Ljava/nio/CharBuffer;
    const-wide/16 v2, 0x0

    .line 196
    .local v2, total:J
    :goto_0
    invoke-interface {p0, v0}, Ljava/lang/Readable;->read(Ljava/nio/CharBuffer;)I

    move-result v1

    .line 197
    .local v1, r:I
    const/4 v4, -0x1

    if-ne v1, v4, :cond_0

    .line 204
    return-wide v2

    .line 200
    :cond_0
    invoke-virtual {v0}, Ljava/nio/CharBuffer;->flip()Ljava/nio/Buffer;

    .line 201
    const/4 v4, 0x0

    invoke-interface {p1, v0, v4, v1}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;II)Ljava/lang/Appendable;

    .line 202
    int-to-long v4, v1

    add-long/2addr v2, v4

    .line 203
    goto :goto_0
.end method

.method public static join(Ljava/lang/Iterable;)Lcom/google/common/io/InputSupplier;
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable",
            "<+",
            "Lcom/google/common/io/InputSupplier",
            "<+",
            "Ljava/io/Reader;",
            ">;>;)",
            "Lcom/google/common/io/InputSupplier",
            "<",
            "Ljava/io/Reader;",
            ">;"
        }
    .end annotation

    .prologue
    .line 379
    .local p0, suppliers:Ljava/lang/Iterable;,"Ljava/lang/Iterable<+Lcom/google/common/io/InputSupplier<+Ljava/io/Reader;>;>;"
    new-instance v0, Lcom/google/common/io/CharStreams$4;

    invoke-direct {v0, p0}, Lcom/google/common/io/CharStreams$4;-><init>(Ljava/lang/Iterable;)V

    return-object v0
.end method

.method public static varargs join([Lcom/google/common/io/InputSupplier;)Lcom/google/common/io/InputSupplier;
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Lcom/google/common/io/InputSupplier",
            "<+",
            "Ljava/io/Reader;",
            ">;)",
            "Lcom/google/common/io/InputSupplier",
            "<",
            "Ljava/io/Reader;",
            ">;"
        }
    .end annotation

    .prologue
    .line 389
    .local p0, suppliers:[Lcom/google/common/io/InputSupplier;,"[Lcom/google/common/io/InputSupplier<+Ljava/io/Reader;>;"
    invoke-static {p0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Lcom/google/common/io/CharStreams;->join(Ljava/lang/Iterable;)Lcom/google/common/io/InputSupplier;

    move-result-object v0

    return-object v0
.end method

.method public static newReaderSupplier(Lcom/google/common/io/InputSupplier;Ljava/nio/charset/Charset;)Lcom/google/common/io/InputSupplier;
    .locals 1
    .parameter
    .parameter "charset"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/io/InputSupplier",
            "<+",
            "Ljava/io/InputStream;",
            ">;",
            "Ljava/nio/charset/Charset;",
            ")",
            "Lcom/google/common/io/InputSupplier",
            "<",
            "Ljava/io/InputStreamReader;",
            ">;"
        }
    .end annotation

    .prologue
    .line 82
    .local p0, in:Lcom/google/common/io/InputSupplier;,"Lcom/google/common/io/InputSupplier<+Ljava/io/InputStream;>;"
    invoke-static {p0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 83
    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 84
    new-instance v0, Lcom/google/common/io/CharStreams$2;

    invoke-direct {v0, p0, p1}, Lcom/google/common/io/CharStreams$2;-><init>(Lcom/google/common/io/InputSupplier;Ljava/nio/charset/Charset;)V

    return-object v0
.end method

.method public static newReaderSupplier(Ljava/lang/String;)Lcom/google/common/io/InputSupplier;
    .locals 1
    .parameter "value"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lcom/google/common/io/InputSupplier",
            "<",
            "Ljava/io/StringReader;",
            ">;"
        }
    .end annotation

    .prologue
    .line 64
    invoke-static {p0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 65
    new-instance v0, Lcom/google/common/io/CharStreams$1;

    invoke-direct {v0, p0}, Lcom/google/common/io/CharStreams$1;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public static newWriterSupplier(Lcom/google/common/io/OutputSupplier;Ljava/nio/charset/Charset;)Lcom/google/common/io/OutputSupplier;
    .locals 1
    .parameter
    .parameter "charset"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/io/OutputSupplier",
            "<+",
            "Ljava/io/OutputStream;",
            ">;",
            "Ljava/nio/charset/Charset;",
            ")",
            "Lcom/google/common/io/OutputSupplier",
            "<",
            "Ljava/io/OutputStreamWriter;",
            ">;"
        }
    .end annotation

    .prologue
    .line 101
    .local p0, out:Lcom/google/common/io/OutputSupplier;,"Lcom/google/common/io/OutputSupplier<+Ljava/io/OutputStream;>;"
    invoke-static {p0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 102
    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 103
    new-instance v0, Lcom/google/common/io/CharStreams$3;

    invoke-direct {v0, p0, p1}, Lcom/google/common/io/CharStreams$3;-><init>(Lcom/google/common/io/OutputSupplier;Ljava/nio/charset/Charset;)V

    return-object v0
.end method

.method public static readFirstLine(Lcom/google/common/io/InputSupplier;)Ljava/lang/String;
    .locals 4
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R::",
            "Ljava/lang/Readable;",
            ":",
            "Ljava/io/Closeable;",
            ">(",
            "Lcom/google/common/io/InputSupplier",
            "<TR;>;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 277
    .local p0, supplier:Lcom/google/common/io/InputSupplier;,"Lcom/google/common/io/InputSupplier<TR;>;"
    const/4 v2, 0x1

    .line 278
    .local v2, threw:Z
    invoke-interface {p0}, Lcom/google/common/io/InputSupplier;->getInput()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Readable;

    .line 280
    .local v1, r:Ljava/lang/Readable;,"TR;"
    :try_start_0
    new-instance v3, Lcom/google/common/io/LineReader;

    invoke-direct {v3, v1}, Lcom/google/common/io/LineReader;-><init>(Ljava/lang/Readable;)V

    invoke-virtual {v3}, Lcom/google/common/io/LineReader;->readLine()Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 281
    .local v0, line:Ljava/lang/String;
    const/4 v2, 0x0

    .line 284
    check-cast v1, Ljava/io/Closeable;

    .end local v1           #r:Ljava/lang/Readable;,"TR;"
    invoke-static {v1, v2}, Lcom/google/common/io/Closeables;->close(Ljava/io/Closeable;Z)V

    return-object v0

    .end local v0           #line:Ljava/lang/String;
    .restart local v1       #r:Ljava/lang/Readable;,"TR;"
    :catchall_0
    move-exception v3

    check-cast v1, Ljava/io/Closeable;

    .end local v1           #r:Ljava/lang/Readable;,"TR;"
    invoke-static {v1, v2}, Lcom/google/common/io/Closeables;->close(Ljava/io/Closeable;Z)V

    throw v3
.end method

.method public static readLines(Lcom/google/common/io/InputSupplier;Lcom/google/common/io/LineProcessor;)Ljava/lang/Object;
    .locals 5
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R::",
            "Ljava/lang/Readable;",
            ":",
            "Ljava/io/Closeable;",
            "T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/common/io/InputSupplier",
            "<TR;>;",
            "Lcom/google/common/io/LineProcessor",
            "<TT;>;)TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 345
    .local p0, supplier:Lcom/google/common/io/InputSupplier;,"Lcom/google/common/io/InputSupplier<TR;>;"
    .local p1, callback:Lcom/google/common/io/LineProcessor;,"Lcom/google/common/io/LineProcessor<TT;>;"
    const/4 v3, 0x1

    .line 346
    .local v3, threw:Z
    invoke-interface {p0}, Lcom/google/common/io/InputSupplier;->getInput()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Readable;

    .line 348
    .local v2, r:Ljava/lang/Readable;,"TR;"
    :try_start_0
    new-instance v1, Lcom/google/common/io/LineReader;

    invoke-direct {v1, v2}, Lcom/google/common/io/LineReader;-><init>(Ljava/lang/Readable;)V

    .line 350
    .local v1, lineReader:Lcom/google/common/io/LineReader;
    :cond_0
    invoke-virtual {v1}, Lcom/google/common/io/LineReader;->readLine()Ljava/lang/String;

    move-result-object v0

    .local v0, line:Ljava/lang/String;
    if-eqz v0, :cond_1

    .line 351
    invoke-interface {p1, v0}, Lcom/google/common/io/LineProcessor;->processLine(Ljava/lang/String;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v4

    if-nez v4, :cond_0

    .line 355
    :cond_1
    const/4 v3, 0x0

    .line 357
    check-cast v2, Ljava/io/Closeable;

    .end local v2           #r:Ljava/lang/Readable;,"TR;"
    invoke-static {v2, v3}, Lcom/google/common/io/Closeables;->close(Ljava/io/Closeable;Z)V

    .line 359
    invoke-interface {p1}, Lcom/google/common/io/LineProcessor;->getResult()Ljava/lang/Object;

    move-result-object v4

    return-object v4

    .line 357
    .end local v0           #line:Ljava/lang/String;
    .end local v1           #lineReader:Lcom/google/common/io/LineReader;
    .restart local v2       #r:Ljava/lang/Readable;,"TR;"
    :catchall_0
    move-exception v4

    check-cast v2, Ljava/io/Closeable;

    .end local v2           #r:Ljava/lang/Readable;,"TR;"
    invoke-static {v2, v3}, Lcom/google/common/io/Closeables;->close(Ljava/io/Closeable;Z)V

    throw v4
.end method

.method public static readLines(Lcom/google/common/io/InputSupplier;)Ljava/util/List;
    .locals 4
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R::",
            "Ljava/lang/Readable;",
            ":",
            "Ljava/io/Closeable;",
            ">(",
            "Lcom/google/common/io/InputSupplier",
            "<TR;>;)",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 299
    .local p0, supplier:Lcom/google/common/io/InputSupplier;,"Lcom/google/common/io/InputSupplier<TR;>;"
    const/4 v2, 0x1

    .line 300
    .local v2, threw:Z
    invoke-interface {p0}, Lcom/google/common/io/InputSupplier;->getInput()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Readable;

    .line 302
    .local v0, r:Ljava/lang/Readable;,"TR;"
    :try_start_0
    invoke-static {v0}, Lcom/google/common/io/CharStreams;->readLines(Ljava/lang/Readable;)Ljava/util/List;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    .line 303
    .local v1, result:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    const/4 v2, 0x0

    .line 306
    check-cast v0, Ljava/io/Closeable;

    .end local v0           #r:Ljava/lang/Readable;,"TR;"
    invoke-static {v0, v2}, Lcom/google/common/io/Closeables;->close(Ljava/io/Closeable;Z)V

    return-object v1

    .end local v1           #result:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    .restart local v0       #r:Ljava/lang/Readable;,"TR;"
    :catchall_0
    move-exception v3

    check-cast v0, Ljava/io/Closeable;

    .end local v0           #r:Ljava/lang/Readable;,"TR;"
    invoke-static {v0, v2}, Lcom/google/common/io/Closeables;->close(Ljava/io/Closeable;Z)V

    throw v3
.end method

.method public static readLines(Ljava/lang/Readable;)Ljava/util/List;
    .locals 3
    .parameter "r"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Readable;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 324
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 325
    .local v2, result:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    new-instance v1, Lcom/google/common/io/LineReader;

    invoke-direct {v1, p0}, Lcom/google/common/io/LineReader;-><init>(Ljava/lang/Readable;)V

    .line 327
    .local v1, lineReader:Lcom/google/common/io/LineReader;
    :goto_0
    invoke-virtual {v1}, Lcom/google/common/io/LineReader;->readLine()Ljava/lang/String;

    move-result-object v0

    .local v0, line:Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 328
    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 330
    :cond_0
    return-object v2
.end method

.method public static skipFully(Ljava/io/Reader;J)V
    .locals 6
    .parameter "reader"
    .parameter "n"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const-wide/16 v4, 0x0

    .line 404
    :goto_0
    cmp-long v2, p1, v4

    if-lez v2, :cond_2

    .line 405
    invoke-virtual {p0, p1, p2}, Ljava/io/Reader;->skip(J)J

    move-result-wide v0

    .line 406
    .local v0, amt:J
    cmp-long v2, v0, v4

    if-nez v2, :cond_1

    .line 408
    invoke-virtual {p0}, Ljava/io/Reader;->read()I

    move-result v2

    const/4 v3, -0x1

    if-ne v2, v3, :cond_0

    .line 409
    new-instance v2, Ljava/io/EOFException;

    invoke-direct {v2}, Ljava/io/EOFException;-><init>()V

    throw v2

    .line 411
    :cond_0
    const-wide/16 v2, 0x1

    sub-long/2addr p1, v2

    goto :goto_0

    .line 413
    :cond_1
    sub-long/2addr p1, v0

    goto :goto_0

    .line 416
    .end local v0           #amt:J
    :cond_2
    return-void
.end method

.method public static toString(Lcom/google/common/io/InputSupplier;)Ljava/lang/String;
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R::",
            "Ljava/lang/Readable;",
            ":",
            "Ljava/io/Closeable;",
            ">(",
            "Lcom/google/common/io/InputSupplier",
            "<TR;>;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 229
    .local p0, supplier:Lcom/google/common/io/InputSupplier;,"Lcom/google/common/io/InputSupplier<TR;>;"
    invoke-static {p0}, Lcom/google/common/io/CharStreams;->toStringBuilder(Lcom/google/common/io/InputSupplier;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static toString(Ljava/lang/Readable;)Ljava/lang/String;
    .locals 1
    .parameter "r"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 216
    invoke-static {p0}, Lcom/google/common/io/CharStreams;->toStringBuilder(Ljava/lang/Readable;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static toStringBuilder(Lcom/google/common/io/InputSupplier;)Ljava/lang/StringBuilder;
    .locals 4
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R::",
            "Ljava/lang/Readable;",
            ":",
            "Ljava/io/Closeable;",
            ">(",
            "Lcom/google/common/io/InputSupplier",
            "<TR;>;)",
            "Ljava/lang/StringBuilder;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 255
    .local p0, supplier:Lcom/google/common/io/InputSupplier;,"Lcom/google/common/io/InputSupplier<TR;>;"
    const/4 v2, 0x1

    .line 256
    .local v2, threw:Z
    invoke-interface {p0}, Lcom/google/common/io/InputSupplier;->getInput()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Readable;

    .line 258
    .local v0, r:Ljava/lang/Readable;,"TR;"
    :try_start_0
    invoke-static {v0}, Lcom/google/common/io/CharStreams;->toStringBuilder(Ljava/lang/Readable;)Ljava/lang/StringBuilder;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    .line 259
    .local v1, result:Ljava/lang/StringBuilder;
    const/4 v2, 0x0

    .line 262
    check-cast v0, Ljava/io/Closeable;

    .end local v0           #r:Ljava/lang/Readable;,"TR;"
    invoke-static {v0, v2}, Lcom/google/common/io/Closeables;->close(Ljava/io/Closeable;Z)V

    return-object v1

    .end local v1           #result:Ljava/lang/StringBuilder;
    .restart local v0       #r:Ljava/lang/Readable;,"TR;"
    :catchall_0
    move-exception v3

    check-cast v0, Ljava/io/Closeable;

    .end local v0           #r:Ljava/lang/Readable;,"TR;"
    invoke-static {v0, v2}, Lcom/google/common/io/Closeables;->close(Ljava/io/Closeable;Z)V

    throw v3
.end method

.method private static toStringBuilder(Ljava/lang/Readable;)Ljava/lang/StringBuilder;
    .locals 1
    .parameter "r"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 241
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 242
    .local v0, sb:Ljava/lang/StringBuilder;
    invoke-static {p0, v0}, Lcom/google/common/io/CharStreams;->copy(Ljava/lang/Readable;Ljava/lang/Appendable;)J

    .line 243
    return-object v0
.end method

.method public static write(Ljava/lang/CharSequence;Lcom/google/common/io/OutputSupplier;)V
    .locals 3
    .parameter "from"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<W::",
            "Ljava/lang/Appendable;",
            ":",
            "Ljava/io/Closeable;",
            ">(",
            "Ljava/lang/CharSequence;",
            "Lcom/google/common/io/OutputSupplier",
            "<TW;>;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 120
    .local p1, to:Lcom/google/common/io/OutputSupplier;,"Lcom/google/common/io/OutputSupplier<TW;>;"
    invoke-static {p0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 121
    const/4 v1, 0x1

    .line 122
    .local v1, threw:Z
    invoke-interface {p1}, Lcom/google/common/io/OutputSupplier;->getOutput()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Appendable;

    .line 124
    .local v0, out:Ljava/lang/Appendable;,"TW;"
    :try_start_0
    invoke-interface {v0, p0}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 125
    const/4 v1, 0x0

    .line 127
    check-cast v0, Ljava/io/Closeable;

    .end local v0           #out:Ljava/lang/Appendable;,"TW;"
    invoke-static {v0, v1}, Lcom/google/common/io/Closeables;->close(Ljava/io/Closeable;Z)V

    .line 129
    return-void

    .line 127
    .restart local v0       #out:Ljava/lang/Appendable;,"TW;"
    :catchall_0
    move-exception v2

    check-cast v0, Ljava/io/Closeable;

    .end local v0           #out:Ljava/lang/Appendable;,"TW;"
    invoke-static {v0, v1}, Lcom/google/common/io/Closeables;->close(Ljava/io/Closeable;Z)V

    throw v2
.end method
