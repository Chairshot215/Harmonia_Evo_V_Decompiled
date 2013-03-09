.class public Lcom/jme3/scene/mesh/IndexShortBuffer;
.super Lcom/jme3/scene/mesh/IndexBuffer;
.source "IndexShortBuffer.java"


# instance fields
.field private buf:Ljava/nio/ShortBuffer;


# direct methods
.method public constructor <init>(Ljava/nio/ShortBuffer;)V
    .locals 0
    .parameter "buffer"

    .prologue
    .line 47
    invoke-direct {p0}, Lcom/jme3/scene/mesh/IndexBuffer;-><init>()V

    .line 48
    iput-object p1, p0, Lcom/jme3/scene/mesh/IndexShortBuffer;->buf:Ljava/nio/ShortBuffer;

    .line 49
    return-void
.end method


# virtual methods
.method public get(I)I
    .locals 2
    .parameter "i"

    .prologue
    .line 53
    iget-object v0, p0, Lcom/jme3/scene/mesh/IndexShortBuffer;->buf:Ljava/nio/ShortBuffer;

    invoke-virtual {v0, p1}, Ljava/nio/ShortBuffer;->get(I)S

    move-result v0

    const v1, 0xffff

    and-int/2addr v0, v1

    return v0
.end method

.method public getBuffer()Ljava/nio/Buffer;
    .locals 1

    .prologue
    .line 68
    iget-object v0, p0, Lcom/jme3/scene/mesh/IndexShortBuffer;->buf:Ljava/nio/ShortBuffer;

    return-object v0
.end method

.method public put(II)V
    .locals 2
    .parameter "i"
    .parameter "value"

    .prologue
    .line 58
    iget-object v0, p0, Lcom/jme3/scene/mesh/IndexShortBuffer;->buf:Ljava/nio/ShortBuffer;

    int-to-short v1, p2

    invoke-virtual {v0, p1, v1}, Ljava/nio/ShortBuffer;->put(IS)Ljava/nio/ShortBuffer;

    .line 59
    return-void
.end method

.method public size()I
    .locals 1

    .prologue
    .line 63
    iget-object v0, p0, Lcom/jme3/scene/mesh/IndexShortBuffer;->buf:Ljava/nio/ShortBuffer;

    invoke-virtual {v0}, Ljava/nio/ShortBuffer;->limit()I

    move-result v0

    return v0
.end method
