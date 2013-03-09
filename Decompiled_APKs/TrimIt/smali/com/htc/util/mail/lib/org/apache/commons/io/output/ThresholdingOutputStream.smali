.class public abstract Lcom/htc/util/mail/lib/org/apache/commons/io/output/ThresholdingOutputStream;
.super Ljava/io/OutputStream;
.source "ThresholdingOutputStream.java"


# instance fields
.field private threshold:I

.field private thresholdExceeded:Z

.field private written:J


# direct methods
.method public constructor <init>(I)V
    .locals 0
    .parameter "threshold"

    .prologue
    .line 76
    invoke-direct {p0}, Ljava/io/OutputStream;-><init>()V

    .line 77
    iput p1, p0, Lcom/htc/util/mail/lib/org/apache/commons/io/output/ThresholdingOutputStream;->threshold:I

    .line 78
    return-void
.end method


# virtual methods
.method protected checkThreshold(I)V
    .locals 4
    .parameter "count"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 218
    iget-boolean v0, p0, Lcom/htc/util/mail/lib/org/apache/commons/io/output/ThresholdingOutputStream;->thresholdExceeded:Z

    if-nez v0, :cond_0

    iget-wide v0, p0, Lcom/htc/util/mail/lib/org/apache/commons/io/output/ThresholdingOutputStream;->written:J

    int-to-long v2, p1

    add-long/2addr v0, v2

    iget v2, p0, Lcom/htc/util/mail/lib/org/apache/commons/io/output/ThresholdingOutputStream;->threshold:I

    int-to-long v2, v2

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    .line 220
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/util/mail/lib/org/apache/commons/io/output/ThresholdingOutputStream;->thresholdExceeded:Z

    .line 221
    invoke-virtual {p0}, Lcom/htc/util/mail/lib/org/apache/commons/io/output/ThresholdingOutputStream;->thresholdReached()V

    .line 223
    :cond_0
    return-void
.end method

.method public close()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 155
    :try_start_0
    invoke-virtual {p0}, Lcom/htc/util/mail/lib/org/apache/commons/io/output/ThresholdingOutputStream;->flush()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 161
    :goto_0
    invoke-virtual {p0}, Lcom/htc/util/mail/lib/org/apache/commons/io/output/ThresholdingOutputStream;->getStream()Ljava/io/OutputStream;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V

    .line 162
    return-void

    .line 157
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public flush()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 141
    invoke-virtual {p0}, Lcom/htc/util/mail/lib/org/apache/commons/io/output/ThresholdingOutputStream;->getStream()Ljava/io/OutputStream;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/OutputStream;->flush()V

    .line 142
    return-void
.end method

.method public getByteCount()J
    .locals 2

    .prologue
    .line 186
    iget-wide v0, p0, Lcom/htc/util/mail/lib/org/apache/commons/io/output/ThresholdingOutputStream;->written:J

    return-wide v0
.end method

.method protected abstract getStream()Ljava/io/OutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public getThreshold()I
    .locals 1

    .prologue
    .line 175
    iget v0, p0, Lcom/htc/util/mail/lib/org/apache/commons/io/output/ThresholdingOutputStream;->threshold:I

    return v0
.end method

.method public isThresholdExceeded()Z
    .locals 4

    .prologue
    .line 199
    iget-wide v0, p0, Lcom/htc/util/mail/lib/org/apache/commons/io/output/ThresholdingOutputStream;->written:J

    iget v2, p0, Lcom/htc/util/mail/lib/org/apache/commons/io/output/ThresholdingOutputStream;->threshold:I

    int-to-long v2, v2

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected resetByteCount()V
    .locals 2

    .prologue
    .line 231
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/util/mail/lib/org/apache/commons/io/output/ThresholdingOutputStream;->thresholdExceeded:Z

    .line 232
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/htc/util/mail/lib/org/apache/commons/io/output/ThresholdingOutputStream;->written:J

    .line 233
    return-void
.end method

.method protected abstract thresholdReached()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public write(I)V
    .locals 4
    .parameter "b"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 93
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/htc/util/mail/lib/org/apache/commons/io/output/ThresholdingOutputStream;->checkThreshold(I)V

    .line 94
    invoke-virtual {p0}, Lcom/htc/util/mail/lib/org/apache/commons/io/output/ThresholdingOutputStream;->getStream()Ljava/io/OutputStream;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/io/OutputStream;->write(I)V

    .line 95
    iget-wide v0, p0, Lcom/htc/util/mail/lib/org/apache/commons/io/output/ThresholdingOutputStream;->written:J

    const-wide/16 v2, 0x1

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/htc/util/mail/lib/org/apache/commons/io/output/ThresholdingOutputStream;->written:J

    .line 96
    return-void
.end method

.method public write([B)V
    .locals 4
    .parameter "b"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 109
    array-length v0, p1

    invoke-virtual {p0, v0}, Lcom/htc/util/mail/lib/org/apache/commons/io/output/ThresholdingOutputStream;->checkThreshold(I)V

    .line 110
    invoke-virtual {p0}, Lcom/htc/util/mail/lib/org/apache/commons/io/output/ThresholdingOutputStream;->getStream()Ljava/io/OutputStream;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/io/OutputStream;->write([B)V

    .line 111
    iget-wide v0, p0, Lcom/htc/util/mail/lib/org/apache/commons/io/output/ThresholdingOutputStream;->written:J

    array-length v2, p1

    int-to-long v2, v2

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/htc/util/mail/lib/org/apache/commons/io/output/ThresholdingOutputStream;->written:J

    .line 112
    return-void
.end method

.method public write([BII)V
    .locals 4
    .parameter "b"
    .parameter "off"
    .parameter "len"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 127
    invoke-virtual {p0, p3}, Lcom/htc/util/mail/lib/org/apache/commons/io/output/ThresholdingOutputStream;->checkThreshold(I)V

    .line 128
    invoke-virtual {p0}, Lcom/htc/util/mail/lib/org/apache/commons/io/output/ThresholdingOutputStream;->getStream()Ljava/io/OutputStream;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Ljava/io/OutputStream;->write([BII)V

    .line 129
    iget-wide v0, p0, Lcom/htc/util/mail/lib/org/apache/commons/io/output/ThresholdingOutputStream;->written:J

    int-to-long v2, p3

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/htc/util/mail/lib/org/apache/commons/io/output/ThresholdingOutputStream;->written:J

    .line 130
    return-void
.end method
