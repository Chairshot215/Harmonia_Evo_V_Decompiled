.class public Ljava/io/PipedOutputStream;
.super Ljava/io/OutputStream;
.source "PipedOutputStream.java"


# instance fields
.field private target:Ljava/io/PipedInputStream;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/io/OutputStream;-><init>()V

    return-void
.end method

.method public constructor <init>(Ljava/io/PipedInputStream;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-direct {p0}, Ljava/io/OutputStream;-><init>()V

    invoke-virtual {p0, p1}, Ljava/io/PipedOutputStream;->connect(Ljava/io/PipedInputStream;)V

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

    iget-object v0, p0, Ljava/io/PipedOutputStream;->target:Ljava/io/PipedInputStream;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/io/PipedInputStream;->done()V

    const/4 v1, 0x0

    iput-object v1, p0, Ljava/io/PipedOutputStream;->target:Ljava/io/PipedInputStream;

    :cond_0
    return-void
.end method

.method public connect(Ljava/io/PipedInputStream;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    :cond_0
    monitor-enter p1

    :try_start_0
    iget-object v0, p0, Ljava/io/PipedOutputStream;->target:Ljava/io/PipedInputStream;

    if-eqz v0, :cond_1

    new-instance v0, Ljava/io/IOException;

    const-string v1, "Already connected"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :catchall_0
    move-exception v0

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_1
    :try_start_1
    iget-boolean v0, p1, Ljava/io/PipedInputStream;->isConnected:Z

    if-eqz v0, :cond_2

    new-instance v0, Ljava/io/IOException;

    const-string v1, "Pipe already connected"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    invoke-virtual {p1}, Ljava/io/PipedInputStream;->establishConnection()V

    iput-object p1, p0, Ljava/io/PipedOutputStream;->target:Ljava/io/PipedInputStream;

    monitor-exit p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-void
.end method

.method public flush()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Ljava/io/PipedOutputStream;->target:Ljava/io/PipedInputStream;

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    monitor-enter v0

    :try_start_0
    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public write(I)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Ljava/io/PipedOutputStream;->target:Ljava/io/PipedInputStream;

    if-nez v0, :cond_0

    new-instance v1, Ljava/io/IOException;

    const-string v2, "Pipe not connected"

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_0
    invoke-virtual {v0, p1}, Ljava/io/PipedInputStream;->receive(I)V

    return-void
.end method

.method public write([BII)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-super {p0, p1, p2, p3}, Ljava/io/OutputStream;->write([BII)V

    return-void
.end method
