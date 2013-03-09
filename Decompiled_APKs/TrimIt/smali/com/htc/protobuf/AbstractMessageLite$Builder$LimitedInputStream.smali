.class final Lcom/htc/protobuf/AbstractMessageLite$Builder$LimitedInputStream;
.super Ljava/io/FilterInputStream;
.source "AbstractMessageLite.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/protobuf/AbstractMessageLite$Builder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "LimitedInputStream"
.end annotation


# instance fields
.field private limit:I


# direct methods
.method constructor <init>(Ljava/io/InputStream;I)V
    .locals 0
    .parameter "in"
    .parameter "limit"

    .prologue
    .line 226
    invoke-direct {p0, p1}, Ljava/io/FilterInputStream;-><init>(Ljava/io/InputStream;)V

    .line 227
    iput p2, p0, Lcom/htc/protobuf/AbstractMessageLite$Builder$LimitedInputStream;->limit:I

    .line 228
    return-void
.end method


# virtual methods
.method public available()I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 232
    invoke-super {p0}, Ljava/io/FilterInputStream;->available()I

    move-result v0

    iget v1, p0, Lcom/htc/protobuf/AbstractMessageLite$Builder$LimitedInputStream;->limit:I

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    return v0
.end method

.method public read()I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 237
    iget v1, p0, Lcom/htc/protobuf/AbstractMessageLite$Builder$LimitedInputStream;->limit:I

    if-gtz v1, :cond_1

    .line 238
    const/4 v0, -0x1

    .line 244
    :cond_0
    :goto_0
    return v0

    .line 240
    :cond_1
    invoke-super {p0}, Ljava/io/FilterInputStream;->read()I

    move-result v0

    .line 241
    .local v0, result:I
    if-ltz v0, :cond_0

    .line 242
    iget v1, p0, Lcom/htc/protobuf/AbstractMessageLite$Builder$LimitedInputStream;->limit:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lcom/htc/protobuf/AbstractMessageLite$Builder$LimitedInputStream;->limit:I

    goto :goto_0
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
    .line 250
    iget v1, p0, Lcom/htc/protobuf/AbstractMessageLite$Builder$LimitedInputStream;->limit:I

    if-gtz v1, :cond_1

    .line 251
    const/4 v0, -0x1

    .line 258
    :cond_0
    :goto_0
    return v0

    .line 253
    :cond_1
    iget v1, p0, Lcom/htc/protobuf/AbstractMessageLite$Builder$LimitedInputStream;->limit:I

    invoke-static {p3, v1}, Ljava/lang/Math;->min(II)I

    move-result p3

    .line 254
    invoke-super {p0, p1, p2, p3}, Ljava/io/FilterInputStream;->read([BII)I

    move-result v0

    .line 255
    .local v0, result:I
    if-ltz v0, :cond_0

    .line 256
    iget v1, p0, Lcom/htc/protobuf/AbstractMessageLite$Builder$LimitedInputStream;->limit:I

    sub-int/2addr v1, v0

    iput v1, p0, Lcom/htc/protobuf/AbstractMessageLite$Builder$LimitedInputStream;->limit:I

    goto :goto_0
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
    .line 263
    iget v2, p0, Lcom/htc/protobuf/AbstractMessageLite$Builder$LimitedInputStream;->limit:I

    int-to-long v2, v2

    invoke-static {p1, p2, v2, v3}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v2

    invoke-super {p0, v2, v3}, Ljava/io/FilterInputStream;->skip(J)J

    move-result-wide v0

    .line 264
    .local v0, result:J
    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-ltz v2, :cond_0

    .line 265
    iget v2, p0, Lcom/htc/protobuf/AbstractMessageLite$Builder$LimitedInputStream;->limit:I

    int-to-long v2, v2

    sub-long/2addr v2, v0

    long-to-int v2, v2

    iput v2, p0, Lcom/htc/protobuf/AbstractMessageLite$Builder$LimitedInputStream;->limit:I

    .line 267
    :cond_0
    return-wide v0
.end method
