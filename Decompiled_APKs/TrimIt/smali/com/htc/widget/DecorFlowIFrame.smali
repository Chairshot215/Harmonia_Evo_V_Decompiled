.class Lcom/htc/widget/DecorFlowIFrame;
.super Ljava/lang/Object;
.source "DecorFlowIFrame.java"


# instance fields
.field private frameheight:F

.field private framewidth:F

.field private indexbuffer:Ljava/nio/ByteBuffer;

.field private texturebuffer:Ljava/nio/FloatBuffer;

.field private vertexbuffer:Ljava/nio/FloatBuffer;


# direct methods
.method public constructor <init>()V
    .locals 7

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    const/high16 v4, -0x4080

    const/4 v3, 0x0

    const/high16 v2, 0x3f80

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    const/4 v0, 0x0

    .line 24
    .local v0, bytebuffer:Ljava/nio/ByteBuffer;
    const/16 v1, 0x30

    invoke-static {v1}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 25
    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 26
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->asFloatBuffer()Ljava/nio/FloatBuffer;

    move-result-object v1

    iput-object v1, p0, Lcom/htc/widget/DecorFlowIFrame;->vertexbuffer:Ljava/nio/FloatBuffer;

    .line 28
    iput v2, p0, Lcom/htc/widget/DecorFlowIFrame;->framewidth:F

    .line 29
    iput v2, p0, Lcom/htc/widget/DecorFlowIFrame;->frameheight:F

    .line 31
    iget-object v1, p0, Lcom/htc/widget/DecorFlowIFrame;->vertexbuffer:Ljava/nio/FloatBuffer;

    invoke-virtual {v1, v4}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    iget-object v1, p0, Lcom/htc/widget/DecorFlowIFrame;->vertexbuffer:Ljava/nio/FloatBuffer;

    invoke-virtual {v1, v4}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    iget-object v1, p0, Lcom/htc/widget/DecorFlowIFrame;->vertexbuffer:Ljava/nio/FloatBuffer;

    invoke-virtual {v1, v3}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    .line 32
    iget-object v1, p0, Lcom/htc/widget/DecorFlowIFrame;->vertexbuffer:Ljava/nio/FloatBuffer;

    invoke-virtual {v1, v2}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    iget-object v1, p0, Lcom/htc/widget/DecorFlowIFrame;->vertexbuffer:Ljava/nio/FloatBuffer;

    invoke-virtual {v1, v4}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    iget-object v1, p0, Lcom/htc/widget/DecorFlowIFrame;->vertexbuffer:Ljava/nio/FloatBuffer;

    invoke-virtual {v1, v3}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    .line 33
    iget-object v1, p0, Lcom/htc/widget/DecorFlowIFrame;->vertexbuffer:Ljava/nio/FloatBuffer;

    invoke-virtual {v1, v2}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    iget-object v1, p0, Lcom/htc/widget/DecorFlowIFrame;->vertexbuffer:Ljava/nio/FloatBuffer;

    invoke-virtual {v1, v2}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    iget-object v1, p0, Lcom/htc/widget/DecorFlowIFrame;->vertexbuffer:Ljava/nio/FloatBuffer;

    invoke-virtual {v1, v3}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    .line 34
    iget-object v1, p0, Lcom/htc/widget/DecorFlowIFrame;->vertexbuffer:Ljava/nio/FloatBuffer;

    invoke-virtual {v1, v4}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    iget-object v1, p0, Lcom/htc/widget/DecorFlowIFrame;->vertexbuffer:Ljava/nio/FloatBuffer;

    invoke-virtual {v1, v2}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    iget-object v1, p0, Lcom/htc/widget/DecorFlowIFrame;->vertexbuffer:Ljava/nio/FloatBuffer;

    invoke-virtual {v1, v3}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    .line 35
    iget-object v1, p0, Lcom/htc/widget/DecorFlowIFrame;->vertexbuffer:Ljava/nio/FloatBuffer;

    invoke-virtual {v1, v5}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    .line 37
    const/4 v0, 0x0

    .line 38
    const/16 v1, 0x20

    invoke-static {v1}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 39
    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 40
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->asFloatBuffer()Ljava/nio/FloatBuffer;

    move-result-object v1

    iput-object v1, p0, Lcom/htc/widget/DecorFlowIFrame;->texturebuffer:Ljava/nio/FloatBuffer;

    .line 42
    iget-object v1, p0, Lcom/htc/widget/DecorFlowIFrame;->texturebuffer:Ljava/nio/FloatBuffer;

    invoke-virtual {v1, v3}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    iget-object v1, p0, Lcom/htc/widget/DecorFlowIFrame;->texturebuffer:Ljava/nio/FloatBuffer;

    invoke-virtual {v1, v2}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    .line 43
    iget-object v1, p0, Lcom/htc/widget/DecorFlowIFrame;->texturebuffer:Ljava/nio/FloatBuffer;

    invoke-virtual {v1, v2}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    iget-object v1, p0, Lcom/htc/widget/DecorFlowIFrame;->texturebuffer:Ljava/nio/FloatBuffer;

    invoke-virtual {v1, v2}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    .line 44
    iget-object v1, p0, Lcom/htc/widget/DecorFlowIFrame;->texturebuffer:Ljava/nio/FloatBuffer;

    invoke-virtual {v1, v2}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    iget-object v1, p0, Lcom/htc/widget/DecorFlowIFrame;->texturebuffer:Ljava/nio/FloatBuffer;

    invoke-virtual {v1, v3}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    .line 45
    iget-object v1, p0, Lcom/htc/widget/DecorFlowIFrame;->texturebuffer:Ljava/nio/FloatBuffer;

    invoke-virtual {v1, v3}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    iget-object v1, p0, Lcom/htc/widget/DecorFlowIFrame;->texturebuffer:Ljava/nio/FloatBuffer;

    invoke-virtual {v1, v3}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    .line 46
    iget-object v1, p0, Lcom/htc/widget/DecorFlowIFrame;->texturebuffer:Ljava/nio/FloatBuffer;

    invoke-virtual {v1, v5}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    .line 48
    const/4 v0, 0x0

    .line 49
    const/4 v1, 0x6

    invoke-static {v1}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v1

    iput-object v1, p0, Lcom/htc/widget/DecorFlowIFrame;->indexbuffer:Ljava/nio/ByteBuffer;

    .line 50
    iget-object v1, p0, Lcom/htc/widget/DecorFlowIFrame;->indexbuffer:Ljava/nio/ByteBuffer;

    const/4 v2, 0x3

    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    iget-object v1, p0, Lcom/htc/widget/DecorFlowIFrame;->indexbuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v1, v5}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    iget-object v1, p0, Lcom/htc/widget/DecorFlowIFrame;->indexbuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v1, v6}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 51
    iget-object v1, p0, Lcom/htc/widget/DecorFlowIFrame;->indexbuffer:Ljava/nio/ByteBuffer;

    const/4 v2, 0x3

    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    iget-object v1, p0, Lcom/htc/widget/DecorFlowIFrame;->indexbuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v1, v6}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    iget-object v1, p0, Lcom/htc/widget/DecorFlowIFrame;->indexbuffer:Ljava/nio/ByteBuffer;

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 52
    iget-object v1, p0, Lcom/htc/widget/DecorFlowIFrame;->indexbuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v1, v5}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 53
    return-void
