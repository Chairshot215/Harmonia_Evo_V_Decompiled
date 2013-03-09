.class public Lcom/htc/util/mail/lib/org/apache/commons/io/output/TeeOutputStream;
.super Lcom/htc/util/mail/lib/org/apache/commons/io/output/ProxyOutputStream;
.source "TeeOutputStream.java"


# instance fields
.field protected branch:Ljava/io/OutputStream;


# direct methods
.method public constructor <init>(Ljava/io/OutputStream;Ljava/io/OutputStream;)V
    .locals 0
    .parameter "out"
    .parameter "branch"

    .prologue
    .line 40
    invoke-direct {p0, p1}, Lcom/htc/util/mail/lib/org/apache/commons/io/output/ProxyOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 41
    iput-object p2, p0, Lcom/htc/util/mail/lib/org/apache/commons/io/output/TeeOutputStream;->branch:Ljava/io/OutputStream;

    .line 42
    return-void
.end method


# virtual methods
.method public close()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 90
    invoke-super {p0}, Lcom/htc/util/mail/lib/org/apache/commons/io/output/ProxyOutputStream;->close()V

    .line 91
    iget-object v0, p0, Lcom/htc/util/mail/lib/org/apache/commons/io/output/TeeOutputStream;->branch:Ljava/io/OutputStream;

    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V

    .line 92
    return-void
.end method

.method public flush()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 81
    invoke-super {p0}, Lcom/htc/util/mail/lib/org/apache/commons/io/output/ProxyOutputStream;->flush()V

    .line 82
    iget-object v0, p0, Lcom/htc/util/mail/lib/org/apache/commons/io/output/TeeOutputStream;->branch:Ljava/io/OutputStream;

    invoke-virtual {v0}, Ljava/io/OutputStream;->flush()V

    .line 83
    return-void
.end method

.method public declared-synchronized write(I)V
    .locals 1
    .parameter "b"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 72
    monitor-enter p0

    :try_start_0
    invoke-super {p0, p1}, Lcom/htc/util/mail/lib/org/apache/commons/io/output/ProxyOutputStream;->write(I)V

    .line 73
    iget-object v0, p0, Lcom/htc/util/mail/lib/org/apache/commons/io/output/TeeOutputStream;->branch:Ljava/io/OutputStream;

    invoke-virtual {v0, p1}, Ljava/io/OutputStream;->write(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 74
    monitor-exit p0

    return-void

    .line 72
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized write([B)V
    .locals 1
    .parameter "b"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 50
    monitor-enter p0

    :try_start_0
    invoke-super {p0, p1}, Lcom/htc/util/mail/lib/org/apache/commons/io/output/ProxyOutputStream;->write([B)V

    .line 51
    iget-object v0, p0, Lcom/htc/util/mail/lib/org/apache/commons/io/output/TeeOutputStream;->branch:Ljava/io/OutputStream;

    invoke-virtual {v0, p1}, Ljava/io/OutputStream;->write([B)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 52
    monitor-exit p0

    return-void

    .line 50
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized write([BII)V
    .locals 1
    .parameter "b"
    .parameter "off"
    .parameter "len"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 62
    monitor-enter p0

    :try_start_0
    invoke-super {p0, p1, p2, p3}, Lcom/htc/util/mail/lib/org/apache/commons/io/output/ProxyOutputStream;->write([BII)V

    .line 63
    iget-object v0, p0, Lcom/htc/util/mail/lib/org/apache/commons/io/output/TeeOutputStream;->branch:Ljava/io/OutputStream;

    invoke-virtual {v0, p1, p2, p3}, Ljava/io/OutputStream;->write([BII)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 64
    monitor-exit p0

    return-void

    .line 62
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
