.class public Lcom/htc/util/mail/lib/org/apache/commons/io/input/AutoCloseInputStream;
.super Lcom/htc/util/mail/lib/org/apache/commons/io/input/ProxyInputStream;
.source "AutoCloseInputStream.java"


# direct methods
.method public constructor <init>(Ljava/io/InputStream;)V
    .locals 0
    .parameter "in"

    .prologue
    .line 45
    invoke-direct {p0, p1}, Lcom/htc/util/mail/lib/org/apache/commons/io/input/ProxyInputStream;-><init>(Ljava/io/InputStream;)V

    .line 46
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
    .line 62
    iget-object v0, p0, Lcom/htc/util/mail/lib/org/apache/commons/io/input/AutoCloseInputStream;->in:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    .line 63
    new-instance v0, Lcom/htc/util/mail/lib/org/apache/commons/io/input/ClosedInputStream;

    invoke-direct {v0}, Lcom/htc/util/mail/lib/org/apache/commons/io/input/ClosedInputStream;-><init>()V

    iput-object v0, p0, Lcom/htc/util/mail/lib/org/apache/commons/io/input/AutoCloseInputStream;->in:Ljava/io/InputStream;

    .line 64
    return-void
.end method

.method protected finalize()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 125
    invoke-virtual {p0}, Lcom/htc/util/mail/lib/org/apache/commons/io/input/AutoCloseInputStream;->close()V

    .line 126
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 127
    return-void
.end method

.method public read()I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 75
    iget-object v1, p0, Lcom/htc/util/mail/lib/org/apache/commons/io/input/AutoCloseInputStream;->in:Ljava/io/InputStream;

    invoke-virtual {v1}, Ljava/io/InputStream;->read()I

    move-result v0

    .line 76
    .local v0, n:I
    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 77
    invoke-virtual {p0}, Lcom/htc/util/mail/lib/org/apache/commons/io/input/AutoCloseInputStream;->close()V

    .line 79
    :cond_0
    return v0
.end method

.method public read([B)I
    .locals 2
    .parameter "b"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 92
    iget-object v1, p0, Lcom/htc/util/mail/lib/org/apache/commons/io/input/AutoCloseInputStream;->in:Ljava/io/InputStream;

    invoke-virtual {v1, p1}, Ljava/io/InputStream;->read([B)I

    move-result v0

    .line 93
    .local v0, n:I
    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 94
    invoke-virtual {p0}, Lcom/htc/util/mail/lib/org/apache/commons/io/input/AutoCloseInputStream;->close()V

    .line 96
    :cond_0
    return v0
.end method

.method public read([BII)I
    .locals 2
    .parameter "b"
    .parameter "off"
    .parameter "len"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 111
    iget-object v1, p0, Lcom/htc/util/mail/lib/org/apache/commons/io/input/AutoCloseInputStream;->in:Ljava/io/InputStream;

    invoke-virtual {v1, p1, p2, p3}, Ljava/io/InputStream;->read([BII)I

    move-result v0

    .line 112
    .local v0, n:I
    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 113
    invoke-virtual {p0}, Lcom/htc/util/mail/lib/org/apache/commons/io/input/AutoCloseInputStream;->close()V

    .line 115
    :cond_0
    return v0
.end method
