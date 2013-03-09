.class public Lcom/google/common/io/LimitInputStream;
.super Ljava/io/FilterInputStream;
.source "LimitInputStream.java"


# instance fields
.field private left:J

.field private mark:J


# direct methods
.method public constructor <init>(Ljava/io/InputStream;J)V
    .locals 2
    .parameter "in"
    .parameter "limit"

    .prologue
    .line 43
    invoke-direct {p0, p1}, Ljava/io/FilterInputStream;-><init>(Ljava/io/InputStream;)V

    .line 34
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/google/common/io/LimitInputStream;->mark:J

    .line 44
    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 45
    const-wide/16 v0, 0x0

    cmp-long v0, p2, v0

    if-ltz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    const-string v1, "limit must be non-negative"

    invoke-static {v0, v1}, Lcom/google/common/base/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 46
    iput-wide p2, p0, Lcom/google/common/io/LimitInputStream;->left:J

    .line 47
    return-void

    .line 45
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public available()I
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 50
    iget-object v0, p0, Lcom/google/common/io/LimitInputStream;->in:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->available()I

    move-result v0

    int-to-long v0, v0

    iget-wide v2, p0, Lcom/google/common/io/LimitInputStream;->left:J

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    long-to-int v0, v0

    return v0
.end method

.method public mark(I)V
    .locals 2
    .parameter "readlimit"

    .prologue
    .line 54
    iget-object v0, p0, Lcom/google/common/io/LimitInputStream;->in:Ljava/io/InputStream;

    invoke-virtual {v0, p1}, Ljava/io/InputStream;->mark(I)V

    .line 55
    iget-wide v0, p0, Lcom/google/common/io/LimitInputStream;->left:J

    iput-wide v0, p0, Lcom/google/common/io/LimitInputStream;->mark:J

    .line 57
    return-void
.end method

.method public read()I
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v1, -0x1

    .line 60
    iget-wide v2, p0, Lcom/google/common/io/LimitInputStream;->left:J

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-nez v2, :cond_1

    move v0, v1

    .line 68
    :cond_0
    :goto_0
    return v0

    .line 64
    :cond_1
    iget-object v2, p0, Lcom/google/common/io/LimitInputStream;->in:Ljava/io/InputStream;

    invoke-virtual {v2}, Ljava/io/InputStream;->read()I

    move-result v0

    .line 65
    .local v0, result:I
    if-eq v0, v1, :cond_0

    .line 66
    iget-wide v1, p0, Lcom/google/common/io/LimitInputStream;->left:J

    const-wide/16 v3, 0x1

    sub-long/2addr v1, v3

    iput-wide v1, p0, Lcom/google/common/io/LimitInputStream;->left:J

    goto :goto_0
.end method

.method public read([BII)I
    .locals 6
    .parameter "b"
    .parameter "off"
    .parameter "len"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v1, -0x1

    .line 72
    iget-wide v2, p0, Lcom/google/common/io/LimitInputStream;->left:J

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-nez v2, :cond_1

    move v0, v1

    .line 81
    :cond_0
    :goto_0
    return v0

    .line 76
    :cond_1
    int-to-long v2, p3

    iget-wide v4, p0, Lcom/google/common/io/LimitInputStream;->left:J

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v2

    long-to-int p3, v2

    .line 77
    iget-object v2, p0, Lcom/google/common/io/LimitInputStream;->in:Ljava/io/InputStream;

    invoke-virtual {v2, p1, p2, p3}, Ljava/io/InputStream;->read([BII)I

    move-result v0

    .line 78
    .local v0, result:I
    if-eq v0, v1, :cond_0

    .line 79
    iget-wide v1, p0, Lcom/google/common/io/LimitInputStream;->left:J

    int-to-long v3, v0

    sub-long/2addr v1, v3

    iput-wide v1, p0, Lcom/google/common/io/LimitInputStream;->left:J

    goto :goto_0
.end method

.method public reset()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 85
    iget-object v0, p0, Lcom/google/common/io/LimitInputStream;->in:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->markSupported()Z

    move-result v0

    if-nez v0, :cond_0

    .line 86
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Mark not supported"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 88
    :cond_0
    iget-wide v0, p0, Lcom/google/common/io/LimitInputStream;->mark:J

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-nez v0, :cond_1

    .line 89
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Mark not set"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 92
    :cond_1
    iget-object v0, p0, Lcom/google/common/io/LimitInputStream;->in:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->reset()V

    .line 93
    iget-wide v0, p0, Lcom/google/common/io/LimitInputStream;->mark:J

    iput-wide v0, p0, Lcom/google/common/io/LimitInputStream;->left:J

    .line 94
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
    .line 97
    iget-wide v2, p0, Lcom/google/common/io/LimitInputStream;->left:J

    invoke-static {p1, p2, v2, v3}, Ljava/lang/Math;->min(JJ)J

    move-result-wide p1

    .line 98
    iget-object v2, p0, Lcom/google/common/io/LimitInputStream;->in:Ljava/io/InputStream;

    invoke-virtual {v2, p1, p2}, Ljava/io/InputStream;->skip(J)J

    move-result-wide v0

    .line 99
    .local v0, skipped:J
    iget-wide v2, p0, Lcom/google/common/io/LimitInputStream;->left:J

    sub-long/2addr v2, v0

    iput-wide v2, p0, Lcom/google/common/io/LimitInputStream;->left:J

    .line 100
    return-wide v0
.end method
