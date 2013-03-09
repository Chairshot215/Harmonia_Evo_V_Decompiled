.class public Lcom/jme3/texture/FrameBuffer;
.super Lcom/jme3/util/NativeObject;
.source "FrameBuffer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/jme3/texture/FrameBuffer$RenderBuffer;
    }
.end annotation


# instance fields
.field private colorBufIndex:I

.field private colorBufs:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/jme3/texture/FrameBuffer$RenderBuffer;",
            ">;"
        }
    .end annotation
.end field

.field private depthBuf:Lcom/jme3/texture/FrameBuffer$RenderBuffer;

.field private height:I

.field private samples:I

.field private width:I


# direct methods
.method protected constructor <init>(Lcom/jme3/texture/FrameBuffer;)V
    .locals 3
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 184
    const-class v0, Lcom/jme3/texture/FrameBuffer;

    iget v1, p1, Lcom/jme3/texture/FrameBuffer;->id:I

    invoke-direct {p0, v0, v1}, Lcom/jme3/util/NativeObject;-><init>(Ljava/lang/Class;I)V

    .line 77
    iput v2, p0, Lcom/jme3/texture/FrameBuffer;->width:I

    .line 78
    iput v2, p0, Lcom/jme3/texture/FrameBuffer;->height:I

    .line 79
    const/4 v0, 0x1

    iput v0, p0, Lcom/jme3/texture/FrameBuffer;->samples:I

    .line 80
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/jme3/texture/FrameBuffer;->colorBufs:Ljava/util/ArrayList;

    .line 81
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/jme3/texture/FrameBuffer;->depthBuf:Lcom/jme3/texture/FrameBuffer$RenderBuffer;

    .line 82
    iput v2, p0, Lcom/jme3/texture/FrameBuffer;->colorBufIndex:I

    .line 194
    return-void
.end method


# virtual methods
.method public createDestructableClone()Lcom/jme3/util/NativeObject;
    .locals 1

    .prologue
    .line 458
    new-instance v0, Lcom/jme3/texture/FrameBuffer;

    invoke-direct {v0, p0}, Lcom/jme3/texture/FrameBuffer;-><init>(Lcom/jme3/texture/FrameBuffer;)V

    return-object v0
.end method

.method public deleteObject(Ljava/lang/Object;)V
    .locals 0
    .parameter "rendererObject"

    .prologue
    .line 454
    check-cast p1, Lcom/jme3/renderer/Renderer;

    .end local p1
    invoke-interface {p1, p0}, Lcom/jme3/renderer/Renderer;->deleteFrameBuffer(Lcom/jme3/texture/FrameBuffer;)V

    .line 455
    return-void
.end method

.method public resetObject()V
    .locals 2

    .prologue
    .line 440
    const/4 v1, -0x1

    iput v1, p0, Lcom/jme3/texture/FrameBuffer;->id:I

    .line 442
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v1, p0, Lcom/jme3/texture/FrameBuffer;->colorBufs:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 443
    iget-object v1, p0, Lcom/jme3/texture/FrameBuffer;->colorBufs:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/jme3/texture/FrameBuffer$RenderBuffer;

    invoke-virtual {v1}, Lcom/jme3/texture/FrameBuffer$RenderBuffer;->resetObject()V

    .line 442
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 446
    :cond_0
    iget-object v1, p0, Lcom/jme3/texture/FrameBuffer;->depthBuf:Lcom/jme3/texture/FrameBuffer$RenderBuffer;

    if-eqz v1, :cond_1

    .line 447
    iget-object v1, p0, Lcom/jme3/texture/FrameBuffer;->depthBuf:Lcom/jme3/texture/FrameBuffer$RenderBuffer;

    invoke-virtual {v1}, Lcom/jme3/texture/FrameBuffer$RenderBuffer;->resetObject()V

    .line 449
    :cond_1
    invoke-virtual {p0}, Lcom/jme3/texture/FrameBuffer;->setUpdateNeeded()V

    .line 450
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 6

    .prologue
    .line 425
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 426
    .local v3, sb:Ljava/lang/StringBuilder;
    iget v4, p0, Lcom/jme3/texture/FrameBuffer;->colorBufIndex:I

    if-ltz v4, :cond_1

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, ""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/jme3/texture/FrameBuffer;->colorBufIndex:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 427
    .local v2, mrtStr:Ljava/lang/String;
    :goto_0
    const-string v4, "FrameBuffer[format="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/jme3/texture/FrameBuffer;->width:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "x"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/jme3/texture/FrameBuffer;->height:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "x"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/jme3/texture/FrameBuffer;->samples:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", drawBuf="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "]\n"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 429
    iget-object v4, p0, Lcom/jme3/texture/FrameBuffer;->depthBuf:Lcom/jme3/texture/FrameBuffer$RenderBuffer;

    if-eqz v4, :cond_0

    .line 430
    const-string v4, "Depth => "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/jme3/texture/FrameBuffer;->depthBuf:Lcom/jme3/texture/FrameBuffer$RenderBuffer;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\n"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 431
    :cond_0
    iget-object v4, p0, Lcom/jme3/texture/FrameBuffer;->colorBufs:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/jme3/texture/FrameBuffer$RenderBuffer;

    .line 432
    .local v0, colorBuf:Lcom/jme3/texture/FrameBuffer$RenderBuffer;
    const-string v4, "Color("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, v0, Lcom/jme3/texture/FrameBuffer$RenderBuffer;->slot:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ") => "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\n"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 426
    .end local v0           #colorBuf:Lcom/jme3/texture/FrameBuffer$RenderBuffer;
    .end local v1           #i$:Ljava/util/Iterator;
    .end local v2           #mrtStr:Ljava/lang/String;
    :cond_1
    const-string v2, "mrt"

    goto :goto_0

    .line 435
    .restart local v1       #i$:Ljava/util/Iterator;
    .restart local v2       #mrtStr:Ljava/lang/String;
    :cond_2
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    return-object v4
.end method
