.class public Lcom/htc/util/mail/lib/org/apache/commons/io/input/CountingInputStream;
.super Lcom/htc/util/mail/lib/org/apache/commons/io/input/ProxyInputStream;
.source "CountingInputStream.java"


# instance fields
.field private count:J


# direct methods
.method public constructor <init>(Ljava/io/InputStream;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/htc/util/mail/lib/org/apache/commons/io/input/ProxyInputStream;-><init>(Ljava/io/InputStream;)V

    return-void
.end method


# virtual methods
.method public declared-synchronized getByteCount()J
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-wide v0, p0, Lcom/htc/util/mail/lib/org/apache/commons/io/input/CountingInputStream;->count:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-wide v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getCount()I
    .locals 5

    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lcom/htc/util/mail/lib/org/apache/commons/io/input/CountingInputStream;->getByteCount()J

    move-result-wide v0

    const-wide/32 v2, 0x7fffffff

    cmp-long v2, v0, v2

    if-lez v2, :cond_0

    new-instance v2, Ljava/lang/ArithmeticException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "The byte count "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " is too large to be converted to an int"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/ArithmeticException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2

    :cond_0
    long-to-int v2, v0

    monitor-exit p0

    return v2
.end method

.method public read()I
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-super {p0}, Lcom/htc/util/mail/lib/org/apache/commons/io/input/ProxyInputStream;->read()I

    move-result v0

    iget-wide v3, p0, Lcom/htc/util/mail/lib/org/apache/commons/io/input/CountingInputStream;->count:J

    if-ltz v0, :cond_0

    const-wide/16 v1, 0x1

    :goto_0
    add-long/2addr v1, v3

    iput-wide v1, p0, Lcom/htc/util/mail/lib/org/apache/commons/io/input/CountingInputStream;->count:J

    return v0

    :cond_0
    const-wide/16 v1, 0x0

    goto :goto_0
.end method

.method public read([B)I
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-super {p0, p1}, Lcom/htc/util/mail/lib/org/apache/commons/io/input/ProxyInputStream;->read([B)I

    move-result v0

    iget-wide v3, p0, Lcom/htc/util/mail/lib/org/apache/commons/io/input/CountingInputStream;->count:J

    if-ltz v0, :cond_0

    int-to-long v1, v0

    :goto_0
    add-long/2addr v1, v3

    iput-wide v1, p0, Lcom/htc/util/mail/lib/org/apache/commons/io/input/CountingInputStream;->count:J

    return v0

    :cond_0
    const-wide/16 v1, 0x0

    goto :goto_0
.end method

.method public read([BII)I
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-super {p0, p1, p2, p3}, Lcom/htc/util/mail/lib/org/apache/commons/io/input/ProxyInputStream;->read([BII)I

    move-result v0

    iget-wide v3, p0, Lcom/htc/util/mail/lib/org/apache/commons/io/input/CountingInputStream;->count:J

    if-ltz v0, :cond_0

    int-to-long v1, v0

    :goto_0
    add-long/2addr v1, v3

    iput-wide v1, p0, Lcom/htc/util/mail/lib/org/apache/commons/io/input/CountingInputStream;->count:J

    return v0

    :cond_0
    const-wide/16 v1, 0x0

    goto :goto_0
.end method

.method public declared-synchronized resetByteCount()J
    .locals 4

    monitor-enter p0

    :try_start_0
    iget-wide v0, p0, Lcom/htc/util/mail/lib/org/apache/commons/io/input/CountingInputStream;->count:J

    const-wide/16 v2, 0x0

    iput-wide v2, p0, Lcom/htc/util/mail/lib/org/apache/commons/io/input/CountingInputStream;->count:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-wide v0

    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method public declared-synchronized resetCount()I
    .locals 5

    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lcom/htc/util/mail/lib/org/apache/commons/io/input/CountingInputStream;->resetByteCount()J

    move-result-wide v0

    const-wide/32 v2, 0x7fffffff

    cmp-long v2, v0, v2

    if-lez v2, :cond_0

    new-instance v2, Ljava/lang/ArithmeticException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "The byte count "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " is too large to be converted to an int"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/ArithmeticException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2

    :cond_0
    long-to-int v2, v0

    monitor-exit p0

    return v2
.end method

.method public skip(J)J
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-super {p0, p1, p2}, Lcom/htc/util/mail/lib/org/apache/commons/io/input/ProxyInputStream;->skip(J)J

    move-result-wide v0

    iget-wide v2, p0, Lcom/htc/util/mail/lib/org/apache/commons/io/input/CountingInputStream;->count:J

    add-long/2addr v2, v0

    iput-wide v2, p0, Lcom/htc/util/mail/lib/org/apache/commons/io/input/CountingInputStream;->count:J

    return-wide v0
.end method
