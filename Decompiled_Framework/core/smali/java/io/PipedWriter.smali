.class public Ljava/io/PipedWriter;
.super Ljava/io/Writer;
.source "PipedWriter.java"


# instance fields
.field private destination:Ljava/io/PipedReader;

.field private isClosed:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/io/Writer;-><init>()V

    return-void
.end method

.method public constructor <init>(Ljava/io/PipedReader;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-direct {p0, p1}, Ljava/io/Writer;-><init>(Ljava/lang/Object;)V

    invoke-virtual {p0, p1}, Ljava/io/PipedWriter;->connect(Ljava/io/PipedReader;)V

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

    iget-object v0, p0, Ljava/io/PipedWriter;->destination:Ljava/io/PipedReader;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/io/PipedReader;->done()V

    const/4 v1, 0x1

    iput-boolean v1, p0, Ljava/io/PipedWriter;->isClosed:Z

    const/4 v1, 0x0

    iput-object v1, p0, Ljava/io/PipedWriter;->destination:Ljava/io/PipedReader;

    :cond_0
    return-void
.end method

.method public connect(Ljava/io/PipedReader;)V
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
    iget-object v0, p0, Ljava/io/PipedWriter;->destination:Ljava/io/PipedReader;

    if-eqz v0, :cond_1

    new-instance v0, Ljava/io/IOException;

    const-string v1, "Pipe already connected"

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
    invoke-virtual {p1}, Ljava/io/PipedReader;->establishConnection()V

    iput-object p1, p0, Ljava/io/Writer;->lock:Ljava/lang/Object;

    iput-object p1, p0, Ljava/io/PipedWriter;->destination:Ljava/io/PipedReader;

    monitor-exit p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-void
.end method

.method public flush()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Ljava/io/PipedWriter;->destination:Ljava/io/PipedReader;

    iget-boolean v1, p0, Ljava/io/PipedWriter;->isClosed:Z

    if-eqz v1, :cond_0

    new-instance v1, Ljava/io/IOException;

    const-string v2, "Pipe is closed"

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_0
    if-nez v0, :cond_1

    :goto_0
    return-void

    :cond_1
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

    iget-object v0, p0, Ljava/io/PipedWriter;->destination:Ljava/io/PipedReader;

    if-nez v0, :cond_0

    new-instance v1, Ljava/io/IOException;

    const-string v2, "Pipe not connected"

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_0
    int-to-char v1, p1

    invoke-virtual {v0, v1}, Ljava/io/PipedReader;->receive(C)V

    return-void
.end method

.method public write([CII)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Ljava/io/PipedWriter;->destination:Ljava/io/PipedReader;

    if-nez v0, :cond_0

    new-instance v1, Ljava/io/IOException;

    const-string v2, "Pipe not connected"

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_0
    invoke-virtual {v0, p1, p2, p3}, Ljava/io/PipedReader;->receive([CII)V

    return-void
.end method
