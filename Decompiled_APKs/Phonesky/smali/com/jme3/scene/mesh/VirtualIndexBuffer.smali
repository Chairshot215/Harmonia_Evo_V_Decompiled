.class public Lcom/jme3/scene/mesh/VirtualIndexBuffer;
.super Lcom/jme3/scene/mesh/IndexBuffer;
.source "VirtualIndexBuffer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/jme3/scene/mesh/VirtualIndexBuffer$1;
    }
.end annotation


# instance fields
.field protected meshMode:Lcom/jme3/scene/Mesh$Mode;

.field protected numIndices:I

.field protected numVerts:I


# direct methods
.method public constructor <init>(ILcom/jme3/scene/Mesh$Mode;)V
    .locals 2
    .parameter "numVerts"
    .parameter "meshMode"

    .prologue
    const/4 v0, 0x0

    .line 28
    invoke-direct {p0}, Lcom/jme3/scene/mesh/IndexBuffer;-><init>()V

    .line 24
    iput v0, p0, Lcom/jme3/scene/mesh/VirtualIndexBuffer;->numVerts:I

    .line 25
    iput v0, p0, Lcom/jme3/scene/mesh/VirtualIndexBuffer;->numIndices:I

    .line 29
    iput p1, p0, Lcom/jme3/scene/mesh/VirtualIndexBuffer;->numVerts:I

    .line 30
    iput-object p2, p0, Lcom/jme3/scene/mesh/VirtualIndexBuffer;->meshMode:Lcom/jme3/scene/Mesh$Mode;

    .line 31
    sget-object v0, Lcom/jme3/scene/mesh/VirtualIndexBuffer$1;->$SwitchMap$com$jme3$scene$Mesh$Mode:[I

    invoke-virtual {p2}, Lcom/jme3/scene/Mesh$Mode;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 56
    :goto_0
    return-void

    .line 33
    :pswitch_0
    iput p1, p0, Lcom/jme3/scene/mesh/VirtualIndexBuffer;->numIndices:I

    goto :goto_0

    .line 36
    :pswitch_1
    add-int/lit8 v0, p1, -0x1

    mul-int/lit8 v0, v0, 0x2

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/jme3/scene/mesh/VirtualIndexBuffer;->numIndices:I

    goto :goto_0

    .line 39
    :pswitch_2
    add-int/lit8 v0, p1, -0x1

    mul-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/jme3/scene/mesh/VirtualIndexBuffer;->numIndices:I

    goto :goto_0

    .line 42
    :pswitch_3
    iput p1, p0, Lcom/jme3/scene/mesh/VirtualIndexBuffer;->numIndices:I

    goto :goto_0

    .line 45
    :pswitch_4
    add-int/lit8 v0, p1, -0x2

    mul-int/lit8 v0, v0, 0x3

    iput v0, p0, Lcom/jme3/scene/mesh/VirtualIndexBuffer;->numIndices:I

    goto :goto_0

    .line 48
    :pswitch_5
    add-int/lit8 v0, p1, -0x2

    mul-int/lit8 v0, v0, 0x3

    iput v0, p0, Lcom/jme3/scene/mesh/VirtualIndexBuffer;->numIndices:I

    goto :goto_0

    .line 51
    :pswitch_6
    iput p1, p0, Lcom/jme3/scene/mesh/VirtualIndexBuffer;->numIndices:I

    goto :goto_0

    .line 54
    :pswitch_7
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0

    .line 31
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
    .end packed-switch
.end method


# virtual methods
.method public get(I)I
    .locals 6
    .parameter "i"

    .prologue
    const/4 v0, 0x1

    const/4 v3, 0x0

    .line 60
    iget-object v4, p0, Lcom/jme3/scene/mesh/VirtualIndexBuffer;->meshMode:Lcom/jme3/scene/Mesh$Mode;

    sget-object v5, Lcom/jme3/scene/Mesh$Mode;->Triangles:Lcom/jme3/scene/Mesh$Mode;

    if-eq v4, v5, :cond_0

    iget-object v4, p0, Lcom/jme3/scene/mesh/VirtualIndexBuffer;->meshMode:Lcom/jme3/scene/Mesh$Mode;

    sget-object v5, Lcom/jme3/scene/Mesh$Mode;->Lines:Lcom/jme3/scene/Mesh$Mode;

    if-eq v4, v5, :cond_0

    iget-object v4, p0, Lcom/jme3/scene/mesh/VirtualIndexBuffer;->meshMode:Lcom/jme3/scene/Mesh$Mode;

    sget-object v5, Lcom/jme3/scene/Mesh$Mode;->Points:Lcom/jme3/scene/Mesh$Mode;

    if-ne v4, v5, :cond_2

    :cond_0
    move v3, p1

    .line 85
    :cond_1
    :goto_0
    return v3

    .line 62
    :cond_2
    iget-object v4, p0, Lcom/jme3/scene/mesh/VirtualIndexBuffer;->meshMode:Lcom/jme3/scene/Mesh$Mode;

    sget-object v5, Lcom/jme3/scene/Mesh$Mode;->LineStrip:Lcom/jme3/scene/Mesh$Mode;

    if-ne v4, v5, :cond_3

    .line 63
    add-int/lit8 v3, p1, 0x1

    div-int/lit8 v3, v3, 0x2

    goto :goto_0

    .line 64
    :cond_3
    iget-object v4, p0, Lcom/jme3/scene/mesh/VirtualIndexBuffer;->meshMode:Lcom/jme3/scene/Mesh$Mode;

    sget-object v5, Lcom/jme3/scene/Mesh$Mode;->LineLoop:Lcom/jme3/scene/Mesh$Mode;

    if-ne v4, v5, :cond_4

    .line 65
    iget v4, p0, Lcom/jme3/scene/mesh/VirtualIndexBuffer;->numVerts:I

    add-int/lit8 v4, v4, -0x1

    if-eq p1, v4, :cond_1

    add-int/lit8 v3, p1, 0x1

    div-int/lit8 v3, v3, 0x2

    goto :goto_0

    .line 66
    :cond_4
    iget-object v4, p0, Lcom/jme3/scene/mesh/VirtualIndexBuffer;->meshMode:Lcom/jme3/scene/Mesh$Mode;

    sget-object v5, Lcom/jme3/scene/Mesh$Mode;->TriangleStrip:Lcom/jme3/scene/Mesh$Mode;

    if-ne v4, v5, :cond_7

    .line 67
    div-int/lit8 v1, p1, 0x3

    .line 68
    .local v1, triIndex:I
    rem-int/lit8 v2, p1, 0x3

    .line 69
    .local v2, vertIndex:I
    div-int/lit8 v4, p1, 0x3

    rem-int/lit8 v4, v4, 0x2

    if-ne v4, v0, :cond_5

    .line 70
    .local v0, isBack:Z
    :goto_1
    if-nez v0, :cond_6

    .line 71
    add-int v3, v1, v2

    goto :goto_0

    .end local v0           #isBack:Z
    :cond_5
    move v0, v3

    .line 69
    goto :goto_1

    .line 73
    .restart local v0       #isBack:Z
    :cond_6
    packed-switch v2, :pswitch_data_0

    .line 77
    new-instance v3, Ljava/lang/AssertionError;

    invoke-direct {v3}, Ljava/lang/AssertionError;-><init>()V

    throw v3

    .line 74
    :pswitch_0
    add-int/lit8 v3, v1, 0x1

    goto :goto_0

    :pswitch_1
    move v3, v1

    .line 75
    goto :goto_0

    .line 76
    :pswitch_2
    add-int/lit8 v3, v1, 0x2

    goto :goto_0

    .line 80
    .end local v0           #isBack:Z
    .end local v1           #triIndex:I
    .end local v2           #vertIndex:I
    :cond_7
    iget-object v4, p0, Lcom/jme3/scene/mesh/VirtualIndexBuffer;->meshMode:Lcom/jme3/scene/Mesh$Mode;

    sget-object v5, Lcom/jme3/scene/Mesh$Mode;->TriangleFan:Lcom/jme3/scene/Mesh$Mode;

    if-ne v4, v5, :cond_8

    .line 81
    rem-int/lit8 v2, p1, 0x3

    .line 82
    .restart local v2       #vertIndex:I
    if-eqz v2, :cond_1

    .line 85
    div-int/lit8 v3, p1, 0x3

    add-int/2addr v3, v2

    goto :goto_0

    .line 87
    .end local v2           #vertIndex:I
    :cond_8
    new-instance v3, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v3}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v3

    .line 73
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public getBuffer()Ljava/nio/Buffer;
    .locals 1

    .prologue
    .line 103
    const/4 v0, 0x0

    return-object v0
.end method

.method public put(II)V
    .locals 2
    .parameter "i"
    .parameter "value"

    .prologue
    .line 93
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Does not represent index buffer"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public size()I
    .locals 1

    .prologue
    .line 98
    iget v0, p0, Lcom/jme3/scene/mesh/VirtualIndexBuffer;->numIndices:I

    return v0
.end method
