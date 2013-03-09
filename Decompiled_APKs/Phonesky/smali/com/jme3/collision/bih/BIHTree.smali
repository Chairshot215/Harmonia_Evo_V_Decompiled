.class public Lcom/jme3/collision/bih/BIHTree;
.super Ljava/lang/Object;
.source "BIHTree.java"

# interfaces
.implements Lcom/jme3/scene/CollisionData;


# static fields
.field private static final comparators:[Lcom/jme3/collision/bih/TriangleAxisComparator;


# instance fields
.field private transient bihSwapTmp:[F

.field private transient boundResults:Lcom/jme3/collision/CollisionResults;

.field private maxTrisPerNode:I

.field private mesh:Lcom/jme3/scene/Mesh;

.field private numTris:I

.field private pointData:[F

.field private root:Lcom/jme3/collision/bih/BIHNode;

.field private triIndices:[I


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 74
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/jme3/collision/bih/TriangleAxisComparator;

    new-instance v1, Lcom/jme3/collision/bih/TriangleAxisComparator;

    invoke-direct {v1, v2}, Lcom/jme3/collision/bih/TriangleAxisComparator;-><init>(I)V

    aput-object v1, v0, v2

    new-instance v1, Lcom/jme3/collision/bih/TriangleAxisComparator;

    invoke-direct {v1, v3}, Lcom/jme3/collision/bih/TriangleAxisComparator;-><init>(I)V

    aput-object v1, v0, v3

    new-instance v1, Lcom/jme3/collision/bih/TriangleAxisComparator;

    invoke-direct {v1, v4}, Lcom/jme3/collision/bih/TriangleAxisComparator;-><init>(I)V

    aput-object v1, v0, v4

    sput-object v0, Lcom/jme3/collision/bih/BIHTree;->comparators:[Lcom/jme3/collision/bih/TriangleAxisComparator;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 133
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 71
    new-instance v0, Lcom/jme3/collision/CollisionResults;

    invoke-direct {v0}, Lcom/jme3/collision/CollisionResults;-><init>()V

    iput-object v0, p0, Lcom/jme3/collision/bih/BIHTree;->boundResults:Lcom/jme3/collision/CollisionResults;

    .line 134
    return-void
.end method

.method public constructor <init>(Lcom/jme3/scene/Mesh;)V
    .locals 1
    .parameter "mesh"

    .prologue
    .line 130
    const/16 v0, 0x15

    invoke-direct {p0, p1, v0}, Lcom/jme3/collision/bih/BIHTree;-><init>(Lcom/jme3/scene/Mesh;I)V

    .line 131
    return-void
.end method

.method public constructor <init>(Lcom/jme3/scene/Mesh;I)V
    .locals 4
    .parameter "mesh"
    .parameter "maxTrisPerNode"

    .prologue
    .line 107
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 71
    new-instance v2, Lcom/jme3/collision/CollisionResults;

    invoke-direct {v2}, Lcom/jme3/collision/CollisionResults;-><init>()V

    iput-object v2, p0, Lcom/jme3/collision/bih/BIHTree;->boundResults:Lcom/jme3/collision/CollisionResults;

    .line 108
    iput-object p1, p0, Lcom/jme3/collision/bih/BIHTree;->mesh:Lcom/jme3/scene/Mesh;

    .line 109
    iput p2, p0, Lcom/jme3/collision/bih/BIHTree;->maxTrisPerNode:I

    .line 111
    const/4 v2, 0x1

    if-lt p2, v2, :cond_0

    if-nez p1, :cond_1

    .line 112
    :cond_0
    new-instance v2, Ljava/lang/IllegalArgumentException;

    invoke-direct {v2}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v2

    .line 115
    :cond_1
    const/16 v2, 0x9

    new-array v2, v2, [F

    iput-object v2, p0, Lcom/jme3/collision/bih/BIHTree;->bihSwapTmp:[F

    .line 117
    sget-object v2, Lcom/jme3/scene/VertexBuffer$Type;->Position:Lcom/jme3/scene/VertexBuffer$Type;

    invoke-virtual {p1, v2}, Lcom/jme3/scene/Mesh;->getBuffer(Lcom/jme3/scene/VertexBuffer$Type;)Lcom/jme3/scene/VertexBuffer;

    move-result-object v2

    invoke-virtual {v2}, Lcom/jme3/scene/VertexBuffer;->getData()Ljava/nio/Buffer;

    move-result-object v1

    check-cast v1, Ljava/nio/FloatBuffer;

    .line 118
    .local v1, vb:Ljava/nio/FloatBuffer;
    invoke-virtual {p1}, Lcom/jme3/scene/Mesh;->getIndexBuffer()Lcom/jme3/scene/mesh/IndexBuffer;

    move-result-object v0

    .line 119
    .local v0, ib:Lcom/jme3/scene/mesh/IndexBuffer;
    if-nez v0, :cond_3

    .line 120
    new-instance v0, Lcom/jme3/scene/mesh/VirtualIndexBuffer;

    .end local v0           #ib:Lcom/jme3/scene/mesh/IndexBuffer;
    invoke-virtual {p1}, Lcom/jme3/scene/Mesh;->getVertexCount()I

    move-result v2

    invoke-virtual {p1}, Lcom/jme3/scene/Mesh;->getMode()Lcom/jme3/scene/Mesh$Mode;

    move-result-object v3

    invoke-direct {v0, v2, v3}, Lcom/jme3/scene/mesh/VirtualIndexBuffer;-><init>(ILcom/jme3/scene/Mesh$Mode;)V

    .line 125
    .restart local v0       #ib:Lcom/jme3/scene/mesh/IndexBuffer;
    :cond_2
    :goto_0
    invoke-virtual {v0}, Lcom/jme3/scene/mesh/IndexBuffer;->size()I

    move-result v2

    div-int/lit8 v2, v2, 0x3

    iput v2, p0, Lcom/jme3/collision/bih/BIHTree;->numTris:I

    .line 126
    invoke-direct {p0, v1, v0}, Lcom/jme3/collision/bih/BIHTree;->initTriList(Ljava/nio/FloatBuffer;Lcom/jme3/scene/mesh/IndexBuffer;)V

    .line 127
    return-void

    .line 121
    :cond_3
    invoke-virtual {p1}, Lcom/jme3/scene/Mesh;->getMode()Lcom/jme3/scene/Mesh$Mode;

    move-result-object v2

    sget-object v3, Lcom/jme3/scene/Mesh$Mode;->Triangles:Lcom/jme3/scene/Mesh$Mode;

    if-eq v2, v3, :cond_2

    .line 122
    new-instance v0, Lcom/jme3/scene/mesh/WrappedIndexBuffer;

    .end local v0           #ib:Lcom/jme3/scene/mesh/IndexBuffer;
    invoke-direct {v0, p1}, Lcom/jme3/scene/mesh/WrappedIndexBuffer;-><init>(Lcom/jme3/scene/Mesh;)V

    .restart local v0       #ib:Lcom/jme3/scene/mesh/IndexBuffer;
    goto :goto_0
.end method

.method private collideWithBoundingVolume(Lcom/jme3/bounding/BoundingVolume;Lcom/jme3/math/Matrix4f;Lcom/jme3/collision/CollisionResults;)I
    .locals 7
    .parameter "bv"
    .parameter "worldMatrix"
    .parameter "results"

    .prologue
    .line 434
    instance-of v0, p1, Lcom/jme3/bounding/BoundingSphere;

    if-eqz v0, :cond_0

    move-object v6, p1

    .line 435
    check-cast v6, Lcom/jme3/bounding/BoundingSphere;

    .line 436
    .local v6, sphere:Lcom/jme3/bounding/BoundingSphere;
    new-instance v2, Lcom/jme3/bounding/BoundingBox;

    invoke-virtual {p1}, Lcom/jme3/bounding/BoundingVolume;->getCenter()Lcom/jme3/math/Vector3f;

    move-result-object v0

    invoke-virtual {v0}, Lcom/jme3/math/Vector3f;->clone()Lcom/jme3/math/Vector3f;

    move-result-object v0

    invoke-virtual {v6}, Lcom/jme3/bounding/BoundingSphere;->getRadius()F

    move-result v1

    invoke-virtual {v6}, Lcom/jme3/bounding/BoundingSphere;->getRadius()F

    move-result v3

    invoke-virtual {v6}, Lcom/jme3/bounding/BoundingSphere;->getRadius()F

    move-result v4

    invoke-direct {v2, v0, v1, v3, v4}, Lcom/jme3/bounding/BoundingBox;-><init>(Lcom/jme3/math/Vector3f;FFF)V

    .line 445
    .end local v6           #sphere:Lcom/jme3/bounding/BoundingSphere;
    .local v2, bbox:Lcom/jme3/bounding/BoundingBox;
    :goto_0
    invoke-virtual {p2}, Lcom/jme3/math/Matrix4f;->invert()Lcom/jme3/math/Matrix4f;

    move-result-object v0

    invoke-virtual {v2, v0, v2}, Lcom/jme3/bounding/BoundingBox;->transform(Lcom/jme3/math/Matrix4f;Lcom/jme3/bounding/BoundingVolume;)Lcom/jme3/bounding/BoundingVolume;

    .line 446
    iget-object v0, p0, Lcom/jme3/collision/bih/BIHTree;->root:Lcom/jme3/collision/bih/BIHNode;

    move-object v1, p1

    move-object v3, p2

    move-object v4, p0

    move-object v5, p3

    invoke-virtual/range {v0 .. v5}, Lcom/jme3/collision/bih/BIHNode;->intersectWhere(Lcom/jme3/collision/Collidable;Lcom/jme3/bounding/BoundingBox;Lcom/jme3/math/Matrix4f;Lcom/jme3/collision/bih/BIHTree;Lcom/jme3/collision/CollisionResults;)I

    move-result v0

    return v0

    .line 439
    .end local v2           #bbox:Lcom/jme3/bounding/BoundingBox;
    :cond_0
    instance-of v0, p1, Lcom/jme3/bounding/BoundingBox;

    if-eqz v0, :cond_1

    .line 440
    new-instance v2, Lcom/jme3/bounding/BoundingBox;

    move-object v0, p1

    check-cast v0, Lcom/jme3/bounding/BoundingBox;

    invoke-direct {v2, v0}, Lcom/jme3/bounding/BoundingBox;-><init>(Lcom/jme3/bounding/BoundingBox;)V

    .restart local v2       #bbox:Lcom/jme3/bounding/BoundingBox;
    goto :goto_0

    .line 442
    .end local v2           #bbox:Lcom/jme3/bounding/BoundingBox;
    :cond_1
    new-instance v0, Lcom/jme3/collision/UnsupportedCollisionException;

    invoke-direct {v0}, Lcom/jme3/collision/UnsupportedCollisionException;-><init>()V

    throw v0
.end method

.method private collideWithRay(Lcom/jme3/math/Ray;Lcom/jme3/math/Matrix4f;Lcom/jme3/bounding/BoundingVolume;Lcom/jme3/collision/CollisionResults;)I
    .locals 7
    .parameter "r"
    .parameter "worldMatrix"
    .parameter "worldBound"
    .parameter "results"

    .prologue
    const/4 v0, 0x0

    const/4 v2, 0x0

    .line 401
    iget-object v1, p0, Lcom/jme3/collision/bih/BIHTree;->boundResults:Lcom/jme3/collision/CollisionResults;

    invoke-virtual {v1}, Lcom/jme3/collision/CollisionResults;->clear()V

    .line 402
    iget-object v1, p0, Lcom/jme3/collision/bih/BIHTree;->boundResults:Lcom/jme3/collision/CollisionResults;

    invoke-virtual {p3, p1, v1}, Lcom/jme3/bounding/BoundingVolume;->collideWith(Lcom/jme3/collision/Collidable;Lcom/jme3/collision/CollisionResults;)I

    .line 403
    iget-object v1, p0, Lcom/jme3/collision/bih/BIHTree;->boundResults:Lcom/jme3/collision/CollisionResults;

    invoke-virtual {v1}, Lcom/jme3/collision/CollisionResults;->size()I

    move-result v1

    if-lez v1, :cond_2

    .line 404
    iget-object v1, p0, Lcom/jme3/collision/bih/BIHTree;->boundResults:Lcom/jme3/collision/CollisionResults;

    invoke-virtual {v1}, Lcom/jme3/collision/CollisionResults;->getClosestCollision()Lcom/jme3/collision/CollisionResult;

    move-result-object v1

    invoke-virtual {v1}, Lcom/jme3/collision/CollisionResult;->getDistance()F

    move-result v4

    .line 405
    .local v4, tMin:F
    iget-object v1, p0, Lcom/jme3/collision/bih/BIHTree;->boundResults:Lcom/jme3/collision/CollisionResults;

    invoke-virtual {v1}, Lcom/jme3/collision/CollisionResults;->getFarthestCollision()Lcom/jme3/collision/CollisionResult;

    move-result-object v1

    invoke-virtual {v1}, Lcom/jme3/collision/CollisionResult;->getDistance()F

    move-result v5

    .line 407
    .local v5, tMax:F
    cmpg-float v1, v5, v2

    if-gtz v1, :cond_3

    .line 408
    const/high16 v5, 0x7f80

    .line 413
    :cond_0
    :goto_0
    cmpg-float v1, v4, v2

    if-gtz v1, :cond_1

    .line 414
    const/4 v4, 0x0

    .line 417
    :cond_1
    invoke-virtual {p1}, Lcom/jme3/math/Ray;->getLimit()F

    move-result v1

    const/high16 v2, 0x7f80

    cmpg-float v1, v1, v2

    if-gez v1, :cond_4

    .line 418
    invoke-virtual {p1}, Lcom/jme3/math/Ray;->getLimit()F

    move-result v1

    invoke-static {v5, v1}, Ljava/lang/Math;->min(FF)F

    move-result v5

    .line 419
    cmpl-float v1, v4, v5

    if-lez v1, :cond_4

    .line 427
    .end local v4           #tMin:F
    .end local v5           #tMax:F
    :cond_2
    :goto_1
    return v0

    .line 409
    .restart local v4       #tMin:F
    .restart local v5       #tMax:F
    :cond_3
    cmpl-float v1, v4, v5

    if-nez v1, :cond_0

    .line 410
    const/4 v4, 0x0

    goto :goto_0

    .line 425
    :cond_4
    iget-object v0, p0, Lcom/jme3/collision/bih/BIHTree;->root:Lcom/jme3/collision/bih/BIHNode;

    move-object v1, p1

    move-object v2, p2

    move-object v3, p0

    move-object v6, p4

    invoke-virtual/range {v0 .. v6}, Lcom/jme3/collision/bih/BIHNode;->intersectWhere(Lcom/jme3/math/Ray;Lcom/jme3/math/Matrix4f;Lcom/jme3/collision/bih/BIHTree;FFLcom/jme3/collision/CollisionResults;)I

    move-result v0

    goto :goto_1
.end method

.method private createBox(II)Lcom/jme3/bounding/BoundingBox;
    .locals 12
    .parameter "l"
    .parameter "r"

    .prologue
    const/high16 v11, 0x7f80

    const/high16 v10, -0x80

    .line 142
    invoke-static {}, Lcom/jme3/util/TempVars;->get()Lcom/jme3/util/TempVars;

    move-result-object v7

    .line 144
    .local v7, vars:Lcom/jme3/util/TempVars;
    iget-object v8, v7, Lcom/jme3/util/TempVars;->vect1:Lcom/jme3/math/Vector3f;

    new-instance v9, Lcom/jme3/math/Vector3f;

    invoke-direct {v9, v11, v11, v11}, Lcom/jme3/math/Vector3f;-><init>(FFF)V

    invoke-virtual {v8, v9}, Lcom/jme3/math/Vector3f;->set(Lcom/jme3/math/Vector3f;)Lcom/jme3/math/Vector3f;

    move-result-object v3

    .line 145
    .local v3, min:Lcom/jme3/math/Vector3f;
    iget-object v8, v7, Lcom/jme3/util/TempVars;->vect2:Lcom/jme3/math/Vector3f;

    new-instance v9, Lcom/jme3/math/Vector3f;

    invoke-direct {v9, v10, v10, v10}, Lcom/jme3/math/Vector3f;-><init>(FFF)V

    invoke-virtual {v8, v9}, Lcom/jme3/math/Vector3f;->set(Lcom/jme3/math/Vector3f;)Lcom/jme3/math/Vector3f;

    move-result-object v2

    .line 147
    .local v2, max:Lcom/jme3/math/Vector3f;
    iget-object v4, v7, Lcom/jme3/util/TempVars;->vect3:Lcom/jme3/math/Vector3f;

    .line 148
    .local v4, v1:Lcom/jme3/math/Vector3f;
    iget-object v5, v7, Lcom/jme3/util/TempVars;->vect4:Lcom/jme3/math/Vector3f;

    .line 149
    .local v5, v2:Lcom/jme3/math/Vector3f;
    iget-object v6, v7, Lcom/jme3/util/TempVars;->vect5:Lcom/jme3/math/Vector3f;

    .line 151
    .local v6, v3:Lcom/jme3/math/Vector3f;
    move v1, p1

    .local v1, i:I
    :goto_0
    if-gt v1, p2, :cond_0

    .line 152
    invoke-virtual {p0, v1, v4, v5, v6}, Lcom/jme3/collision/bih/BIHTree;->getTriangle(ILcom/jme3/math/Vector3f;Lcom/jme3/math/Vector3f;Lcom/jme3/math/Vector3f;)V

    .line 153
    invoke-static {v3, v2, v4}, Lcom/jme3/bounding/BoundingBox;->checkMinMax(Lcom/jme3/math/Vector3f;Lcom/jme3/math/Vector3f;Lcom/jme3/math/Vector3f;)V

    .line 154
    invoke-static {v3, v2, v5}, Lcom/jme3/bounding/BoundingBox;->checkMinMax(Lcom/jme3/math/Vector3f;Lcom/jme3/math/Vector3f;Lcom/jme3/math/Vector3f;)V

    .line 155
    invoke-static {v3, v2, v6}, Lcom/jme3/bounding/BoundingBox;->checkMinMax(Lcom/jme3/math/Vector3f;Lcom/jme3/math/Vector3f;Lcom/jme3/math/Vector3f;)V

    .line 151
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 158
    :cond_0
    new-instance v0, Lcom/jme3/bounding/BoundingBox;

    invoke-direct {v0, v3, v2}, Lcom/jme3/bounding/BoundingBox;-><init>(Lcom/jme3/math/Vector3f;Lcom/jme3/math/Vector3f;)V

    .line 159
    .local v0, bbox:Lcom/jme3/bounding/BoundingBox;
    invoke-virtual {v7}, Lcom/jme3/util/TempVars;->release()V

    .line 160
    return-object v0
.end method

.method private createNode(IILcom/jme3/bounding/BoundingBox;I)Lcom/jme3/collision/bih/BIHNode;
    .locals 11
    .parameter "l"
    .parameter "r"
    .parameter "nodeBbox"
    .parameter "depth"

    .prologue
    .line 292
    sub-int v9, p2, p1

    iget v10, p0, Lcom/jme3/collision/bih/BIHTree;->maxTrisPerNode:I

    if-lt v9, v10, :cond_0

    const/16 v9, 0x64

    if-le p4, v9, :cond_1

    .line 293
    :cond_0
    new-instance v5, Lcom/jme3/collision/bih/BIHNode;

    invoke-direct {v5, p1, p2}, Lcom/jme3/collision/bih/BIHNode;-><init>(II)V

    .line 357
    :goto_0
    return-object v5

    .line 296
    :cond_1
    invoke-direct {p0, p1, p2}, Lcom/jme3/collision/bih/BIHTree;->createBox(II)Lcom/jme3/bounding/BoundingBox;

    move-result-object v1

    .line 298
    .local v1, currentBox:Lcom/jme3/bounding/BoundingBox;
    const/4 v9, 0x0

    invoke-virtual {p3, v9}, Lcom/jme3/bounding/BoundingBox;->getExtent(Lcom/jme3/math/Vector3f;)Lcom/jme3/math/Vector3f;

    move-result-object v2

    .line 299
    .local v2, exteriorExt:Lcom/jme3/math/Vector3f;
    const/4 v9, 0x0

    invoke-virtual {v1, v9}, Lcom/jme3/bounding/BoundingBox;->getExtent(Lcom/jme3/math/Vector3f;)Lcom/jme3/math/Vector3f;

    move-result-object v3

    .line 300
    .local v3, interiorExt:Lcom/jme3/math/Vector3f;
    invoke-virtual {v2, v3}, Lcom/jme3/math/Vector3f;->subtractLocal(Lcom/jme3/math/Vector3f;)Lcom/jme3/math/Vector3f;

    .line 302
    const/4 v0, 0x0

    .line 303
    .local v0, axis:I
    iget v9, v2, Lcom/jme3/math/Vector3f;->x:F

    iget v10, v2, Lcom/jme3/math/Vector3f;->y:F

    cmpl-float v9, v9, v10

    if-lez v9, :cond_6

    .line 304
    iget v9, v2, Lcom/jme3/math/Vector3f;->x:F

    iget v10, v2, Lcom/jme3/math/Vector3f;->z:F

    cmpl-float v9, v9, v10

    if-lez v9, :cond_5

    .line 305
    const/4 v0, 0x0

    .line 316
    :goto_1
    sget-object v9, Lcom/jme3/math/Vector3f;->ZERO:Lcom/jme3/math/Vector3f;

    invoke-virtual {v2, v9}, Lcom/jme3/math/Vector3f;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_2

    .line 317
    const/4 v0, 0x0

    .line 321
    :cond_2
    invoke-virtual {v1}, Lcom/jme3/bounding/BoundingBox;->getCenter()Lcom/jme3/math/Vector3f;

    move-result-object v9

    invoke-virtual {v9, v0}, Lcom/jme3/math/Vector3f;->get(I)F

    move-result v8

    .line 322
    .local v8, split:F
    invoke-direct {p0, p1, p2, v8, v0}, Lcom/jme3/collision/bih/BIHTree;->sortTriangles(IIFI)I

    move-result v6

    .line 323
    .local v6, pivot:I
    if-eq v6, p1, :cond_3

    if-ne v6, p2, :cond_4

    .line 324
    :cond_3
    add-int v9, p2, p1

    div-int/lit8 v6, v9, 0x2

    .line 328
    :cond_4
    if-ge v6, p1, :cond_8

    .line 330
    new-instance v7, Lcom/jme3/bounding/BoundingBox;

    invoke-direct {v7, v1}, Lcom/jme3/bounding/BoundingBox;-><init>(Lcom/jme3/bounding/BoundingBox;)V

    .line 331
    .local v7, rbbox:Lcom/jme3/bounding/BoundingBox;
    const/4 v9, 0x1

    invoke-direct {p0, v7, v9, v0, v8}, Lcom/jme3/collision/bih/BIHTree;->setMinMax(Lcom/jme3/bounding/BoundingBox;ZIF)V

    .line 332
    add-int/lit8 v9, p4, 0x1

    invoke-direct {p0, p1, p2, v7, v9}, Lcom/jme3/collision/bih/BIHTree;->createNode(IILcom/jme3/bounding/BoundingBox;I)Lcom/jme3/collision/bih/BIHNode;

    move-result-object v5

    goto :goto_0

    .line 307
    .end local v6           #pivot:I
    .end local v7           #rbbox:Lcom/jme3/bounding/BoundingBox;
    .end local v8           #split:F
    :cond_5
    const/4 v0, 0x2

    goto :goto_1

    .line 310
    :cond_6
    iget v9, v2, Lcom/jme3/math/Vector3f;->y:F

    iget v10, v2, Lcom/jme3/math/Vector3f;->z:F

    cmpl-float v9, v9, v10

    if-lez v9, :cond_7

    .line 311
    const/4 v0, 0x1

    goto :goto_1

    .line 313
    :cond_7
    const/4 v0, 0x2

    goto :goto_1

    .line 333
    .restart local v6       #pivot:I
    .restart local v8       #split:F
    :cond_8
    if-le v6, p2, :cond_9

    .line 335
    new-instance v4, Lcom/jme3/bounding/BoundingBox;

    invoke-direct {v4, v1}, Lcom/jme3/bounding/BoundingBox;-><init>(Lcom/jme3/bounding/BoundingBox;)V

    .line 336
    .local v4, lbbox:Lcom/jme3/bounding/BoundingBox;
    const/4 v9, 0x0

    invoke-direct {p0, v4, v9, v0, v8}, Lcom/jme3/collision/bih/BIHTree;->setMinMax(Lcom/jme3/bounding/BoundingBox;ZIF)V

    .line 337
    add-int/lit8 v9, p4, 0x1

    invoke-direct {p0, p1, p2, v4, v9}, Lcom/jme3/collision/bih/BIHTree;->createNode(IILcom/jme3/bounding/BoundingBox;I)Lcom/jme3/collision/bih/BIHNode;

    move-result-object v5

    goto :goto_0

    .line 340
    .end local v4           #lbbox:Lcom/jme3/bounding/BoundingBox;
    :cond_9
    new-instance v5, Lcom/jme3/collision/bih/BIHNode;

    invoke-direct {v5, v0}, Lcom/jme3/collision/bih/BIHNode;-><init>(I)V

    .line 343
    .local v5, node:Lcom/jme3/collision/bih/BIHNode;
    new-instance v4, Lcom/jme3/bounding/BoundingBox;

    invoke-direct {v4, v1}, Lcom/jme3/bounding/BoundingBox;-><init>(Lcom/jme3/bounding/BoundingBox;)V

    .line 344
    .restart local v4       #lbbox:Lcom/jme3/bounding/BoundingBox;
    const/4 v9, 0x0

    invoke-direct {p0, v4, v9, v0, v8}, Lcom/jme3/collision/bih/BIHTree;->setMinMax(Lcom/jme3/bounding/BoundingBox;ZIF)V

    .line 347
    add-int/lit8 v9, v6, -0x1

    invoke-static {p1, v9}, Ljava/lang/Math;->max(II)I

    move-result v9

    invoke-direct {p0, p1, v9}, Lcom/jme3/collision/bih/BIHTree;->createBox(II)Lcom/jme3/bounding/BoundingBox;

    move-result-object v9

    const/4 v10, 0x0

    invoke-direct {p0, v9, v10, v0}, Lcom/jme3/collision/bih/BIHTree;->getMinMax(Lcom/jme3/bounding/BoundingBox;ZI)F

    move-result v9

    invoke-virtual {v5, v9}, Lcom/jme3/collision/bih/BIHNode;->setLeftPlane(F)V

    .line 348
    add-int/lit8 v9, v6, -0x1

    invoke-static {p1, v9}, Ljava/lang/Math;->max(II)I

    move-result v9

    add-int/lit8 v10, p4, 0x1

    invoke-direct {p0, p1, v9, v4, v10}, Lcom/jme3/collision/bih/BIHTree;->createNode(IILcom/jme3/bounding/BoundingBox;I)Lcom/jme3/collision/bih/BIHNode;

    move-result-object v9

    invoke-virtual {v5, v9}, Lcom/jme3/collision/bih/BIHNode;->setLeftChild(Lcom/jme3/collision/bih/BIHNode;)V

    .line 351
    new-instance v7, Lcom/jme3/bounding/BoundingBox;

    invoke-direct {v7, v1}, Lcom/jme3/bounding/BoundingBox;-><init>(Lcom/jme3/bounding/BoundingBox;)V

    .line 352
    .restart local v7       #rbbox:Lcom/jme3/bounding/BoundingBox;
    const/4 v9, 0x1

    invoke-direct {p0, v7, v9, v0, v8}, Lcom/jme3/collision/bih/BIHTree;->setMinMax(Lcom/jme3/bounding/BoundingBox;ZIF)V

    .line 354
    invoke-direct {p0, v6, p2}, Lcom/jme3/collision/bih/BIHTree;->createBox(II)Lcom/jme3/bounding/BoundingBox;

    move-result-object v9

    const/4 v10, 0x1

    invoke-direct {p0, v9, v10, v0}, Lcom/jme3/collision/bih/BIHTree;->getMinMax(Lcom/jme3/bounding/BoundingBox;ZI)F

    move-result v9

    invoke-virtual {v5, v9}, Lcom/jme3/collision/bih/BIHNode;->setRightPlane(F)V

    .line 355
    add-int/lit8 v9, p4, 0x1

    invoke-direct {p0, v6, p2, v7, v9}, Lcom/jme3/collision/bih/BIHTree;->createNode(IILcom/jme3/bounding/BoundingBox;I)Lcom/jme3/collision/bih/BIHNode;

    move-result-object v9

    invoke-virtual {v5, v9}, Lcom/jme3/collision/bih/BIHNode;->setRightChild(Lcom/jme3/collision/bih/BIHNode;)V

    goto/16 :goto_0
.end method

.method private getMinMax(Lcom/jme3/bounding/BoundingBox;ZI)F
    .locals 1
    .parameter "bbox"
    .parameter "doMin"
    .parameter "axis"

    .prologue
    const/4 v0, 0x0

    .line 207
    if-eqz p2, :cond_0

    .line 208
    invoke-virtual {p1, v0}, Lcom/jme3/bounding/BoundingBox;->getMin(Lcom/jme3/math/Vector3f;)Lcom/jme3/math/Vector3f;

    move-result-object v0

    invoke-virtual {v0, p3}, Lcom/jme3/math/Vector3f;->get(I)F

    move-result v0

    .line 210
    :goto_0
    return v0

    :cond_0
    invoke-virtual {p1, v0}, Lcom/jme3/bounding/BoundingBox;->getMax(Lcom/jme3/math/Vector3f;)Lcom/jme3/math/Vector3f;

    move-result-object v0

    invoke-virtual {v0, p3}, Lcom/jme3/math/Vector3f;->get(I)F

    move-result v0

    goto :goto_0
.end method

.method private initTriList(Ljava/nio/FloatBuffer;Lcom/jme3/scene/mesh/IndexBuffer;)V
    .locals 7
    .parameter "vb"
    .parameter "ib"

    .prologue
    .line 82
    iget v5, p0, Lcom/jme3/collision/bih/BIHTree;->numTris:I

    mul-int/lit8 v5, v5, 0x3

    mul-int/lit8 v5, v5, 0x3

    new-array v5, v5, [F

    iput-object v5, p0, Lcom/jme3/collision/bih/BIHTree;->pointData:[F

    .line 83
    const/4 v1, 0x0

    .line 84
    .local v1, p:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget v5, p0, Lcom/jme3/collision/bih/BIHTree;->numTris:I

    mul-int/lit8 v5, v5, 0x3

    if-ge v0, v5, :cond_0

    .line 85
    invoke-virtual {p2, v0}, Lcom/jme3/scene/mesh/IndexBuffer;->get(I)I

    move-result v5

    mul-int/lit8 v3, v5, 0x3

    .line 86
    .local v3, vert:I
    iget-object v5, p0, Lcom/jme3/collision/bih/BIHTree;->pointData:[F

    add-int/lit8 v2, v1, 0x1

    .end local v1           #p:I
    .local v2, p:I
    add-int/lit8 v4, v3, 0x1

    .end local v3           #vert:I
    .local v4, vert:I
    invoke-virtual {p1, v3}, Ljava/nio/FloatBuffer;->get(I)F

    move-result v6

    aput v6, v5, v1

    .line 87
    iget-object v5, p0, Lcom/jme3/collision/bih/BIHTree;->pointData:[F

    add-int/lit8 v1, v2, 0x1

    .end local v2           #p:I
    .restart local v1       #p:I
    add-int/lit8 v3, v4, 0x1

    .end local v4           #vert:I
    .restart local v3       #vert:I
    invoke-virtual {p1, v4}, Ljava/nio/FloatBuffer;->get(I)F

    move-result v6

    aput v6, v5, v2

    .line 88
    iget-object v5, p0, Lcom/jme3/collision/bih/BIHTree;->pointData:[F

    add-int/lit8 v2, v1, 0x1

    .end local v1           #p:I
    .restart local v2       #p:I
    invoke-virtual {p1, v3}, Ljava/nio/FloatBuffer;->get(I)F

    move-result v6

    aput v6, v5, v1

    .line 90
    add-int/lit8 v5, v0, 0x1

    invoke-virtual {p2, v5}, Lcom/jme3/scene/mesh/IndexBuffer;->get(I)I

    move-result v5

    mul-int/lit8 v3, v5, 0x3

    .line 91
    iget-object v5, p0, Lcom/jme3/collision/bih/BIHTree;->pointData:[F

    add-int/lit8 v1, v2, 0x1

    .end local v2           #p:I
    .restart local v1       #p:I
    add-int/lit8 v4, v3, 0x1

    .end local v3           #vert:I
    .restart local v4       #vert:I
    invoke-virtual {p1, v3}, Ljava/nio/FloatBuffer;->get(I)F

    move-result v6

    aput v6, v5, v2

    .line 92
    iget-object v5, p0, Lcom/jme3/collision/bih/BIHTree;->pointData:[F

    add-int/lit8 v2, v1, 0x1

    .end local v1           #p:I
    .restart local v2       #p:I
    add-int/lit8 v3, v4, 0x1

    .end local v4           #vert:I
    .restart local v3       #vert:I
    invoke-virtual {p1, v4}, Ljava/nio/FloatBuffer;->get(I)F

    move-result v6

    aput v6, v5, v1

    .line 93
    iget-object v5, p0, Lcom/jme3/collision/bih/BIHTree;->pointData:[F

    add-int/lit8 v1, v2, 0x1

    .end local v2           #p:I
    .restart local v1       #p:I
    invoke-virtual {p1, v3}, Ljava/nio/FloatBuffer;->get(I)F

    move-result v6

    aput v6, v5, v2

    .line 95
    add-int/lit8 v5, v0, 0x2

    invoke-virtual {p2, v5}, Lcom/jme3/scene/mesh/IndexBuffer;->get(I)I

    move-result v5

    mul-int/lit8 v3, v5, 0x3

    .line 96
    iget-object v5, p0, Lcom/jme3/collision/bih/BIHTree;->pointData:[F

    add-int/lit8 v2, v1, 0x1

    .end local v1           #p:I
    .restart local v2       #p:I
    add-int/lit8 v4, v3, 0x1

    .end local v3           #vert:I
    .restart local v4       #vert:I
    invoke-virtual {p1, v3}, Ljava/nio/FloatBuffer;->get(I)F

    move-result v6

    aput v6, v5, v1

    .line 97
    iget-object v5, p0, Lcom/jme3/collision/bih/BIHTree;->pointData:[F

    add-int/lit8 v1, v2, 0x1

    .end local v2           #p:I
    .restart local v1       #p:I
    add-int/lit8 v3, v4, 0x1

    .end local v4           #vert:I
    .restart local v3       #vert:I
    invoke-virtual {p1, v4}, Ljava/nio/FloatBuffer;->get(I)F

    move-result v6

    aput v6, v5, v2

    .line 98
    iget-object v5, p0, Lcom/jme3/collision/bih/BIHTree;->pointData:[F

    add-int/lit8 v2, v1, 0x1

    .end local v1           #p:I
    .restart local v2       #p:I
    invoke-virtual {p1, v3}, Ljava/nio/FloatBuffer;->get(I)F

    move-result v6

    aput v6, v5, v1

    .line 84
    add-int/lit8 v0, v0, 0x3

    move v1, v2

    .end local v2           #p:I
    .restart local v1       #p:I
    goto/16 :goto_0

    .line 101
    .end local v3           #vert:I
    :cond_0
    iget v5, p0, Lcom/jme3/collision/bih/BIHTree;->numTris:I

    new-array v5, v5, [I

    iput-object v5, p0, Lcom/jme3/collision/bih/BIHTree;->triIndices:[I

    .line 102
    const/4 v0, 0x0

    :goto_1
    iget v5, p0, Lcom/jme3/collision/bih/BIHTree;->numTris:I

    if-ge v0, v5, :cond_1

    .line 103
    iget-object v5, p0, Lcom/jme3/collision/bih/BIHTree;->triIndices:[I

    aput v0, v5, v0

    .line 102
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 105
    :cond_1
    return-void
.end method

.method private setMinMax(Lcom/jme3/bounding/BoundingBox;ZIF)V
    .locals 3
    .parameter "bbox"
    .parameter "doMin"
    .parameter "axis"
    .parameter "value"

    .prologue
    const/4 v2, 0x0

    .line 194
    invoke-virtual {p1, v2}, Lcom/jme3/bounding/BoundingBox;->getMin(Lcom/jme3/math/Vector3f;)Lcom/jme3/math/Vector3f;

    move-result-object v1

    .line 195
    .local v1, min:Lcom/jme3/math/Vector3f;
    invoke-virtual {p1, v2}, Lcom/jme3/bounding/BoundingBox;->getMax(Lcom/jme3/math/Vector3f;)Lcom/jme3/math/Vector3f;

    move-result-object v0

    .line 197
    .local v0, max:Lcom/jme3/math/Vector3f;
    if-eqz p2, :cond_0

    .line 198
    invoke-virtual {v1, p3, p4}, Lcom/jme3/math/Vector3f;->set(IF)V

    .line 203
    :goto_0
    invoke-virtual {p1, v1, v0}, Lcom/jme3/bounding/BoundingBox;->setMinMax(Lcom/jme3/math/Vector3f;Lcom/jme3/math/Vector3f;)V

    .line 204
    return-void

    .line 200
    :cond_0
    invoke-virtual {v0, p3, p4}, Lcom/jme3/math/Vector3f;->set(IF)V

    goto :goto_0
.end method

.method private sortTriangles(IIFI)I
    .locals 8
    .parameter "l"
    .parameter "r"
    .parameter "split"
    .parameter "axis"

    .prologue
    .line 168
    move v1, p1

    .line 169
    .local v1, pivot:I
    move v0, p2

    .line 171
    .local v0, j:I
    invoke-static {}, Lcom/jme3/util/TempVars;->get()Lcom/jme3/util/TempVars;

    move-result-object v5

    .line 173
    .local v5, vars:Lcom/jme3/util/TempVars;
    iget-object v2, v5, Lcom/jme3/util/TempVars;->vect1:Lcom/jme3/math/Vector3f;

    .line 174
    .local v2, v1:Lcom/jme3/math/Vector3f;
    iget-object v3, v5, Lcom/jme3/util/TempVars;->vect2:Lcom/jme3/math/Vector3f;

    .line 175
    .local v3, v2:Lcom/jme3/math/Vector3f;
    iget-object v4, v5, Lcom/jme3/util/TempVars;->vect3:Lcom/jme3/math/Vector3f;

    .line 177
    .local v4, v3:Lcom/jme3/math/Vector3f;
    :goto_0
    if-gt v1, v0, :cond_1

    .line 178
    invoke-virtual {p0, v1, v2, v3, v4}, Lcom/jme3/collision/bih/BIHTree;->getTriangle(ILcom/jme3/math/Vector3f;Lcom/jme3/math/Vector3f;Lcom/jme3/math/Vector3f;)V

    .line 179
    invoke-virtual {v2, v3}, Lcom/jme3/math/Vector3f;->addLocal(Lcom/jme3/math/Vector3f;)Lcom/jme3/math/Vector3f;

    move-result-object v6

    invoke-virtual {v6, v4}, Lcom/jme3/math/Vector3f;->addLocal(Lcom/jme3/math/Vector3f;)Lcom/jme3/math/Vector3f;

    move-result-object v6

    const v7, 0x3eaaaaab

    invoke-virtual {v6, v7}, Lcom/jme3/math/Vector3f;->multLocal(F)Lcom/jme3/math/Vector3f;

    .line 180
    invoke-virtual {v2, p4}, Lcom/jme3/math/Vector3f;->get(I)F

    move-result v6

    cmpl-float v6, v6, p3

    if-lez v6, :cond_0

    .line 181
    invoke-virtual {p0, v1, v0}, Lcom/jme3/collision/bih/BIHTree;->swapTriangles(II)V

    .line 182
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 184
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 188
    :cond_1
    invoke-virtual {v5}, Lcom/jme3/util/TempVars;->release()V

    .line 189
    if-ne v1, p1, :cond_2

    if-ge v0, v1, :cond_2

    move v1, v0

    .line 190
    :cond_2
    return v1
.end method


# virtual methods
.method public collideWith(Lcom/jme3/collision/Collidable;Lcom/jme3/math/Matrix4f;Lcom/jme3/bounding/BoundingVolume;Lcom/jme3/collision/CollisionResults;)I
    .locals 3
    .parameter "other"
    .parameter "worldMatrix"
    .parameter "worldBound"
    .parameter "results"

    .prologue
    .line 454
    instance-of v2, p1, Lcom/jme3/math/Ray;

    if-eqz v2, :cond_0

    move-object v1, p1

    .line 455
    check-cast v1, Lcom/jme3/math/Ray;

    .line 456
    .local v1, ray:Lcom/jme3/math/Ray;
    invoke-direct {p0, v1, p2, p3, p4}, Lcom/jme3/collision/bih/BIHTree;->collideWithRay(Lcom/jme3/math/Ray;Lcom/jme3/math/Matrix4f;Lcom/jme3/bounding/BoundingVolume;Lcom/jme3/collision/CollisionResults;)I

    move-result v2

    .line 459
    .end local v1           #ray:Lcom/jme3/math/Ray;
    :goto_0
    return v2

    .line 457
    :cond_0
    instance-of v2, p1, Lcom/jme3/bounding/BoundingVolume;

    if-eqz v2, :cond_1

    move-object v0, p1

    .line 458
    check-cast v0, Lcom/jme3/bounding/BoundingVolume;

    .line 459
    .local v0, bv:Lcom/jme3/bounding/BoundingVolume;
    invoke-direct {p0, v0, p2, p4}, Lcom/jme3/collision/bih/BIHTree;->collideWithBoundingVolume(Lcom/jme3/bounding/BoundingVolume;Lcom/jme3/math/Matrix4f;Lcom/jme3/collision/CollisionResults;)I

    move-result v2

    goto :goto_0

    .line 461
    .end local v0           #bv:Lcom/jme3/bounding/BoundingVolume;
    :cond_1
    new-instance v2, Lcom/jme3/collision/UnsupportedCollisionException;

    invoke-direct {v2}, Lcom/jme3/collision/UnsupportedCollisionException;-><init>()V

    throw v2
.end method

.method public construct()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 137
    iget v1, p0, Lcom/jme3/collision/bih/BIHTree;->numTris:I

    add-int/lit8 v1, v1, -0x1

    invoke-direct {p0, v2, v1}, Lcom/jme3/collision/bih/BIHTree;->createBox(II)Lcom/jme3/bounding/BoundingBox;

    move-result-object v0

    .line 138
    .local v0, sceneBbox:Lcom/jme3/bounding/BoundingBox;
    iget v1, p0, Lcom/jme3/collision/bih/BIHTree;->numTris:I

    add-int/lit8 v1, v1, -0x1

    invoke-direct {p0, v2, v1, v0, v2}, Lcom/jme3/collision/bih/BIHTree;->createNode(IILcom/jme3/bounding/BoundingBox;I)Lcom/jme3/collision/bih/BIHNode;

    move-result-object v1

    iput-object v1, p0, Lcom/jme3/collision/bih/BIHTree;->root:Lcom/jme3/collision/bih/BIHNode;

    .line 139
    return-void
.end method

.method public getTriangle(ILcom/jme3/math/Vector3f;Lcom/jme3/math/Vector3f;Lcom/jme3/math/Vector3f;)V
    .locals 3
    .parameter "index"
    .parameter "v1"
    .parameter "v2"
    .parameter "v3"

    .prologue
    .line 362
    mul-int/lit8 v0, p1, 0x9

    .line 364
    .local v0, pointIndex:I
    iget-object v2, p0, Lcom/jme3/collision/bih/BIHTree;->pointData:[F

    add-int/lit8 v1, v0, 0x1

    .end local v0           #pointIndex:I
    .local v1, pointIndex:I
    aget v2, v2, v0

    iput v2, p2, Lcom/jme3/math/Vector3f;->x:F

    .line 365
    iget-object v2, p0, Lcom/jme3/collision/bih/BIHTree;->pointData:[F

    add-int/lit8 v0, v1, 0x1

    .end local v1           #pointIndex:I
    .restart local v0       #pointIndex:I
    aget v2, v2, v1

    iput v2, p2, Lcom/jme3/math/Vector3f;->y:F

    .line 366
    iget-object v2, p0, Lcom/jme3/collision/bih/BIHTree;->pointData:[F

    add-int/lit8 v1, v0, 0x1

    .end local v0           #pointIndex:I
    .restart local v1       #pointIndex:I
    aget v2, v2, v0

    iput v2, p2, Lcom/jme3/math/Vector3f;->z:F

    .line 368
    iget-object v2, p0, Lcom/jme3/collision/bih/BIHTree;->pointData:[F

    add-int/lit8 v0, v1, 0x1

    .end local v1           #pointIndex:I
    .restart local v0       #pointIndex:I
    aget v2, v2, v1

    iput v2, p3, Lcom/jme3/math/Vector3f;->x:F

    .line 369
    iget-object v2, p0, Lcom/jme3/collision/bih/BIHTree;->pointData:[F

    add-int/lit8 v1, v0, 0x1

    .end local v0           #pointIndex:I
    .restart local v1       #pointIndex:I
    aget v2, v2, v0

    iput v2, p3, Lcom/jme3/math/Vector3f;->y:F

    .line 370
    iget-object v2, p0, Lcom/jme3/collision/bih/BIHTree;->pointData:[F

    add-int/lit8 v0, v1, 0x1

    .end local v1           #pointIndex:I
    .restart local v0       #pointIndex:I
    aget v2, v2, v1

    iput v2, p3, Lcom/jme3/math/Vector3f;->z:F

    .line 372
    iget-object v2, p0, Lcom/jme3/collision/bih/BIHTree;->pointData:[F

    add-int/lit8 v1, v0, 0x1

    .end local v0           #pointIndex:I
    .restart local v1       #pointIndex:I
    aget v2, v2, v0

    iput v2, p4, Lcom/jme3/math/Vector3f;->x:F

    .line 373
    iget-object v2, p0, Lcom/jme3/collision/bih/BIHTree;->pointData:[F

    add-int/lit8 v0, v1, 0x1

    .end local v1           #pointIndex:I
    .restart local v0       #pointIndex:I
    aget v2, v2, v1

    iput v2, p4, Lcom/jme3/math/Vector3f;->y:F

    .line 374
    iget-object v2, p0, Lcom/jme3/collision/bih/BIHTree;->pointData:[F

    add-int/lit8 v1, v0, 0x1

    .end local v0           #pointIndex:I
    .restart local v1       #pointIndex:I
    aget v2, v2, v0

    iput v2, p4, Lcom/jme3/math/Vector3f;->z:F

    .line 375
    return-void
.end method

.method getTriangleIndex(I)I
    .locals 1
    .parameter "triIndex"

    .prologue
    .line 164
    iget-object v0, p0, Lcom/jme3/collision/bih/BIHTree;->triIndices:[I

    aget v0, v0, p1

    return v0
.end method

.method public read(Lcom/jme3/export/JmeImporter;)V
    .locals 4
    .parameter "im"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 475
    invoke-interface {p1, p0}, Lcom/jme3/export/JmeImporter;->getCapsule(Lcom/jme3/export/Savable;)Lcom/jme3/export/InputCapsule;

    move-result-object v0

    .line 476
    .local v0, ic:Lcom/jme3/export/InputCapsule;
    const-string v1, "mesh"

    invoke-interface {v0, v1, v3}, Lcom/jme3/export/InputCapsule;->readSavable(Ljava/lang/String;Lcom/jme3/export/Savable;)Lcom/jme3/export/Savable;

    move-result-object v1

    check-cast v1, Lcom/jme3/scene/Mesh;

    iput-object v1, p0, Lcom/jme3/collision/bih/BIHTree;->mesh:Lcom/jme3/scene/Mesh;

    .line 477
    const-string v1, "root"

    invoke-interface {v0, v1, v3}, Lcom/jme3/export/InputCapsule;->readSavable(Ljava/lang/String;Lcom/jme3/export/Savable;)Lcom/jme3/export/Savable;

    move-result-object v1

    check-cast v1, Lcom/jme3/collision/bih/BIHNode;

    iput-object v1, p0, Lcom/jme3/collision/bih/BIHTree;->root:Lcom/jme3/collision/bih/BIHNode;

    .line 478
    const-string v1, "tris_per_node"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Lcom/jme3/export/InputCapsule;->readInt(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/jme3/collision/bih/BIHTree;->maxTrisPerNode:I

    .line 479
    const-string v1, "points"

    invoke-interface {v0, v1, v3}, Lcom/jme3/export/InputCapsule;->readFloatArray(Ljava/lang/String;[F)[F

    move-result-object v1

    iput-object v1, p0, Lcom/jme3/collision/bih/BIHTree;->pointData:[F

    .line 480
    const-string v1, "indices"

    invoke-interface {v0, v1, v3}, Lcom/jme3/export/InputCapsule;->readIntArray(Ljava/lang/String;[I)[I

    move-result-object v1

    iput-object v1, p0, Lcom/jme3/collision/bih/BIHTree;->triIndices:[I

    .line 481
    return-void
.end method

.method public swapTriangles(II)V
    .locals 7
    .parameter "index1"
    .parameter "index2"

    .prologue
    const/4 v6, 0x0

    const/16 v5, 0x9

    .line 378
    mul-int/lit8 v0, p1, 0x9

    .line 379
    .local v0, p1:I
    mul-int/lit8 v1, p2, 0x9

    .line 382
    .local v1, p2:I
    iget-object v3, p0, Lcom/jme3/collision/bih/BIHTree;->pointData:[F

    iget-object v4, p0, Lcom/jme3/collision/bih/BIHTree;->bihSwapTmp:[F

    invoke-static {v3, v0, v4, v6, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 385
    iget-object v3, p0, Lcom/jme3/collision/bih/BIHTree;->pointData:[F

    iget-object v4, p0, Lcom/jme3/collision/bih/BIHTree;->pointData:[F

    invoke-static {v3, v1, v4, v0, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 388
    iget-object v3, p0, Lcom/jme3/collision/bih/BIHTree;->bihSwapTmp:[F

    iget-object v4, p0, Lcom/jme3/collision/bih/BIHTree;->pointData:[F

    invoke-static {v3, v6, v4, v1, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 391
    iget-object v3, p0, Lcom/jme3/collision/bih/BIHTree;->triIndices:[I

    aget v2, v3, p1

    .line 392
    .local v2, tmp2:I
    iget-object v3, p0, Lcom/jme3/collision/bih/BIHTree;->triIndices:[I

    iget-object v4, p0, Lcom/jme3/collision/bih/BIHTree;->triIndices:[I

    aget v4, v4, p2

    aput v4, v3, p1

    .line 393
    iget-object v3, p0, Lcom/jme3/collision/bih/BIHTree;->triIndices:[I

    aput v2, v3, p2

    .line 394
    return-void
.end method
