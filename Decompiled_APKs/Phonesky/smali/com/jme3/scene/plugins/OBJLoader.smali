.class public final Lcom/jme3/scene/plugins/OBJLoader;
.super Ljava/lang/Object;
.source "OBJLoader.java"

# interfaces
.implements Lcom/jme3/asset/AssetLoader;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/jme3/scene/plugins/OBJLoader$Face;,
        Lcom/jme3/scene/plugins/OBJLoader$Vertex;
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z

.field private static final logger:Ljava/util/logging/Logger;


# instance fields
.field protected assetManager:Lcom/jme3/asset/AssetManager;

.field protected curIndex:I

.field protected currentMatName:Ljava/lang/String;

.field protected final faces:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/jme3/scene/plugins/OBJLoader$Face;",
            ">;"
        }
    .end annotation
.end field

.field protected geomIndex:I

.field protected final indexVertMap:Lcom/jme3/util/IntMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/jme3/util/IntMap",
            "<",
            "Lcom/jme3/scene/plugins/OBJLoader$Vertex;",
            ">;"
        }
    .end annotation
.end field

.field protected key:Lcom/jme3/asset/ModelKey;

.field protected final matFaces:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/jme3/scene/plugins/OBJLoader$Face;",
            ">;>;"
        }
    .end annotation
.end field

.field protected matList:Lcom/jme3/material/MaterialList;

.field protected final norms:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/jme3/math/Vector3f;",
            ">;"
        }
    .end annotation
.end field

.field protected objName:Ljava/lang/String;

.field protected objNode:Lcom/jme3/scene/Node;

.field protected objectIndex:I

.field protected scan:Ljava/util/Scanner;

.field protected final texCoords:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/jme3/math/Vector2f;",
            ">;"
        }
    .end annotation
.end field

.field protected final vertIndexMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Lcom/jme3/scene/plugins/OBJLoader$Vertex;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private vertList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/jme3/scene/plugins/OBJLoader$Vertex;",
            ">;"
        }
    .end annotation
.end field

.field protected final verts:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/jme3/math/Vector3f;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 63
    const-class v0, Lcom/jme3/scene/plugins/OBJLoader;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lcom/jme3/scene/plugins/OBJLoader;->$assertionsDisabled:Z

    .line 65
    const-class v0, Lcom/jme3/scene/plugins/OBJLoader;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lcom/jme3/scene/plugins/OBJLoader;->logger:Ljava/util/logging/Logger;

    return-void

    .line 63
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    const/16 v2, 0x64

    const/4 v1, 0x0

    .line 63
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 67
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/jme3/scene/plugins/OBJLoader;->verts:Ljava/util/ArrayList;

    .line 68
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/jme3/scene/plugins/OBJLoader;->texCoords:Ljava/util/ArrayList;

    .line 69
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/jme3/scene/plugins/OBJLoader;->norms:Ljava/util/ArrayList;

    .line 71
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/jme3/scene/plugins/OBJLoader;->faces:Ljava/util/ArrayList;

    .line 72
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/jme3/scene/plugins/OBJLoader;->matFaces:Ljava/util/HashMap;

    .line 77
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0, v2}, Ljava/util/HashMap;-><init>(I)V

    iput-object v0, p0, Lcom/jme3/scene/plugins/OBJLoader;->vertIndexMap:Ljava/util/HashMap;

    .line 78
    new-instance v0, Lcom/jme3/util/IntMap;

    invoke-direct {v0, v2}, Lcom/jme3/util/IntMap;-><init>(I)V

    iput-object v0, p0, Lcom/jme3/scene/plugins/OBJLoader;->indexVertMap:Lcom/jme3/util/IntMap;

    .line 79
    iput v1, p0, Lcom/jme3/scene/plugins/OBJLoader;->curIndex:I

    .line 80
    iput v1, p0, Lcom/jme3/scene/plugins/OBJLoader;->objectIndex:I

    .line 81
    iput v1, p0, Lcom/jme3/scene/plugins/OBJLoader;->geomIndex:I

    .line 231
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/jme3/scene/plugins/OBJLoader;->vertList:Ljava/util/ArrayList;

    return-void
.end method


