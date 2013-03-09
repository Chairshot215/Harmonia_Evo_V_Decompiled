.class public Lcom/jme3/scene/shape/Box;
.super Lcom/jme3/scene/shape/AbstractBox;
.source "Box.java"


# static fields
.field private static final GEOMETRY_INDICES_DATA:[S

.field private static final GEOMETRY_NORMALS_DATA:[F

.field private static final GEOMETRY_TEXTURE_DATA:[F


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 49
    const/16 v0, 0x24

    new-array v0, v0, [S

    fill-array-data v0, :array_0

    sput-object v0, Lcom/jme3/scene/shape/Box;->GEOMETRY_INDICES_DATA:[S

    .line 58
    const/16 v0, 0x48

    new-array v0, v0, [F

    fill-array-data v0, :array_1

    sput-object v0, Lcom/jme3/scene/shape/Box;->GEOMETRY_NORMALS_DATA:[F

    .line 67
    const/16 v0, 0x30

    new-array v0, v0, [F

    fill-array-data v0, :array_2

    sput-object v0, Lcom/jme3/scene/shape/Box;->GEOMETRY_TEXTURE_DATA:[F

    return-void

    .line 49
    :array_0
    .array-data 0x2
        0x2t 0x0t
        0x1t 0x0t
        0x0t 0x0t
        0x3t 0x0t
        0x2t 0x0t
        0x0t 0x0t
        0x6t 0x0t
        0x5t 0x0t
        0x4t 0x0t
        0x7t 0x0t
        0x6t 0x0t
        0x4t 0x0t
        0xat 0x0t
        0x9t 0x0t
        0x8t 0x0t
        0xbt 0x0t
        0xat 0x0t
        0x8t 0x0t
        0xet 0x0t
        0xdt 0x0t
        0xct 0x0t
        0xft 0x0t
        0xet 0x0t
        0xct 0x0t
        0x12t 0x0t
        0x11t 0x0t
        0x10t 0x0t
        0x13t 0x0t
        0x12t 0x0t
        0x10t 0x0t
        0x16t 0x0t
        0x15t 0x0t
        0x14t 0x0t
        0x17t 0x0t
        0x16t 0x0t
        0x14t 0x0t
    .end array-data

    .line 58
    :array_1
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x80t 0xbft
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x80t 0xbft
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x80t 0xbft
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x80t 0xbft
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
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
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
        0x0t 0x0t 0x80t 0xbft
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x80t 0xbft
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x80t 0xbft
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x80t 0xbft
        0x0t 0x0t 0x0t 0x0t
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
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x80t 0xbft
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x80t 0xbft
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x80t 0xbft
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x80t 0xbft
        0x0t 0x0t 0x0t 0x0t
    .end array-data

    .line 67
    :array_2
    .array-data 0x4
        0x0t 0x0t 0x80t 0x3ft
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x80t 0x3ft
        0x0t 0x0t 0x80t 0x3ft
        0x0t 0x0t 0x80t 0x3ft
        0x0t 0x0t 0x80t 0x3ft
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x80t 0x3ft
        0x0t 0x0t 0x80t 0x3ft
        0x0t 0x0t 0x80t 0x3ft
        0x0t 0x0t 0x80t 0x3ft
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x80t 0x3ft
        0x0t 0x0t 0x80t 0x3ft
        0x0t 0x0t 0x80t 0x3ft
        0x0t 0x0t 0x80t 0x3ft
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x80t 0x3ft
        0x0t 0x0t 0x80t 0x3ft
        0x0t 0x0t 0x80t 0x3ft
        0x0t 0x0t 0x80t 0x3ft
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x80t 0x3ft
        0x0t 0x0t 0x80t 0x3ft
        0x0t 0x0t 0x80t 0x3ft
        0x0t 0x0t 0x80t 0x3ft
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x80t 0x3ft
        0x0t 0x0t 0x80t 0x3ft
        0x0t 0x0t 0x80t 0x3ft
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 129
    invoke-direct {p0}, Lcom/jme3/scene/shape/AbstractBox;-><init>()V

    .line 130
    return-void
.end method

.method public constructor <init>(FFF)V
    .locals 1
    .parameter "x"
    .parameter "y"
    .parameter "z"

    .prologue
    .line 88
    invoke-direct {p0}, Lcom/jme3/scene/shape/AbstractBox;-><init>()V

    .line 89
    sget-object v0, Lcom/jme3/math/Vector3f;->ZERO:Lcom/jme3/math/Vector3f;

    invoke-virtual {p0, v0, p1, p2, p3}, Lcom/jme3/scene/shape/Box;->updateGeometry(Lcom/jme3/math/Vector3f;FFF)V

    .line 90
    return-void
.end method

.method public constructor <init>(Lcom/jme3/math/Vector3f;FFF)V
    .locals 0
    .parameter "center"
    .parameter "x"
    .parameter "y"
    .parameter "z"

    .prologue
    .line 105
    invoke-direct {p0}, Lcom/jme3/scene/shape/AbstractBox;-><init>()V

    .line 106
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/jme3/scene/shape/Box;->updateGeometry(Lcom/jme3/math/Vector3f;FFF)V

    .line 107
    return-void
.end method


# virtual methods
.method public bridge synthetic clone()Lcom/jme3/scene/Mesh;
    .locals 1

    .prologue
    .line 47
    invoke-virtual {p0}, Lcom/jme3/scene/shape/Box;->clone()Lcom/jme3/scene/shape/Box;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lcom/jme3/scene/shape/Box;
    .locals 5

    .prologue
    .line 140
    new-instance v0, Lcom/jme3/scene/shape/Box;

    iget-object v1, p0, Lcom/jme3/scene/shape/Box;->center:Lcom/jme3/math/Vector3f;

    invoke-virtual {v1}, Lcom/jme3/math/Vector3f;->clone()Lcom/jme3/math/Vector3f;

    move-result-object v1

    iget v2, p0, Lcom/jme3/scene/shape/Box;->xExtent:F

    iget v3, p0, Lcom/jme3/scene/shape/Box;->yExtent:F

    iget v4, p0, Lcom/jme3/scene/shape/Box;->zExtent:F

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/jme3/scene/shape/Box;-><init>(Lcom/jme3/math/Vector3f;FFF)V

    return-object v0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .prologue
    .line 47
    invoke-virtual {p0}, Lcom/jme3/scene/shape/Box;->clone()Lcom/jme3/scene/shape/Box;

    move-result-object v0

    return-object v0
.end method

.method protected duUpdateGeometryIndices()V
    .locals 3

    .prologue
    .line 144
    sget-object v0, Lcom/jme3/scene/VertexBuffer$Type;->Index:Lcom/jme3/scene/VertexBuffer$Type;

    invoke-virtual {p0, v0}, Lcom/jme3/scene/shape/Box;->getBuffer(Lcom/jme3/scene/VertexBuffer$Type;)Lcom/jme3/scene/VertexBuffer;

    move-result-object v0

    if-nez v0, :cond_0

    .line 145
    sget-object v0, Lcom/jme3/scene/VertexBuffer$Type;->Index:Lcom/jme3/scene/VertexBuffer$Type;

    const/4 v1, 0x3

    sget-object v2, Lcom/jme3/scene/shape/Box;->GEOMETRY_INDICES_DATA:[S

    invoke-static {v2}, Lcom/jme3/util/BufferUtils;->createShortBuffer([S)Ljava/nio/ShortBuffer;

    move-result-object v2

    invoke-virtual {p0, v0, v1, v2}, Lcom/jme3/scene/shape/Box;->setBuffer(Lcom/jme3/scene/VertexBuffer$Type;ILjava/nio/ShortBuffer;)V

    .line 147
    :cond_0
    return-void
.end method

.method protected duUpdateGeometryNormals()V
    .locals 3

    .prologue
    .line 150
    sget-object v0, Lcom/jme3/scene/VertexBuffer$Type;->Normal:Lcom/jme3/scene/VertexBuffer$Type;

    invoke-virtual {p0, v0}, Lcom/jme3/scene/shape/Box;->getBuffer(Lcom/jme3/scene/VertexBuffer$Type;)Lcom/jme3/scene/VertexBuffer;

    move-result-object v0

    if-nez v0, :cond_0

    .line 151
    sget-object v0, Lcom/jme3/scene/VertexBuffer$Type;->Normal:Lcom/jme3/scene/VertexBuffer$Type;

    const/4 v1, 0x3

    sget-object v2, Lcom/jme3/scene/shape/Box;->GEOMETRY_NORMALS_DATA:[F

    invoke-static {v2}, Lcom/jme3/util/BufferUtils;->createFloatBuffer([F)Ljava/nio/FloatBuffer;

    move-result-object v2

    invoke-virtual {p0, v0, v1, v2}, Lcom/jme3/scene/shape/Box;->setBuffer(Lcom/jme3/scene/VertexBuffer$Type;ILjava/nio/FloatBuffer;)V

    .line 153
    :cond_0
    return-void
.end method

.method protected duUpdateGeometryTextures()V
    .locals 3

    .prologue
    .line 156
    sget-object v0, Lcom/jme3/scene/VertexBuffer$Type;->TexCoord:Lcom/jme3/scene/VertexBuffer$Type;

    invoke-virtual {p0, v0}, Lcom/jme3/scene/shape/Box;->getBuffer(Lcom/jme3/scene/VertexBuffer$Type;)Lcom/jme3/scene/VertexBuffer;

    move-result-object v0

    if-nez v0, :cond_0

    .line 157
    sget-object v0, Lcom/jme3/scene/VertexBuffer$Type;->TexCoord:Lcom/jme3/scene/VertexBuffer$Type;

    const/4 v1, 0x2

    sget-object v2, Lcom/jme3/scene/shape/Box;->GEOMETRY_TEXTURE_DATA:[F

    invoke-static {v2}, Lcom/jme3/util/BufferUtils;->createFloatBuffer([F)Ljava/nio/FloatBuffer;

    move-result-object v2

    invoke-virtual {p0, v0, v1, v2}, Lcom/jme3/scene/shape/Box;->setBuffer(Lcom/jme3/scene/VertexBuffer$Type;ILjava/nio/FloatBuffer;)V

    .line 159
    :cond_0
    return-void
.end method

.method protected duUpdateGeometryVertices()V
    .locals 10

    .prologue
    const/4 v9, 0x4

    const/4 v8, 0x2

    const/4 v7, 0x1

    const/4 v6, 0x0

    const/4 v5, 0x3

    .line 162
    const/16 v2, 0x18

    invoke-static {v2}, Lcom/jme3/util/BufferUtils;->createVector3Buffer(I)Ljava/nio/FloatBuffer;

    move-result-object v0

    .line 163
    .local v0, fpb:Ljava/nio/FloatBuffer;
    invoke-virtual {p0}, Lcom/jme3/scene/shape/Box;->computeVertices()[Lcom/jme3/math/Vector3f;

    move-result-object v1

    .line 164
    .local v1, v:[Lcom/jme3/math/Vector3f;
    const/16 v2, 0x48

    new-array v2, v2, [F

    aget-object v3, v1, v6

    iget v3, v3, Lcom/jme3/math/Vector3f;->x:F

    aput v3, v2, v6

    aget-object v3, v1, v6

    iget v3, v3, Lcom/jme3/math/Vector3f;->y:F

    aput v3, v2, v7

    aget-object v3, v1, v6

    iget v3, v3, Lcom/jme3/math/Vector3f;->z:F

    aput v3, v2, v8

    aget-object v3, v1, v7

    iget v3, v3, Lcom/jme3/math/Vector3f;->x:F

    aput v3, v2, v5

    aget-object v3, v1, v7

    iget v3, v3, Lcom/jme3/math/Vector3f;->y:F

    aput v3, v2, v9

    const/4 v3, 0x5

    aget-object v4, v1, v7

    iget v4, v4, Lcom/jme3/math/Vector3f;->z:F

    aput v4, v2, v3

    const/4 v3, 0x6

    aget-object v4, v1, v8

    iget v4, v4, Lcom/jme3/math/Vector3f;->x:F

    aput v4, v2, v3

    const/4 v3, 0x7

    aget-object v4, v1, v8

    iget v4, v4, Lcom/jme3/math/Vector3f;->y:F

    aput v4, v2, v3

    const/16 v3, 0x8

    aget-object v4, v1, v8

    iget v4, v4, Lcom/jme3/math/Vector3f;->z:F

    aput v4, v2, v3

    const/16 v3, 0x9

    aget-object v4, v1, v5

    iget v4, v4, Lcom/jme3/math/Vector3f;->x:F

    aput v4, v2, v3

    const/16 v3, 0xa

    aget-object v4, v1, v5

    iget v4, v4, Lcom/jme3/math/Vector3f;->y:F

    aput v4, v2, v3

    const/16 v3, 0xb

    aget-object v4, v1, v5

    iget v4, v4, Lcom/jme3/math/Vector3f;->z:F

    aput v4, v2, v3

    const/16 v3, 0xc

    aget-object v4, v1, v7

    iget v4, v4, Lcom/jme3/math/Vector3f;->x:F

    aput v4, v2, v3

    const/16 v3, 0xd

    aget-object v4, v1, v7

    iget v4, v4, Lcom/jme3/math/Vector3f;->y:F

    aput v4, v2, v3

    const/16 v3, 0xe

    aget-object v4, v1, v7

    iget v4, v4, Lcom/jme3/math/Vector3f;->z:F

    aput v4, v2, v3

    const/16 v3, 0xf

    aget-object v4, v1, v9

    iget v4, v4, Lcom/jme3/math/Vector3f;->x:F

    aput v4, v2, v3

    const/16 v3, 0x10

    aget-object v4, v1, v9

    iget v4, v4, Lcom/jme3/math/Vector3f;->y:F

    aput v4, v2, v3

    const/16 v3, 0x11

    aget-object v4, v1, v9

    iget v4, v4, Lcom/jme3/math/Vector3f;->z:F

    aput v4, v2, v3

    const/16 v3, 0x12

    const/4 v4, 0x6

    aget-object v4, v1, v4

    iget v4, v4, Lcom/jme3/math/Vector3f;->x:F

    aput v4, v2, v3

    const/16 v3, 0x13

    const/4 v4, 0x6

    aget-object v4, v1, v4

    iget v4, v4, Lcom/jme3/math/Vector3f;->y:F

    aput v4, v2, v3

    const/16 v3, 0x14

    const/4 v4, 0x6

    aget-object v4, v1, v4

    iget v4, v4, Lcom/jme3/math/Vector3f;->z:F

    aput v4, v2, v3

    const/16 v3, 0x15

    aget-object v4, v1, v8

    iget v4, v4, Lcom/jme3/math/Vector3f;->x:F

    aput v4, v2, v3

    const/16 v3, 0x16

    aget-object v4, v1, v8

    iget v4, v4, Lcom/jme3/math/Vector3f;->y:F

    aput v4, v2, v3

    const/16 v3, 0x17

    aget-object v4, v1, v8

    iget v4, v4, Lcom/jme3/math/Vector3f;->z:F

    aput v4, v2, v3

    const/16 v3, 0x18

    aget-object v4, v1, v9

    iget v4, v4, Lcom/jme3/math/Vector3f;->x:F

    aput v4, v2, v3

    const/16 v3, 0x19

    aget-object v4, v1, v9

    iget v4, v4, Lcom/jme3/math/Vector3f;->y:F

    aput v4, v2, v3

    const/16 v3, 0x1a

    aget-object v4, v1, v9

    iget v4, v4, Lcom/jme3/math/Vector3f;->z:F

    aput v4, v2, v3

    const/16 v3, 0x1b

    const/4 v4, 0x5

    aget-object v4, v1, v4

    iget v4, v4, Lcom/jme3/math/Vector3f;->x:F

    aput v4, v2, v3

    const/16 v3, 0x1c

    const/4 v4, 0x5

    aget-object v4, v1, v4

    iget v4, v4, Lcom/jme3/math/Vector3f;->y:F

    aput v4, v2, v3

    const/16 v3, 0x1d

    const/4 v4, 0x5

    aget-object v4, v1, v4

    iget v4, v4, Lcom/jme3/math/Vector3f;->z:F

    aput v4, v2, v3

    const/16 v3, 0x1e

    const/4 v4, 0x7

    aget-object v4, v1, v4

    iget v4, v4, Lcom/jme3/math/Vector3f;->x:F

    aput v4, v2, v3

    const/16 v3, 0x1f

    const/4 v4, 0x7

    aget-object v4, v1, v4

    iget v4, v4, Lcom/jme3/math/Vector3f;->y:F

    aput v4, v2, v3

    const/16 v3, 0x20

    const/4 v4, 0x7

    aget-object v4, v1, v4

    iget v4, v4, Lcom/jme3/math/Vector3f;->z:F

    aput v4, v2, v3

    const/16 v3, 0x21

    const/4 v4, 0x6

    aget-object v4, v1, v4

    iget v4, v4, Lcom/jme3/math/Vector3f;->x:F

    aput v4, v2, v3

    const/16 v3, 0x22

    const/4 v4, 0x6

    aget-object v4, v1, v4

    iget v4, v4, Lcom/jme3/math/Vector3f;->y:F

    aput v4, v2, v3

    const/16 v3, 0x23

    const/4 v4, 0x6

    aget-object v4, v1, v4

    iget v4, v4, Lcom/jme3/math/Vector3f;->z:F

    aput v4, v2, v3

    const/16 v3, 0x24

    const/4 v4, 0x5

    aget-object v4, v1, v4

    iget v4, v4, Lcom/jme3/math/Vector3f;->x:F

    aput v4, v2, v3

    const/16 v3, 0x25

    const/4 v4, 0x5

    aget-object v4, v1, v4

    iget v4, v4, Lcom/jme3/math/Vector3f;->y:F

    aput v4, v2, v3

    const/16 v3, 0x26

    const/4 v4, 0x5

    aget-object v4, v1, v4

    iget v4, v4, Lcom/jme3/math/Vector3f;->z:F

    aput v4, v2, v3

    const/16 v3, 0x27

    aget-object v4, v1, v6

    iget v4, v4, Lcom/jme3/math/Vector3f;->x:F

    aput v4, v2, v3

    const/16 v3, 0x28

    aget-object v4, v1, v6

    iget v4, v4, Lcom/jme3/math/Vector3f;->y:F

    aput v4, v2, v3

    const/16 v3, 0x29

    aget-object v4, v1, v6

    iget v4, v4, Lcom/jme3/math/Vector3f;->z:F

    aput v4, v2, v3

    const/16 v3, 0x2a

    aget-object v4, v1, v5

    iget v4, v4, Lcom/jme3/math/Vector3f;->x:F

    aput v4, v2, v3

    const/16 v3, 0x2b

    aget-object v4, v1, v5

    iget v4, v4, Lcom/jme3/math/Vector3f;->y:F

    aput v4, v2, v3

    const/16 v3, 0x2c

    aget-object v4, v1, v5

    iget v4, v4, Lcom/jme3/math/Vector3f;->z:F

    aput v4, v2, v3

    const/16 v3, 0x2d

    const/4 v4, 0x7

    aget-object v4, v1, v4

    iget v4, v4, Lcom/jme3/math/Vector3f;->x:F

    aput v4, v2, v3

    const/16 v3, 0x2e

    const/4 v4, 0x7

    aget-object v4, v1, v4

    iget v4, v4, Lcom/jme3/math/Vector3f;->y:F

    aput v4, v2, v3

    const/16 v3, 0x2f

    const/4 v4, 0x7

    aget-object v4, v1, v4

    iget v4, v4, Lcom/jme3/math/Vector3f;->z:F

    aput v4, v2, v3

    const/16 v3, 0x30

    aget-object v4, v1, v8

    iget v4, v4, Lcom/jme3/math/Vector3f;->x:F

    aput v4, v2, v3

    const/16 v3, 0x31

    aget-object v4, v1, v8

    iget v4, v4, Lcom/jme3/math/Vector3f;->y:F

    aput v4, v2, v3

    const/16 v3, 0x32

    aget-object v4, v1, v8

    iget v4, v4, Lcom/jme3/math/Vector3f;->z:F

    aput v4, v2, v3

    const/16 v3, 0x33

    const/4 v4, 0x6

    aget-object v4, v1, v4

    iget v4, v4, Lcom/jme3/math/Vector3f;->x:F

    aput v4, v2, v3

    const/16 v3, 0x34

    const/4 v4, 0x6

    aget-object v4, v1, v4

    iget v4, v4, Lcom/jme3/math/Vector3f;->y:F

    aput v4, v2, v3

    const/16 v3, 0x35

    const/4 v4, 0x6

    aget-object v4, v1, v4

    iget v4, v4, Lcom/jme3/math/Vector3f;->z:F

    aput v4, v2, v3

    const/16 v3, 0x36

    const/4 v4, 0x7

    aget-object v4, v1, v4

    iget v4, v4, Lcom/jme3/math/Vector3f;->x:F

    aput v4, v2, v3

    const/16 v3, 0x37

    const/4 v4, 0x7

    aget-object v4, v1, v4

    iget v4, v4, Lcom/jme3/math/Vector3f;->y:F

    aput v4, v2, v3

    const/16 v3, 0x38

    const/4 v4, 0x7

    aget-object v4, v1, v4

    iget v4, v4, Lcom/jme3/math/Vector3f;->z:F

    aput v4, v2, v3

    const/16 v3, 0x39

    aget-object v4, v1, v5

    iget v4, v4, Lcom/jme3/math/Vector3f;->x:F

    aput v4, v2, v3

    const/16 v3, 0x3a

    aget-object v4, v1, v5

    iget v4, v4, Lcom/jme3/math/Vector3f;->y:F

    aput v4, v2, v3

    const/16 v3, 0x3b

    aget-object v4, v1, v5

    iget v4, v4, Lcom/jme3/math/Vector3f;->z:F

    aput v4, v2, v3

    const/16 v3, 0x3c

    aget-object v4, v1, v6

    iget v4, v4, Lcom/jme3/math/Vector3f;->x:F

    aput v4, v2, v3

    const/16 v3, 0x3d

    aget-object v4, v1, v6

    iget v4, v4, Lcom/jme3/math/Vector3f;->y:F

    aput v4, v2, v3

    const/16 v3, 0x3e

    aget-object v4, v1, v6

    iget v4, v4, Lcom/jme3/math/Vector3f;->z:F

    aput v4, v2, v3

    const/16 v3, 0x3f

    const/4 v4, 0x5

    aget-object v4, v1, v4

    iget v4, v4, Lcom/jme3/math/Vector3f;->x:F

    aput v4, v2, v3

    const/16 v3, 0x40

    const/4 v4, 0x5

    aget-object v4, v1, v4

    iget v4, v4, Lcom/jme3/math/Vector3f;->y:F

    aput v4, v2, v3

    const/16 v3, 0x41

    const/4 v4, 0x5

    aget-object v4, v1, v4

    iget v4, v4, Lcom/jme3/math/Vector3f;->z:F

    aput v4, v2, v3

    const/16 v3, 0x42

    aget-object v4, v1, v9

    iget v4, v4, Lcom/jme3/math/Vector3f;->x:F

    aput v4, v2, v3

    const/16 v3, 0x43

    aget-object v4, v1, v9

    iget v4, v4, Lcom/jme3/math/Vector3f;->y:F

    aput v4, v2, v3

    const/16 v3, 0x44

    aget-object v4, v1, v9

    iget v4, v4, Lcom/jme3/math/Vector3f;->z:F

    aput v4, v2, v3

    const/16 v3, 0x45

    aget-object v4, v1, v7

    iget v4, v4, Lcom/jme3/math/Vector3f;->x:F

    aput v4, v2, v3

    const/16 v3, 0x46

    aget-object v4, v1, v7

    iget v4, v4, Lcom/jme3/math/Vector3f;->y:F

    aput v4, v2, v3

    const/16 v3, 0x47

    aget-object v4, v1, v7

    iget v4, v4, Lcom/jme3/math/Vector3f;->z:F

    aput v4, v2, v3

    invoke-virtual {v0, v2}, Ljava/nio/FloatBuffer;->put([F)Ljava/nio/FloatBuffer;

    .line 172
    sget-object v2, Lcom/jme3/scene/VertexBuffer$Type;->Position:Lcom/jme3/scene/VertexBuffer$Type;

    invoke-virtual {p0, v2, v5, v0}, Lcom/jme3/scene/shape/Box;->setBuffer(Lcom/jme3/scene/VertexBuffer$Type;ILjava/nio/FloatBuffer;)V

    .line 173
    invoke-virtual {p0}, Lcom/jme3/scene/shape/Box;->updateBound()V

    .line 174
    return-void
.end method
