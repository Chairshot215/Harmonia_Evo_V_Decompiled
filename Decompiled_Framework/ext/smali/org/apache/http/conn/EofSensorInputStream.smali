.class public Lorg/apache/http/conn/EofSensorInputStream;
.super Ljava/io/InputStream;
.source "EofSensorInputStream.java"

# interfaces
.implements Lorg/apache/http/conn/ConnectionReleaseTrigger;


# instance fields
.field private eofWatcher:Lorg/apache/http/conn/EofSensorWatcher;

.field private selfClosed:Z

.field protected wrappedStream:Ljava/io/InputStream;


# direct methods
.method public constructor <init>(Ljava/io/InputStream;Lorg/apache/http/conn/EofSensorWatcher;)V
    .locals 2

    invoke-direct {p0}, Ljava/io/InputStream;-><init>()V

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Wrapped stream may not be null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iput-object p1, p0, Lorg/apache/http/conn/EofSensorInputStream;->wrappedStream:Ljava/io/InputStream;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/apache/http/conn/EofSensorInputStream;->selfClosed:Z

    iput-object p2, p0, Lorg/apache/http/conn/EofSensorInputStream;->eofWatcher:Lorg/apache/http/conn/EofSensorWatcher;

    return-void
.end method


# virtual methods
.method public abortConnection()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/apache/http/conn/EofSensorInputStream;->selfClosed:Z

    invoke-virtual {p0}, Lorg/apache/http/conn/EofSensorInputStream;->checkAbort()V

    return-void
.end method

.method public available()I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    invoke-virtual {p0}, Lorg/apache/http/conn/EofSensorInputStream;->isReadAllowed()Z

    move-result v2

    if-eqz v2, :cond_0

    :try_start_0
    iget-object v2, p0, Lorg/apache/http/conn/EofSensorInputStream;->wrappedStream:Ljava/io/InputStream;

    invoke-virtual {v2}, Ljava/io/InputStream;->available()I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    :cond_0
    return v0

    :catch_0
    move-exception v1

    invoke-virtual {p0}, Lorg/apache/http/conn/EofSensorInputStream;->checkAbort()V

    throw v1
.end method

.method protected checkAbort()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v3, 0x0

    iget-object v1, p0, Lorg/apache/http/conn/EofSensorInputStream;->wrappedStream:Ljava/io/InputStream;

    if-eqz v1, :cond_2

    const/4 v0, 0x1

    :try_start_0
    iget-object v1, p0, Lorg/apache/http/conn/EofSensorInputStream;->eofWatcher:Lorg/apache/http/conn/EofSensorWatcher;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lorg/apache/http/conn/EofSensorInputStream;->eofWatcher:Lorg/apache/http/conn/EofSensorWatcher;

    iget-object v2, p0, Lorg/apache/http/conn/EofSensorInputStream;->wrappedStream:Ljava/io/InputStream;

    invoke-interface {v1, v2}, Lorg/apache/http/conn/EofSensorWatcher;->streamAbort(Ljava/io/InputStream;)Z

    move-result v0

    :cond_0
    if-eqz v0, :cond_1

    iget-object v1, p0, Lorg/apache/http/conn/EofSensorInputStream;->wrappedStream:Ljava/io/InputStream;

    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    iput-object v3, p0, Lorg/apache/http/conn/EofSensorInputStream;->wrappedStream:Ljava/io/InputStream;

    :cond_2
    return-void

    :catchall_0
    move-exception v1

    iput-object v3, p0, Lorg/apache/http/conn/EofSensorInputStream;->wrappedStream:Ljava/io/InputStream;

    throw v1
.end method

.method protected checkClose()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v3, 0x0

    iget-object v1, p0, Lorg/apache/http/conn/EofSensorInputStream;->wrappedStream:Ljava/io/InputStream;

    if-eqz v1, :cond_2

    const/4 v0, 0x1

    :try_start_0
    iget-object v1, p0, Lorg/apache/http/conn/EofSensorInputStream;->eofWatcher:Lorg/apache/http/conn/EofSensorWatcher;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lorg/apache/http/conn/EofSensorInputStream;->eofWatcher:Lorg/apache/http/conn/EofSensorWatcher;

    iget-object v2, p0, Lorg/apache/http/conn/EofSensorInputStream;->wrappedStream:Ljava/io/InputStream;

    invoke-interface {v1, v2}, Lorg/apache/http/conn/EofSensorWatcher;->streamClosed(Ljava/io/InputStream;)Z

    move-result v0

    :cond_0
    if-eqz v0, :cond_1

    iget-object v1, p0, Lorg/apache/http/conn/EofSensorInputStream;->wrappedStream:Ljava/io/InputStream;

    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    iput-object v3, p0, Lorg/apache/http/conn/EofSensorInputStream;->wrappedStream:Ljava/io/InputStream;

    :cond_2
    return-void

    :catchall_0
    move-exception v1

    iput-object v3, p0, Lorg/apache/http/conn/EofSensorInputStream;->wrappedStream:Ljava/io/InputStream;

    throw v1
