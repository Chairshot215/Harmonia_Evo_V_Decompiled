.class public Lorg/apache/http/entity/InputStreamEntity;
.super Lorg/apache/http/entity/AbstractHttpEntity;
.source "InputStreamEntity.java"


# static fields
.field private static final BUFFER_SIZE:I = 0x800


# instance fields
.field private consumed:Z

.field private final content:Ljava/io/InputStream;

.field private final length:J


# direct methods
.method public constructor <init>(Ljava/io/InputStream;J)V
    .locals 2

    invoke-direct {p0}, Lorg/apache/http/entity/AbstractHttpEntity;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/apache/http/entity/InputStreamEntity;->consumed:Z

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Source input stream may not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iput-object p1, p0, Lorg/apache/http/entity/InputStreamEntity;->content:Ljava/io/InputStream;

    iput-wide p2, p0, Lorg/apache/http/entity/InputStreamEntity;->length:J

    return-void
.end method


# virtual methods
.method public consumeContent()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/apache/http/entity/InputStreamEntity;->consumed:Z

    iget-object v0, p0, Lorg/apache/http/entity/InputStreamEntity;->content:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    return-void
.end method

.method public getContent()Ljava/io/InputStream;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lorg/apache/http/entity/InputStreamEntity;->content:Ljava/io/InputStream;

    return-object v0
.end method

.method public getContentLength()J
    .locals 2

    iget-wide v0, p0, Lorg/apache/http/entity/InputStreamEntity;->length:J

    return-wide v0
.end method

.method public isRepeatable()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public isStreaming()Z
    .locals 1

    iget-boolean v0, p0, Lorg/apache/http/entity/InputStreamEntity;->consumed:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public writeTo(Ljava/io/OutputStream;)V
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-wide/16 v9, 0x0

    const/4 v8, -0x1

    const/4 v7, 0x0

    if-nez p1, :cond_0

    new-instance v5, Ljava/lang/IllegalArgumentException;

    const-string v6, "Output stream may not be null"

    invoke-direct {v5, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v5

    :cond_0
    iget-object v1, p0, Lorg/apache/http/entity/InputStreamEntity;->content:Ljava/io/InputStream;

    const/16 v5, 0x800

    new-array v0, v5, [B

    iget-wide v5, p0, Lorg/apache/http/entity/InputStreamEntity;->length:J

    cmp-long v5, v5, v9

    if-gez v5, :cond_1

    :goto_0
    invoke-virtual {v1, v0}, Ljava/io/InputStream;->read([B)I

    move-result v2

    if-eq v2, v8, :cond_2

    invoke-virtual {p1, v0, v7, v2}, Ljava/io/OutputStream;->write([BII)V

    goto :goto_0

    :cond_1
    iget-wide v3, p0, Lorg/apache/http/entity/InputStreamEntity;->length:J

    :goto_1
    cmp-long v5, v3, v9

    if-lez v5, :cond_2

    const-wide/16 v5, 0x800

    invoke-static {v5, v6, v3, v4}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v5

    long-to-int v5, v5

    invoke-virtual {v1, v0, v7, v5}, Ljava/io/InputStream;->read([BII)I

    move-result v2

    if-ne v2, v8, :cond_3

    :cond_2
    const/4 v5, 0x1

    iput-boolean v5, p0, Lorg/apache/http/entity/InputStreamEntity;->consumed:Z

    return-void

    :cond_3
    invoke-virtual {p1, v0, v7, v2}, Ljava/io/OutputStream;->write([BII)V

    int-to-long v5, v2

    sub-long/2addr v3, v5

    goto :goto_1
.end method
