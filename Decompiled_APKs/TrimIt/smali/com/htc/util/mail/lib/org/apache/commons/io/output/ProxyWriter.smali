.class public Lcom/htc/util/mail/lib/org/apache/commons/io/output/ProxyWriter;
.super Ljava/io/FilterWriter;
.source "ProxyWriter.java"


# direct methods
.method public constructor <init>(Ljava/io/Writer;)V
    .locals 0
    .parameter "proxy"

    .prologue
    .line 42
    invoke-direct {p0, p1}, Ljava/io/FilterWriter;-><init>(Ljava/io/Writer;)V

    .line 44
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
    .line 108
    iget-object v0, p0, Lcom/htc/util/mail/lib/org/apache/commons/io/output/ProxyWriter;->out:Ljava/io/Writer;

    invoke-virtual {v0}, Ljava/io/Writer;->close()V

    .line 109
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
    .line 100
    iget-object v0, p0, Lcom/htc/util/mail/lib/org/apache/commons/io/output/ProxyWriter;->out:Ljava/io/Writer;

    invoke-virtual {v0}, Ljava/io/Writer;->flush()V

    .line 101
    return-void
.end method

.method public write(I)V
    .locals 1
    .parameter "idx"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 52
    iget-object v0, p0, Lcom/htc/util/mail/lib/org/apache/commons/io/output/ProxyWriter;->out:Ljava/io/Writer;

    invoke-virtual {v0, p1}, Ljava/io/Writer;->write(I)V

    .line 53
    return-void
.end method

.method public write(Ljava/lang/String;)V
    .locals 1
    .parameter "str"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 81
    iget-object v0, p0, Lcom/htc/util/mail/lib/org/apache/commons/io/output/ProxyWriter;->out:Ljava/io/Writer;

    invoke-virtual {v0, p1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 82
    return-void
.end method

.method public write(Ljava/lang/String;II)V
    .locals 1
    .parameter "str"
    .parameter "st"
    .parameter "end"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 92
    iget-object v0, p0, Lcom/htc/util/mail/lib/org/apache/commons/io/output/ProxyWriter;->out:Ljava/io/Writer;

    invoke-virtual {v0, p1, p2, p3}, Ljava/io/Writer;->write(Ljava/lang/String;II)V

    .line 93
    return-void
.end method

.method public write([C)V
    .locals 1
    .parameter "chr"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 61
    iget-object v0, p0, Lcom/htc/util/mail/lib/org/apache/commons/io/output/ProxyWriter;->out:Ljava/io/Writer;

    invoke-virtual {v0, p1}, Ljava/io/Writer;->write([C)V

    .line 62
    return-void
.end method

.method public write([CII)V
    .locals 1
    .parameter "chr"
    .parameter "st"
    .parameter "end"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 72
    iget-object v0, p0, Lcom/htc/util/mail/lib/org/apache/commons/io/output/ProxyWriter;->out:Ljava/io/Writer;

    invoke-virtual {v0, p1, p2, p3}, Ljava/io/Writer;->write([CII)V

    .line 73
    return-void
.end method
