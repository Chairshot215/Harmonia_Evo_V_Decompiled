.class public Lcom/htc/util/mail/lib/org/apache/commons/io/output/TeeOutputStream;
.super Lcom/htc/util/mail/lib/org/apache/commons/io/output/ProxyOutputStream;
.source "TeeOutputStream.java"


# instance fields
.field protected branch:Ljava/io/OutputStream;


# direct methods
.method public constructor <init>(Ljava/io/OutputStream;Ljava/io/OutputStream;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/htc/util/mail/lib/org/apache/commons/io/output/ProxyOutputStream;-><init>(Ljava/io/OutputStream;)V

    iput-object p2, p0, Lcom/htc/util/mail/lib/org/apache/commons/io/output/TeeOutputStream;->branch:Ljava/io/OutputStream;

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

    invoke-super {p0}, Lcom/htc/util/mail/lib/org/apache/commons/io/output/ProxyOutputStream;->close()V

    iget-object v0, p0, Lcom/htc/util/mail/lib/org/apache/commons/io/output/TeeOutputStream;->branch:Ljava/io/OutputStream;

    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V

    return-void
.end method

.method public flush()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-super {p0}, Lcom/htc/util/mail/lib/org/apache/commons/io/output/ProxyOutputStream;->flush()V

    iget-object v0, p0, Lcom/htc/util/mail/lib/org/apache/commons/io/output/TeeOutputStream;->branch:Ljava/io/OutputStream;

    invoke-virtual {v0}, Ljava/io/OutputStream;->flush()V

    return-void
.end method

.method public declared-synchronized write(I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    :try_start_0
    invoke-super {p0, p1}, Lcom/htc/util/mail/lib/org/apache/commons/io/output/ProxyOutputStream;->write(I)V

    iget-object v0, p0, Lcom/htc/util/mail/lib/org/apache/commons/io/output/TeeOutputStream;->branch:Ljava/io/OutputStream;

    invoke-virtual {v0, p1}, Ljava/io/OutputStream;->write(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized write([B)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    :try_start_0
    invoke-super {p0, p1}, Lcom/htc/util/mail/lib/org/apache/commons/io/output/ProxyOutputStream;->write([B)V

    iget-object v0, p0, Lcom/htc/util/mail/lib/org/apache/commons/io/output/TeeOutputStream;->branch:Ljava/io/OutputStream;

    invoke-virtual {v0, p1}, Ljava/io/OutputStream;->write([B)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized write([BII)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    :try_start_0
    invoke-super {p0, p1, p2, p3}, Lcom/htc/util/mail/lib/org/apache/commons/io/output/ProxyOutputStream;->write([BII)V

    iget-object v0, p0, Lcom/htc/util/mail/lib/org/apache/commons/io/output/TeeOutputStream;->branch:Ljava/io/OutputStream;

    invoke-virtual {v0, p1, p2, p3}, Ljava/io/OutputStream;->write([BII)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
