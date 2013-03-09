.class public Ljava/io/PipedReader;
.super Ljava/io/Reader;
.source "PipedReader.java"


# static fields
.field private static final PIPE_SIZE:I = 0x400


# instance fields
.field private buffer:[C

.field private in:I

.field private isClosed:Z

.field isConnected:Z

.field private lastReader:Ljava/lang/Thread;

.field private lastWriter:Ljava/lang/Thread;

.field private out:I


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/io/Reader;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Ljava/io/PipedReader;->in:I

    return-void
.end method

.method public constructor <init>(I)V
    .locals 3

    invoke-direct {p0}, Ljava/io/Reader;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Ljava/io/PipedReader;->in:I

    if-gtz p1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "pipe size "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " too small"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    new-array v0, p1, [C

    iput-object v0, p0, Ljava/io/PipedReader;->buffer:[C

    return-void
.end method

.method public constructor <init>(Ljava/io/PipedWriter;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-direct {p0}, Ljava/io/Reader;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Ljava/io/PipedReader;->in:I

    invoke-virtual {p0, p1}, Ljava/io/PipedReader;->connect(Ljava/io/PipedWriter;)V

    return-void
.end method

.method public constructor <init>(Ljava/io/PipedWriter;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-direct {p0, p2}, Ljava/io/PipedReader;-><init>(I)V

    invoke-virtual {p0, p1}, Ljava/io/PipedReader;->connect(Ljava/io/PipedWriter;)V

    return-void
.end method


# virtual methods
.method public declared-synchronized close()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    const/4 v0, 0x0

    :try_start_0
    iput-object v0, p0, Ljava/io/PipedReader;->buffer:[C

    const/4 v0, 0x1

    iput-boolean v0, p0, Ljava/io/PipedReader;->isClosed:Z

    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public connect(Ljava/io/PipedWriter;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p1, p0}, Ljava/io/PipedWriter;->connect(Ljava/io/PipedReader;)V

    return-void
.end method

.method declared-synchronized done()V
    .locals 1

    monitor-enter p0

    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, p0, Ljava/io/PipedReader;->isClosed:Z

    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized establishConnection()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Ljava/io/PipedReader;->isConnected:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/io/IOException;

    const-string v1, "Pipe already connected"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_0
    :try_start_1
    iget-boolean v0, p0, Ljava/io/PipedReader;->isClosed:Z

    if-eqz v0, :cond_1

    new-instance v0, Ljava/io/IOException;

    const-string v1, "Pipe is closed"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    iget-object v0, p0, Ljava/io/PipedReader;->buffer:[C

    if-nez v0, :cond_2

    const/16 v0, 0x400

    new-array v0, v0, [C

    iput-object v0, p0, Ljava/io/PipedReader;->buffer:[C

    :cond_2
    const/4 v0, 0x1

    iput-boolean v0, p0, Ljava/io/PipedReader;->isConnected:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-void
.end method

.method public read()I
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v2, 0x1

    const/4 v3, 0x0

    new-array v0, v2, [C

    invoke-virtual {p0, v0, v3, v2}, Ljava/io/PipedReader;->read([CII)I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    aget-char v1, v0, v3

    :cond_0
    return v1
.end method

.method public declared-synchronized read([CII)I
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v1, 0x0

    const/4 v4, -0x1

    monitor-enter p0

    :try_start_0
    iget-boolean v5, p0, Ljava/io/PipedReader;->isConnected:Z

    if-nez v5, :cond_0

    new-instance v4, Ljava/io/IOException;

    const-string v5, "Pipe not connected"

    invoke-direct {v4, v5}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception v4

    monitor-exit p0

    throw v4

    :cond_0
    :try_start_1
    iget-object v5, p0, Ljava/io/PipedReader;->buffer:[C

    if-nez v5, :cond_1

    new-instance v4, Ljava/io/IOException;

    const-string v5, "Pipe is closed"

    invoke-direct {v4, v5}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v4

    :cond_1
    array-length v5, p1

    invoke-static {v5, p2, p3}, Ljava/util/Arrays;->checkOffsetAndCount(III)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-nez p3, :cond_3

    :cond_2
    :goto_0
    monitor-exit p0

    return v1

    :cond_3
    :try_start_2
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v5

    iput-object v5, p0, Ljava/io/PipedReader;->lastReader:Ljava/lang/Thread;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    const/4 v3, 0x1

    :goto_1
    :try_start_3
    iget v5, p0, Ljava/io/PipedReader;->in:I

    if-ne v5, v4, :cond_6

    iget-boolean v5, p0, Ljava/io/PipedReader;->isClosed:Z

    if-eqz v5, :cond_4

    move v1, v4

    goto :goto_0

    :cond_4
    if-nez v3, :cond_5

    iget-object v5, p0, Ljava/io/PipedReader;->lastWriter:Ljava/lang/Thread;

    if-eqz v5, :cond_5

    iget-object v5, p0, Ljava/io/PipedReader;->lastWriter:Ljava/lang/Thread;

    invoke-virtual {v5}, Ljava/lang/Thread;->isAlive()Z

    move-result v5

    if-nez v5, :cond_5

    new-instance v4, Ljava/io/IOException;

    const-string v5, "Pipe broken"

    invoke-direct {v4, v5}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
    .catch Ljava/lang/InterruptedException; {:try_start_3 .. :try_end_3} :catch_0

    :catch_0
    move-exception v2

    :try_start_4
    new-instance v4, Ljava/io/InterruptedIOException;

    invoke-direct {v4}, Ljava/io/InterruptedIOException;-><init>()V

    throw v4
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :cond_5
    const/4 v3, 0x0

    :try_start_5
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    const-wide/16 v5, 0x3e8

    invoke-virtual {p0, v5, v6}, Ljava/lang/Object;->wait(J)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0
    .catch Ljava/lang/InterruptedException; {:try_start_5 .. :try_end_5} :catch_0

    goto :goto_1

    :cond_6
    const/4 v1, 0x0

    :try_start_6
    iget v5, p0, Ljava/io/PipedReader;->out:I

    iget v6, p0, Ljava/io/PipedReader;->in:I

    if-lt v5, v6, :cond_8

    iget-object v5, p0, Ljava/io/PipedReader;->buffer:[C

    array-length v5, v5

    iget v6, p0, Ljava/io/PipedReader;->out:I

    sub-int/2addr v5, v6

    if-le p3, v5, :cond_a

    iget-object v5, p0, Ljava/io/PipedReader;->buffer:[C

    array-length v5, v5

    iget v6, p0, Ljava/io/PipedReader;->out:I

    sub-int v1, v5, v6

    :goto_2
    iget-object v5, p0, Ljava/io/PipedReader;->buffer:[C

    iget v6, p0, Ljava/io/PipedReader;->out:I

    invoke-static {v5, v6, p1, p2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget v5, p0, Ljava/io/PipedReader;->out:I

    add-int/2addr v5, v1

    iput v5, p0, Ljava/io/PipedReader;->out:I

    iget v5, p0, Ljava/io/PipedReader;->out:I

    iget-object v6, p0, Ljava/io/PipedReader;->buffer:[C

    array-length v6, v6

    if-ne v5, v6, :cond_7

    const/4 v5, 0x0

    iput v5, p0, Ljava/io/PipedReader;->out:I

    :cond_7
    iget v5, p0, Ljava/io/PipedReader;->out:I

    iget v6, p0, Ljava/io/PipedReader;->in:I

    if-ne v5, v6, :cond_8

    const/4 v5, -0x1

    iput v5, p0, Ljava/io/PipedReader;->in:I

    const/4 v5, 0x0

    iput v5, p0, Ljava/io/PipedReader;->out:I

    :cond_8
    if-eq v1, p3, :cond_2

    iget v5, p0, Ljava/io/PipedReader;->in:I

    if-eq v5, v4, :cond_2

    move v0, v1

    iget v4, p0, Ljava/io/PipedReader;->in:I

    iget v5, p0, Ljava/io/PipedReader;->out:I

    sub-int/2addr v4, v5

    sub-int v5, p3, v1

    if-le v4, v5, :cond_b

    sub-int v1, p3, v1

    :goto_3
    iget-object v4, p0, Ljava/io/PipedReader;->buffer:[C

    iget v5, p0, Ljava/io/PipedReader;->out:I

    add-int v6, p2, v0

    invoke-static {v4, v5, p1, v6, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget v4, p0, Ljava/io/PipedReader;->out:I

    add-int/2addr v4, v1

    iput v4, p0, Ljava/io/PipedReader;->out:I

    iget v4, p0, Ljava/io/PipedReader;->out:I

    iget v5, p0, Ljava/io/PipedReader;->in:I

    if-ne v4, v5, :cond_9

    const/4 v4, -0x1

    iput v4, p0, Ljava/io/PipedReader;->in:I

    const/4 v4, 0x0

    iput v4, p0, Ljava/io/PipedReader;->out:I

    :cond_9
    add-int/2addr v1, v0

    goto/16 :goto_0

    :cond_a
    move v1, p3

    goto :goto_2

    :cond_b
    iget v4, p0, Ljava/io/PipedReader;->in:I

    iget v5, p0, Ljava/io/PipedReader;->out:I
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    sub-int v1, v4, v5

    goto :goto_3
.end method

.method public declared-synchronized ready()Z
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Ljava/io/PipedReader;->isConnected:Z

    if-nez v0, :cond_0

    new-instance v0, Ljava/io/IOException;

    const-string v1, "Pipe not connected"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_0
    :try_start_1
    iget-object v0, p0, Ljava/io/PipedReader;->buffer:[C

    if-nez v0, :cond_1

    new-instance v0, Ljava/io/IOException;

    const-string v1, "Pipe is closed"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    iget v0, p0, Ljava/io/PipedReader;->in:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_2

    const/4 v0, 0x1

    :goto_0
    monitor-exit p0

    return v0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method declared-synchronized receive(C)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Ljava/io/PipedReader;->buffer:[C

    if-nez v1, :cond_0

    new-instance v1, Ljava/io/IOException;

    const-string v2, "Pipe is closed"

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1

    :cond_0
    :try_start_1
    iget-object v1, p0, Ljava/io/PipedReader;->lastReader:Ljava/lang/Thread;

    if-eqz v1, :cond_1

    iget-object v1, p0, Ljava/io/PipedReader;->lastReader:Ljava/lang/Thread;

    invoke-virtual {v1}, Ljava/lang/Thread;->isAlive()Z

    move-result v1

    if-nez v1, :cond_1

    new-instance v1, Ljava/io/IOException;

    const-string v2, "Pipe broken"

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_1
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    iput-object v1, p0, Ljava/io/PipedReader;->lastWriter:Ljava/lang/Thread;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_2
    :try_start_2
    iget-object v1, p0, Ljava/io/PipedReader;->buffer:[C

    if-eqz v1, :cond_3

    iget v1, p0, Ljava/io/PipedReader;->out:I

    iget v2, p0, Ljava/io/PipedReader;->in:I

    if-ne v1, v2, :cond_3

    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    const-wide/16 v1, 0x3e8

    invoke-virtual {p0, v1, v2}, Ljava/lang/Object;->wait(J)V

    iget-object v1, p0, Ljava/io/PipedReader;->lastReader:Ljava/lang/Thread;

    if-eqz v1, :cond_2

    iget-object v1, p0, Ljava/io/PipedReader;->lastReader:Ljava/lang/Thread;

    invoke-virtual {v1}, Ljava/lang/Thread;->isAlive()Z

    move-result v1

    if-nez v1, :cond_2

    new-instance v1, Ljava/io/IOException;

    const-string v2, "Pipe broken"

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_0

    :catch_0
    move-exception v0

    :try_start_3
    new-instance v1, Ljava/io/InterruptedIOException;

    invoke-direct {v1}, Ljava/io/InterruptedIOException;-><init>()V

    throw v1

    :cond_3
    iget-object v1, p0, Ljava/io/PipedReader;->buffer:[C

    if-nez v1, :cond_4

    new-instance v1, Ljava/io/IOException;

    const-string v2, "Pipe is closed"

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_4
    iget v1, p0, Ljava/io/PipedReader;->in:I

    const/4 v2, -0x1

    if-ne v1, v2, :cond_5

    const/4 v1, 0x0

    iput v1, p0, Ljava/io/PipedReader;->in:I

    :cond_5
    iget-object v1, p0, Ljava/io/PipedReader;->buffer:[C

    iget v2, p0, Ljava/io/PipedReader;->in:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Ljava/io/PipedReader;->in:I

    aput-char p1, v1, v2

    iget v1, p0, Ljava/io/PipedReader;->in:I

    iget-object v2, p0, Ljava/io/PipedReader;->buffer:[C

    array-length v2, v2

    if-ne v1, v2, :cond_6

    const/4 v1, 0x0

    iput v1, p0, Ljava/io/PipedReader;->in:I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :cond_6
    monitor-exit p0

    return-void
.end method

.method declared-synchronized receive([CII)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    :try_start_0
    array-length v2, p1

    invoke-static {v2, p2, p3}, Ljava/util/Arrays;->checkOffsetAndCount(III)V

    iget-object v2, p0, Ljava/io/PipedReader;->buffer:[C

    if-nez v2, :cond_0

    new-instance v2, Ljava/io/IOException;

    const-string v3, "Pipe is closed"

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2

    :cond_0
    :try_start_1
    iget-object v2, p0, Ljava/io/PipedReader;->lastReader:Ljava/lang/Thread;

    if-eqz v2, :cond_1

    iget-object v2, p0, Ljava/io/PipedReader;->lastReader:Ljava/lang/Thread;

    invoke-virtual {v2}, Ljava/lang/Thread;->isAlive()Z

    move-result v2

    if-nez v2, :cond_1

    new-instance v2, Ljava/io/IOException;

    const-string v3, "Pipe broken"

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_1
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    iput-object v2, p0, Ljava/io/PipedReader;->lastWriter:Ljava/lang/Thread;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_2
    :goto_0
    if-lez p3, :cond_a

    :cond_3
    :try_start_2
    iget-object v2, p0, Ljava/io/PipedReader;->buffer:[C

    if-eqz v2, :cond_4

    iget v2, p0, Ljava/io/PipedReader;->out:I

    iget v3, p0, Ljava/io/PipedReader;->in:I

    if-ne v2, v3, :cond_4

    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    const-wide/16 v2, 0x3e8

    invoke-virtual {p0, v2, v3}, Ljava/lang/Object;->wait(J)V

    iget-object v2, p0, Ljava/io/PipedReader;->lastReader:Ljava/lang/Thread;

    if-eqz v2, :cond_3

    iget-object v2, p0, Ljava/io/PipedReader;->lastReader:Ljava/lang/Thread;

    invoke-virtual {v2}, Ljava/lang/Thread;->isAlive()Z

    move-result v2

    if-nez v2, :cond_3

    new-instance v2, Ljava/io/IOException;

    const-string v3, "Pipe broken"

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_0

    :catch_0
    move-exception v0

    :try_start_3
    new-instance v2, Ljava/io/InterruptedIOException;

    invoke-direct {v2}, Ljava/io/InterruptedIOException;-><init>()V

    throw v2

    :cond_4
    iget-object v2, p0, Ljava/io/PipedReader;->buffer:[C

    if-nez v2, :cond_5

    new-instance v2, Ljava/io/IOException;

    const-string v3, "Pipe is closed"

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_5
    iget v2, p0, Ljava/io/PipedReader;->in:I

    const/4 v3, -0x1

    if-ne v2, v3, :cond_6

    const/4 v2, 0x0

    iput v2, p0, Ljava/io/PipedReader;->in:I

    :cond_6
    iget v2, p0, Ljava/io/PipedReader;->in:I

    iget v3, p0, Ljava/io/PipedReader;->out:I

    if-lt v2, v3, :cond_8

    iget-object v2, p0, Ljava/io/PipedReader;->buffer:[C

    array-length v2, v2

    iget v3, p0, Ljava/io/PipedReader;->in:I

    sub-int v1, v2, v3

    if-ge p3, v1, :cond_7

    move v1, p3

    :cond_7
    iget-object v2, p0, Ljava/io/PipedReader;->buffer:[C

    iget v3, p0, Ljava/io/PipedReader;->in:I

    invoke-static {p1, p2, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/2addr p2, v1

    sub-int/2addr p3, v1

    iget v2, p0, Ljava/io/PipedReader;->in:I

    add-int/2addr v2, v1

    iput v2, p0, Ljava/io/PipedReader;->in:I

    iget v2, p0, Ljava/io/PipedReader;->in:I

    iget-object v3, p0, Ljava/io/PipedReader;->buffer:[C

    array-length v3, v3

    if-ne v2, v3, :cond_8

    const/4 v2, 0x0

    iput v2, p0, Ljava/io/PipedReader;->in:I

    :cond_8
    if-lez p3, :cond_2

    iget v2, p0, Ljava/io/PipedReader;->in:I

    iget v3, p0, Ljava/io/PipedReader;->out:I

    if-eq v2, v3, :cond_2

    iget v2, p0, Ljava/io/PipedReader;->out:I

    iget v3, p0, Ljava/io/PipedReader;->in:I

    sub-int v1, v2, v3

    if-ge p3, v1, :cond_9

    move v1, p3

    :cond_9
    iget-object v2, p0, Ljava/io/PipedReader;->buffer:[C

    iget v3, p0, Ljava/io/PipedReader;->in:I

    invoke-static {p1, p2, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/2addr p2, v1

    sub-int/2addr p3, v1

    iget v2, p0, Ljava/io/PipedReader;->in:I

    add-int/2addr v2, v1

    iput v2, p0, Ljava/io/PipedReader;->in:I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto/16 :goto_0

    :cond_a
    monitor-exit p0

    return-void
.end method
