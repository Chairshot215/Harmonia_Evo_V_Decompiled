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

    const/4 v6, 0x1

    const/4 v5, 0x0

    const/high16 v4, -0x4080

    const/4 v3, 0x0

    const/high16 v2, 0x3f80

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    const/16 v1, 0x30

    invoke-static {v1}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->asFloatBuffer()Ljava/nio/FloatBuffer;

    move-result-object v1

    iput-object v1, p0, Lcom/htc/widget/DecorFlowIFrame;->vertexbuffer:Ljava/nio/FloatBuffer;

    iput v2, p0, Lcom/htc/widget/DecorFlowIFrame;->framewidth:F

    iput v2, p0, Lcom/htc/widget/DecorFlowIFrame;->frameheight:F

    iget-object v1, p0, Lcom/htc/widget/DecorFlowIFrame;->vertexbuffer:Ljava/nio/FloatBuffer;

    invoke-virtual {v1, v4}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    iget-object v1, p0, Lcom/htc/widget/DecorFlowIFrame;->vertexbuffer:Ljava/nio/FloatBuffer;

    invoke-virtual {v1, v4}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    iget-object v1, p0, Lcom/htc/widget/DecorFlowIFrame;->vertexbuffer:Ljava/nio/FloatBuffer;

    invoke-virtual {v1, v3}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    iget-object v1, p0, Lcom/htc/widget/DecorFlowIFrame;->vertexbuffer:Ljava/nio/FloatBuffer;

    invoke-virtual {v1, v2}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    iget-object v1, p0, Lcom/htc/widget/DecorFlowIFrame;->vertexbuffer:Ljava/nio/FloatBuffer;

    invoke-virtual {v1, v4}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    iget-object v1, p0, Lcom/htc/widget/DecorFlowIFrame;->vertexbuffer:Ljava/nio/FloatBuffer;

    invoke-virtual {v1, v3}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    iget-object v1, p0, Lcom/htc/widget/DecorFlowIFrame;->vertexbuffer:Ljava/nio/FloatBuffer;

    invoke-virtual {v1, v2}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    iget-object v1, p0, Lcom/htc/widget/DecorFlowIFrame;->vertexbuffer:Ljava/nio/FloatBuffer;

    invoke-virtual {v1, v2}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    iget-object v1, p0, Lcom/htc/widget/DecorFlowIFrame;->vertexbuffer:Ljava/nio/FloatBuffer;

    invoke-virtual {v1, v3}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    iget-object v1, p0, Lcom/htc/widget/DecorFlowIFrame;->vertexbuffer:Ljava/nio/FloatBuffer;

    invoke-virtual {v1, v4}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    iget-object v1, p0, Lcom/htc/widget/DecorFlowIFrame;->vertexbuffer:Ljava/nio/FloatBuffer;

    invoke-virtual {v1, v2}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    iget-object v1, p0, Lcom/htc/widget/DecorFlowIFrame;->vertexbuffer:Ljava/nio/FloatBuffer;

    invoke-virtual {v1, v3}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    iget-object v1, p0, Lcom/htc/widget/DecorFlowIFrame;->vertexbuffer:Ljava/nio/FloatBuffer;

    invoke-virtual {v1, v5}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    const/4 v0, 0x0

    const/16 v1, 0x20

    invoke-static {v1}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->asFloatBuffer()Ljava/nio/FloatBuffer;

    move-result-object v1

    iput-object v1, p0, Lcom/htc/widget/DecorFlowIFrame;->texturebuffer:Ljava/nio/FloatBuffer;

    iget-object v1, p0, Lcom/htc/widget/DecorFlowIFrame;->texturebuffer:Ljava/nio/FloatBuffer;

    invoke-virtual {v1, v3}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    iget-object v1, p0, Lcom/htc/widget/DecorFlowIFrame;->texturebuffer:Ljava/nio/FloatBuffer;

    invoke-virtual {v1, v2}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    iget-object v1, p0, Lcom/htc/widget/DecorFlowIFrame;->texturebuffer:Ljava/nio/FloatBuffer;

    invoke-virtual {v1, v2}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    iget-object v1, p0, Lcom/htc/widget/DecorFlowIFrame;->texturebuffer:Ljava/nio/FloatBuffer;

    invoke-virtual {v1, v2}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    iget-object v1, p0, Lcom/htc/widget/DecorFlowIFrame;->texturebuffer:Ljava/nio/FloatBuffer;

    invoke-virtual {v1, v2}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    iget-object v1, p0, Lcom/htc/widget/DecorFlowIFrame;->texturebuffer:Ljava/nio/FloatBuffer;

    invoke-virtual {v1, v3}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    iget-object v1, p0, Lcom/htc/widget/DecorFlowIFrame;->texturebuffer:Ljava/nio/FloatBuffer;

    invoke-virtual {v1, v3}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    iget-object v1, p0, Lcom/htc/widget/DecorFlowIFrame;->texturebuffer:Ljava/nio/FloatBuffer;

    invoke-virtual {v1, v3}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    iget-object v1, p0, Lcom/htc/widget/DecorFlowIFrame;->texturebuffer:Ljava/nio/FloatBuffer;

    invoke-virtual {v1, v5}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    const/4 v0, 0x0

    const/4 v1, 0x6

    invoke-static {v1}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v1

    iput-object v1, p0, Lcom/htc/widget/DecorFlowIFrame;->indexbuffer:Ljava/nio/ByteBuffer;

    iget-object v1, p0, Lcom/htc/widget/DecorFlowIFrame;->indexbuffer:Ljava/nio/ByteBuffer;

    const/4 v2, 0x3

    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    iget-object v1, p0, Lcom/htc/widget/DecorFlowIFrame;->indexbuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v1, v5}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    iget-object v1, p0, Lcom/htc/widget/DecorFlowIFrame;->indexbuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v1, v6}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    iget-object v1, p0, Lcom/htc/widget/DecorFlowIFrame;->indexbuffer:Ljava/nio/ByteBuffer;

    const/4 v2, 0x3

    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    iget-object v1, p0, Lcom/htc/widget/DecorFlowIFrame;->indexbuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v1, v6}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    iget-object v1, p0, Lcom/htc/widget/DecorFlowIFrame;->indexbuffer:Ljava/nio/ByteBuffer;

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    iget-object v1, p0, Lcom/htc/widget/DecorFlowIFrame;->indexbuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v1, v5}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    return-void
.end method