.end method

.method protected checkEOF(I)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v3, 0x0

    iget-object v1, p0, Lorg/apache/http/conn/EofSensorInputStream;->wrappedStream:Ljava/io/InputStream;

    if-eqz v1, :cond_2

    if-gez p1, :cond_2

    const/4 v0, 0x1

    :try_start_0
    iget-object v1, p0, Lorg/apache/http/conn/EofSensorInputStream;->eofWatcher:Lorg/apache/http/conn/EofSensorWatcher;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lorg/apache/http/conn/EofSensorInputStream;->eofWatcher:Lorg/apache/http/conn/EofSensorWatcher;

    iget-object v2, p0, Lorg/apache/http/conn/EofSensorInputStream;->wrappedStream:Ljava/io/InputStream;

    invoke-interface {v1, v2}, Lorg/apache/http/conn/EofSensorWatcher;->eofDetected(Ljava/io/InputStream;)Z

    move-result v0

    :cond_0
    if-eqz v0, :cond_1

    iget-object v1, p0, Lorg/apache/http/conn/EofSensorInputStream;->wrappedStream:Ljava/io/InputStream;

    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    iput-object v3, p0, Lorg/apache/http/conn/EofSensorInputStream;->wrappedStream:Ljava/io/InputStream;

    :cond_2
    return-void

    :catchall_0
    move-exception v1

    iput-object v3, p0, Lorg/apache/http/conn/EofSensorInputStream;->wrappedStream:Ljava/io/InputStream;

    throw v1
.end method

.method public close()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/apache/http/conn/EofSensorInputStream;->selfClosed:Z

    invoke-virtual {p0}, Lorg/apache/http/conn/EofSensorInputStream;->checkClose()V

    return-void
.end method

.method protected isReadAllowed()Z
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-boolean v0, p0, Lorg/apache/http/conn/EofSensorInputStream;->selfClosed:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/io/IOException;

    const-string v1, "Attempted read on closed stream."

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget-object v0, p0, Lorg/apache/http/conn/EofSensorInputStream;->wrappedStream:Ljava/io/InputStream;

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public read()I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v1, -0x1

    invoke-virtual {p0}, Lorg/apache/http/conn/EofSensorInputStream;->isReadAllowed()Z

    move-result v2

    if-eqz v2, :cond_0

    :try_start_0
    iget-object v2, p0, Lorg/apache/http/conn/EofSensorInputStream;->wrappedStream:Ljava/io/InputStream;

    invoke-virtual {v2}, Ljava/io/InputStream;->read()I

    move-result v1

    invoke-virtual {p0, v1}, Lorg/apache/http/conn/EofSensorInputStream;->checkEOF(I)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    return v1

    :catch_0
    move-exception v0

    invoke-virtual {p0}, Lorg/apache/http/conn/EofSensorInputStream;->checkAbort()V

    throw v0
.end method

.method public read([B)I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v1, -0x1

    invoke-virtual {p0}, Lorg/apache/http/conn/EofSensorInputStream;->isReadAllowed()Z

    move-result v2

    if-eqz v2, :cond_0

    :try_start_0
    iget-object v2, p0, Lorg/apache/http/conn/EofSensorInputStream;->wrappedStream:Ljava/io/InputStream;

    invoke-virtual {v2, p1}, Ljava/io/InputStream;->read([B)I

    move-result v1

    invoke-virtual {p0, v1}, Lorg/apache/http/conn/EofSensorInputStream;->checkEOF(I)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    return v1

    :catch_0
    move-exception v0

    invoke-virtual {p0}, Lorg/apache/http/conn/EofSensorInputStream;->checkAbort()V

    throw v0
.end method

.method public read([BII)I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v1, -0x1

    invoke-virtual {p0}, Lorg/apache/http/conn/EofSensorInputStream;->isReadAllowed()Z

    move-result v2

    if-eqz v2, :cond_0

    :try_start_0
    iget-object v2, p0, Lorg/apache/http/conn/EofSensorInputStream;->wrappedStream:Ljava/io/InputStream;

    invoke-virtual {v2, p1, p2, p3}, Ljava/io/InputStream;->read([BII)I

    move-result v1

    invoke-virtual {p0, v1}, Lorg/apache/http/conn/EofSensorInputStream;->checkEOF(I)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    return v1

    :catch_0
    move-exception v0

    invoke-virtual {p0}, Lorg/apache/http/conn/EofSensorInputStream;->checkAbort()V

    throw v0
.end method

.method public releaseConnection()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0}, Lorg/apache/http/conn/EofSensorInputStream;->close()V

    return-void
.end method
