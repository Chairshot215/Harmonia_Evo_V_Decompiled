.class public Lcom/htc/util/mail/lib/org/apache/commons/io/input/TeeInputStream;
.super Lcom/htc/util/mail/lib/org/apache/commons/io/input/ProxyInputStream;
.source "TeeInputStream.java"


# instance fields
.field private final branch:Ljava/io/OutputStream;

.field private final closeBranch:Z


# direct methods
.method public constructor <init>(Ljava/io/InputStream;Ljava/io/OutputStream;)V
    .locals 1
    .parameter "input"
    .parameter "branch"

    .prologue
    .line 60
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/htc/util/mail/lib/org/apache/commons/io/input/TeeInputStream;-><init>(Ljava/io/InputStream;Ljava/io/OutputStream;Z)V

    .line 61
    return-void
.end method

.method public constructor <init>(Ljava/io/InputStream;Ljava/io/OutputStream;Z)V
    .locals 0
    .parameter "input"
    .parameter "branch"
    .parameter "closeBranch"

    .prologue
    .line 76
    invoke-direct {p0, p1}, Lcom/htc/util/mail/lib/org/apache/commons/io/input/ProxyInputStream;-><init>(Ljava/io/InputStream;)V

    .line 77
    iput-object p2, p0, Lcom/htc/util/mail/lib/org/apache/commons/io/input/TeeInputStream;->branch:Ljava/io/OutputStream;

    .line 78
    iput-boolean p3, p0, Lcom/htc/util/mail/lib/org/apache/commons/io/input/TeeInputStream;->closeBranch:Z

    .line 79
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

    .prologue
    .line 90
    :try_start_0
    invoke-super {p0}, Lcom/htc/util/mail/lib/org/apache/commons/io/input/ProxyInputStream;->close()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 92
    iget-boolean v0, p0, Lcom/htc/util/mail/lib/org/apache/commons/io/input/TeeInputStream;->closeBranch:Z

    if-eqz v0, :cond_0

    .line 93
    iget-object v0, p0, Lcom/htc/util/mail/lib/org/apache/commons/io/input/TeeInputStream;->branch:Ljava/io/OutputStream;

    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V

    .line 96
    :cond_0
    return-void

    .line 92
    :catchall_0
    move-exception v0

    iget-boolean v1, p0, Lcom/htc/util/mail/lib/org/apache/commons/io/input/TeeInputStream;->closeBranch:Z

    if-eqz v1, :cond_1

    .line 93
    iget-object v1, p0, Lcom/htc/util/mail/lib/org/apache/commons/io/input/TeeInputStream;->branch:Ljava/io/OutputStream;

    invoke-virtual {v1}, Ljava/io/OutputStream;->close()V

    :cond_1
    throw v0
.end method

.method public read()I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 106
    invoke-super {p0}, Lcom/htc/util/mail/lib/org/apache/commons/io/input/ProxyInputStream;->read()I

    move-result v0

    .line 107
    .local v0, ch:I
    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 108
    iget-object v1, p0, Lcom/htc/util/mail/lib/org/apache/commons/io/input/TeeInputStream;->branch:Ljava/io/OutputStream;

    invoke-virtual {v1, v0}, Ljava/io/OutputStream;->write(I)V

    .line 110
    :cond_0
    return v0
.end method

.method public read([B)I
    .locals 3
    .parameter "bts"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 140
    invoke-super {p0, p1}, Lcom/htc/util/mail/lib/org/apache/commons/io/input/ProxyInputStream;->read([B)I

    move-result v0

    .line 141
    .local v0, n:I
    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 142
    iget-object v1, p0, Lcom/htc/util/mail/lib/org/apache/commons/io/input/TeeInputStream;->branch:Ljava/io/OutputStream;

    const/4 v2, 0x0

    invoke-virtual {v1, p1, v2, v0}, Ljava/io/OutputStream;->write([BII)V

    .line 144
    :cond_0
    return v0
.end method

.method public read([BII)I
    .locals 2
    .parameter "bts"
    .parameter "st"
    .parameter "end"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 124
    invoke-super {p0, p1, p2, p3}, Lcom/htc/util/mail/lib/org/apache/commons/io/input/ProxyInputStream;->read([BII)I

    move-result v0

    .line 125
    .local v0, n:I
    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 126
    iget-object v1, p0, Lcom/htc/util/mail/lib/org/apache/commons/io/input/TeeInputStream;->branch:Ljava/io/OutputStream;

    invoke-virtual {v1, p1, p2, v0}, Ljava/io/OutputStream;->write([BII)V

    .line 128
    :cond_0
    return v0
.end method