# virtual methods
.method public draw(Ljavax/microedition/khronos/opengles/GL10;)V
    .locals 4

    const/16 v3, 0x1406

    const/4 v2, 0x0

    const/4 v0, 0x3

    iget-object v1, p0, Lcom/htc/widget/DecorFlowIFrame;->vertexbuffer:Ljava/nio/FloatBuffer;

    invoke-interface {p1, v0, v3, v2, v1}, Ljavax/microedition/khronos/opengles/GL10;->glVertexPointer(IIILjava/nio/Buffer;)V

    const/4 v0, 0x2

    iget-object v1, p0, Lcom/htc/widget/DecorFlowIFrame;->texturebuffer:Ljava/nio/FloatBuffer;

    invoke-interface {p1, v0, v3, v2, v1}, Ljavax/microedition/khronos/opengles/GL10;->glTexCoordPointer(IIILjava/nio/Buffer;)V

    const/4 v0, 0x5

    const/4 v1, 0x6

    const/16 v2, 0x1401

    iget-object v3, p0, Lcom/htc/widget/DecorFlowIFrame;->indexbuffer:Ljava/nio/ByteBuffer;

    invoke-interface {p1, v0, v1, v2, v3}, Ljavax/microedition/khronos/opengles/GL10;->glDrawElements(IIILjava/nio/Buffer;)V

    return-void
.end method

.method public getFrameHeight()F
    .locals 1

    iget v0, p0, Lcom/htc/widget/DecorFlowIFrame;->frameheight:F

    return v0
.end method

.method public getFrameWidth()F
    .locals 1

    iget v0, p0, Lcom/htc/widget/DecorFlowIFrame;->framewidth:F

    return v0
.end method

