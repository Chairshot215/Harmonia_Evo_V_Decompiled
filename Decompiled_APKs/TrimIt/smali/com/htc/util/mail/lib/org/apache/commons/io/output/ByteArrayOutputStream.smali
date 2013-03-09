.class public Lcom/htc/util/mail/lib/org/apache/commons/io/output/ByteArrayOutputStream;
.super Ljava/io/OutputStream;
.source "ByteArrayOutputStream.java"


# static fields
.field private static final EMPTY_BYTE_ARRAY:[B


# instance fields
.field private buffers:Ljava/util/List;

.field private count:I

.field private currentBuffer:[B

.field private currentBufferIndex:I

.field private filledBufferSum:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 54
    const/4 v0, 0x0

    new-array v0, v0, [B

    sput-object v0, Lcom/htc/util/mail/lib/org/apache/commons/io/output/ByteArrayOutputStream;->EMPTY_BYTE_ARRAY:[B

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 72
    const/16 v0, 0x400

    invoke-direct {p0, v0}, Lcom/htc/util/mail/lib/org/apache/commons/io/output/ByteArrayOutputStream;-><init>(I)V

    .line 73
    return-void
.end method

.method public constructor <init>(I)V
    .locals 3
    .parameter "size"

    .prologue
    .line 82
    invoke-direct {p0}, Ljava/io/OutputStream;-><init>()V

    .line 57
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/htc/util/mail/lib/org/apache/commons/io/output/ByteArrayOutputStream;->buffers:Ljava/util/List;

    .line 83
    if-gez p1, :cond_0

    .line 84
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Negative initial size: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 87
    :cond_0
    invoke-direct {p0, p1}, Lcom/htc/util/mail/lib/org/apache/commons/io/output/ByteArrayOutputStream;->needNewBuffer(I)V

    .line 88
    return-void
.end method

.method private getBuffer(I)[B
    .locals 1
    .parameter "index"

    .prologue
    .line 98
    iget-object v0, p0, Lcom/htc/util/mail/lib/org/apache/commons/io/output/ByteArrayOutputStream;->buffers:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    check-cast v0, [B

    return-object v0
.end method

.method private needNewBuffer(I)V
    .locals 3
    .parameter "newcount"

    .prologue
    .line 108
    iget v1, p0, Lcom/htc/util/mail/lib/org/apache/commons/io/output/ByteArrayOutputStream;->currentBufferIndex:I

    iget-object v2, p0, Lcom/htc/util/mail/lib/org/apache/commons/io/output/ByteArrayOutputStream;->buffers:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    if-ge v1, v2, :cond_0

    .line 110
    iget v1, p0, Lcom/htc/util/mail/lib/org/apache/commons/io/output/ByteArrayOutputStream;->filledBufferSum:I

    iget-object v2, p0, Lcom/htc/util/mail/lib/org/apache/commons/io/output/ByteArrayOutputStream;->currentBuffer:[B

    array-length v2, v2

    add-int/2addr v1, v2

    iput v1, p0, Lcom/htc/util/mail/lib/org/apache/commons/io/output/ByteArrayOutputStream;->filledBufferSum:I

    .line 112
    iget v1, p0, Lcom/htc/util/mail/lib/org/apache/commons/io/output/ByteArrayOutputStream;->currentBufferIndex:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/htc/util/mail/lib/org/apache/commons/io/output/ByteArrayOutputStream;->currentBufferIndex:I

    .line 113
    iget v1, p0, Lcom/htc/util/mail/lib/org/apache/commons/io/output/ByteArrayOutputStream;->currentBufferIndex:I

    invoke-direct {p0, v1}, Lcom/htc/util/mail/lib/org/apache/commons/io/output/ByteArrayOutputStream;->getBuffer(I)[B

    move-result-object v1

    iput-object v1, p0, Lcom/htc/util/mail/lib/org/apache/commons/io/output/ByteArrayOutputStream;->currentBuffer:[B

    .line 131
    :goto_0
    return-void

    .line 117
    :cond_0
    iget-object v1, p0, Lcom/htc/util/mail/lib/org/apache/commons/io/output/ByteArrayOutputStream;->currentBuffer:[B

    if-nez v1, :cond_1

    .line 118
    move v0, p1

    .line 119
    .local v0, newBufferSize:I
    const/4 v1, 0x0

    iput v1, p0, Lcom/htc/util/mail/lib/org/apache/commons/io/output/ByteArrayOutputStream;->filledBufferSum:I

    .line 127
    :goto_1
    iget v1, p0, Lcom/htc/util/mail/lib/org/apache/commons/io/output/ByteArrayOutputStream;->currentBufferIndex:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/htc/util/mail/lib/org/apache/commons/io/output/ByteArrayOutputStream;->currentBufferIndex:I

    .line 128
    new-array v1, v0, [B

    iput-object v1, p0, Lcom/htc/util/mail/lib/org/apache/commons/io/output/ByteArrayOutputStream;->currentBuffer:[B

    .line 129
    iget-object v1, p0, Lcom/htc/util/mail/lib/org/apache/commons/io/output/ByteArrayOutputStream;->buffers:Ljava/util/List;

    iget-object v2, p0, Lcom/htc/util/mail/lib/org/apache/commons/io/output/ByteArrayOutputStream;->currentBuffer:[B

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 121
    .end local v0           #newBufferSize:I
    :cond_1
    iget-object v1, p0, Lcom/htc/util/mail/lib/org/apache/commons/io/output/ByteArrayOutputStream;->currentBuffer:[B

    array-length v1, v1

    shl-int/lit8 v1, v1, 0x1

    iget v2, p0, Lcom/htc/util/mail/lib/org/apache/commons/io/output/ByteArrayOutputStream;->filledBufferSum:I

    sub-int v2, p1, v2

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 124
    .restart local v0       #newBufferSize:I
    iget v1, p0, Lcom/htc/util/mail/lib/org/apache/commons/io/output/ByteArrayOutputStream;->filledBufferSum:I

    iget-object v2, p0, Lcom/htc/util/mail/lib/org/apache/commons/io/output/ByteArrayOutputStream;->currentBuffer:[B

    array-length v2, v2

    add-int/2addr v1, v2

    iput v1, p0, Lcom/htc/util/mail/lib/org/apache/commons/io/output/ByteArrayOutputStream;->filledBufferSum:I

    goto :goto_1
.end method


# virtual methods
.method public close()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 226
    return-void
.end method

.method public declared-synchronized reset()V
    .locals 1

    .prologue
    .line 232
    monitor-enter p0

    const/4 v0, 0x0

    :try_start_0
    iput v0, p0, Lcom/htc/util/mail/lib/org/apache/commons/io/output/ByteArrayOutputStream;->count:I

    .line 233
    const/4 v0, 0x0

    iput v0, p0, Lcom/htc/util/mail/lib/org/apache/commons/io/output/ByteArrayOutputStream;->filledBufferSum:I

    .line 234
    const/4 v0, 0x0

    iput v0, p0, Lcom/htc/util/mail/lib/org/apache/commons/io/output/ByteArrayOutputStream;->currentBufferIndex:I

    .line 235
    iget v0, p0, Lcom/htc/util/mail/lib/org/apache/commons/io/output/ByteArrayOutputStream;->currentBufferIndex:I

    invoke-direct {p0, v0}, Lcom/htc/util/mail/lib/org/apache/commons/io/output/ByteArrayOutputStream;->getBuffer(I)[B

    move-result-object v0

    iput-object v0, p0, Lcom/htc/util/mail/lib/org/apache/commons/io/output/ByteArrayOutputStream;->currentBuffer:[B
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 236
    monitor-exit p0

    return-void

    .line 232
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized size()I
    .locals 1

    .prologue
    .line 213
    monitor-enter p0

    :try_start_0
    iget v0, p0, Lcom/htc/util/mail/lib/org/apache/commons/io/output/ByteArrayOutputStream;->count:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized toByteArray()[B
    .locals 7

    .prologue
    .line 267
    monitor-enter p0

    :try_start_0
    iget v5, p0, Lcom/htc/util/mail/lib/org/apache/commons/io/output/ByteArrayOutputStream;->count:I

    .line 268
    .local v5, remaining:I
    if-nez v5, :cond_1

    .line 269
    sget-object v3, Lcom/htc/util/mail/lib/org/apache/commons/io/output/ByteArrayOutputStream;->EMPTY_BYTE_ARRAY:[B
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 283
    :cond_0
    monitor-exit p0

    return-object v3

    .line 271
    :cond_1
    :try_start_1
    new-array v3, v5, [B

    .line 272
    .local v3, newbuf:[B
    const/4 v4, 0x0

    .line 273
    .local v4, pos:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    iget-object v6, p0, Lcom/htc/util/mail/lib/org/apache/commons/io/output/ByteArrayOutputStream;->buffers:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    if-ge v2, v6, :cond_0

    .line 274
    invoke-direct {p0, v2}, Lcom/htc/util/mail/lib/org/apache/commons/io/output/ByteArrayOutputStream;->getBuffer(I)[B

    move-result-object v0

    .line 275
    .local v0, buf:[B
    array-length v6, v0

    invoke-static {v6, v5}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 276
    .local v1, c:I
    const/4 v6, 0x0

    invoke-static {v0, v6, v3, v4, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 277
    add-int/2addr v4, v1

    .line 278
    sub-int/2addr v5, v1

    .line 279
    if-eqz v5, :cond_0

    .line 273
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 267
    .end local v0           #buf:[B
    .end local v1           #c:I
    .end local v2           #i:I
    .end local v3           #newbuf:[B
    .end local v4           #pos:I
    .end local v5           #remaining:I
    :catchall_0
    move-exception v6

    monitor-exit p0

    throw v6
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 292
    new-instance v0, Ljava/lang/String;

    invoke-virtual {p0}, Lcom/htc/util/mail/lib/org/apache/commons/io/output/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([B)V

    return-object v0
.end method

.method public toString(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .parameter "enc"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    .prologue
    .line 305
    new-instance v0, Ljava/lang/String;

    invoke-virtual {p0}, Lcom/htc/util/mail/lib/org/apache/commons/io/output/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v1

    invoke-direct {v0, v1, p1}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    return-object v0
.end method

.method public declared-synchronized write(Ljava/io/InputStream;)I
    .locals 5
    .parameter "in"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 192
    monitor-enter p0

    const/4 v2, 0x0

    .line 193
    .local v2, readCount:I
    :try_start_0
    iget v3, p0, Lcom/htc/util/mail/lib/org/apache/commons/io/output/ByteArrayOutputStream;->count:I

    iget v4, p0, Lcom/htc/util/mail/lib/org/apache/commons/io/output/ByteArrayOutputStream;->filledBufferSum:I

    sub-int v0, v3, v4

    .line 194
    .local v0, inBufferPos:I
    iget-object v3, p0, Lcom/htc/util/mail/lib/org/apache/commons/io/output/ByteArrayOutputStream;->currentBuffer:[B

    iget-object v4, p0, Lcom/htc/util/mail/lib/org/apache/commons/io/output/ByteArrayOutputStream;->currentBuffer:[B

    array-length v4, v4

    sub-int/2addr v4, v0

    invoke-virtual {p1, v3, v0, v4}, Ljava/io/InputStream;->read([BII)I

    move-result v1

    .line 195
    .local v1, n:I
    :goto_0
    const/4 v3, -0x1

    if-eq v1, v3, :cond_1

    .line 196
    add-int/2addr v2, v1

    .line 197
    add-int/2addr v0, v1

    .line 198
    iget v3, p0, Lcom/htc/util/mail/lib/org/apache/commons/io/output/ByteArrayOutputStream;->count:I

    add-int/2addr v3, v1

    iput v3, p0, Lcom/htc/util/mail/lib/org/apache/commons/io/output/ByteArrayOutputStream;->count:I

    .line 199
    iget-object v3, p0, Lcom/htc/util/mail/lib/org/apache/commons/io/output/ByteArrayOutputStream;->currentBuffer:[B

    array-length v3, v3

    if-ne v0, v3, :cond_0

    .line 200
    iget-object v3, p0, Lcom/htc/util/mail/lib/org/apache/commons/io/output/ByteArrayOutputStream;->currentBuffer:[B

    array-length v3, v3

    invoke-direct {p0, v3}, Lcom/htc/util/mail/lib/org/apache/commons/io/output/ByteArrayOutputStream;->needNewBuffer(I)V

    .line 201
    const/4 v0, 0x0

    .line 203
    :cond_0
    iget-object v3, p0, Lcom/htc/util/mail/lib/org/apache/commons/io/output/ByteArrayOutputStream;->currentBuffer:[B

    iget-object v4, p0, Lcom/htc/util/mail/lib/org/apache/commons/io/output/ByteArrayOutputStream;->currentBuffer:[B

    array-length v4, v4

    sub-int/2addr v4, v0

    invoke-virtual {p1, v3, v0, v4}, Ljava/io/InputStream;->read([BII)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    goto :goto_0

    .line 205
    :cond_1
    monitor-exit p0

    return v2

    .line 192
    .end local v0           #inBufferPos:I
    .end local v1           #n:I
    :catchall_0
    move-exception v3

    monitor-exit p0

    throw v3
.end method

.method public declared-synchronized write(I)V
    .locals 3
    .parameter "b"

    .prologue
    .line 171
    monitor-enter p0

    :try_start_0
    iget v1, p0, Lcom/htc/util/mail/lib/org/apache/commons/io/output/ByteArrayOutputStream;->count:I

    iget v2, p0, Lcom/htc/util/mail/lib/org/apache/commons/io/output/ByteArrayOutputStream;->filledBufferSum:I

    sub-int v0, v1, v2

    .line 172
    .local v0, inBufferPos:I
    iget-object v1, p0, Lcom/htc/util/mail/lib/org/apache/commons/io/output/ByteArrayOutputStream;->currentBuffer:[B

    array-length v1, v1

    if-ne v0, v1, :cond_0

    .line 173
    iget v1, p0, Lcom/htc/util/mail/lib/org/apache/commons/io/output/ByteArrayOutputStream;->count:I

    add-int/lit8 v1, v1, 0x1

    invoke-direct {p0, v1}, Lcom/htc/util/mail/lib/org/apache/commons/io/output/ByteArrayOutputStream;->needNewBuffer(I)V

    .line 174
    const/4 v0, 0x0

    .line 176
    :cond_0
    iget-object v1, p0, Lcom/htc/util/mail/lib/org/apache/commons/io/output/ByteArrayOutputStream;->currentBuffer:[B

    int-to-byte v2, p1

    aput-byte v2, v1, v0

    .line 177
    iget v1, p0, Lcom/htc/util/mail/lib/org/apache/commons/io/output/ByteArrayOutputStream;->count:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/htc/util/mail/lib/org/apache/commons/io/output/ByteArrayOutputStream;->count:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 178
    monitor-exit p0

    return-void

    .line 171
    .end local v0           #inBufferPos:I
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public write([BII)V
    .locals 6
    .parameter "b"
    .parameter "off"
    .parameter "len"

    .prologue
    .line 140
    if-ltz p2, :cond_0

    array-length v4, p1

    if-gt p2, v4, :cond_0

    if-ltz p3, :cond_0

    add-int v4, p2, p3

    array-length v5, p1

    if-gt v4, v5, :cond_0

    add-int v4, p2, p3

    if-gez v4, :cond_1

    .line 145
    :cond_0
    new-instance v4, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v4}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v4

    .line 146
    :cond_1
    if-nez p3, :cond_2

    .line 164
    :goto_0
    return-void

    .line 149
    :cond_2
    monitor-enter p0

    .line 150
    :try_start_0
    iget v4, p0, Lcom/htc/util/mail/lib/org/apache/commons/io/output/ByteArrayOutputStream;->count:I

    add-int v1, v4, p3

    .line 151
    .local v1, newcount:I
    move v3, p3

    .line 152
    .local v3, remaining:I
    iget v4, p0, Lcom/htc/util/mail/lib/org/apache/commons/io/output/ByteArrayOutputStream;->count:I

    iget v5, p0, Lcom/htc/util/mail/lib/org/apache/commons/io/output/ByteArrayOutputStream;->filledBufferSum:I

    sub-int v0, v4, v5

    .line 153
    .local v0, inBufferPos:I
    :cond_3
    :goto_1
    if-lez v3, :cond_4

    .line 154
    iget-object v4, p0, Lcom/htc/util/mail/lib/org/apache/commons/io/output/ByteArrayOutputStream;->currentBuffer:[B

    array-length v4, v4

    sub-int/2addr v4, v0

    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    move-result v2

    .line 155
    .local v2, part:I
    add-int v4, p2, p3

    sub-int/2addr v4, v3

    iget-object v5, p0, Lcom/htc/util/mail/lib/org/apache/commons/io/output/ByteArrayOutputStream;->currentBuffer:[B

    invoke-static {p1, v4, v5, v0, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 156
    sub-int/2addr v3, v2

    .line 157
    if-lez v3, :cond_3

    .line 158
    invoke-direct {p0, v1}, Lcom/htc/util/mail/lib/org/apache/commons/io/output/ByteArrayOutputStream;->needNewBuffer(I)V

    .line 159
    const/4 v0, 0x0

    goto :goto_1

    .line 162
    .end local v2           #part:I
    :cond_4
    iput v1, p0, Lcom/htc/util/mail/lib/org/apache/commons/io/output/ByteArrayOutputStream;->count:I

    .line 163
    monitor-exit p0

    goto :goto_0

    .end local v0           #inBufferPos:I
    .end local v1           #newcount:I
    .end local v3           #remaining:I
    :catchall_0
    move-exception v4

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v4
.end method

.method public declared-synchronized writeTo(Ljava/io/OutputStream;)V
    .locals 5
    .parameter "out"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 247
    monitor-enter p0

    :try_start_0
    iget v3, p0, Lcom/htc/util/mail/lib/org/apache/commons/io/output/ByteArrayOutputStream;->count:I

    .line 248
    .local v3, remaining:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    iget-object v4, p0, Lcom/htc/util/mail/lib/org/apache/commons/io/output/ByteArrayOutputStream;->buffers:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-ge v2, v4, :cond_0

    .line 249
    invoke-direct {p0, v2}, Lcom/htc/util/mail/lib/org/apache/commons/io/output/ByteArrayOutputStream;->getBuffer(I)[B

    move-result-object v0

    .line 250
    .local v0, buf:[B
    array-length v4, v0

    invoke-static {v4, v3}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 251
    .local v1, c:I
    const/4 v4, 0x0

    invoke-virtual {p1, v0, v4, v1}, Ljava/io/OutputStream;->write([BII)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 252
    sub-int/2addr v3, v1

    .line 253
    if-nez v3, :cond_1

    .line 257
    .end local v0           #buf:[B
    .end local v1           #c:I
    :cond_0
    monitor-exit p0

    return-void

    .line 248
    .restart local v0       #buf:[B
    .restart local v1       #c:I
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 247
    .end local v0           #buf:[B
    .end local v1           #c:I
    .end local v2           #i:I
    .end local v3           #remaining:I
    :catchall_0
    move-exception v4

    monitor-exit p0

    throw v4
.end method
