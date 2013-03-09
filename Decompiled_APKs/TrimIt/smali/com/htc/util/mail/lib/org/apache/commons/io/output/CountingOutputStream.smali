.class public Lcom/htc/util/mail/lib/org/apache/commons/io/output/CountingOutputStream;
.super Lcom/htc/util/mail/lib/org/apache/commons/io/output/ProxyOutputStream;
.source "CountingOutputStream.java"


# instance fields
.field private count:J


# direct methods
.method public constructor <init>(Ljava/io/OutputStream;)V
    .locals 0
    .parameter "out"

    .prologue
    .line 42
    invoke-direct {p0, p1}, Lcom/htc/util/mail/lib/org/apache/commons/io/output/ProxyOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 43
    return-void
.end method


# virtual methods
.method public declared-synchronized getByteCount()J
    .locals 2

    .prologue
    .line 135
    monitor-enter p0

    :try_start_0
    iget-wide v0, p0, Lcom/htc/util/mail/lib/org/apache/commons/io/output/CountingOutputStream;->count:J
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

    .prologue
    .line 99
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lcom/htc/util/mail/lib/org/apache/commons/io/output/CountingOutputStream;->getByteCount()J

    move-result-wide v0

    .line 100
    .local v0, result:J
    const-wide/32 v2, 0x7fffffff

    cmp-long v2, v0, v2

    if-lez v2, :cond_0

    .line 101
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

    .line 99
    .end local v0           #result:J
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2

    .line 103
    .restart local v0       #result:J
    :cond_0
    long-to-int v2, v0

    monitor-exit p0

    return v2
.end method

.method public declared-synchronized resetByteCount()J
    .locals 4

    .prologue
    .line 149
    monitor-enter p0

    :try_start_0
    iget-wide v0, p0, Lcom/htc/util/mail/lib/org/apache/commons/io/output/CountingOutputStream;->count:J

    .line 150
    .local v0, tmp:J
    const-wide/16 v2, 0x0

    iput-wide v2, p0, Lcom/htc/util/mail/lib/org/apache/commons/io/output/CountingOutputStream;->count:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 151
    monitor-exit p0

    return-wide v0

    .line 149
    .end local v0           #tmp:J
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method public declared-synchronized resetCount()I
    .locals 5

    .prologue
    .line 117
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lcom/htc/util/mail/lib/org/apache/commons/io/output/CountingOutputStream;->resetByteCount()J

    move-result-wide v0

    .line 118
    .local v0, result:J
    const-wide/32 v2, 0x7fffffff

    cmp-long v2, v0, v2

    if-lez v2, :cond_0

    .line 119
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

    .line 117
    .end local v0           #result:J
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2

    .line 121
    .restart local v0       #result:J
    :cond_0
    long-to-int v2, v0

    monitor-exit p0

    return v2
.end method

.method public write(I)V
    .locals 4
    .parameter "b"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 83
    iget-wide v0, p0, Lcom/htc/util/mail/lib/org/apache/commons/io/output/CountingOutputStream;->count:J

    const-wide/16 v2, 0x1

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/htc/util/mail/lib/org/apache/commons/io/output/CountingOutputStream;->count:J

    .line 84
    invoke-super {p0, p1}, Lcom/htc/util/mail/lib/org/apache/commons/io/output/ProxyOutputStream;->write(I)V

    .line 85
    return-void
.end method

.method public write([B)V
    .locals 4
    .parameter "b"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 55
    iget-wide v0, p0, Lcom/htc/util/mail/lib/org/apache/commons/io/output/CountingOutputStream;->count:J

    array-length v2, p1

    int-to-long v2, v2

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/htc/util/mail/lib/org/apache/commons/io/output/CountingOutputStream;->count:J

    .line 56
    invoke-super {p0, p1}, Lcom/htc/util/mail/lib/org/apache/commons/io/output/ProxyOutputStream;->write([B)V

    .line 57
    return-void
.end method

.method public write([BII)V
    .locals 4
    .parameter "b"
    .parameter "off"
    .parameter "len"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 70
    iget-wide v0, p0, Lcom/htc/util/mail/lib/org/apache/commons/io/output/CountingOutputStream;->count:J

    int-to-long v2, p3

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/htc/util/mail/lib/org/apache/commons/io/output/CountingOutputStream;->count:J

    .line 71
    invoke-super {p0, p1, p2, p3}, Lcom/htc/util/mail/lib/org/apache/commons/io/output/ProxyOutputStream;->write([BII)V

    .line 72
    return-void
.end method