.method public setFrame(FF)V
    .locals 4

    const/4 v3, 0x0

    const/4 v2, 0x0

    iput p1, p0, Lcom/htc/widget/DecorFlowIFrame;->framewidth:F

    iput p2, p0, Lcom/htc/widget/DecorFlowIFrame;->frameheight:F

    iget-object v0, p0, Lcom/htc/widget/DecorFlowIFrame;->vertexbuffer:Ljava/nio/FloatBuffer;

    invoke-virtual {v0, v3}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    iget-object v0, p0, Lcom/htc/widget/DecorFlowIFrame;->vertexbuffer:Ljava/nio/FloatBuffer;

    neg-float v1, p1

    invoke-virtual {v0, v1}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    iget-object v0, p0, Lcom/htc/widget/DecorFlowIFrame;->vertexbuffer:Ljava/nio/FloatBuffer;

    neg-float v1, p2

    invoke-virtual {v0, v1}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    iget-object v0, p0, Lcom/htc/widget/DecorFlowIFrame;->vertexbuffer:Ljava/nio/FloatBuffer;

    invoke-virtual {v0, v2}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    iget-object v0, p0, Lcom/htc/widget/DecorFlowIFrame;->vertexbuffer:Ljava/nio/FloatBuffer;

    invoke-virtual {v0, p1}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    iget-object v0, p0, Lcom/htc/widget/DecorFlowIFrame;->vertexbuffer:Ljava/nio/FloatBuffer;

    neg-float v1, p2

    invoke-virtual {v0, v1}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    iget-object v0, p0, Lcom/htc/widget/DecorFlowIFrame;->vertexbuffer:Ljava/nio/FloatBuffer;

    invoke-virtual {v0, v2}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    iget-object v0, p0, Lcom/htc/widget/DecorFlowIFrame;->vertexbuffer:Ljava/nio/FloatBuffer;

    invoke-virtual {v0, p1}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    iget-object v0, p0, Lcom/htc/widget/DecorFlowIFrame;->vertexbuffer:Ljava/nio/FloatBuffer;

    invoke-virtual {v0, p2}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    iget-object v0, p0, Lcom/htc/widget/DecorFlowIFrame;->vertexbuffer:Ljava/nio/FloatBuffer;

    invoke-virtual {v0, v2}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    iget-object v0, p0, Lcom/htc/widget/DecorFlowIFrame;->vertexbuffer:Ljava/nio/FloatBuffer;

    neg-float v1, p1

    invoke-virtual {v0, v1}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    iget-object v0, p0, Lcom/htc/widget/DecorFlowIFrame;->vertexbuffer:Ljava/nio/FloatBuffer;

    invoke-virtual {v0, p2}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    iget-object v0, p0, Lcom/htc/widget/DecorFlowIFrame;->vertexbuffer:Ljava/nio/FloatBuffer;

    invoke-virtual {v0, v2}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    iget-object v0, p0, Lcom/htc/widget/DecorFlowIFrame;->vertexbuffer:Ljava/nio/FloatBuffer;

    invoke-virtual {v0, v3}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    return-void
.end method

.method public setTexture(FF)V
    .locals 5

    const/4 v4, 0x0

    const/4 v3, 0x0

    const/4 v0, 0x0

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/htc/widget/DecorFlowIFrame;->texturebuffer:Ljava/nio/FloatBuffer;

    invoke-virtual {v2, v4}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    iget-object v2, p0, Lcom/htc/widget/DecorFlowIFrame;->texturebuffer:Ljava/nio/FloatBuffer;

    invoke-virtual {v2, v3}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    iget-object v2, p0, Lcom/htc/widget/DecorFlowIFrame;->texturebuffer:Ljava/nio/FloatBuffer;

    invoke-virtual {v2, p2}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    iget-object v2, p0, Lcom/htc/widget/DecorFlowIFrame;->texturebuffer:Ljava/nio/FloatBuffer;

    invoke-virtual {v2, p1}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    iget-object v2, p0, Lcom/htc/widget/DecorFlowIFrame;->texturebuffer:Ljava/nio/FloatBuffer;

    invoke-virtual {v2, p2}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    iget-object v2, p0, Lcom/htc/widget/DecorFlowIFrame;->texturebuffer:Ljava/nio/FloatBuffer;

    invoke-virtual {v2, p1}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    iget-object v2, p0, Lcom/htc/widget/DecorFlowIFrame;->texturebuffer:Ljava/nio/FloatBuffer;

    invoke-virtual {v2, v3}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    iget-object v2, p0, Lcom/htc/widget/DecorFlowIFrame;->texturebuffer:Ljava/nio/FloatBuffer;

    invoke-virtual {v2, v3}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    iget-object v2, p0, Lcom/htc/widget/DecorFlowIFrame;->texturebuffer:Ljava/nio/FloatBuffer;

    invoke-virtual {v2, v3}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    iget-object v2, p0, Lcom/htc/widget/DecorFlowIFrame;->texturebuffer:Ljava/nio/FloatBuffer;

    invoke-virtual {v2, v4}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    return-void
.end method
