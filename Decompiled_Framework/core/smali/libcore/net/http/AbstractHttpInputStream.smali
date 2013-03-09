.class abstract Llibcore/net/http/AbstractHttpInputStream;
.super Ljava/io/InputStream;
.source "AbstractHttpInputStream.java"


# instance fields
.field private final cacheBody:Ljava/io/OutputStream;

.field private final cacheRequest:Ljava/net/CacheRequest;

.field protected closed:Z

.field protected final httpEngine:Llibcore/net/http/HttpEngine;

.field protected final in:Ljava/io/InputStream;


# direct methods
.method constructor <init>(Ljava/io/InputStream;Llibcore/net/http/HttpEngine;Ljava/net/CacheRequest;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-direct {p0}, Ljava/io/InputStream;-><init>()V

    iput-object p1, p0, Llibcore/net/http/AbstractHttpInputStream;->in:Ljava/io/InputStream;

    iput-object p2, p0, Llibcore/net/http/AbstractHttpInputStream;->httpEngine:Llibcore/net/http/HttpEngine;

    if-eqz p3, :cond_1

    invoke-virtual {p3}, Ljava/net/CacheRequest;->getBody()Ljava/io/OutputStream;

    move-result-object v0

    :goto_0
    if-nez v0, :cond_0

    const/4 p3, 0x0

    :cond_0
    iput-object v0, p0, Llibcore/net/http/AbstractHttpInputStream;->cacheBody:Ljava/io/OutputStream;

    iput-object p3, p0, Llibcore/net/http/AbstractHttpInputStream;->cacheRequest:Ljava/net/CacheRequest;

    return-void

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method protected final cacheWrite([BII)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Llibcore/net/http/AbstractHttpInputStream;->cacheBody:Ljava/io/OutputStream;

    if-eqz v0, :cond_0

    iget-object v0, p0, Llibcore/net/http/AbstractHttpInputStream;->cacheBody:Ljava/io/OutputStream;

    invoke-virtual {v0, p1, p2, p3}, Ljava/io/OutputStream;->write([BII)V

    :cond_0
    return-void
.end method

.method protected final checkNotClosed()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-boolean v0, p0, Llibcore/net/http/AbstractHttpInputStream;->closed:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/io/IOException;

    const-string v1, "stream closed"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    return-void
.end method

.method protected final endOfInput(Z)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Llibcore/net/http/AbstractHttpInputStream;->cacheRequest:Ljava/net/CacheRequest;

    if-eqz v0, :cond_0

    iget-object v0, p0, Llibcore/net/http/AbstractHttpInputStream;->cacheBody:Ljava/io/OutputStream;

    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V

    :cond_0
    iget-object v0, p0, Llibcore/net/http/AbstractHttpInputStream;->httpEngine:Llibcore/net/http/HttpEngine;

    invoke-virtual {v0, p1}, Llibcore/net/http/HttpEngine;->release(Z)V

    return-void
.end method

.method public final read()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-static {p0}, Llibcore/io/Streams;->readSingleByte(Ljava/io/InputStream;)I

    move-result v0

    return v0
.end method

.method protected final unexpectedEndOfInput()V
    .locals 2

    iget-object v0, p0, Llibcore/net/http/AbstractHttpInputStream;->cacheRequest:Ljava/net/CacheRequest;

    if-eqz v0, :cond_0

    iget-object v0, p0, Llibcore/net/http/AbstractHttpInputStream;->cacheRequest:Ljava/net/CacheRequest;

    invoke-virtual {v0}, Ljava/net/CacheRequest;->abort()V

    :cond_0
    iget-object v0, p0, Llibcore/net/http/AbstractHttpInputStream;->httpEngine:Llibcore/net/http/HttpEngine;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Llibcore/net/http/HttpEngine;->release(Z)V

    return-void
.end method
