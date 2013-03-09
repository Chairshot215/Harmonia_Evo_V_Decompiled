.class public Lcom/jme3/scene/mesh/IndexByteBuffer;
.super Lcom/jme3/scene/mesh/IndexBuffer;
.source "IndexByteBuffer.java"


# instance fields
.field private buf:Ljava/nio/ByteBuffer;


# direct methods
.method public constructor <init>(Ljava/nio/ByteBuffer;)V
    .locals 0
    .parameter "buffer"

    .prologue
    .line 47
    invoke-direct {p0}, Lcom/jme3/scene/mesh/IndexBuffer;-><init>()V

    .line 48
    iput-object p1, p0, Lcom/jme3/scene/mesh/IndexByteBuffer;->buf:Ljava/nio/ByteBuffer;

    .line 49
    return-void
.end method


# virtual methods
.method public get(I)I
    .locals 1
    .parameter "i"

    .prologue
    .line 53
    iget-object v0, p0, Lcom/jme3/scene/mesh/IndexByteBuffer;->buf:Ljava/nio/ByteBuffer;

    invoke-virtual {v0, p1}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v0

    and-int/lit16 v0, v0, 0xff

    return v0
.end method

.method public getBuffer()Ljava/nio/Buffer;
    .locals 1

    .prologue
    .line 68
    iget-object v0, p0, Lcom/jme3/scene/mesh/IndexByteBuffer;->buf:Ljava/nio/ByteBuffer;

    return-object v0
.end method

.method public put(II)V
    .locals 2
    .parameter "i"
    .parameter "value"

    .prologue
    .line 58
    iget-object v0, p0, Lcom/jme3/scene/mesh/IndexByteBuffer;->buf:Ljava/nio/ByteBuffer;

    int-to-byte v1, p2

    invoke-virtual {v0, p1, v1}, Ljava/nio/ByteBuffer;->put(IB)Ljava/nio/ByteBuffer;

    .line 59
    return-void
.end method

.method public size()I
    .locals 1

    .prologue
    .line 63
    iget-object v0, p0, Lcom/jme3/scene/mesh/IndexByteBuffer;->buf:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->limit()I

    move-result v0

    return v0
.end method
