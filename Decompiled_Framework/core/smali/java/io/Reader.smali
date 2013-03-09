.class public abstract Ljava/io/Reader;
.super Ljava/lang/Object;
.source "Reader.java"

# interfaces
.implements Ljava/lang/Readable;
.implements Ljava/io/Closeable;


# instance fields
.field protected lock:Ljava/lang/Object;


# direct methods
.method protected constructor <init>()V
    .locals 0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    iput-object p0, p0, Ljava/io/Reader;->lock:Ljava/lang/Object;

    return-void
.end method

.method protected constructor <init>(Ljava/lang/Object;)V
    .locals 1

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    :cond_0
    iput-object p1, p0, Ljava/io/Reader;->lock:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public abstract close()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public mark(I)V
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

.method public markSupported()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public read()I
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v1, -0x1

    iget-object v2, p0, Ljava/io/Reader;->lock:Ljava/lang/Object;

    monitor-enter v2

    const/4 v3, 0x1

    :try_start_0
    new-array v0, v3, [C

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-virtual {p0, v0, v3, v4}, Ljava/io/Reader;->read([CII)I

    move-result v3

    if-eq v3, v1, :cond_0

    const/4 v1, 0x0

    aget-char v1, v0, v1

    monitor-exit v2

    :goto_0
    return v1

    :cond_0
    monitor-exit v2

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public read(Ljava/nio/CharBuffer;)I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p1}, Ljava/nio/CharBuffer;->length()I

    move-result v1

    new-array v0, v1, [C

    invoke-virtual {p0, v0}, Ljava/io/Reader;->read([C)I

    move-result v2

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    if-lez v1, :cond_0

    const/4 v2, 0x0

    invoke-virtual {p1, v0, v2, v1}, Ljava/nio/CharBuffer;->put([CII)Ljava/nio/CharBuffer;

    :cond_0
    return v1
.end method

.method public read([C)I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    array-length v1, p1

    invoke-virtual {p0, p1, v0, v1}, Ljava/io/Reader;->read([CII)I

    move-result v0

    return v0
.end method

.method public abstract read([CII)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public ready()Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    return v0
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
    .locals 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-wide/16 v7, 0x0

    cmp-long v7, p1, v7

    if-gez v7, :cond_0

    new-instance v7, Ljava/lang/IllegalArgumentException;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "charCount < 0: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v7

    :cond_0
    iget-object v8, p0, Ljava/io/Reader;->lock:Ljava/lang/Object;

    monitor-enter v8

    const-wide/16 v2, 0x0

    const-wide/16 v9, 0x200

    cmp-long v7, p1, v9

    if-gez v7, :cond_2

    long-to-int v6, p1

    :goto_0
    :try_start_0
    new-array v0, v6, [C

    :cond_1
    :goto_1
    cmp-long v7, v2, p1

    if-gez v7, :cond_5

    const/4 v7, 0x0

    invoke-virtual {p0, v0, v7, v6}, Ljava/io/Reader;->read([CII)I

    move-result v1

    const/4 v7, -0x1

    if-ne v1, v7, :cond_3

    monitor-exit v8

    move-wide v4, v2

    :goto_2
    return-wide v4

    :cond_2
    const/16 v6, 0x200

    goto :goto_0

    :cond_3
    int-to-long v9, v1

    add-long/2addr v2, v9

    if-ge v1, v6, :cond_4

    monitor-exit v8

    move-wide v4, v2

    goto :goto_2

    :cond_4
    sub-long v9, p1, v2

    int-to-long v11, v6

    cmp-long v7, v9, v11

    if-gez v7, :cond_1

    sub-long v9, p1, v2

    long-to-int v6, v9

    goto :goto_1

    :cond_5
    monitor-exit v8

    move-wide v4, v2

    goto :goto_2

    :catchall_0
    move-exception v7

    monitor-exit v8
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v7
.end method