.end method


# virtual methods
.method public draw(Ljavax/microedition/khronos/opengles/GL10;)V
    .locals 4
    .parameter "glhandle"

    .prologue
    const/16 v3, 0x1406

    const/4 v2, 0x0

    .line 83
    const/4 v0, 0x3

    iget-object v1, p0, Lcom/htc/widget/DecorFlowIFrame;->vertexbuffer:Ljava/nio/FloatBuffer;

    invoke-interface {p1, v0, v3, v2, v1}, Ljavax/microedition/khronos/opengles/GL10;->glVertexPointer(IIILjava/nio/Buffer;)V

    .line 84
    const/4 v0, 0x2

    iget-object v1, p0, Lcom/htc/widget/DecorFlowIFrame;->texturebuffer:Ljava/nio/FloatBuffer;

    invoke-interface {p1, v0, v3, v2, v1}, Ljavax/microedition/khronos/opengles/GL10;->glTexCoordPointer(IIILjava/nio/Buffer;)V

    .line 85
    const/4 v0, 0x5

    const/4 v1, 0x6

    const/16 v2, 0x1401

    iget-object v3, p0, Lcom/htc/widget/DecorFlowIFrame;->indexbuffer:Ljava/nio/ByteBuffer;

    invoke-interface {p1, v0, v1, v2, v3}, Ljavax/microedition/khronos/opengles/GL10;->glDrawElements(IIILjava/nio/Buffer;)V

    .line 86
    return-void
.end method

.method public getFrameHeight()F
    .locals 1

    .prologue
    .line 95
    iget v0, p0, Lcom/htc/widget/DecorFlowIFrame;->frameheight:F

    return v0
.end method

.method public getFrameWidth()F
    .locals 1

    .prologue
    .line 90
    iget v0, p0, Lcom/htc/widget/DecorFlowIFrame;->framewidth:F

    return v0
.end method

