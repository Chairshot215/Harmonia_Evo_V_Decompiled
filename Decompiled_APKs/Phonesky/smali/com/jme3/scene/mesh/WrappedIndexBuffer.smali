.class public Lcom/jme3/scene/mesh/WrappedIndexBuffer;
.super Lcom/jme3/scene/mesh/VirtualIndexBuffer;
.source "WrappedIndexBuffer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/jme3/scene/mesh/WrappedIndexBuffer$1;
    }
.end annotation


# instance fields
.field private final ib:Lcom/jme3/scene/mesh/IndexBuffer;


# direct methods
.method public constructor <init>(Lcom/jme3/scene/Mesh;)V
    .locals 2
    .parameter "mesh"

    .prologue
    .line 25
    invoke-virtual {p1}, Lcom/jme3/scene/Mesh;->getVertexCount()I

    move-result v0

    invoke-virtual {p1}, Lcom/jme3/scene/Mesh;->getMode()Lcom/jme3/scene/Mesh$Mode;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/jme3/scene/mesh/VirtualIndexBuffer;-><init>(ILcom/jme3/scene/Mesh$Mode;)V

    .line 26
    invoke-virtual {p1}, Lcom/jme3/scene/Mesh;->getIndexBuffer()Lcom/jme3/scene/mesh/IndexBuffer;

    move-result-object v0

    iput-object v0, p0, Lcom/jme3/scene/mesh/WrappedIndexBuffer;->ib:Lcom/jme3/scene/mesh/IndexBuffer;

    .line 27
    sget-object v0, Lcom/jme3/scene/mesh/WrappedIndexBuffer$1;->$SwitchMap$com$jme3$scene$Mesh$Mode:[I

    iget-object v1, p0, Lcom/jme3/scene/mesh/WrappedIndexBuffer;->meshMode:Lcom/jme3/scene/Mesh$Mode;

    invoke-virtual {v1}, Lcom/jme3/scene/Mesh$Mode;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 42
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0

    .line 29
    :pswitch_0
    invoke-virtual {p1}, Lcom/jme3/scene/Mesh;->getTriangleCount()I

    move-result v0

    iput v0, p0, Lcom/jme3/scene/mesh/WrappedIndexBuffer;->numIndices:I

    .line 44
    :goto_0
    return-void

    .line 34
    :pswitch_1
    invoke-virtual {p1}, Lcom/jme3/scene/Mesh;->getTriangleCount()I

    move-result v0

    mul-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/jme3/scene/mesh/WrappedIndexBuffer;->numIndices:I

    goto :goto_0

    .line 39
    :pswitch_2
    invoke-virtual {p1}, Lcom/jme3/scene/Mesh;->getTriangleCount()I

    move-result v0

    mul-int/lit8 v0, v0, 0x3

    iput v0, p0, Lcom/jme3/scene/mesh/WrappedIndexBuffer;->numIndices:I

    goto :goto_0

    .line 27
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_2
        :pswitch_2
        :pswitch_2
    .end packed-switch
.end method


# virtual methods
.method public get(I)I
    .locals 2
    .parameter "i"

    .prologue
    .line 48
    invoke-super {p0, p1}, Lcom/jme3/scene/mesh/VirtualIndexBuffer;->get(I)I

    move-result v0

    .line 49
    .local v0, superIdx:I
    iget-object v1, p0, Lcom/jme3/scene/mesh/WrappedIndexBuffer;->ib:Lcom/jme3/scene/mesh/IndexBuffer;

    invoke-virtual {v1, v0}, Lcom/jme3/scene/mesh/IndexBuffer;->get(I)I

    move-result v1

    return v1
.end method

.method public getBuffer()Ljava/nio/Buffer;
    .locals 1

    .prologue
    .line 54
    iget-object v0, p0, Lcom/jme3/scene/mesh/WrappedIndexBuffer;->ib:Lcom/jme3/scene/mesh/IndexBuffer;

    invoke-virtual {v0}, Lcom/jme3/scene/mesh/IndexBuffer;->getBuffer()Ljava/nio/Buffer;

    move-result-object v0

    return-object v0
.end method
