.class public Lcom/htc/util/mail/lib/org/apache/james/mime4j/CloseShieldInputStream;
.super Ljava/io/InputStream;
.source "CloseShieldInputStream.java"


# instance fields
.field private is:Ljava/io/InputStream;


# direct methods
.method public constructor <init>(Ljava/io/InputStream;)V
    .locals 0

    invoke-direct {p0}, Ljava/io/InputStream;-><init>()V

    iput-object p1, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/CloseShieldInputStream;->is:Ljava/io/InputStream;

    return-void
.end method

.method private checkIfClosed()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/CloseShieldInputStream;->is:Ljava/io/InputStream;

    if-nez v0, :cond_0

    new-instance v0, Ljava/io/IOException;

    const-string v1, "Stream is closed"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    return-void
.end method


# virtual methods
.method public available()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-direct {p0}, Lcom/htc/util/mail/lib/org/apache/james/mime4j/CloseShieldInputStream;->checkIfClosed()V

    iget-object v0, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/CloseShieldInputStream;->is:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->available()I

    move-result v0

    return v0
.end method

.method public close()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/CloseShieldInputStream;->is:Ljava/io/InputStream;

    return-void
.end method

.method public getUnderlyingStream()Ljava/io/InputStream;
    .locals 1

    iget-object v0, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/CloseShieldInputStream;->is:Ljava/io/InputStream;

    return-object v0
.end method

.method public declared-synchronized mark(I)V
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/CloseShieldInputStream;->is:Ljava/io/InputStream;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/CloseShieldInputStream;->is:Ljava/io/InputStream;

    invoke-virtual {v0, p1}, Ljava/io/InputStream;->mark(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public markSupported()Z
    .locals 1

    iget-object v0, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/CloseShieldInputStream;->is:Ljava/io/InputStream;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/CloseShieldInputStream;->is:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->markSupported()Z

    move-result v0

    goto :goto_0
.end method

.method public read()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-direct {p0}, Lcom/htc/util/mail/lib/org/apache/james/mime4j/CloseShieldInputStream;->checkIfClosed()V

    iget-object v0, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/CloseShieldInputStream;->is:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->read()I

    move-result v0

    return v0
.end method

.method public read([B)I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-direct {p0}, Lcom/htc/util/mail/lib/org/apache/james/mime4j/CloseShieldInputStream;->checkIfClosed()V

    iget-object v0, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/CloseShieldInputStream;->is:Ljava/io/InputStream;

    invoke-virtual {v0, p1}, Ljava/io/InputStream;->read([B)I

    move-result v0

    return v0
.end method

.method public read([BII)I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-direct {p0}, Lcom/htc/util/mail/lib/org/apache/james/mime4j/CloseShieldInputStream;->checkIfClosed()V

    iget-object v0, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/CloseShieldInputStream;->is:Ljava/io/InputStream;

    invoke-virtual {v0, p1, p2, p3}, Ljava/io/InputStream;->read([BII)I

    move-result v0

    return v0
.end method

.method public declared-synchronized reset()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    :try_start_0
    invoke-direct {p0}, Lcom/htc/util/mail/lib/org/apache/james/mime4j/CloseShieldInputStream;->checkIfClosed()V

    iget-object v0, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/CloseShieldInputStream;->is:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->reset()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public skip(J)J
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-direct {p0}, Lcom/htc/util/mail/lib/org/apache/james/mime4j/CloseShieldInputStream;->checkIfClosed()V

    iget-object v0, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/CloseShieldInputStream;->is:Ljava/io/InputStream;

    invoke-virtual {v0, p1, p2}, Ljava/io/InputStream;->skip(J)J

    move-result-wide v0

    return-wide v0
.end method