.method public setFrame(FF)V
    .locals 4
    .parameter "width"
    .parameter "height"

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 57
    iput p1, p0, Lcom/htc/widget/DecorFlowIFrame;->framewidth:F

    .line 58
    iput p2, p0, Lcom/htc/widget/DecorFlowIFrame;->frameheight:F

    .line 60
    iget-object v0, p0, Lcom/htc/widget/DecorFlowIFrame;->vertexbuffer:Ljava/nio/FloatBuffer;

    invoke-virtual {v0, v3}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    .line 61
    iget-object v0, p0, Lcom/htc/widget/DecorFlowIFrame;->vertexbuffer:Ljava/nio/FloatBuffer;

    neg-float v1, p1

    invoke-virtual {v0, v1}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    iget-object v0, p0, Lcom/htc/widget/DecorFlowIFrame;->vertexbuffer:Ljava/nio/FloatBuffer;

    neg-float v1, p2

    invoke-virtual {v0, v1}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    iget-object v0, p0, Lcom/htc/widget/DecorFlowIFrame;->vertexbuffer:Ljava/nio/FloatBuffer;

    invoke-virtual {v0, v2}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    .line 62
    iget-object v0, p0, Lcom/htc/widget/DecorFlowIFrame;->vertexbuffer:Ljava/nio/FloatBuffer;

    invoke-virtual {v0, p1}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    iget-object v0, p0, Lcom/htc/widget/DecorFlowIFrame;->vertexbuffer:Ljava/nio/FloatBuffer;

    neg-float v1, p2

    invoke-virtual {v0, v1}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    iget-object v0, p0, Lcom/htc/widget/DecorFlowIFrame;->vertexbuffer:Ljava/nio/FloatBuffer;

    invoke-virtual {v0, v2}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    .line 63
    iget-object v0, p0, Lcom/htc/widget/DecorFlowIFrame;->vertexbuffer:Ljava/nio/FloatBuffer;

    invoke-virtual {v0, p1}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    iget-object v0, p0, Lcom/htc/widget/DecorFlowIFrame;->vertexbuffer:Ljava/nio/FloatBuffer;

    invoke-virtual {v0, p2}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    iget-object v0, p0, Lcom/htc/widget/DecorFlowIFrame;->vertexbuffer:Ljava/nio/FloatBuffer;

    invoke-virtual {v0, v2}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    .line 64
    iget-object v0, p0, Lcom/htc/widget/DecorFlowIFrame;->vertexbuffer:Ljava/nio/FloatBuffer;

    neg-float v1, p1

    invoke-virtual {v0, v1}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    iget-object v0, p0, Lcom/htc/widget/DecorFlowIFrame;->vertexbuffer:Ljava/nio/FloatBuffer;

    invoke-virtual {v0, p2}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    iget-object v0, p0, Lcom/htc/widget/DecorFlowIFrame;->vertexbuffer:Ljava/nio/FloatBuffer;

    invoke-virtual {v0, v2}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    .line 65
    iget-object v0, p0, Lcom/htc/widget/DecorFlowIFrame;->vertexbuffer:Ljava/nio/FloatBuffer;

    invoke-virtual {v0, v3}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    .line 66
    return-void
.end method

.method public setTexture(FF)V
    .locals 5
    .parameter "xmax"
    .parameter "ymax"

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 70
    const/4 v0, 0x0

    .line 71
    .local v0, xmin:F
    const/4 v1, 0x0

    .line 73
    .local v1, ymin:F
    iget-object v2, p0, Lcom/htc/widget/DecorFlowIFrame;->texturebuffer:Ljava/nio/FloatBuffer;

    invoke-virtual {v2, v4}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    .line 74
    iget-object v2, p0, Lcom/htc/widget/DecorFlowIFrame;->texturebuffer:Ljava/nio/FloatBuffer;

    invoke-virtual {v2, v3}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    iget-object v2, p0, Lcom/htc/widget/DecorFlowIFrame;->texturebuffer:Ljava/nio/FloatBuffer;

    invoke-virtual {v2, p2}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    .line 75
    iget-object v2, p0, Lcom/htc/widget/DecorFlowIFrame;->texturebuffer:Ljava/nio/FloatBuffer;

    invoke-virtual {v2, p1}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    iget-object v2, p0, Lcom/htc/widget/DecorFlowIFrame;->texturebuffer:Ljava/nio/FloatBuffer;

    invoke-virtual {v2, p2}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    .line 76
    iget-object v2, p0, Lcom/htc/widget/DecorFlowIFrame;->texturebuffer:Ljava/nio/FloatBuffer;

    invoke-virtual {v2, p1}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    iget-object v2, p0, Lcom/htc/widget/DecorFlowIFrame;->texturebuffer:Ljava/nio/FloatBuffer;

    invoke-virtual {v2, v3}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    .line 77
    iget-object v2, p0, Lcom/htc/widget/DecorFlowIFrame;->texturebuffer:Ljava/nio/FloatBuffer;

    invoke-virtual {v2, v3}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    iget-object v2, p0, Lcom/htc/widget/DecorFlowIFrame;->texturebuffer:Ljava/nio/FloatBuffer;

    invoke-virtual {v2, v3}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    .line 78
    iget-object v2, p0, Lcom/htc/widget/DecorFlowIFrame;->texturebuffer:Ljava/nio/FloatBuffer;

    invoke-virtual {v2, v4}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    .line 79
    return-void
.end method