# virtual methods
.method protected constructMesh(Ljava/util/ArrayList;)Lcom/jme3/scene/Mesh;
    .locals 27
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/jme3/scene/plugins/OBJLoader$Face;",
            ">;)",
            "Lcom/jme3/scene/Mesh;"
        }
    .end annotation

    .prologue
    .line 423
    .local p1, faceList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/jme3/scene/plugins/OBJLoader$Face;>;"
    new-instance v13, Lcom/jme3/scene/Mesh;

    invoke-direct {v13}, Lcom/jme3/scene/Mesh;-><init>()V

    .line 424
    .local v13, m:Lcom/jme3/scene/Mesh;
    sget-object v25, Lcom/jme3/scene/Mesh$Mode;->Triangles:Lcom/jme3/scene/Mesh$Mode;

    move-object/from16 v0, v25

    invoke-virtual {v13, v0}, Lcom/jme3/scene/Mesh;->setMode(Lcom/jme3/scene/Mesh$Mode;)V

    .line 426
    const/4 v6, 0x0

    .line 427
    .local v6, hasTexCoord:Z
    const/4 v5, 0x0

    .line 429
    .local v5, hasNormals:Z
    new-instance v14, Ljava/util/ArrayList;

    invoke-virtual/range {p1 .. p1}, Ljava/util/ArrayList;->size()I

    move-result v25

    move/from16 v0, v25

    invoke-direct {v14, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 430
    .local v14, newFaces:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/jme3/scene/plugins/OBJLoader$Face;>;"
    const/4 v7, 0x0

    .local v7, i:I
    :goto_0
    invoke-virtual/range {p1 .. p1}, Ljava/util/ArrayList;->size()I

    move-result v25

    move/from16 v0, v25

    if-ge v7, v0, :cond_4

    .line 431
    move-object/from16 v0, p1

    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/jme3/scene/plugins/OBJLoader$Face;

    .line 433
    .local v4, f:Lcom/jme3/scene/plugins/OBJLoader$Face;
    iget-object v3, v4, Lcom/jme3/scene/plugins/OBJLoader$Face;->verticies:[Lcom/jme3/scene/plugins/OBJLoader$Vertex;

    .local v3, arr$:[Lcom/jme3/scene/plugins/OBJLoader$Vertex;
    array-length v12, v3

    .local v12, len$:I
    const/4 v8, 0x0

    .local v8, i$:I
    :goto_1
    if-ge v8, v12, :cond_2

    aget-object v21, v3, v8

    .line 434
    .local v21, v:Lcom/jme3/scene/plugins/OBJLoader$Vertex;
    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/jme3/scene/plugins/OBJLoader;->findVertexIndex(Lcom/jme3/scene/plugins/OBJLoader$Vertex;)V

    .line 436
    if-nez v6, :cond_0

    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/jme3/scene/plugins/OBJLoader$Vertex;->vt:Lcom/jme3/math/Vector2f;

    move-object/from16 v25, v0

    if-eqz v25, :cond_0

    .line 437
    const/4 v6, 0x1

    .line 438
    :cond_0
    if-nez v5, :cond_1

    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/jme3/scene/plugins/OBJLoader$Vertex;->vn:Lcom/jme3/math/Vector3f;

    move-object/from16 v25, v0

    if-eqz v25, :cond_1

    .line 439
    const/4 v5, 0x1

    .line 433
    :cond_1
    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    .line 442
    .end local v21           #v:Lcom/jme3/scene/plugins/OBJLoader$Vertex;
    :cond_2
    iget-object v0, v4, Lcom/jme3/scene/plugins/OBJLoader$Face;->verticies:[Lcom/jme3/scene/plugins/OBJLoader$Vertex;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    array-length v0, v0

    move/from16 v25, v0

    const/16 v26, 0x4

    move/from16 v0, v25

    move/from16 v1, v26

    if-ne v0, v1, :cond_3

    .line 443
    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/jme3/scene/plugins/OBJLoader;->quadToTriangle(Lcom/jme3/scene/plugins/OBJLoader$Face;)[Lcom/jme3/scene/plugins/OBJLoader$Face;

    move-result-object v19

    .line 444
    .local v19, t:[Lcom/jme3/scene/plugins/OBJLoader$Face;
    const/16 v25, 0x0

    aget-object v25, v19, v25

    move-object/from16 v0, v25

    invoke-virtual {v14, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 445
    const/16 v25, 0x1

    aget-object v25, v19, v25

    move-object/from16 v0, v25

    invoke-virtual {v14, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 430
    .end local v19           #t:[Lcom/jme3/scene/plugins/OBJLoader$Face;
    :goto_2
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 447
    :cond_3
    invoke-virtual {v14, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 451
    .end local v3           #arr$:[Lcom/jme3/scene/plugins/OBJLoader$Vertex;
    .end local v4           #f:Lcom/jme3/scene/plugins/OBJLoader$Face;
    .end local v8           #i$:I
    .end local v12           #len$:I
    :cond_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/jme3/scene/plugins/OBJLoader;->vertIndexMap:Ljava/util/HashMap;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Ljava/util/HashMap;->size()I

    move-result v25

    mul-int/lit8 v25, v25, 0x3

    invoke-static/range {v25 .. v25}, Lcom/jme3/util/BufferUtils;->createFloatBuffer(I)Ljava/nio/FloatBuffer;

    move-result-object v17

    .line 452
    .local v17, posBuf:Ljava/nio/FloatBuffer;
    const/4 v15, 0x0

    .line 453
    .local v15, normBuf:Ljava/nio/FloatBuffer;
    const/16 v20, 0x0

    .line 455
    .local v20, tcBuf:Ljava/nio/FloatBuffer;
    if-eqz v5, :cond_5

    .line 456
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/jme3/scene/plugins/OBJLoader;->vertIndexMap:Ljava/util/HashMap;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Ljava/util/HashMap;->size()I

    move-result v25

    mul-int/lit8 v25, v25, 0x3

    invoke-static/range {v25 .. v25}, Lcom/jme3/util/BufferUtils;->createFloatBuffer(I)Ljava/nio/FloatBuffer;

    move-result-object v15

    .line 457
    sget-object v25, Lcom/jme3/scene/VertexBuffer$Type;->Normal:Lcom/jme3/scene/VertexBuffer$Type;

    const/16 v26, 0x3

    move-object/from16 v0, v25

    move/from16 v1, v26

    invoke-virtual {v13, v0, v1, v15}, Lcom/jme3/scene/Mesh;->setBuffer(Lcom/jme3/scene/VertexBuffer$Type;ILjava/nio/FloatBuffer;)V

    .line 459
    :cond_5
    if-eqz v6, :cond_6

    .line 460
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/jme3/scene/plugins/OBJLoader;->vertIndexMap:Ljava/util/HashMap;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Ljava/util/HashMap;->size()I

    move-result v25

    mul-int/lit8 v25, v25, 0x2

    invoke-static/range {v25 .. v25}, Lcom/jme3/util/BufferUtils;->createFloatBuffer(I)Ljava/nio/FloatBuffer;

    move-result-object v20

    .line 461
    sget-object v25, Lcom/jme3/scene/VertexBuffer$Type;->TexCoord:Lcom/jme3/scene/VertexBuffer$Type;

    const/16 v26, 0x2

    move-object/from16 v0, v25

    move/from16 v1, v26

    move-object/from16 v2, v20

    invoke-virtual {v13, v0, v1, v2}, Lcom/jme3/scene/Mesh;->setBuffer(Lcom/jme3/scene/VertexBuffer$Type;ILjava/nio/FloatBuffer;)V

    .line 464
    :cond_6
    const/4 v11, 0x0

    .line 465
    .local v11, indexBuf:Lcom/jme3/scene/mesh/IndexBuffer;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/jme3/scene/plugins/OBJLoader;->vertIndexMap:Ljava/util/HashMap;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Ljava/util/HashMap;->size()I

    move-result v25

    const/high16 v26, 0x1

    move/from16 v0, v25

    move/from16 v1, v26

    if-lt v0, v1, :cond_7

    .line 467
    invoke-virtual {v14}, Ljava/util/ArrayList;->size()I

    move-result v25

    mul-int/lit8 v25, v25, 0x3

    invoke-static/range {v25 .. v25}, Lcom/jme3/util/BufferUtils;->createIntBuffer(I)Ljava/nio/IntBuffer;

    move-result-object v9

    .line 468
    .local v9, ib:Ljava/nio/IntBuffer;
    sget-object v25, Lcom/jme3/scene/VertexBuffer$Type;->Index:Lcom/jme3/scene/VertexBuffer$Type;

    const/16 v26, 0x3

    move-object/from16 v0, v25

    move/from16 v1, v26

    invoke-virtual {v13, v0, v1, v9}, Lcom/jme3/scene/Mesh;->setBuffer(Lcom/jme3/scene/VertexBuffer$Type;ILjava/nio/IntBuffer;)V

    .line 469
    new-instance v11, Lcom/jme3/scene/mesh/IndexIntBuffer;

    .end local v11           #indexBuf:Lcom/jme3/scene/mesh/IndexBuffer;
    invoke-direct {v11, v9}, Lcom/jme3/scene/mesh/IndexIntBuffer;-><init>(Ljava/nio/IntBuffer;)V

    .line 476
    .end local v9           #ib:Ljava/nio/IntBuffer;
    .restart local v11       #indexBuf:Lcom/jme3/scene/mesh/IndexBuffer;
    :goto_3
    invoke-virtual {v14}, Ljava/util/ArrayList;->size()I

    move-result v16

    .line 477
    .local v16, numFaces:I
    const/4 v7, 0x0

    :goto_4
    move/from16 v0, v16

    if-ge v7, v0, :cond_b

    .line 478
    invoke-virtual {v14, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/jme3/scene/plugins/OBJLoader$Face;

    .line 479
    .restart local v4       #f:Lcom/jme3/scene/plugins/OBJLoader$Face;
    iget-object v0, v4, Lcom/jme3/scene/plugins/OBJLoader$Face;->verticies:[Lcom/jme3/scene/plugins/OBJLoader$Vertex;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    array-length v0, v0

    move/from16 v25, v0

    const/16 v26, 0x3

    move/from16 v0, v25

    move/from16 v1, v26

    if-eq v0, v1, :cond_8

    .line 477
    :goto_5
    add-int/lit8 v7, v7, 0x1

    goto :goto_4

    .line 471
    .end local v4           #f:Lcom/jme3/scene/plugins/OBJLoader$Face;
    .end local v16           #numFaces:I
    :cond_7
    invoke-virtual {v14}, Ljava/util/ArrayList;->size()I

    move-result v25

    mul-int/lit8 v25, v25, 0x3

    invoke-static/range {v25 .. v25}, Lcom/jme3/util/BufferUtils;->createShortBuffer(I)Ljava/nio/ShortBuffer;

    move-result-object v18

    .line 472
    .local v18, sb:Ljava/nio/ShortBuffer;
    sget-object v25, Lcom/jme3/scene/VertexBuffer$Type;->Index:Lcom/jme3/scene/VertexBuffer$Type;

    const/16 v26, 0x3

    move-object/from16 v0, v25

    move/from16 v1, v26

    move-object/from16 v2, v18

    invoke-virtual {v13, v0, v1, v2}, Lcom/jme3/scene/Mesh;->setBuffer(Lcom/jme3/scene/VertexBuffer$Type;ILjava/nio/ShortBuffer;)V

    .line 473
    new-instance v11, Lcom/jme3/scene/mesh/IndexShortBuffer;

    .end local v11           #indexBuf:Lcom/jme3/scene/mesh/IndexBuffer;
    move-object/from16 v0, v18

    invoke-direct {v11, v0}, Lcom/jme3/scene/mesh/IndexShortBuffer;-><init>(Ljava/nio/ShortBuffer;)V

    .restart local v11       #indexBuf:Lcom/jme3/scene/mesh/IndexBuffer;
    goto :goto_3

    .line 482
    .end local v18           #sb:Ljava/nio/ShortBuffer;
    .restart local v4       #f:Lcom/jme3/scene/plugins/OBJLoader$Face;
    .restart local v16       #numFaces:I
    :cond_8
    iget-object v0, v4, Lcom/jme3/scene/plugins/OBJLoader$Face;->verticies:[Lcom/jme3/scene/plugins/OBJLoader$Vertex;

    move-object/from16 v25, v0

    const/16 v26, 0x0

    aget-object v22, v25, v26

    .line 483
    .local v22, v0:Lcom/jme3/scene/plugins/OBJLoader$Vertex;
    iget-object v0, v4, Lcom/jme3/scene/plugins/OBJLoader$Face;->verticies:[Lcom/jme3/scene/plugins/OBJLoader$Vertex;

    move-object/from16 v25, v0

    const/16 v26, 0x1

    aget-object v23, v25, v26

    .line 484
    .local v23, v1:Lcom/jme3/scene/plugins/OBJLoader$Vertex;
    iget-object v0, v4, Lcom/jme3/scene/plugins/OBJLoader$Face;->verticies:[Lcom/jme3/scene/plugins/OBJLoader$Vertex;

    move-object/from16 v25, v0

    const/16 v26, 0x2

    aget-object v24, v25, v26

    .line 486
    .local v24, v2:Lcom/jme3/scene/plugins/OBJLoader$Vertex;
    move-object/from16 v0, v22

    iget v0, v0, Lcom/jme3/scene/plugins/OBJLoader$Vertex;->index:I

    move/from16 v25, v0

    mul-int/lit8 v25, v25, 0x3

    move-object/from16 v0, v17

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    .line 487
    move-object/from16 v0, v22

    iget-object v0, v0, Lcom/jme3/scene/plugins/OBJLoader$Vertex;->v:Lcom/jme3/math/Vector3f;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    iget v0, v0, Lcom/jme3/math/Vector3f;->x:F

    move/from16 v25, v0

    move-object/from16 v0, v17

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    move-result-object v25

    move-object/from16 v0, v22

    iget-object v0, v0, Lcom/jme3/scene/plugins/OBJLoader$Vertex;->v:Lcom/jme3/math/Vector3f;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    iget v0, v0, Lcom/jme3/math/Vector3f;->y:F

    move/from16 v26, v0

    invoke-virtual/range {v25 .. v26}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    move-result-object v25

    move-object/from16 v0, v22

    iget-object v0, v0, Lcom/jme3/scene/plugins/OBJLoader$Vertex;->v:Lcom/jme3/math/Vector3f;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    iget v0, v0, Lcom/jme3/math/Vector3f;->z:F

    move/from16 v26, v0

    invoke-virtual/range {v25 .. v26}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    .line 488
    move-object/from16 v0, v23

    iget v0, v0, Lcom/jme3/scene/plugins/OBJLoader$Vertex;->index:I

    move/from16 v25, v0

    mul-int/lit8 v25, v25, 0x3

    move-object/from16 v0, v17

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    .line 489
    move-object/from16 v0, v23

    iget-object v0, v0, Lcom/jme3/scene/plugins/OBJLoader$Vertex;->v:Lcom/jme3/math/Vector3f;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    iget v0, v0, Lcom/jme3/math/Vector3f;->x:F

    move/from16 v25, v0

    move-object/from16 v0, v17

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    move-result-object v25

    move-object/from16 v0, v23

    iget-object v0, v0, Lcom/jme3/scene/plugins/OBJLoader$Vertex;->v:Lcom/jme3/math/Vector3f;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    iget v0, v0, Lcom/jme3/math/Vector3f;->y:F

    move/from16 v26, v0

    invoke-virtual/range {v25 .. v26}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    move-result-object v25

    move-object/from16 v0, v23

    iget-object v0, v0, Lcom/jme3/scene/plugins/OBJLoader$Vertex;->v:Lcom/jme3/math/Vector3f;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    iget v0, v0, Lcom/jme3/math/Vector3f;->z:F

    move/from16 v26, v0

    invoke-virtual/range {v25 .. v26}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    .line 490
    move-object/from16 v0, v24

    iget v0, v0, Lcom/jme3/scene/plugins/OBJLoader$Vertex;->index:I

    move/from16 v25, v0

    mul-int/lit8 v25, v25, 0x3

    move-object/from16 v0, v17

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    .line 491
    move-object/from16 v0, v24

    iget-object v0, v0, Lcom/jme3/scene/plugins/OBJLoader$Vertex;->v:Lcom/jme3/math/Vector3f;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    iget v0, v0, Lcom/jme3/math/Vector3f;->x:F

    move/from16 v25, v0

    move-object/from16 v0, v17

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    move-result-object v25

    move-object/from16 v0, v24

    iget-object v0, v0, Lcom/jme3/scene/plugins/OBJLoader$Vertex;->v:Lcom/jme3/math/Vector3f;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    iget v0, v0, Lcom/jme3/math/Vector3f;->y:F

    move/from16 v26, v0

    invoke-virtual/range {v25 .. v26}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    move-result-object v25

    move-object/from16 v0, v24

    iget-object v0, v0, Lcom/jme3/scene/plugins/OBJLoader$Vertex;->v:Lcom/jme3/math/Vector3f;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    iget v0, v0, Lcom/jme3/math/Vector3f;->z:F

    move/from16 v26, v0

    invoke-virtual/range {v25 .. v26}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    .line 493
    if-eqz v15, :cond_9

    .line 494
    move-object/from16 v0, v22

    iget-object v0, v0, Lcom/jme3/scene/plugins/OBJLoader$Vertex;->vn:Lcom/jme3/math/Vector3f;

    move-object/from16 v25, v0

    if-eqz v25, :cond_9

    .line 495
    move-object/from16 v0, v22

    iget v0, v0, Lcom/jme3/scene/plugins/OBJLoader$Vertex;->index:I

    move/from16 v25, v0

    mul-int/lit8 v25, v25, 0x3

    move/from16 v0, v25

    invoke-virtual {v15, v0}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    .line 496
    move-object/from16 v0, v22

    iget-object v0, v0, Lcom/jme3/scene/plugins/OBJLoader$Vertex;->vn:Lcom/jme3/math/Vector3f;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    iget v0, v0, Lcom/jme3/math/Vector3f;->x:F

    move/from16 v25, v0

    move/from16 v0, v25

    invoke-virtual {v15, v0}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    move-result-object v25

    move-object/from16 v0, v22

    iget-object v0, v0, Lcom/jme3/scene/plugins/OBJLoader$Vertex;->vn:Lcom/jme3/math/Vector3f;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    iget v0, v0, Lcom/jme3/math/Vector3f;->y:F

    move/from16 v26, v0

    invoke-virtual/range {v25 .. v26}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    move-result-object v25

    move-object/from16 v0, v22

    iget-object v0, v0, Lcom/jme3/scene/plugins/OBJLoader$Vertex;->vn:Lcom/jme3/math/Vector3f;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    iget v0, v0, Lcom/jme3/math/Vector3f;->z:F

    move/from16 v26, v0

    invoke-virtual/range {v25 .. v26}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    .line 497
    move-object/from16 v0, v23

    iget v0, v0, Lcom/jme3/scene/plugins/OBJLoader$Vertex;->index:I

    move/from16 v25, v0

    mul-int/lit8 v25, v25, 0x3

    move/from16 v0, v25

    invoke-virtual {v15, v0}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    .line 498
    move-object/from16 v0, v23

    iget-object v0, v0, Lcom/jme3/scene/plugins/OBJLoader$Vertex;->vn:Lcom/jme3/math/Vector3f;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    iget v0, v0, Lcom/jme3/math/Vector3f;->x:F

    move/from16 v25, v0

    move/from16 v0, v25

    invoke-virtual {v15, v0}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    move-result-object v25

    move-object/from16 v0, v23

    iget-object v0, v0, Lcom/jme3/scene/plugins/OBJLoader$Vertex;->vn:Lcom/jme3/math/Vector3f;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    iget v0, v0, Lcom/jme3/math/Vector3f;->y:F

    move/from16 v26, v0

    invoke-virtual/range {v25 .. v26}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    move-result-object v25

    move-object/from16 v0, v23

    iget-object v0, v0, Lcom/jme3/scene/plugins/OBJLoader$Vertex;->vn:Lcom/jme3/math/Vector3f;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    iget v0, v0, Lcom/jme3/math/Vector3f;->z:F

    move/from16 v26, v0

    invoke-virtual/range {v25 .. v26}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    .line 499
    move-object/from16 v0, v24

    iget v0, v0, Lcom/jme3/scene/plugins/OBJLoader$Vertex;->index:I

    move/from16 v25, v0

    mul-int/lit8 v25, v25, 0x3

    move/from16 v0, v25

    invoke-virtual {v15, v0}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    .line 500
    move-object/from16 v0, v24

    iget-object v0, v0, Lcom/jme3/scene/plugins/OBJLoader$Vertex;->vn:Lcom/jme3/math/Vector3f;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    iget v0, v0, Lcom/jme3/math/Vector3f;->x:F

    move/from16 v25, v0

    move/from16 v0, v25

    invoke-virtual {v15, v0}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    move-result-object v25

    move-object/from16 v0, v24

    iget-object v0, v0, Lcom/jme3/scene/plugins/OBJLoader$Vertex;->vn:Lcom/jme3/math/Vector3f;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    iget v0, v0, Lcom/jme3/math/Vector3f;->y:F

    move/from16 v26, v0

    invoke-virtual/range {v25 .. v26}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    move-result-object v25

    move-object/from16 v0, v24

    iget-object v0, v0, Lcom/jme3/scene/plugins/OBJLoader$Vertex;->vn:Lcom/jme3/math/Vector3f;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    iget v0, v0, Lcom/jme3/math/Vector3f;->z:F

    move/from16 v26, v0

    invoke-virtual/range {v25 .. v26}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    .line 504
    :cond_9
    if-eqz v20, :cond_a

    .line 505
    move-object/from16 v0, v22

    iget-object v0, v0, Lcom/jme3/scene/plugins/OBJLoader$Vertex;->vt:Lcom/jme3/math/Vector2f;

    move-object/from16 v25, v0

    if-eqz v25, :cond_a

    .line 506
    move-object/from16 v0, v22

    iget v0, v0, Lcom/jme3/scene/plugins/OBJLoader$Vertex;->index:I

    move/from16 v25, v0

    mul-int/lit8 v25, v25, 0x2

    move-object/from16 v0, v20

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    .line 507
    move-object/from16 v0, v22

    iget-object v0, v0, Lcom/jme3/scene/plugins/OBJLoader$Vertex;->vt:Lcom/jme3/math/Vector2f;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    iget v0, v0, Lcom/jme3/math/Vector2f;->x:F

    move/from16 v25, v0

    move-object/from16 v0, v20

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    move-result-object v25

    move-object/from16 v0, v22

    iget-object v0, v0, Lcom/jme3/scene/plugins/OBJLoader$Vertex;->vt:Lcom/jme3/math/Vector2f;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    iget v0, v0, Lcom/jme3/math/Vector2f;->y:F

    move/from16 v26, v0

    invoke-virtual/range {v25 .. v26}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    .line 508
    move-object/from16 v0, v23

    iget v0, v0, Lcom/jme3/scene/plugins/OBJLoader$Vertex;->index:I

    move/from16 v25, v0

    mul-int/lit8 v25, v25, 0x2

    move-object/from16 v0, v20

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    .line 509
    move-object/from16 v0, v23

    iget-object v0, v0, Lcom/jme3/scene/plugins/OBJLoader$Vertex;->vt:Lcom/jme3/math/Vector2f;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    iget v0, v0, Lcom/jme3/math/Vector2f;->x:F

    move/from16 v25, v0

    move-object/from16 v0, v20

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    move-result-object v25

    move-object/from16 v0, v23

    iget-object v0, v0, Lcom/jme3/scene/plugins/OBJLoader$Vertex;->vt:Lcom/jme3/math/Vector2f;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    iget v0, v0, Lcom/jme3/math/Vector2f;->y:F

    move/from16 v26, v0

    invoke-virtual/range {v25 .. v26}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    .line 510
    move-object/from16 v0, v24

    iget v0, v0, Lcom/jme3/scene/plugins/OBJLoader$Vertex;->index:I

    move/from16 v25, v0

    mul-int/lit8 v25, v25, 0x2

    move-object/from16 v0, v20

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    .line 511
    move-object/from16 v0, v24

    iget-object v0, v0, Lcom/jme3/scene/plugins/OBJLoader$Vertex;->vt:Lcom/jme3/math/Vector2f;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    iget v0, v0, Lcom/jme3/math/Vector2f;->x:F

    move/from16 v25, v0

    move-object/from16 v0, v20

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    move-result-object v25

    move-object/from16 v0, v24

    iget-object v0, v0, Lcom/jme3/scene/plugins/OBJLoader$Vertex;->vt:Lcom/jme3/math/Vector2f;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    iget v0, v0, Lcom/jme3/math/Vector2f;->y:F

    move/from16 v26, v0

    invoke-virtual/range {v25 .. v26}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    .line 515
    :cond_a
    mul-int/lit8 v10, v7, 0x3

    .line 516
    .local v10, index:I
    move-object/from16 v0, v22

    iget v0, v0, Lcom/jme3/scene/plugins/OBJLoader$Vertex;->index:I

    move/from16 v25, v0

    move/from16 v0, v25

    invoke-virtual {v11, v10, v0}, Lcom/jme3/scene/mesh/IndexBuffer;->put(II)V

    .line 517
    add-int/lit8 v25, v10, 0x1

    move-object/from16 v0, v23

    iget v0, v0, Lcom/jme3/scene/plugins/OBJLoader$Vertex;->index:I

    move/from16 v26, v0

    move/from16 v0, v25

    move/from16 v1, v26

    invoke-virtual {v11, v0, v1}, Lcom/jme3/scene/mesh/IndexBuffer;->put(II)V

    .line 518
    add-int/lit8 v25, v10, 0x2

    move-object/from16 v0, v24

    iget v0, v0, Lcom/jme3/scene/plugins/OBJLoader$Vertex;->index:I

    move/from16 v26, v0

    move/from16 v0, v25

    move/from16 v1, v26

    invoke-virtual {v11, v0, v1}, Lcom/jme3/scene/mesh/IndexBuffer;->put(II)V

    goto/16 :goto_5

    .line 521
    .end local v4           #f:Lcom/jme3/scene/plugins/OBJLoader$Face;
    .end local v10           #index:I
    .end local v22           #v0:Lcom/jme3/scene/plugins/OBJLoader$Vertex;
    .end local v23           #v1:Lcom/jme3/scene/plugins/OBJLoader$Vertex;
    .end local v24           #v2:Lcom/jme3/scene/plugins/OBJLoader$Vertex;
    :cond_b
    sget-object v25, Lcom/jme3/scene/VertexBuffer$Type;->Position:Lcom/jme3/scene/VertexBuffer$Type;

    const/16 v26, 0x3

    move-object/from16 v0, v25

    move/from16 v1, v26

    move-object/from16 v2, v17

    invoke-virtual {v13, v0, v1, v2}, Lcom/jme3/scene/Mesh;->setBuffer(Lcom/jme3/scene/VertexBuffer$Type;ILjava/nio/FloatBuffer;)V

    .line 524
    invoke-virtual {v13}, Lcom/jme3/scene/Mesh;->setStatic()V

    .line 525
    invoke-virtual {v13}, Lcom/jme3/scene/Mesh;->updateBound()V

    .line 526
    invoke-virtual {v13}, Lcom/jme3/scene/Mesh;->updateCounts()V

    .line 531
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/jme3/scene/plugins/OBJLoader;->vertIndexMap:Ljava/util/HashMap;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Ljava/util/HashMap;->clear()V

    .line 532
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/jme3/scene/plugins/OBJLoader;->indexVertMap:Lcom/jme3/util/IntMap;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Lcom/jme3/util/IntMap;->clear()V

    .line 533
    const/16 v25, 0x0

    move/from16 v0, v25

    move-object/from16 v1, p0

    iput v0, v1, Lcom/jme3/scene/plugins/OBJLoader;->curIndex:I

    .line 535
    return-object v13
.end method

.method protected createGeometry(Ljava/util/ArrayList;Ljava/lang/String;)Lcom/jme3/scene/Geometry;
    .locals 7
    .parameter
    .parameter "matName"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/jme3/scene/plugins/OBJLoader$Face;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Lcom/jme3/scene/Geometry;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 389
    .local p1, faceList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/jme3/scene/plugins/OBJLoader$Face;>;"
    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 390
    new-instance v3, Ljava/io/IOException;

    const-string v4, "No geometry data to generate mesh"

    invoke-direct {v3, v4}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 393
    :cond_0
    invoke-virtual {p0, p1}, Lcom/jme3/scene/plugins/OBJLoader;->constructMesh(Ljava/util/ArrayList;)Lcom/jme3/scene/Mesh;

    move-result-object v2

    .line 395
    .local v2, mesh:Lcom/jme3/scene/Mesh;
    new-instance v0, Lcom/jme3/scene/Geometry;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/jme3/scene/plugins/OBJLoader;->objName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "-geom-"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/jme3/scene/plugins/OBJLoader;->geomIndex:I

    add-int/lit8 v5, v4, 0x1

    iput v5, p0, Lcom/jme3/scene/plugins/OBJLoader;->geomIndex:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v3, v2}, Lcom/jme3/scene/Geometry;-><init>(Ljava/lang/String;Lcom/jme3/scene/Mesh;)V

    .line 397
    .local v0, geom:Lcom/jme3/scene/Geometry;
    const/4 v1, 0x0

    .line 398
    .local v1, material:Lcom/jme3/material/Material;
    if-eqz p2, :cond_1

    iget-object v3, p0, Lcom/jme3/scene/plugins/OBJLoader;->matList:Lcom/jme3/material/MaterialList;

    if-eqz v3, :cond_1

    .line 400
    iget-object v3, p0, Lcom/jme3/scene/plugins/OBJLoader;->matList:Lcom/jme3/material/MaterialList;

    invoke-virtual {v3, p2}, Lcom/jme3/material/MaterialList;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .end local v1           #material:Lcom/jme3/material/Material;
    check-cast v1, Lcom/jme3/material/Material;

    .line 402
    .restart local v1       #material:Lcom/jme3/material/Material;
    :cond_1
    if-nez v1, :cond_2

    .line 404
    new-instance v1, Lcom/jme3/material/Material;

    .end local v1           #material:Lcom/jme3/material/Material;
    iget-object v3, p0, Lcom/jme3/scene/plugins/OBJLoader;->assetManager:Lcom/jme3/asset/AssetManager;

    const-string v4, "Common/MatDefs/Light/Lighting.j3md"

    invoke-direct {v1, v3, v4}, Lcom/jme3/material/Material;-><init>(Lcom/jme3/asset/AssetManager;Ljava/lang/String;)V

    .line 405
    .restart local v1       #material:Lcom/jme3/material/Material;
    const-string v3, "Shininess"

    const/high16 v4, 0x4280

    invoke-virtual {v1, v3, v4}, Lcom/jme3/material/Material;->setFloat(Ljava/lang/String;F)V

    .line 407
    :cond_2
    invoke-virtual {v0, v1}, Lcom/jme3/scene/Geometry;->setMaterial(Lcom/jme3/material/Material;)V

    .line 408
    invoke-virtual {v1}, Lcom/jme3/material/Material;->isTransparent()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 409
    sget-object v3, Lcom/jme3/renderer/queue/RenderQueue$Bucket;->Transparent:Lcom/jme3/renderer/queue/RenderQueue$Bucket;

    invoke-virtual {v0, v3}, Lcom/jme3/scene/Geometry;->setQueueBucket(Lcom/jme3/renderer/queue/RenderQueue$Bucket;)V

    .line 413
    :goto_0
    invoke-virtual {v1}, Lcom/jme3/material/Material;->getMaterialDef()Lcom/jme3/material/MaterialDef;

    move-result-object v3

    invoke-virtual {v3}, Lcom/jme3/material/MaterialDef;->getName()Ljava/lang/String;

    move-result-object v3

    const-string v4, "Lighting"

    invoke-virtual {v3, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_3

    sget-object v3, Lcom/jme3/scene/VertexBuffer$Type;->Normal:Lcom/jme3/scene/VertexBuffer$Type;

    invoke-virtual {v2, v3}, Lcom/jme3/scene/Mesh;->getFloatBuffer(Lcom/jme3/scene/VertexBuffer$Type;)Ljava/nio/FloatBuffer;

    move-result-object v3

    if-nez v3, :cond_3

    .line 415
    sget-object v3, Lcom/jme3/scene/plugins/OBJLoader;->logger:Ljava/util/logging/Logger;

    sget-object v4, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    const-string v5, "OBJ mesh {0} doesn\'t contain normals! It might not display correctly"

    invoke-virtual {v0}, Lcom/jme3/scene/Geometry;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v4, v5, v6}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Object;)V

    .line 419
    :cond_3
    return-object v0

    .line 411
    :cond_4
    sget-object v3, Lcom/jme3/renderer/queue/RenderQueue$Bucket;->Opaque:Lcom/jme3/renderer/queue/RenderQueue$Bucket;

    invoke-virtual {v0, v3}, Lcom/jme3/scene/Geometry;->setQueueBucket(Lcom/jme3/renderer/queue/RenderQueue$Bucket;)V

    goto :goto_0
.end method

.method protected findVertexIndex(Lcom/jme3/scene/plugins/OBJLoader$Vertex;)V
    .locals 3
    .parameter "vert"

    .prologue
    .line 180
    iget-object v1, p0, Lcom/jme3/scene/plugins/OBJLoader;->vertIndexMap:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 181
    .local v0, index:Ljava/lang/Integer;
    if-eqz v0, :cond_0

    .line 182
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iput v1, p1, Lcom/jme3/scene/plugins/OBJLoader$Vertex;->index:I

    .line 188
    :goto_0
    return-void

    .line 184
    :cond_0
    iget v1, p0, Lcom/jme3/scene/plugins/OBJLoader;->curIndex:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/jme3/scene/plugins/OBJLoader;->curIndex:I

    iput v1, p1, Lcom/jme3/scene/plugins/OBJLoader$Vertex;->index:I

    .line 185
    iget-object v1, p0, Lcom/jme3/scene/plugins/OBJLoader;->vertIndexMap:Ljava/util/HashMap;

    iget v2, p1, Lcom/jme3/scene/plugins/OBJLoader$Vertex;->index:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, p1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 186
    iget-object v1, p0, Lcom/jme3/scene/plugins/OBJLoader;->indexVertMap:Lcom/jme3/util/IntMap;

    iget v2, p1, Lcom/jme3/scene/plugins/OBJLoader$Vertex;->index:I

    invoke-virtual {v1, v2, p1}, Lcom/jme3/util/IntMap;->put(ILjava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method public load(Lcom/jme3/asset/AssetInfo;)Ljava/lang/Object;
    .locals 11
    .parameter "info"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v10, 0x0

    .line 540
    invoke-virtual {p0}, Lcom/jme3/scene/plugins/OBJLoader;->reset()V

    .line 542
    invoke-virtual {p1}, Lcom/jme3/asset/AssetInfo;->getKey()Lcom/jme3/asset/AssetKey;

    move-result-object v7

    check-cast v7, Lcom/jme3/asset/ModelKey;

    iput-object v7, p0, Lcom/jme3/scene/plugins/OBJLoader;->key:Lcom/jme3/asset/ModelKey;

    .line 543
    invoke-virtual {p1}, Lcom/jme3/asset/AssetInfo;->getManager()Lcom/jme3/asset/AssetManager;

    move-result-object v7

    iput-object v7, p0, Lcom/jme3/scene/plugins/OBJLoader;->assetManager:Lcom/jme3/asset/AssetManager;

    .line 544
    iget-object v7, p0, Lcom/jme3/scene/plugins/OBJLoader;->key:Lcom/jme3/asset/ModelKey;

    invoke-virtual {v7}, Lcom/jme3/asset/ModelKey;->getName()Ljava/lang/String;

    move-result-object v7

    iput-object v7, p0, Lcom/jme3/scene/plugins/OBJLoader;->objName:Ljava/lang/String;

    .line 546
    iget-object v7, p0, Lcom/jme3/scene/plugins/OBJLoader;->key:Lcom/jme3/asset/ModelKey;

    invoke-virtual {v7}, Lcom/jme3/asset/ModelKey;->getFolder()Ljava/lang/String;

    move-result-object v2

    .line 547
    .local v2, folderName:Ljava/lang/String;
    iget-object v7, p0, Lcom/jme3/scene/plugins/OBJLoader;->key:Lcom/jme3/asset/ModelKey;

    invoke-virtual {v7}, Lcom/jme3/asset/ModelKey;->getExtension()Ljava/lang/String;

    move-result-object v1

    .line 548
    .local v1, ext:Ljava/lang/String;
    iget-object v7, p0, Lcom/jme3/scene/plugins/OBJLoader;->objName:Ljava/lang/String;

    iget-object v8, p0, Lcom/jme3/scene/plugins/OBJLoader;->objName:Ljava/lang/String;

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v8

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v9

    sub-int/2addr v8, v9

    add-int/lit8 v8, v8, -0x1

    invoke-virtual {v7, v10, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    iput-object v7, p0, Lcom/jme3/scene/plugins/OBJLoader;->objName:Ljava/lang/String;

    .line 549
    if-eqz v2, :cond_0

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v7

    if-lez v7, :cond_0

    .line 550
    iget-object v7, p0, Lcom/jme3/scene/plugins/OBJLoader;->objName:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v7

    iput-object v7, p0, Lcom/jme3/scene/plugins/OBJLoader;->objName:Ljava/lang/String;

    .line 553
    :cond_0
    new-instance v7, Lcom/jme3/scene/Node;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v9, p0, Lcom/jme3/scene/plugins/OBJLoader;->objName:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "-objnode"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Lcom/jme3/scene/Node;-><init>(Ljava/lang/String;)V

    iput-object v7, p0, Lcom/jme3/scene/plugins/OBJLoader;->objNode:Lcom/jme3/scene/Node;

    .line 555
    invoke-virtual {p1}, Lcom/jme3/asset/AssetInfo;->getKey()Lcom/jme3/asset/AssetKey;

    move-result-object v7

    instance-of v7, v7, Lcom/jme3/asset/ModelKey;

    if-nez v7, :cond_1

    .line 556
    new-instance v7, Ljava/lang/IllegalArgumentException;

    const-string v8, "Model assets must be loaded using a ModelKey"

    invoke-direct {v7, v8}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 558
    :cond_1
    const/4 v5, 0x0

    .line 560
    .local v5, in:Ljava/io/InputStream;
    :try_start_0
    invoke-virtual {p1}, Lcom/jme3/asset/AssetInfo;->openStream()Ljava/io/InputStream;

    move-result-object v5

    .line 562
    new-instance v7, Ljava/util/Scanner;

    invoke-direct {v7, v5}, Ljava/util/Scanner;-><init>(Ljava/io/InputStream;)V

    iput-object v7, p0, Lcom/jme3/scene/plugins/OBJLoader;->scan:Ljava/util/Scanner;

    .line 563
    iget-object v7, p0, Lcom/jme3/scene/plugins/OBJLoader;->scan:Ljava/util/Scanner;

    sget-object v8, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v7, v8}, Ljava/util/Scanner;->useLocale(Ljava/util/Locale;)Ljava/util/Scanner;

    .line 565
    :cond_2
    invoke-virtual {p0}, Lcom/jme3/scene/plugins/OBJLoader;->readLine()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v7

    if-nez v7, :cond_2

    .line 567
    if-eqz v5, :cond_3

    .line 568
    invoke-virtual {v5}, Ljava/io/InputStream;->close()V

    .line 572
    :cond_3
    iget-object v7, p0, Lcom/jme3/scene/plugins/OBJLoader;->matFaces:Ljava/util/HashMap;

    invoke-virtual {v7}, Ljava/util/HashMap;->size()I

    move-result v7

    if-lez v7, :cond_6

    .line 573
    iget-object v7, p0, Lcom/jme3/scene/plugins/OBJLoader;->matFaces:Ljava/util/HashMap;

    invoke-virtual {v7}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, i$:Ljava/util/Iterator;
    :cond_4
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_7

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 574
    .local v0, entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Ljava/util/ArrayList<Lcom/jme3/scene/plugins/OBJLoader$Face;>;>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/ArrayList;

    .line 575
    .local v6, materialFaces:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/jme3/scene/plugins/OBJLoader$Face;>;"
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-lez v7, :cond_4

    .line 576
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-virtual {p0, v6, v7}, Lcom/jme3/scene/plugins/OBJLoader;->createGeometry(Ljava/util/ArrayList;Ljava/lang/String;)Lcom/jme3/scene/Geometry;

    move-result-object v3

    .line 577
    .local v3, geom:Lcom/jme3/scene/Geometry;
    iget-object v7, p0, Lcom/jme3/scene/plugins/OBJLoader;->objNode:Lcom/jme3/scene/Node;

    invoke-virtual {v7, v3}, Lcom/jme3/scene/Node;->attachChild(Lcom/jme3/scene/Spatial;)I

    goto :goto_0

    .line 567
    .end local v0           #entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Ljava/util/ArrayList<Lcom/jme3/scene/plugins/OBJLoader$Face;>;>;"
    .end local v3           #geom:Lcom/jme3/scene/Geometry;
    .end local v4           #i$:Ljava/util/Iterator;
    .end local v6           #materialFaces:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/jme3/scene/plugins/OBJLoader$Face;>;"
    :catchall_0
    move-exception v7

    if-eqz v5, :cond_5

    .line 568
    invoke-virtual {v5}, Ljava/io/InputStream;->close()V

    :cond_5
    throw v7

    .line 580
    :cond_6
    iget-object v7, p0, Lcom/jme3/scene/plugins/OBJLoader;->faces:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-lez v7, :cond_7

    .line 582
    iget-object v7, p0, Lcom/jme3/scene/plugins/OBJLoader;->faces:Ljava/util/ArrayList;

    const/4 v8, 0x0

    invoke-virtual {p0, v7, v8}, Lcom/jme3/scene/plugins/OBJLoader;->createGeometry(Ljava/util/ArrayList;Ljava/lang/String;)Lcom/jme3/scene/Geometry;

    move-result-object v3

    .line 583
    .restart local v3       #geom:Lcom/jme3/scene/Geometry;
    iget-object v7, p0, Lcom/jme3/scene/plugins/OBJLoader;->objNode:Lcom/jme3/scene/Node;

    invoke-virtual {v7, v3}, Lcom/jme3/scene/Node;->attachChild(Lcom/jme3/scene/Spatial;)I

    .line 586
    .end local v3           #geom:Lcom/jme3/scene/Geometry;
    :cond_7
    iget-object v7, p0, Lcom/jme3/scene/plugins/OBJLoader;->objNode:Lcom/jme3/scene/Node;

    invoke-virtual {v7}, Lcom/jme3/scene/Node;->getQuantity()I

    move-result v7

    const/4 v8, 0x1

    if-ne v7, v8, :cond_8

    .line 588
    iget-object v7, p0, Lcom/jme3/scene/plugins/OBJLoader;->objNode:Lcom/jme3/scene/Node;

    invoke-virtual {v7, v10}, Lcom/jme3/scene/Node;->getChild(I)Lcom/jme3/scene/Spatial;

    move-result-object v7

    .line 590
    :goto_1
    return-object v7

    :cond_8
    iget-object v7, p0, Lcom/jme3/scene/plugins/OBJLoader;->objNode:Lcom/jme3/scene/Node;

    goto :goto_1
.end method

.method protected loadMtlLib(Ljava/lang/String;)V
    .locals 10
    .parameter "name"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 316
    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v4

    const-string v5, ".mtl"

    invoke-virtual {v4, v5}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 317
    new-instance v4, Ljava/io/IOException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Expected .mtl file! Got: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 320
    :cond_0
    new-instance v4, Ljava/io/File;

    invoke-direct {v4, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object p1

    .line 321
    new-instance v3, Lcom/jme3/asset/AssetKey;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Lcom/jme3/scene/plugins/OBJLoader;->key:Lcom/jme3/asset/ModelKey;

    invoke-virtual {v5}, Lcom/jme3/asset/ModelKey;->getFolder()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/jme3/asset/AssetKey;-><init>(Ljava/lang/String;)V

    .line 323
    .local v3, mtlKey:Lcom/jme3/asset/AssetKey;
    :try_start_0
    iget-object v4, p0, Lcom/jme3/scene/plugins/OBJLoader;->assetManager:Lcom/jme3/asset/AssetManager;

    invoke-interface {v4, v3}, Lcom/jme3/asset/AssetManager;->loadAsset(Lcom/jme3/asset/AssetKey;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/jme3/material/MaterialList;

    iput-object v4, p0, Lcom/jme3/scene/plugins/OBJLoader;->matList:Lcom/jme3/material/MaterialList;
    :try_end_0
    .catch Lcom/jme3/asset/AssetNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 328
    :goto_0
    iget-object v4, p0, Lcom/jme3/scene/plugins/OBJLoader;->matList:Lcom/jme3/material/MaterialList;

    if-eqz v4, :cond_1

    .line 330
    iget-object v4, p0, Lcom/jme3/scene/plugins/OBJLoader;->matList:Lcom/jme3/material/MaterialList;

    invoke-virtual {v4}, Lcom/jme3/material/MaterialList;->keySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 331
    .local v2, matName:Ljava/lang/String;
    iget-object v4, p0, Lcom/jme3/scene/plugins/OBJLoader;->matFaces:Ljava/util/HashMap;

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v4, v2, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 324
    .end local v1           #i$:Ljava/util/Iterator;
    .end local v2           #matName:Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 325
    .local v0, ex:Lcom/jme3/asset/AssetNotFoundException;
    sget-object v4, Lcom/jme3/scene/plugins/OBJLoader;->logger:Ljava/util/logging/Logger;

    sget-object v5, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    const-string v6, "Cannot locate {0} for model {1}"

    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    aput-object p1, v7, v8

    const/4 v8, 0x1

    iget-object v9, p0, Lcom/jme3/scene/plugins/OBJLoader;->key:Lcom/jme3/asset/ModelKey;

    aput-object v9, v7, v8

    invoke-virtual {v4, v5, v6, v7}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 334
    .end local v0           #ex:Lcom/jme3/asset/AssetNotFoundException;
    :cond_1
    return-void
.end method

.method protected nextStatement()Z
    .locals 3

    .prologue
    .line 338
    :try_start_0
    iget-object v1, p0, Lcom/jme3/scene/plugins/OBJLoader;->scan:Ljava/util/Scanner;

    const-string v2, ".*\r{0,1}\n"

    invoke-virtual {v1, v2}, Ljava/util/Scanner;->skip(Ljava/lang/String;)Ljava/util/Scanner;
    :try_end_0
    .catch Ljava/util/NoSuchElementException; {:try_start_0 .. :try_end_0} :catch_0

    .line 339
    const/4 v1, 0x1

    .line 342
    :goto_0
    return v1

    .line 340
    :catch_0
    move-exception v0

    .line 342
    .local v0, ex:Ljava/util/NoSuchElementException;
    const/4 v1, 0x0

    goto :goto_0
.end method

.method protected quadToTriangle(Lcom/jme3/scene/plugins/OBJLoader$Face;)[Lcom/jme3/scene/plugins/OBJLoader$Face;
    .locals 13
    .parameter "f"

    .prologue
    const/4 v12, 0x3

    const/4 v11, 0x2

    const/4 v10, 0x1

    const/4 v9, 0x0

    .line 191
    sget-boolean v7, Lcom/jme3/scene/plugins/OBJLoader;->$assertionsDisabled:Z

    if-nez v7, :cond_0

    iget-object v7, p1, Lcom/jme3/scene/plugins/OBJLoader$Face;->verticies:[Lcom/jme3/scene/plugins/OBJLoader$Vertex;

    array-length v7, v7

    const/4 v8, 0x4

    if-eq v7, v8, :cond_0

    new-instance v7, Ljava/lang/AssertionError;

    invoke-direct {v7}, Ljava/lang/AssertionError;-><init>()V

    throw v7

    .line 193
    :cond_0
    new-array v2, v11, [Lcom/jme3/scene/plugins/OBJLoader$Face;

    new-instance v7, Lcom/jme3/scene/plugins/OBJLoader$Face;

    invoke-direct {v7}, Lcom/jme3/scene/plugins/OBJLoader$Face;-><init>()V

    aput-object v7, v2, v9

    new-instance v7, Lcom/jme3/scene/plugins/OBJLoader$Face;

    invoke-direct {v7}, Lcom/jme3/scene/plugins/OBJLoader$Face;-><init>()V

    aput-object v7, v2, v10

    .line 194
    .local v2, t:[Lcom/jme3/scene/plugins/OBJLoader$Face;
    aget-object v7, v2, v9

    new-array v8, v12, [Lcom/jme3/scene/plugins/OBJLoader$Vertex;

    iput-object v8, v7, Lcom/jme3/scene/plugins/OBJLoader$Face;->verticies:[Lcom/jme3/scene/plugins/OBJLoader$Vertex;

    .line 195
    aget-object v7, v2, v10

    new-array v8, v12, [Lcom/jme3/scene/plugins/OBJLoader$Vertex;

    iput-object v8, v7, Lcom/jme3/scene/plugins/OBJLoader$Face;->verticies:[Lcom/jme3/scene/plugins/OBJLoader$Vertex;

    .line 197
    iget-object v7, p1, Lcom/jme3/scene/plugins/OBJLoader$Face;->verticies:[Lcom/jme3/scene/plugins/OBJLoader$Vertex;

    aget-object v3, v7, v9

    .line 198
    .local v3, v0:Lcom/jme3/scene/plugins/OBJLoader$Vertex;
    iget-object v7, p1, Lcom/jme3/scene/plugins/OBJLoader$Face;->verticies:[Lcom/jme3/scene/plugins/OBJLoader$Vertex;

    aget-object v4, v7, v10

    .line 199
    .local v4, v1:Lcom/jme3/scene/plugins/OBJLoader$Vertex;
    iget-object v7, p1, Lcom/jme3/scene/plugins/OBJLoader$Face;->verticies:[Lcom/jme3/scene/plugins/OBJLoader$Vertex;

    aget-object v5, v7, v11

    .line 200
    .local v5, v2:Lcom/jme3/scene/plugins/OBJLoader$Vertex;
    iget-object v7, p1, Lcom/jme3/scene/plugins/OBJLoader$Face;->verticies:[Lcom/jme3/scene/plugins/OBJLoader$Vertex;

    aget-object v6, v7, v12

    .line 206
    .local v6, v3:Lcom/jme3/scene/plugins/OBJLoader$Vertex;
    iget-object v7, v3, Lcom/jme3/scene/plugins/OBJLoader$Vertex;->v:Lcom/jme3/math/Vector3f;

    iget-object v8, v5, Lcom/jme3/scene/plugins/OBJLoader$Vertex;->v:Lcom/jme3/math/Vector3f;

    invoke-virtual {v7, v8}, Lcom/jme3/math/Vector3f;->distanceSquared(Lcom/jme3/math/Vector3f;)F

    move-result v0

    .line 207
    .local v0, d1:F
    iget-object v7, v4, Lcom/jme3/scene/plugins/OBJLoader$Vertex;->v:Lcom/jme3/math/Vector3f;

    iget-object v8, v6, Lcom/jme3/scene/plugins/OBJLoader$Vertex;->v:Lcom/jme3/math/Vector3f;

    invoke-virtual {v7, v8}, Lcom/jme3/math/Vector3f;->distanceSquared(Lcom/jme3/math/Vector3f;)F

    move-result v1

    .line 208
    .local v1, d2:F
    cmpg-float v7, v0, v1

    if-gez v7, :cond_1

    .line 210
    aget-object v7, v2, v9

    iget-object v7, v7, Lcom/jme3/scene/plugins/OBJLoader$Face;->verticies:[Lcom/jme3/scene/plugins/OBJLoader$Vertex;

    aput-object v3, v7, v9

    .line 211
    aget-object v7, v2, v9

    iget-object v7, v7, Lcom/jme3/scene/plugins/OBJLoader$Face;->verticies:[Lcom/jme3/scene/plugins/OBJLoader$Vertex;

    aput-object v4, v7, v10

    .line 212
    aget-object v7, v2, v9

    iget-object v7, v7, Lcom/jme3/scene/plugins/OBJLoader$Face;->verticies:[Lcom/jme3/scene/plugins/OBJLoader$Vertex;

    aput-object v6, v7, v11

    .line 214
    aget-object v7, v2, v10

    iget-object v7, v7, Lcom/jme3/scene/plugins/OBJLoader$Face;->verticies:[Lcom/jme3/scene/plugins/OBJLoader$Vertex;

    aput-object v4, v7, v9

    .line 215
    aget-object v7, v2, v10

    iget-object v7, v7, Lcom/jme3/scene/plugins/OBJLoader$Face;->verticies:[Lcom/jme3/scene/plugins/OBJLoader$Vertex;

    aput-object v5, v7, v10

    .line 216
    aget-object v7, v2, v10

    iget-object v7, v7, Lcom/jme3/scene/plugins/OBJLoader$Face;->verticies:[Lcom/jme3/scene/plugins/OBJLoader$Vertex;

    aput-object v6, v7, v11

    .line 228
    :goto_0
    return-object v2

    .line 219
    :cond_1
    aget-object v7, v2, v9

    iget-object v7, v7, Lcom/jme3/scene/plugins/OBJLoader$Face;->verticies:[Lcom/jme3/scene/plugins/OBJLoader$Vertex;

    aput-object v3, v7, v9

    .line 220
    aget-object v7, v2, v9

    iget-object v7, v7, Lcom/jme3/scene/plugins/OBJLoader$Face;->verticies:[Lcom/jme3/scene/plugins/OBJLoader$Vertex;

    aput-object v4, v7, v10

    .line 221
    aget-object v7, v2, v9

    iget-object v7, v7, Lcom/jme3/scene/plugins/OBJLoader$Face;->verticies:[Lcom/jme3/scene/plugins/OBJLoader$Vertex;

    aput-object v5, v7, v11

    .line 223
    aget-object v7, v2, v10

    iget-object v7, v7, Lcom/jme3/scene/plugins/OBJLoader$Face;->verticies:[Lcom/jme3/scene/plugins/OBJLoader$Vertex;

    aput-object v3, v7, v9

    .line 224
    aget-object v7, v2, v10

    iget-object v7, v7, Lcom/jme3/scene/plugins/OBJLoader$Face;->verticies:[Lcom/jme3/scene/plugins/OBJLoader$Vertex;

    aput-object v5, v7, v10

    .line 225
    aget-object v7, v2, v10

    iget-object v7, v7, Lcom/jme3/scene/plugins/OBJLoader$Face;->verticies:[Lcom/jme3/scene/plugins/OBJLoader$Vertex;

    aput-object v6, v7, v11

    goto :goto_0
.end method

.method protected readFace()V
    .locals 15

    .prologue
    .line 234
    new-instance v1, Lcom/jme3/scene/plugins/OBJLoader$Face;

    invoke-direct {v1}, Lcom/jme3/scene/plugins/OBJLoader$Face;-><init>()V

    .line 235
    .local v1, f:Lcom/jme3/scene/plugins/OBJLoader$Face;
    iget-object v13, p0, Lcom/jme3/scene/plugins/OBJLoader;->vertList:Ljava/util/ArrayList;

    invoke-virtual {v13}, Ljava/util/ArrayList;->clear()V

    .line 237
    iget-object v13, p0, Lcom/jme3/scene/plugins/OBJLoader;->scan:Ljava/util/Scanner;

    invoke-virtual {v13}, Ljava/util/Scanner;->nextLine()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    .line 238
    .local v5, line:Ljava/lang/String;
    const-string v13, "\\s"

    invoke-virtual {v5, v13}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v9

    .line 239
    .local v9, verticies:[Ljava/lang/String;
    move-object v0, v9

    .local v0, arr$:[Ljava/lang/String;
    array-length v4, v0

    .local v4, len$:I
    const/4 v3, 0x0

    .local v3, i$:I
    :goto_0
    if-ge v3, v4, :cond_6

    aget-object v8, v0, v3

    .line 240
    .local v8, vertex:Ljava/lang/String;
    const/4 v7, 0x0

    .line 241
    .local v7, v:I
    const/4 v11, 0x0

    .line 242
    .local v11, vt:I
    const/4 v10, 0x0

    .line 244
    .local v10, vn:I
    const-string v13, "/"

    invoke-virtual {v8, v13}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    .line 245
    .local v6, split:[Ljava/lang/String;
    array-length v13, v6

    const/4 v14, 0x1

    if-ne v13, v14, :cond_3

    .line 246
    const/4 v13, 0x0

    aget-object v13, v6, v13

    invoke-virtual {v13}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v13

    invoke-static {v13}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    .line 259
    :cond_0
    :goto_1
    new-instance v12, Lcom/jme3/scene/plugins/OBJLoader$Vertex;

    invoke-direct {v12}, Lcom/jme3/scene/plugins/OBJLoader$Vertex;-><init>()V

    .line 260
    .local v12, vx:Lcom/jme3/scene/plugins/OBJLoader$Vertex;
    iget-object v13, p0, Lcom/jme3/scene/plugins/OBJLoader;->verts:Ljava/util/ArrayList;

    add-int/lit8 v14, v7, -0x1

    invoke-virtual {v13, v14}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/jme3/math/Vector3f;

    iput-object v13, v12, Lcom/jme3/scene/plugins/OBJLoader$Vertex;->v:Lcom/jme3/math/Vector3f;

    .line 262
    if-lez v11, :cond_1

    .line 263
    iget-object v13, p0, Lcom/jme3/scene/plugins/OBJLoader;->texCoords:Ljava/util/ArrayList;

    add-int/lit8 v14, v11, -0x1

    invoke-virtual {v13, v14}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/jme3/math/Vector2f;

    iput-object v13, v12, Lcom/jme3/scene/plugins/OBJLoader$Vertex;->vt:Lcom/jme3/math/Vector2f;

    .line 265
    :cond_1
    if-lez v10, :cond_2

    .line 266
    iget-object v13, p0, Lcom/jme3/scene/plugins/OBJLoader;->norms:Ljava/util/ArrayList;

    add-int/lit8 v14, v10, -0x1

    invoke-virtual {v13, v14}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/jme3/math/Vector3f;

    iput-object v13, v12, Lcom/jme3/scene/plugins/OBJLoader$Vertex;->vn:Lcom/jme3/math/Vector3f;

    .line 268
    :cond_2
    iget-object v13, p0, Lcom/jme3/scene/plugins/OBJLoader;->vertList:Ljava/util/ArrayList;

    invoke-virtual {v13, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 239
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 247
    .end local v12           #vx:Lcom/jme3/scene/plugins/OBJLoader$Vertex;
    :cond_3
    array-length v13, v6

    const/4 v14, 0x2

    if-ne v13, v14, :cond_4

    .line 248
    const/4 v13, 0x0

    aget-object v13, v6, v13

    invoke-virtual {v13}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v13

    invoke-static {v13}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    .line 249
    const/4 v13, 0x1

    aget-object v13, v6, v13

    invoke-virtual {v13}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v13

    invoke-static {v13}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v11

    goto :goto_1

    .line 250
    :cond_4
    array-length v13, v6

    const/4 v14, 0x3

    if-ne v13, v14, :cond_5

    const/4 v13, 0x1

    aget-object v13, v6, v13

    const-string v14, ""

    invoke-virtual {v13, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_5

    .line 251
    const/4 v13, 0x0

    aget-object v13, v6, v13

    invoke-virtual {v13}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v13

    invoke-static {v13}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    .line 252
    const/4 v13, 0x1

    aget-object v13, v6, v13

    invoke-virtual {v13}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v13

    invoke-static {v13}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v11

    .line 253
    const/4 v13, 0x2

    aget-object v13, v6, v13

    invoke-virtual {v13}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v13

    invoke-static {v13}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v10

    goto :goto_1

    .line 254
    :cond_5
    array-length v13, v6

    const/4 v14, 0x3

    if-ne v13, v14, :cond_0

    .line 255
    const/4 v13, 0x0

    aget-object v13, v6, v13

    invoke-virtual {v13}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v13

    invoke-static {v13}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    .line 256
    const/4 v13, 0x2

    aget-object v13, v6, v13

    invoke-virtual {v13}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v13

    invoke-static {v13}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v10

    goto/16 :goto_1

    .line 271
    .end local v6           #split:[Ljava/lang/String;
    .end local v7           #v:I
    .end local v8           #vertex:Ljava/lang/String;
    .end local v10           #vn:I
    .end local v11           #vt:I
    :cond_6
    iget-object v13, p0, Lcom/jme3/scene/plugins/OBJLoader;->vertList:Ljava/util/ArrayList;

    invoke-virtual {v13}, Ljava/util/ArrayList;->size()I

    move-result v13

    const/4 v14, 0x4

    if-gt v13, v14, :cond_7

    iget-object v13, p0, Lcom/jme3/scene/plugins/OBJLoader;->vertList:Ljava/util/ArrayList;

    invoke-virtual {v13}, Ljava/util/ArrayList;->size()I

    move-result v13

    const/4 v14, 0x2

    if-gt v13, v14, :cond_8

    .line 272
    :cond_7
    sget-object v13, Lcom/jme3/scene/plugins/OBJLoader;->logger:Ljava/util/logging/Logger;

    const-string v14, "Edge or polygon detected in OBJ. Ignored."

    invoke-virtual {v13, v14}, Ljava/util/logging/Logger;->warning(Ljava/lang/String;)V

    .line 274
    :cond_8
    iget-object v13, p0, Lcom/jme3/scene/plugins/OBJLoader;->vertList:Ljava/util/ArrayList;

    invoke-virtual {v13}, Ljava/util/ArrayList;->size()I

    move-result v13

    new-array v13, v13, [Lcom/jme3/scene/plugins/OBJLoader$Vertex;

    iput-object v13, v1, Lcom/jme3/scene/plugins/OBJLoader$Face;->verticies:[Lcom/jme3/scene/plugins/OBJLoader$Vertex;

    .line 275
    const/4 v2, 0x0

    .local v2, i:I
    :goto_2
    iget-object v13, p0, Lcom/jme3/scene/plugins/OBJLoader;->vertList:Ljava/util/ArrayList;

    invoke-virtual {v13}, Ljava/util/ArrayList;->size()I

    move-result v13

    if-ge v2, v13, :cond_9

    .line 276
    iget-object v14, v1, Lcom/jme3/scene/plugins/OBJLoader$Face;->verticies:[Lcom/jme3/scene/plugins/OBJLoader$Vertex;

    iget-object v13, p0, Lcom/jme3/scene/plugins/OBJLoader;->vertList:Ljava/util/ArrayList;

    invoke-virtual {v13, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/jme3/scene/plugins/OBJLoader$Vertex;

    aput-object v13, v14, v2

    .line 275
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 279
    :cond_9
    iget-object v13, p0, Lcom/jme3/scene/plugins/OBJLoader;->matList:Lcom/jme3/material/MaterialList;

    if-eqz v13, :cond_a

    iget-object v13, p0, Lcom/jme3/scene/plugins/OBJLoader;->matFaces:Ljava/util/HashMap;

    iget-object v14, p0, Lcom/jme3/scene/plugins/OBJLoader;->currentMatName:Ljava/lang/String;

    invoke-virtual {v13, v14}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_a

    .line 280
    iget-object v13, p0, Lcom/jme3/scene/plugins/OBJLoader;->matFaces:Ljava/util/HashMap;

    iget-object v14, p0, Lcom/jme3/scene/plugins/OBJLoader;->currentMatName:Ljava/lang/String;

    invoke-virtual {v13, v14}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/util/ArrayList;

    invoke-virtual {v13, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 284
    :goto_3
    return-void

    .line 282
    :cond_a
    iget-object v13, p0, Lcom/jme3/scene/plugins/OBJLoader;->faces:Ljava/util/ArrayList;

    invoke-virtual {v13, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3
.end method

.method protected readLine()Z
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 347
    iget-object v2, p0, Lcom/jme3/scene/plugins/OBJLoader;->scan:Ljava/util/Scanner;

    invoke-virtual {v2}, Ljava/util/Scanner;->hasNext()Z

    move-result v2

    if-nez v2, :cond_0

    .line 348
    const/4 v2, 0x0

    .line 385
    :goto_0
    return v2

    .line 351
    :cond_0
    iget-object v2, p0, Lcom/jme3/scene/plugins/OBJLoader;->scan:Ljava/util/Scanner;

    invoke-virtual {v2}, Ljava/util/Scanner;->next()Ljava/lang/String;

    move-result-object v0

    .line 352
    .local v0, cmd:Ljava/lang/String;
    const-string v2, "#"

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 354
    invoke-virtual {p0}, Lcom/jme3/scene/plugins/OBJLoader;->nextStatement()Z

    move-result v2

    goto :goto_0

    .line 355
    :cond_1
    const-string v2, "v"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 357
    iget-object v2, p0, Lcom/jme3/scene/plugins/OBJLoader;->verts:Ljava/util/ArrayList;

    invoke-virtual {p0}, Lcom/jme3/scene/plugins/OBJLoader;->readVector3()Lcom/jme3/math/Vector3f;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 385
    :goto_1
    const/4 v2, 0x1

    goto :goto_0

    .line 358
    :cond_2
    const-string v2, "vn"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 360
    iget-object v2, p0, Lcom/jme3/scene/plugins/OBJLoader;->norms:Ljava/util/ArrayList;

    invoke-virtual {p0}, Lcom/jme3/scene/plugins/OBJLoader;->readVector3()Lcom/jme3/math/Vector3f;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 361
    :cond_3
    const-string v2, "vt"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 363
    iget-object v2, p0, Lcom/jme3/scene/plugins/OBJLoader;->texCoords:Ljava/util/ArrayList;

    invoke-virtual {p0}, Lcom/jme3/scene/plugins/OBJLoader;->readVector2()Lcom/jme3/math/Vector2f;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 364
    :cond_4
    const-string v2, "f"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 366
    invoke-virtual {p0}, Lcom/jme3/scene/plugins/OBJLoader;->readFace()V

    goto :goto_1

    .line 367
    :cond_5
    const-string v2, "usemtl"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 369
    iget-object v2, p0, Lcom/jme3/scene/plugins/OBJLoader;->scan:Ljava/util/Scanner;

    invoke-virtual {v2}, Ljava/util/Scanner;->next()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/jme3/scene/plugins/OBJLoader;->currentMatName:Ljava/lang/String;

    goto :goto_1

    .line 373
    :cond_6
    const-string v2, "mtllib"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 375
    iget-object v2, p0, Lcom/jme3/scene/plugins/OBJLoader;->scan:Ljava/util/Scanner;

    invoke-virtual {v2}, Ljava/util/Scanner;->nextLine()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    .line 376
    .local v1, mtllib:Ljava/lang/String;
    invoke-virtual {p0, v1}, Lcom/jme3/scene/plugins/OBJLoader;->loadMtlLib(Ljava/lang/String;)V

    goto :goto_1

    .line 377
    .end local v1           #mtllib:Ljava/lang/String;
    :cond_7
    const-string v2, "s"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_8

    const-string v2, "g"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_9

    .line 378
    :cond_8
    invoke-virtual {p0}, Lcom/jme3/scene/plugins/OBJLoader;->nextStatement()Z

    move-result v2

    goto/16 :goto_0

    .line 381
    :cond_9
    sget-object v2, Lcom/jme3/scene/plugins/OBJLoader;->logger:Ljava/util/logging/Logger;

    sget-object v3, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    const-string v4, "Unknown statement in OBJ! {0}"

    invoke-virtual {v2, v3, v4, v0}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Object;)V

    .line 382
    invoke-virtual {p0}, Lcom/jme3/scene/plugins/OBJLoader;->nextStatement()Z

    move-result v2

    goto/16 :goto_0
.end method

.method protected readVector2()Lcom/jme3/math/Vector2f;
    .locals 4

    .prologue
    .line 297
    new-instance v2, Lcom/jme3/math/Vector2f;

    invoke-direct {v2}, Lcom/jme3/math/Vector2f;-><init>()V

    .line 299
    .local v2, v:Lcom/jme3/math/Vector2f;
    iget-object v3, p0, Lcom/jme3/scene/plugins/OBJLoader;->scan:Ljava/util/Scanner;

    invoke-virtual {v3}, Ljava/util/Scanner;->nextLine()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 300
    .local v0, line:Ljava/lang/String;
    const-string v3, "\\s"

    invoke-virtual {v0, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 301
    .local v1, split:[Ljava/lang/String;
    const/4 v3, 0x0

    aget-object v3, v1, v3

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v3

    invoke-virtual {v2, v3}, Lcom/jme3/math/Vector2f;->setX(F)Lcom/jme3/math/Vector2f;

    .line 302
    const/4 v3, 0x1

    aget-object v3, v1, v3

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v3

    invoke-virtual {v2, v3}, Lcom/jme3/math/Vector2f;->setY(F)Lcom/jme3/math/Vector2f;

    .line 312
    return-object v2
.end method

.method protected readVector3()Lcom/jme3/math/Vector3f;
    .locals 4

    .prologue
    .line 287
    new-instance v0, Lcom/jme3/math/Vector3f;

    invoke-direct {v0}, Lcom/jme3/math/Vector3f;-><init>()V

    .line 289
    .local v0, v:Lcom/jme3/math/Vector3f;
    iget-object v1, p0, Lcom/jme3/scene/plugins/OBJLoader;->scan:Ljava/util/Scanner;

    invoke-virtual {v1}, Ljava/util/Scanner;->next()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v1

    iget-object v2, p0, Lcom/jme3/scene/plugins/OBJLoader;->scan:Ljava/util/Scanner;

    invoke-virtual {v2}, Ljava/util/Scanner;->next()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v2

    iget-object v3, p0, Lcom/jme3/scene/plugins/OBJLoader;->scan:Ljava/util/Scanner;

    invoke-virtual {v3}, Ljava/util/Scanner;->next()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/jme3/math/Vector3f;->set(FFF)Lcom/jme3/math/Vector3f;

    .line 293
    return-object v0
.end method

.method public reset()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 163
    iget-object v0, p0, Lcom/jme3/scene/plugins/OBJLoader;->verts:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 164
    iget-object v0, p0, Lcom/jme3/scene/plugins/OBJLoader;->texCoords:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 165
    iget-object v0, p0, Lcom/jme3/scene/plugins/OBJLoader;->norms:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 166
    iget-object v0, p0, Lcom/jme3/scene/plugins/OBJLoader;->faces:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 167
    iget-object v0, p0, Lcom/jme3/scene/plugins/OBJLoader;->matFaces:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 169
    iget-object v0, p0, Lcom/jme3/scene/plugins/OBJLoader;->vertIndexMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 170
    iget-object v0, p0, Lcom/jme3/scene/plugins/OBJLoader;->indexVertMap:Lcom/jme3/util/IntMap;

    invoke-virtual {v0}, Lcom/jme3/util/IntMap;->clear()V

    .line 172
    iput-object v1, p0, Lcom/jme3/scene/plugins/OBJLoader;->currentMatName:Ljava/lang/String;

    .line 173
    iput-object v1, p0, Lcom/jme3/scene/plugins/OBJLoader;->matList:Lcom/jme3/material/MaterialList;

    .line 174
    iput v2, p0, Lcom/jme3/scene/plugins/OBJLoader;->curIndex:I

    .line 175
    iput v2, p0, Lcom/jme3/scene/plugins/OBJLoader;->geomIndex:I

    .line 176
    iput-object v1, p0, Lcom/jme3/scene/plugins/OBJLoader;->scan:Ljava/util/Scanner;

    .line 177
    return-void
.end method
