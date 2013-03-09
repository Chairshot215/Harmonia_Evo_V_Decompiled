.class public Lcom/scalado/base/Buffer;
.super Lcom/scalado/caps/PeerBase;
.source "Buffer.java"


# instance fields
.field private sourceBuffer:Ljava/nio/ByteBuffer;


# direct methods
.method public constructor <init>(I)V
    .locals 2
    .parameter "size"

    .prologue
    .line 24
    invoke-direct {p0}, Lcom/scalado/caps/PeerBase;-><init>()V

    .line 14
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/scalado/base/Buffer;->sourceBuffer:Ljava/nio/ByteBuffer;

    .line 25
    if-gtz p1, :cond_0

    .line 28
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "The size can not be negativ"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 30
    :cond_0
    invoke-direct {p0, p1}, Lcom/scalado/base/Buffer;->nativeCreateFromSize(I)I

    .line 31
    return-void
.end method

.method public constructor <init>(Ljava/nio/ByteBuffer;)V
    .locals 2
    .parameter "byteBuffer"

    .prologue
    .line 56
    invoke-direct {p0}, Lcom/scalado/caps/PeerBase;-><init>()V

    .line 14
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/scalado/base/Buffer;->sourceBuffer:Ljava/nio/ByteBuffer;

    .line 57
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->isDirect()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 59
    invoke-direct {p0, p1}, Lcom/scalado/base/Buffer;->nativeCreateFromByteBuffer(Ljava/nio/ByteBuffer;)I

    .line 71
    :goto_0
    return-void

    .line 60
    :cond_0
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->hasArray()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 61
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v0

    array-length v0, v0

    if-nez v0, :cond_1

    .line 64
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "The byte buffer byte array should not be empty"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 66
    :cond_1
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/scalado/base/Buffer;->nativeCreateFromBuffer([B)I

    goto :goto_0

    .line 69
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "The byte buffer is not direct nor has a byte array"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private constructor <init>(Ljava/nio/ByteBuffer;Z)V
    .locals 2
    .parameter "byteBuffer"
    .parameter "direct"

    .prologue
    .line 96
    invoke-direct {p0}, Lcom/scalado/caps/PeerBase;-><init>()V

    .line 14
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/scalado/base/Buffer;->sourceBuffer:Ljava/nio/ByteBuffer;

    .line 97
    invoke-direct {p0, p1}, Lcom/scalado/base/Buffer;->nativeCreateDirect(Ljava/nio/ByteBuffer;)I

    move-result v0

    .line 98
    .local v0, error:I
    return-void
.end method

.method public constructor <init>([B)V
    .locals 3
    .parameter "data"

    .prologue
    .line 40
    invoke-direct {p0}, Lcom/scalado/caps/PeerBase;-><init>()V

    .line 14
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/scalado/base/Buffer;->sourceBuffer:Ljava/nio/ByteBuffer;

    .line 41
    array-length v1, p1

    if-nez v1, :cond_0

    .line 44
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "The buffer should not be empty"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 46
    :cond_0
    invoke-direct {p0, p1}, Lcom/scalado/base/Buffer;->nativeCreateFromBuffer([B)I

    move-result v0

    .line 47
    .local v0, error:I
    return-void
.end method

.method public static createDirect(Ljava/nio/ByteBuffer;)Lcom/scalado/base/Buffer;
    .locals 3
    .parameter "byteBuffer"

    .prologue
    .line 83
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->isDirect()Z

    move-result v1

    if-nez v1, :cond_0

    .line 85
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "The byte buffer is not direct"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 87
    :cond_0
    new-instance v0, Lcom/scalado/base/Buffer;

    const/4 v1, 0x1

    invoke-direct {v0, p0, v1}, Lcom/scalado/base/Buffer;-><init>(Ljava/nio/ByteBuffer;Z)V

    .line 90
    .local v0, buffer:Lcom/scalado/base/Buffer;
    iput-object p0, v0, Lcom/scalado/base/Buffer;->sourceBuffer:Ljava/nio/ByteBuffer;

    .line 92
    return-object v0
.end method

.method private native nativeAsByteBuffer()Ljava/nio/ByteBuffer;
.end method

.method private native nativeCopyTo([B)I
.end method

.method private native nativeCreateDirect(Ljava/nio/ByteBuffer;)I
.end method

.method private native nativeCreateFromBuffer([B)I
.end method

.method private native nativeCreateFromByteBuffer(Ljava/nio/ByteBuffer;)I
.end method

.method private native nativeCreateFromSize(I)I
.end method

.method private native nativeGet([BIII)I
.end method


# virtual methods
.method protected final asByteBuffer()Ljava/nio/ByteBuffer;
    .locals 2

    .prologue
    .line 118
    iget-object v0, p0, Lcom/scalado/base/Buffer;->sourceBuffer:Ljava/nio/ByteBuffer;

    if-nez v0, :cond_0

    .line 119
    invoke-direct {p0}, Lcom/scalado/base/Buffer;->nativeAsByteBuffer()Ljava/nio/ByteBuffer;

    move-result-object v0

    iput-object v0, p0, Lcom/scalado/base/Buffer;->sourceBuffer:Ljava/nio/ByteBuffer;

    .line 121
    :cond_0
    iget-object v0, p0, Lcom/scalado/base/Buffer;->sourceBuffer:Ljava/nio/ByteBuffer;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    move-result-object v0

    check-cast v0, Ljava/nio/ByteBuffer;

    return-object v0
.end method

.method public copyTo([B)V
    .locals 3
    .parameter "data"

    .prologue
    .line 133
    array-length v0, p1

    invoke-virtual {p0}, Lcom/scalado/base/Buffer;->getSize()I

    move-result v1

    if-eq v0, v1, :cond_0

    .line 136
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "The size of data must be the same as buffer.size: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/scalado/base/Buffer;->getSize()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 138
    :cond_0
    invoke-direct {p0, p1}, Lcom/scalado/base/Buffer;->nativeCopyTo([B)I

    .line 139
    return-void
.end method

.method public get([BIII)V
    .locals 3
    .parameter "dst"
    .parameter "dstOffset"
    .parameter "srcOffset"
    .parameter "length"

    .prologue
    .line 150
    invoke-virtual {p0}, Lcom/scalado/base/Buffer;->getSize()I

    move-result v2

    sub-int v1, v2, p3

    .line 151
    .local v1, srcRemaining:I
    array-length v2, p1

    sub-int v0, v2, p2

    .line 153
    .local v0, dstRemaining:I
    if-le p4, v1, :cond_0

    .line 154
    new-instance v2, Ljava/nio/BufferUnderflowException;

    invoke-direct {v2}, Ljava/nio/BufferUnderflowException;-><init>()V

    throw v2

    .line 155
    :cond_0
    if-le p4, v0, :cond_1

    .line 156
    new-instance v2, Ljava/nio/BufferOverflowException;

    invoke-direct {v2}, Ljava/nio/BufferOverflowException;-><init>()V

    throw v2

    .line 158
    :cond_1
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/scalado/base/Buffer;->nativeGet([BIII)I

    .line 159
    return-void
.end method

.method public native getSize()I
.end method
