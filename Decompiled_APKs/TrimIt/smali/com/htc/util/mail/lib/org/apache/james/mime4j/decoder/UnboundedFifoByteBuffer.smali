.class Lcom/htc/util/mail/lib/org/apache/james/mime4j/decoder/UnboundedFifoByteBuffer;
.super Ljava/lang/Object;
.source "UnboundedFifoByteBuffer.java"


# instance fields
.field protected buffer:[B

.field protected head:I

.field protected tail:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 70
    const/16 v0, 0x20

    invoke-direct {p0, v0}, Lcom/htc/util/mail/lib/org/apache/james/mime4j/decoder/UnboundedFifoByteBuffer;-><init>(I)V

    .line 71
    return-void
.end method

.method public constructor <init>(I)V
    .locals 2
    .parameter "initialSize"

    .prologue
    const/4 v1, 0x0

    .line 80
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 81
    if-gtz p1, :cond_0

    .line 82
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "The size must be greater than 0"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 84
    :cond_0
    add-int/lit8 v0, p1, 0x1

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/decoder/UnboundedFifoByteBuffer;->buffer:[B

    .line 85
    iput v1, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/decoder/UnboundedFifoByteBuffer;->head:I

    .line 86
    iput v1, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/decoder/UnboundedFifoByteBuffer;->tail:I

    .line 87
    return-void
.end method

.method static synthetic access$000(Lcom/htc/util/mail/lib/org/apache/james/mime4j/decoder/UnboundedFifoByteBuffer;I)I
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 55
    invoke-direct {p0, p1}, Lcom/htc/util/mail/lib/org/apache/james/mime4j/decoder/UnboundedFifoByteBuffer;->increment(I)I

    move-result v0

    return v0
.end method

.method static synthetic access$100(Lcom/htc/util/mail/lib/org/apache/james/mime4j/decoder/UnboundedFifoByteBuffer;I)I
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 55
    invoke-direct {p0, p1}, Lcom/htc/util/mail/lib/org/apache/james/mime4j/decoder/UnboundedFifoByteBuffer;->decrement(I)I

    move-result v0

    return v0
.end method

.method private decrement(I)I
    .locals 1
    .parameter "index"

    .prologue
    .line 207
    add-int/lit8 p1, p1, -0x1

    .line 208
    if-gez p1, :cond_0

    .line 209
    iget-object v0, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/decoder/UnboundedFifoByteBuffer;->buffer:[B

    array-length v0, v0

    add-int/lit8 p1, v0, -0x1

    .line 211
    :cond_0
    return p1
.end method

.method private increment(I)I
    .locals 1
    .parameter "index"

    .prologue
    .line 193
    add-int/lit8 p1, p1, 0x1

    .line 194
    iget-object v0, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/decoder/UnboundedFifoByteBuffer;->buffer:[B

    array-length v0, v0

    if-lt p1, v0, :cond_0

    .line 195
    const/4 p1, 0x0

    .line 197
    :cond_0
    return p1
.end method


# virtual methods
.method public add(B)Z
    .locals 6
    .parameter "b"

    .prologue
    const/4 v5, 0x0

    .line 123
    invoke-virtual {p0}, Lcom/htc/util/mail/lib/org/apache/james/mime4j/decoder/UnboundedFifoByteBuffer;->size()I

    move-result v3

    add-int/lit8 v3, v3, 0x1

    iget-object v4, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/decoder/UnboundedFifoByteBuffer;->buffer:[B

    array-length v4, v4

    if-lt v3, v4, :cond_2

    .line 124
    iget-object v3, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/decoder/UnboundedFifoByteBuffer;->buffer:[B

    array-length v3, v3

    add-int/lit8 v3, v3, -0x1

    mul-int/lit8 v3, v3, 0x2

    add-int/lit8 v3, v3, 0x1

    new-array v2, v3, [B

    .line 126
    .local v2, tmp:[B
    const/4 v1, 0x0

    .line 127
    .local v1, j:I
    iget v0, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/decoder/UnboundedFifoByteBuffer;->head:I

    .local v0, i:I
    :cond_0
    :goto_0
    iget v3, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/decoder/UnboundedFifoByteBuffer;->tail:I

    if-eq v0, v3, :cond_1

    .line 128
    iget-object v3, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/decoder/UnboundedFifoByteBuffer;->buffer:[B

    aget-byte v3, v3, v0

    aput-byte v3, v2, v1

    .line 129
    iget-object v3, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/decoder/UnboundedFifoByteBuffer;->buffer:[B

    aput-byte v5, v3, v0

    .line 131
    add-int/lit8 v1, v1, 0x1

    .line 132
    add-int/lit8 v0, v0, 0x1

    .line 133
    iget-object v3, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/decoder/UnboundedFifoByteBuffer;->buffer:[B

    array-length v3, v3

    if-ne v0, v3, :cond_0

    .line 134
    const/4 v0, 0x0

    goto :goto_0

    .line 138
    :cond_1
    iput-object v2, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/decoder/UnboundedFifoByteBuffer;->buffer:[B

    .line 139
    iput v5, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/decoder/UnboundedFifoByteBuffer;->head:I

    .line 140
    iput v1, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/decoder/UnboundedFifoByteBuffer;->tail:I

    .line 143
    .end local v0           #i:I
    .end local v1           #j:I
    .end local v2           #tmp:[B
    :cond_2
    iget-object v3, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/decoder/UnboundedFifoByteBuffer;->buffer:[B

    iget v4, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/decoder/UnboundedFifoByteBuffer;->tail:I

    aput-byte p1, v3, v4

    .line 144
    iget v3, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/decoder/UnboundedFifoByteBuffer;->tail:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/decoder/UnboundedFifoByteBuffer;->tail:I

    .line 145
    iget v3, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/decoder/UnboundedFifoByteBuffer;->tail:I

    iget-object v4, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/decoder/UnboundedFifoByteBuffer;->buffer:[B

    array-length v4, v4

    if-lt v3, v4, :cond_3

    .line 146
    iput v5, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/decoder/UnboundedFifoByteBuffer;->tail:I

    .line 148
    :cond_3
    const/4 v3, 0x1

    return v3
.end method

.method public get()B
    .locals 2

    .prologue
    .line 158
    invoke-virtual {p0}, Lcom/htc/util/mail/lib/org/apache/james/mime4j/decoder/UnboundedFifoByteBuffer;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 159
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "The buffer is already empty"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 162
    :cond_0
    iget-object v0, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/decoder/UnboundedFifoByteBuffer;->buffer:[B

    iget v1, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/decoder/UnboundedFifoByteBuffer;->head:I

    aget-byte v0, v0, v1

    return v0
.end method

.method public isEmpty()Z
    .locals 1

    .prologue
    .line 112
    invoke-virtual {p0}, Lcom/htc/util/mail/lib/org/apache/james/mime4j/decoder/UnboundedFifoByteBuffer;->size()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 1

    .prologue
    .line 220
    new-instance v0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/decoder/UnboundedFifoByteBuffer$1;

    invoke-direct {v0, p0}, Lcom/htc/util/mail/lib/org/apache/james/mime4j/decoder/UnboundedFifoByteBuffer$1;-><init>(Lcom/htc/util/mail/lib/org/apache/james/mime4j/decoder/UnboundedFifoByteBuffer;)V

    return-object v0
.end method

.method public remove()B
    .locals 3

    .prologue
    .line 172
    invoke-virtual {p0}, Lcom/htc/util/mail/lib/org/apache/james/mime4j/decoder/UnboundedFifoByteBuffer;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 173
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "The buffer is already empty"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 176
    :cond_0
    iget-object v1, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/decoder/UnboundedFifoByteBuffer;->buffer:[B

    iget v2, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/decoder/UnboundedFifoByteBuffer;->head:I

    aget-byte v0, v1, v2

    .line 178
    .local v0, element:B
    iget v1, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/decoder/UnboundedFifoByteBuffer;->head:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/decoder/UnboundedFifoByteBuffer;->head:I

    .line 179
    iget v1, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/decoder/UnboundedFifoByteBuffer;->head:I

    iget-object v2, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/decoder/UnboundedFifoByteBuffer;->buffer:[B

    array-length v2, v2

    if-lt v1, v2, :cond_1

    .line 180
    const/4 v1, 0x0

    iput v1, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/decoder/UnboundedFifoByteBuffer;->head:I

    .line 183
    :cond_1
    return v0
.end method

.method public size()I
    .locals 3

    .prologue
    .line 95
    const/4 v0, 0x0

    .line 97
    .local v0, size:I
    iget v1, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/decoder/UnboundedFifoByteBuffer;->tail:I

    iget v2, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/decoder/UnboundedFifoByteBuffer;->head:I

    if-ge v1, v2, :cond_0

    .line 98
    iget-object v1, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/decoder/UnboundedFifoByteBuffer;->buffer:[B

    array-length v1, v1

    iget v2, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/decoder/UnboundedFifoByteBuffer;->head:I

    sub-int/2addr v1, v2

    iget v2, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/decoder/UnboundedFifoByteBuffer;->tail:I

    add-int v0, v1, v2

    .line 103
    :goto_0
    return v0

    .line 100
    :cond_0
    iget v1, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/decoder/UnboundedFifoByteBuffer;->tail:I

    iget v2, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/decoder/UnboundedFifoByteBuffer;->head:I

    sub-int v0, v1, v2

    goto :goto_0
.end method
