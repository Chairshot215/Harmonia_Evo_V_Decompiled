.class public Lcom/jme3/scene/shape/Quad;
.super Lcom/jme3/scene/Mesh;
.source "Quad.java"


# instance fields
.field private height:F

.field private width:F


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 54
    invoke-direct {p0}, Lcom/jme3/scene/Mesh;-><init>()V

    .line 55
    return-void
.end method

.method public constructor <init>(FF)V
    .locals 0
    .parameter "width"
    .parameter "height"

    .prologue
    .line 64
    invoke-direct {p0}, Lcom/jme3/scene/Mesh;-><init>()V

    .line 65
    invoke-virtual {p0, p1, p2}, Lcom/jme3/scene/shape/Quad;->updateGeometry(FF)V

    .line 66
    return-void
.end method


# virtual methods
.method public updateGeometry(FF)V
    .locals 1
    .parameter "width"
    .parameter "height"

    .prologue
    .line 90
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/jme3/scene/shape/Quad;->updateGeometry(FFZ)V

    .line 91
    return-void
.end method

.method public updateGeometry(FFZ)V
    .locals 8
    .parameter "width"
    .parameter "height"
    .parameter "flipCoords"

    .prologue
    const/16 v7, 0x8

    const/4 v6, 0x6

    const/4 v5, 0x2

    const/4 v4, 0x3

    const/4 v3, 0x0

    .line 94
    iput p1, p0, Lcom/jme3/scene/shape/Quad;->width:F

    .line 95
    iput p2, p0, Lcom/jme3/scene/shape/Quad;->height:F

    .line 96
    sget-object v0, Lcom/jme3/scene/VertexBuffer$Type;->Position:Lcom/jme3/scene/VertexBuffer$Type;

    const/16 v1, 0xc

    new-array v1, v1, [F

    const/4 v2, 0x0

    aput v3, v1, v2

    const/4 v2, 0x1

    aput v3, v1, v2

    aput v3, v1, v5

    aput p1, v1, v4

    const/4 v2, 0x4

    aput v3, v1, v2

    const/4 v2, 0x5

    aput v3, v1, v2

    aput p1, v1, v6

    const/4 v2, 0x7

    aput p2, v1, v2

    aput v3, v1, v7

    const/16 v2, 0x9

    aput v3, v1, v2

    const/16 v2, 0xa

    aput p2, v1, v2

    const/16 v2, 0xb

    aput v3, v1, v2

    invoke-virtual {p0, v0, v4, v1}, Lcom/jme3/scene/shape/Quad;->setBuffer(Lcom/jme3/scene/VertexBuffer$Type;I[F)V

    .line 103
    if-eqz p3, :cond_0

    .line 104
    sget-object v0, Lcom/jme3/scene/VertexBuffer$Type;->TexCoord:Lcom/jme3/scene/VertexBuffer$Type;

    new-array v1, v7, [F

    fill-array-data v1, :array_0

    invoke-virtual {p0, v0, v5, v1}, Lcom/jme3/scene/shape/Quad;->setBuffer(Lcom/jme3/scene/VertexBuffer$Type;I[F)V

    .line 114
    :goto_0
    sget-object v0, Lcom/jme3/scene/VertexBuffer$Type;->Normal:Lcom/jme3/scene/VertexBuffer$Type;

    const/16 v1, 0xc

    new-array v1, v1, [F

    fill-array-data v1, :array_1

    invoke-virtual {p0, v0, v4, v1}, Lcom/jme3/scene/shape/Quad;->setBuffer(Lcom/jme3/scene/VertexBuffer$Type;I[F)V

    .line 118
    cmpg-float v0, p2, v3

    if-gez v0, :cond_1

    .line 119
    sget-object v0, Lcom/jme3/scene/VertexBuffer$Type;->Index:Lcom/jme3/scene/VertexBuffer$Type;

    new-array v1, v6, [S

    fill-array-data v1, :array_2

    invoke-virtual {p0, v0, v4, v1}, Lcom/jme3/scene/shape/Quad;->setBuffer(Lcom/jme3/scene/VertexBuffer$Type;I[S)V

    .line 126
    :goto_1
    invoke-virtual {p0}, Lcom/jme3/scene/shape/Quad;->updateBound()V

    .line 127
    return-void

    .line 109
    :cond_0
    sget-object v0, Lcom/jme3/scene/VertexBuffer$Type;->TexCoord:Lcom/jme3/scene/VertexBuffer$Type;

    new-array v1, v7, [F

    fill-array-data v1, :array_3

    invoke-virtual {p0, v0, v5, v1}, Lcom/jme3/scene/shape/Quad;->setBuffer(Lcom/jme3/scene/VertexBuffer$Type;I[F)V

    goto :goto_0

    .line 122
    :cond_1
    sget-object v0, Lcom/jme3/scene/VertexBuffer$Type;->Index:Lcom/jme3/scene/VertexBuffer$Type;

    new-array v1, v6, [S

    fill-array-data v1, :array_4

    invoke-virtual {p0, v0, v4, v1}, Lcom/jme3/scene/shape/Quad;->setBuffer(Lcom/jme3/scene/VertexBuffer$Type;I[S)V

    goto :goto_1

    .line 104
    :array_0
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x80t 0x3ft
        0x0t 0x0t 0x80t 0x3ft
        0x0t 0x0t 0x80t 0x3ft
        0x0t 0x0t 0x80t 0x3ft
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
    .end array-data

    .line 114
    :array_1
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x80t 0x3ft
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x80t 0x3ft
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x80t 0x3ft
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x80t 0x3ft
    .end array-data

    .line 119
    :array_2
    .array-data 0x2
        0x0t 0x0t
        0x2t 0x0t
        0x1t 0x0t
        0x0t 0x0t
        0x3t 0x0t
        0x2t 0x0t
    .end array-data

    .line 109
    :array_3
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x80t 0x3ft
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x80t 0x3ft
        0x0t 0x0t 0x80t 0x3ft
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x80t 0x3ft
    .end array-data

    .line 122
    :array_4
    .array-data 0x2
        0x0t 0x0t
        0x1t 0x0t
        0x2t 0x0t
        0x0t 0x0t
        0x2t 0x0t
        0x3t 0x0t
    .end array-data
.end method
