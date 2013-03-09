.class public Lcom/google/common/io/CountingInputStream;
.super Ljava/io/FilterInputStream;
.source "CountingInputStream.java"


# instance fields
.field private count:J

.field private mark:J


# direct methods
.method public constructor <init>(Ljava/io/InputStream;)V
    .locals 2
    .parameter "in"

    .prologue
    .line 40
    invoke-direct {p0, p1}, Ljava/io/FilterInputStream;-><init>(Ljava/io/InputStream;)V

    .line 32
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/google/common/io/CountingInputStream;->mark:J

    .line 41
    return-void
.end method


# virtual methods
.method public getCount()J
    .locals 2

    .prologue
    .line 45
    iget-wide v0, p0, Lcom/google/common/io/CountingInputStream;->count:J

    return-wide v0
.end method

.method public mark(I)V
    .locals 2
    .parameter "readlimit"

    .prologue
    .line 71
    iget-object v0, p0, Lcom/google/common/io/CountingInputStream;->in:Ljava/io/InputStream;

    invoke-virtual {v0, p1}, Ljava/io/InputStream;->mark(I)V

    .line 72
    iget-wide v0, p0, Lcom/google/common/io/CountingInputStream;->count:J

    iput-wide v0, p0, Lcom/google/common/io/CountingInputStream;->mark:J

    .line 74
    return-void
.end method

.method public read()I
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 49
    iget-object v1, p0, Lcom/google/common/io/CountingInputStream;->in:Ljava/io/InputStream;

    invoke-virtual {v1}, Ljava/io/InputStream;->read()I

    move-result v0

    .line 50
    .local v0, result:I
    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 51
    iget-wide v1, p0, Lcom/google/common/io/CountingInputStream;->count:J

    const-wide/16 v3, 0x1

    add-long/2addr v1, v3

    iput-wide v1, p0, Lcom/google/common/io/CountingInputStream;->count:J

    .line 53
    :cond_0
    return v0
.end method

.method public read([BII)I
    .locals 5
    .parameter "b"
    .parameter "off"
    .parameter "len"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 57
    iget-object v1, p0, Lcom/google/common/io/CountingInputStream;->in:Ljava/io/InputStream;

    invoke-virtual {v1, p1, p2, p3}, Ljava/io/InputStream;->read([BII)I

    move-result v0

    .line 58
    .local v0, result:I
    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 59
    iget-wide v1, p0, Lcom/google/common/io/CountingInputStream;->count:J

    int-to-long v3, v0

    add-long/2addr v1, v3

    iput-wide v1, p0, Lcom/google/common/io/CountingInputStream;->count:J

    .line 61
    :cond_0
    return v0
.end method

.method public reset()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 77
    iget-object v0, p0, Lcom/google/common/io/CountingInputStream;->in:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->markSupported()Z

    move-result v0

    if-nez v0, :cond_0

    .line 78
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Mark not supported"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 80
    :cond_0
    iget-wide v0, p0, Lcom/google/common/io/CountingInputStream;->mark:J

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-nez v0, :cond_1

    .line 81
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Mark not set"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 84
    :cond_1
    iget-object v0, p0, Lcom/google/common/io/CountingInputStream;->in:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->reset()V

    .line 85
    iget-wide v0, p0, Lcom/google/common/io/CountingInputStream;->mark:J

    iput-wide v0, p0, Lcom/google/common/io/CountingInputStream;->count:J

    .line 86
    return-void
.end method

.method public skip(J)J
    .locals 4
    .parameter "n"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 65
    iget-object v2, p0, Lcom/google/common/io/CountingInputStream;->in:Ljava/io/InputStream;

    invoke-virtual {v2, p1, p2}, Ljava/io/InputStream;->skip(J)J

    move-result-wide v0

    .line 66
    .local v0, result:J
    iget-wide v2, p0, Lcom/google/common/io/CountingInputStream;->count:J

    add-long/2addr v2, v0

    iput-wide v2, p0, Lcom/google/common/io/CountingInputStream;->count:J

    .line 67
    return-wide v0
.end method
