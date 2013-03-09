.class public final Lcom/jme3/collision/bih/BIHNode;
.super Ljava/lang/Object;
.source "BIHNode.java"

# interfaces
.implements Lcom/jme3/export/Savable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/jme3/collision/bih/BIHNode$BIHStackData;
    }
.end annotation


# instance fields
.field private axis:I

.field private left:Lcom/jme3/collision/bih/BIHNode;

.field private leftIndex:I

.field private leftPlane:F

.field private right:Lcom/jme3/collision/bih/BIHNode;

.field private rightIndex:I

.field private rightPlane:F


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 79
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 80
    return-void
.end method

.method public constructor <init>(I)V
    .locals 0
    .parameter "axis"

    .prologue
    .line 75
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 76
    iput p1, p0, Lcom/jme3/collision/bih/BIHNode;->axis:I

    .line 77
    return-void
.end method

.method public constructor <init>(II)V
    .locals 1
    .parameter "l"
    .parameter "r"

    .prologue
    .line 69
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 70
    iput p1, p0, Lcom/jme3/collision/bih/BIHNode;->leftIndex:I

    .line 71
    iput p2, p0, Lcom/jme3/collision/bih/BIHNode;->rightIndex:I

    .line 72
    const/4 v0, 0x3

    iput v0, p0, Lcom/jme3/collision/bih/BIHNode;->axis:I

    .line 73
    return-void
.end method


# virtual methods
.method public final intersectWhere(Lcom/jme3/collision/Collidable;Lcom/jme3/bounding/BoundingBox;Lcom/jme3/math/Matrix4f;Lcom/jme3/collision/bih/BIHTree;Lcom/jme3/collision/CollisionResults;)I
    .locals 24
    .parameter "col"
    .parameter "box"
    .parameter "worldMatrix"
    .parameter "tree"
    .parameter "results"

    .prologue
    .line 154
    invoke-static {}, Lcom/jme3/util/TempVars;->get()Lcom/jme3/util/TempVars;

    move-result-object v19

    .line 155
    .local v19, vars:Lcom/jme3/util/TempVars;
    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/jme3/util/TempVars;->bihStack:Ljava/util/ArrayList;

    move-object/from16 v16, v0

    .line 156
    .local v16, stack:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/jme3/collision/bih/BIHNode$BIHStackData;>;"
    invoke-virtual/range {v16 .. v16}, Ljava/util/ArrayList;->clear()V

    .line 158
    const/16 v20, 0x3

    move/from16 v0, v20

    new-array v14, v0, [F

    const/16 v20, 0x0

    invoke-virtual/range {p2 .. p2}, Lcom/jme3/bounding/BoundingBox;->getCenter()Lcom/jme3/math/Vector3f;

    move-result-object v21

    move-object/from16 v0, v21

    iget v0, v0, Lcom/jme3/math/Vector3f;->x:F

    move/from16 v21, v0

    invoke-virtual/range {p2 .. p2}, Lcom/jme3/bounding/BoundingBox;->getXExtent()F

    move-result v22

    sub-float v21, v21, v22

    aput v21, v14, v20

    const/16 v20, 0x1

    invoke-virtual/range {p2 .. p2}, Lcom/jme3/bounding/BoundingBox;->getCenter()Lcom/jme3/math/Vector3f;

    move-result-object v21

    move-object/from16 v0, v21

    iget v0, v0, Lcom/jme3/math/Vector3f;->y:F

    move/from16 v21, v0

    invoke-virtual/range {p2 .. p2}, Lcom/jme3/bounding/BoundingBox;->getYExtent()F

    move-result v22

    sub-float v21, v21, v22

    aput v21, v14, v20

    const/16 v20, 0x2

    invoke-virtual/range {p2 .. p2}, Lcom/jme3/bounding/BoundingBox;->getCenter()Lcom/jme3/math/Vector3f;

    move-result-object v21

    move-object/from16 v0, v21

    iget v0, v0, Lcom/jme3/math/Vector3f;->z:F

    move/from16 v21, v0

    invoke-virtual/range {p2 .. p2}, Lcom/jme3/bounding/BoundingBox;->getZExtent()F

    move-result v22

    sub-float v21, v21, v22

    aput v21, v14, v20

    .line 162
    .local v14, minExts:[F
    const/16 v20, 0x3

    move/from16 v0, v20

    new-array v12, v0, [F

    const/16 v20, 0x0

    invoke-virtual/range {p2 .. p2}, Lcom/jme3/bounding/BoundingBox;->getCenter()Lcom/jme3/math/Vector3f;

    move-result-object v21

    move-object/from16 v0, v21

    iget v0, v0, Lcom/jme3/math/Vector3f;->x:F

    move/from16 v21, v0

    invoke-virtual/range {p2 .. p2}, Lcom/jme3/bounding/BoundingBox;->getXExtent()F

    move-result v22

    add-float v21, v21, v22

    aput v21, v12, v20

    const/16 v20, 0x1

    invoke-virtual/range {p2 .. p2}, Lcom/jme3/bounding/BoundingBox;->getCenter()Lcom/jme3/math/Vector3f;

    move-result-object v21

    move-object/from16 v0, v21

    iget v0, v0, Lcom/jme3/math/Vector3f;->y:F

    move/from16 v21, v0

    invoke-virtual/range {p2 .. p2}, Lcom/jme3/bounding/BoundingBox;->getYExtent()F

    move-result v22

    add-float v21, v21, v22

    aput v21, v12, v20

    const/16 v20, 0x2

    invoke-virtual/range {p2 .. p2}, Lcom/jme3/bounding/BoundingBox;->getCenter()Lcom/jme3/math/Vector3f;

    move-result-object v21

    move-object/from16 v0, v21

    iget v0, v0, Lcom/jme3/math/Vector3f;->z:F

    move/from16 v21, v0

    invoke-virtual/range {p2 .. p2}, Lcom/jme3/bounding/BoundingBox;->getZExtent()F

    move-result v22

    add-float v21, v21, v22

    aput v21, v12, v20

    .line 166
    .local v12, maxExts:[F
    new-instance v20, Lcom/jme3/collision/bih/BIHNode$BIHStackData;

    const/16 v21, 0x0

    const/16 v22, 0x0

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    move/from16 v2, v21

    move/from16 v3, v22

    invoke-direct {v0, v1, v2, v3}, Lcom/jme3/collision/bih/BIHNode$BIHStackData;-><init>(Lcom/jme3/collision/bih/BIHNode;FF)V

    move-object/from16 v0, v16

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 168
    new-instance v18, Lcom/jme3/math/Triangle;

    invoke-direct/range {v18 .. v18}, Lcom/jme3/math/Triangle;-><init>()V

    .line 169
    .local v18, t:Lcom/jme3/math/Triangle;
    const/4 v6, 0x0

    .line 172
    .local v6, cols:I
    :cond_0
    invoke-virtual/range {v16 .. v16}, Ljava/util/ArrayList;->size()I

    move-result v20

    if-lez v20, :cond_8

    .line 173
    invoke-virtual/range {v16 .. v16}, Ljava/util/ArrayList;->size()I

    move-result v20

    add-int/lit8 v20, v20, -0x1

    move-object/from16 v0, v16

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Lcom/jme3/collision/bih/BIHNode$BIHStackData;

    #getter for: Lcom/jme3/collision/bih/BIHNode$BIHStackData;->node:Lcom/jme3/collision/bih/BIHNode;
    invoke-static/range {v20 .. v20}, Lcom/jme3/collision/bih/BIHNode$BIHStackData;->access$000(Lcom/jme3/collision/bih/BIHNode$BIHStackData;)Lcom/jme3/collision/bih/BIHNode;

    move-result-object v15

    .line 175
    .local v15, node:Lcom/jme3/collision/bih/BIHNode;
    :goto_0
    iget v0, v15, Lcom/jme3/collision/bih/BIHNode;->axis:I

    move/from16 v20, v0

    const/16 v21, 0x3

    move/from16 v0, v20

    move/from16 v1, v21

    if-eq v0, v1, :cond_4

    .line 176
    iget v4, v15, Lcom/jme3/collision/bih/BIHNode;->axis:I

    .line 178
    .local v4, a:I
    aget v11, v12, v4

    .line 179
    .local v11, maxExt:F
    aget v13, v14, v4

    .line 181
    .local v13, minExt:F
    iget v0, v15, Lcom/jme3/collision/bih/BIHNode;->leftPlane:F

    move/from16 v20, v0

    iget v0, v15, Lcom/jme3/collision/bih/BIHNode;->rightPlane:F

    move/from16 v21, v0

    cmpg-float v20, v20, v21

    if-gez v20, :cond_1

    .line 184
    iget v0, v15, Lcom/jme3/collision/bih/BIHNode;->leftPlane:F

    move/from16 v20, v0

    cmpl-float v20, v13, v20

    if-lez v20, :cond_1

    iget v0, v15, Lcom/jme3/collision/bih/BIHNode;->rightPlane:F

    move/from16 v20, v0

    cmpg-float v20, v11, v20

    if-ltz v20, :cond_0

    .line 190
    :cond_1
    iget v0, v15, Lcom/jme3/collision/bih/BIHNode;->rightPlane:F

    move/from16 v20, v0

    cmpg-float v20, v11, v20

    if-gez v20, :cond_2

    .line 191
    iget-object v15, v15, Lcom/jme3/collision/bih/BIHNode;->left:Lcom/jme3/collision/bih/BIHNode;

    goto :goto_0

    .line 192
    :cond_2
    iget v0, v15, Lcom/jme3/collision/bih/BIHNode;->leftPlane:F

    move/from16 v20, v0

    cmpl-float v20, v13, v20

    if-lez v20, :cond_3

    .line 193
    iget-object v15, v15, Lcom/jme3/collision/bih/BIHNode;->right:Lcom/jme3/collision/bih/BIHNode;

    goto :goto_0

    .line 195
    :cond_3
    new-instance v20, Lcom/jme3/collision/bih/BIHNode$BIHStackData;

    iget-object v0, v15, Lcom/jme3/collision/bih/BIHNode;->right:Lcom/jme3/collision/bih/BIHNode;

    move-object/from16 v21, v0

    const/16 v22, 0x0

    const/16 v23, 0x0

    invoke-direct/range {v20 .. v23}, Lcom/jme3/collision/bih/BIHNode$BIHStackData;-><init>(Lcom/jme3/collision/bih/BIHNode;FF)V

    move-object/from16 v0, v16

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 196
    iget-object v15, v15, Lcom/jme3/collision/bih/BIHNode;->left:Lcom/jme3/collision/bih/BIHNode;

    goto :goto_0

    .line 209
    .end local v4           #a:I
    .end local v11           #maxExt:F
    .end local v13           #minExt:F
    :cond_4
    iget v8, v15, Lcom/jme3/collision/bih/BIHNode;->leftIndex:I

    .local v8, i:I
    :goto_1
    iget v0, v15, Lcom/jme3/collision/bih/BIHNode;->rightIndex:I

    move/from16 v20, v0

    move/from16 v0, v20

    if-gt v8, v0, :cond_0

    .line 210
    invoke-virtual/range {v18 .. v18}, Lcom/jme3/math/Triangle;->get1()Lcom/jme3/math/Vector3f;

    move-result-object v20

    invoke-virtual/range {v18 .. v18}, Lcom/jme3/math/Triangle;->get2()Lcom/jme3/math/Vector3f;

    move-result-object v21

    invoke-virtual/range {v18 .. v18}, Lcom/jme3/math/Triangle;->get3()Lcom/jme3/math/Vector3f;

    move-result-object v22

    move-object/from16 v0, p4

    move-object/from16 v1, v20

    move-object/from16 v2, v21

    move-object/from16 v3, v22

    invoke-virtual {v0, v8, v1, v2, v3}, Lcom/jme3/collision/bih/BIHTree;->getTriangle(ILcom/jme3/math/Vector3f;Lcom/jme3/math/Vector3f;Lcom/jme3/math/Vector3f;)V

    .line 211
    if-eqz p3, :cond_5

    .line 212
    invoke-virtual/range {v18 .. v18}, Lcom/jme3/math/Triangle;->get1()Lcom/jme3/math/Vector3f;

    move-result-object v20

    invoke-virtual/range {v18 .. v18}, Lcom/jme3/math/Triangle;->get1()Lcom/jme3/math/Vector3f;

    move-result-object v21

    move-object/from16 v0, p3

    move-object/from16 v1, v20

    move-object/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Lcom/jme3/math/Matrix4f;->mult(Lcom/jme3/math/Vector3f;Lcom/jme3/math/Vector3f;)Lcom/jme3/math/Vector3f;

    .line 213
    invoke-virtual/range {v18 .. v18}, Lcom/jme3/math/Triangle;->get2()Lcom/jme3/math/Vector3f;

    move-result-object v20

    invoke-virtual/range {v18 .. v18}, Lcom/jme3/math/Triangle;->get2()Lcom/jme3/math/Vector3f;

    move-result-object v21

    move-object/from16 v0, p3

    move-object/from16 v1, v20

    move-object/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Lcom/jme3/math/Matrix4f;->mult(Lcom/jme3/math/Vector3f;Lcom/jme3/math/Vector3f;)Lcom/jme3/math/Vector3f;

    .line 214
    invoke-virtual/range {v18 .. v18}, Lcom/jme3/math/Triangle;->get3()Lcom/jme3/math/Vector3f;

    move-result-object v20

    invoke-virtual/range {v18 .. v18}, Lcom/jme3/math/Triangle;->get3()Lcom/jme3/math/Vector3f;

    move-result-object v21

    move-object/from16 v0, p3

    move-object/from16 v1, v20

    move-object/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Lcom/jme3/math/Matrix4f;->mult(Lcom/jme3/math/Vector3f;Lcom/jme3/math/Vector3f;)Lcom/jme3/math/Vector3f;

    .line 217
    :cond_5
    move-object/from16 v0, p1

    move-object/from16 v1, v18

    move-object/from16 v2, p5

    invoke-interface {v0, v1, v2}, Lcom/jme3/collision/Collidable;->collideWith(Lcom/jme3/collision/Collidable;Lcom/jme3/collision/CollisionResults;)I

    move-result v5

    .line 219
    .local v5, added:I
    if-lez v5, :cond_7

    .line 220
    move-object/from16 v0, p4

    invoke-virtual {v0, v8}, Lcom/jme3/collision/bih/BIHTree;->getTriangleIndex(I)I

    move-result v9

    .line 221
    .local v9, index:I
    invoke-virtual/range {p5 .. p5}, Lcom/jme3/collision/CollisionResults;->size()I

    move-result v20

    sub-int v17, v20, v5

    .line 223
    .local v17, start:I
    move/from16 v10, v17

    .local v10, j:I
    :goto_2
    invoke-virtual/range {p5 .. p5}, Lcom/jme3/collision/CollisionResults;->size()I

    move-result v20

    move/from16 v0, v20

    if-ge v10, v0, :cond_6

    .line 224
    move-object/from16 v0, p5

    invoke-virtual {v0, v10}, Lcom/jme3/collision/CollisionResults;->getCollisionDirect(I)Lcom/jme3/collision/CollisionResult;

    move-result-object v7

    .line 225
    .local v7, cr:Lcom/jme3/collision/CollisionResult;
    invoke-virtual {v7, v9}, Lcom/jme3/collision/CollisionResult;->setTriangleIndex(I)V

    .line 223
    add-int/lit8 v10, v10, 0x1

    goto :goto_2

    .line 228
    .end local v7           #cr:Lcom/jme3/collision/CollisionResult;
    :cond_6
    add-int/2addr v6, v5

    .line 209
    .end local v9           #index:I
    .end local v10           #j:I
    .end local v17           #start:I
    :cond_7
    add-int/lit8 v8, v8, 0x1

    goto/16 :goto_1

    .line 232
    .end local v5           #added:I
    .end local v8           #i:I
    .end local v15           #node:Lcom/jme3/collision/bih/BIHNode;
    :cond_8
    invoke-virtual/range {v19 .. v19}, Lcom/jme3/util/TempVars;->release()V

    .line 233
    return v6
.end method

.method public final intersectWhere(Lcom/jme3/math/Ray;Lcom/jme3/math/Matrix4f;Lcom/jme3/collision/bih/BIHTree;FFLcom/jme3/collision/CollisionResults;)I
    .locals 38
    .parameter "r"
    .parameter "worldMatrix"
    .parameter "tree"
    .parameter "sceneMin"
    .parameter "sceneMax"
    .parameter "results"

    .prologue
    .line 303
    invoke-static {}, Lcom/jme3/util/TempVars;->get()Lcom/jme3/util/TempVars;

    move-result-object v33

    .line 304
    .local v33, vars:Lcom/jme3/util/TempVars;
    move-object/from16 v0, v33

    iget-object v0, v0, Lcom/jme3/util/TempVars;->bihStack:Ljava/util/ArrayList;

    move-object/from16 v21, v0

    .line 305
    .local v21, stack:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/jme3/collision/bih/BIHNode$BIHStackData;>;"
    invoke-virtual/range {v21 .. v21}, Ljava/util/ArrayList;->clear()V

    .line 309
    move-object/from16 v0, v33

    iget-object v0, v0, Lcom/jme3/util/TempVars;->vect1:Lcom/jme3/math/Vector3f;

    move-object/from16 v35, v0

    invoke-virtual/range {p1 .. p1}, Lcom/jme3/math/Ray;->getOrigin()Lcom/jme3/math/Vector3f;

    move-result-object v36

    invoke-virtual/range {v35 .. v36}, Lcom/jme3/math/Vector3f;->set(Lcom/jme3/math/Vector3f;)Lcom/jme3/math/Vector3f;

    move-result-object v18

    .line 310
    .local v18, o:Lcom/jme3/math/Vector3f;
    move-object/from16 v0, v33

    iget-object v0, v0, Lcom/jme3/util/TempVars;->vect2:Lcom/jme3/math/Vector3f;

    move-object/from16 v35, v0

    invoke-virtual/range {p1 .. p1}, Lcom/jme3/math/Ray;->getDirection()Lcom/jme3/math/Vector3f;

    move-result-object v36

    invoke-virtual/range {v35 .. v36}, Lcom/jme3/math/Vector3f;->set(Lcom/jme3/math/Vector3f;)Lcom/jme3/math/Vector3f;

    move-result-object v9

    .line 312
    .local v9, d:Lcom/jme3/math/Vector3f;
    move-object/from16 v0, v33

    iget-object v0, v0, Lcom/jme3/util/TempVars;->tempMat4:Lcom/jme3/math/Matrix4f;

    move-object/from16 v35, v0

    move-object/from16 v0, v35

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Lcom/jme3/math/Matrix4f;->set(Lcom/jme3/math/Matrix4f;)Lcom/jme3/math/Matrix4f;

    move-result-object v35

    invoke-virtual/range {v35 .. v35}, Lcom/jme3/math/Matrix4f;->invertLocal()Lcom/jme3/math/Matrix4f;

    move-result-object v13

    .line 314
    .local v13, inv:Lcom/jme3/math/Matrix4f;
    invoke-virtual/range {p1 .. p1}, Lcom/jme3/math/Ray;->getOrigin()Lcom/jme3/math/Vector3f;

    move-result-object v35

    invoke-virtual/range {p1 .. p1}, Lcom/jme3/math/Ray;->getOrigin()Lcom/jme3/math/Vector3f;

    move-result-object v36

    move-object/from16 v0, v35

    move-object/from16 v1, v36

    invoke-virtual {v13, v0, v1}, Lcom/jme3/math/Matrix4f;->mult(Lcom/jme3/math/Vector3f;Lcom/jme3/math/Vector3f;)Lcom/jme3/math/Vector3f;

    .line 317
    invoke-virtual/range {p1 .. p1}, Lcom/jme3/math/Ray;->getDirection()Lcom/jme3/math/Vector3f;

    move-result-object v35

    invoke-virtual/range {p1 .. p1}, Lcom/jme3/math/Ray;->getDirection()Lcom/jme3/math/Vector3f;

    move-result-object v36

    move-object/from16 v0, v35

    move-object/from16 v1, v36

    invoke-virtual {v13, v0, v1}, Lcom/jme3/math/Matrix4f;->multNormal(Lcom/jme3/math/Vector3f;Lcom/jme3/math/Vector3f;)Lcom/jme3/math/Vector3f;

    .line 320
    const/16 v35, 0x3

    move/from16 v0, v35

    new-array v0, v0, [F

    move-object/from16 v20, v0

    const/16 v35, 0x0

    invoke-virtual/range {p1 .. p1}, Lcom/jme3/math/Ray;->getOrigin()Lcom/jme3/math/Vector3f;

    move-result-object v36

    move-object/from16 v0, v36

    iget v0, v0, Lcom/jme3/math/Vector3f;->x:F

    move/from16 v36, v0

    aput v36, v20, v35

    const/16 v35, 0x1

    invoke-virtual/range {p1 .. p1}, Lcom/jme3/math/Ray;->getOrigin()Lcom/jme3/math/Vector3f;

    move-result-object v36

    move-object/from16 v0, v36

    iget v0, v0, Lcom/jme3/math/Vector3f;->y:F

    move/from16 v36, v0

    aput v36, v20, v35

    const/16 v35, 0x2

    invoke-virtual/range {p1 .. p1}, Lcom/jme3/math/Ray;->getOrigin()Lcom/jme3/math/Vector3f;

    move-result-object v36

    move-object/from16 v0, v36

    iget v0, v0, Lcom/jme3/math/Vector3f;->z:F

    move/from16 v36, v0

    aput v36, v20, v35

    .line 324
    .local v20, origins:[F
    const/16 v35, 0x3

    move/from16 v0, v35

    new-array v15, v0, [F

    const/16 v35, 0x0

    const/high16 v36, 0x3f80

    invoke-virtual/range {p1 .. p1}, Lcom/jme3/math/Ray;->getDirection()Lcom/jme3/math/Vector3f;

    move-result-object v37

    move-object/from16 v0, v37

    iget v0, v0, Lcom/jme3/math/Vector3f;->x:F

    move/from16 v37, v0

    div-float v36, v36, v37

    aput v36, v15, v35

    const/16 v35, 0x1

    const/high16 v36, 0x3f80

    invoke-virtual/range {p1 .. p1}, Lcom/jme3/math/Ray;->getDirection()Lcom/jme3/math/Vector3f;

    move-result-object v37

    move-object/from16 v0, v37

    iget v0, v0, Lcom/jme3/math/Vector3f;->y:F

    move/from16 v37, v0

    div-float v36, v36, v37

    aput v36, v15, v35

    const/16 v35, 0x2

    const/high16 v36, 0x3f80

    invoke-virtual/range {p1 .. p1}, Lcom/jme3/math/Ray;->getDirection()Lcom/jme3/math/Vector3f;

    move-result-object v37

    move-object/from16 v0, v37

    iget v0, v0, Lcom/jme3/math/Vector3f;->z:F

    move/from16 v37, v0

    div-float v36, v36, v37

    aput v36, v15, v35

    .line 328
    .local v15, invDirections:[F
    invoke-virtual/range {p1 .. p1}, Lcom/jme3/math/Ray;->getDirection()Lcom/jme3/math/Vector3f;

    move-result-object v35

    invoke-virtual/range {v35 .. v35}, Lcom/jme3/math/Vector3f;->normalizeLocal()Lcom/jme3/math/Vector3f;

    .line 330
    move-object/from16 v0, v33

    iget-object v0, v0, Lcom/jme3/util/TempVars;->vect3:Lcom/jme3/math/Vector3f;

    move-object/from16 v30, v0

    .line 331
    .local v30, v1:Lcom/jme3/math/Vector3f;
    move-object/from16 v0, v33

    iget-object v0, v0, Lcom/jme3/util/TempVars;->vect4:Lcom/jme3/math/Vector3f;

    move-object/from16 v31, v0

    .line 332
    .local v31, v2:Lcom/jme3/math/Vector3f;
    move-object/from16 v0, v33

    iget-object v0, v0, Lcom/jme3/util/TempVars;->vect5:Lcom/jme3/math/Vector3f;

    move-object/from16 v32, v0

    .line 333
    .local v32, v3:Lcom/jme3/math/Vector3f;
    const/4 v5, 0x0

    .line 335
    .local v5, cols:I
    new-instance v35, Lcom/jme3/collision/bih/BIHNode$BIHStackData;

    move-object/from16 v0, v35

    move-object/from16 v1, p0

    move/from16 v2, p4

    move/from16 v3, p5

    invoke-direct {v0, v1, v2, v3}, Lcom/jme3/collision/bih/BIHNode$BIHStackData;-><init>(Lcom/jme3/collision/bih/BIHNode;FF)V

    move-object/from16 v0, v21

    move-object/from16 v1, v35

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 337
    :cond_0
    invoke-virtual/range {v21 .. v21}, Ljava/util/ArrayList;->size()I

    move-result v35

    if-lez v35, :cond_8

    .line 339
    invoke-virtual/range {v21 .. v21}, Ljava/util/ArrayList;->size()I

    move-result v35

    add-int/lit8 v35, v35, -0x1

    move-object/from16 v0, v21

    move/from16 v1, v35

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/jme3/collision/bih/BIHNode$BIHStackData;

    .line 340
    .local v10, data:Lcom/jme3/collision/bih/BIHNode$BIHStackData;
    #getter for: Lcom/jme3/collision/bih/BIHNode$BIHStackData;->node:Lcom/jme3/collision/bih/BIHNode;
    invoke-static {v10}, Lcom/jme3/collision/bih/BIHNode$BIHStackData;->access$000(Lcom/jme3/collision/bih/BIHNode$BIHStackData;)Lcom/jme3/collision/bih/BIHNode;

    move-result-object v17

    .line 341
    .local v17, node:Lcom/jme3/collision/bih/BIHNode;
    #getter for: Lcom/jme3/collision/bih/BIHNode$BIHStackData;->min:F
    invoke-static {v10}, Lcom/jme3/collision/bih/BIHNode$BIHStackData;->access$100(Lcom/jme3/collision/bih/BIHNode$BIHStackData;)F

    move-result v25

    .line 342
    .local v25, tMin:F
    #getter for: Lcom/jme3/collision/bih/BIHNode$BIHStackData;->max:F
    invoke-static {v10}, Lcom/jme3/collision/bih/BIHNode$BIHStackData;->access$200(Lcom/jme3/collision/bih/BIHNode$BIHStackData;)F

    move-result v24

    .line 344
    .local v24, tMax:F
    cmpg-float v35, v24, v25

    if-ltz v35, :cond_0

    .line 349
    :goto_0
    move-object/from16 v0, v17

    iget v0, v0, Lcom/jme3/collision/bih/BIHNode;->axis:I

    move/from16 v35, v0

    const/16 v36, 0x3

    move/from16 v0, v35

    move/from16 v1, v36

    if-eq v0, v1, :cond_5

    .line 350
    move-object/from16 v0, v17

    iget v4, v0, Lcom/jme3/collision/bih/BIHNode;->axis:I

    .line 353
    .local v4, a:I
    aget v19, v20, v4

    .line 354
    .local v19, origin:F
    aget v14, v15, v4

    .line 359
    .local v14, invDirection:F
    move-object/from16 v0, v17

    iget v0, v0, Lcom/jme3/collision/bih/BIHNode;->leftPlane:F

    move/from16 v35, v0

    sub-float v35, v35, v19

    mul-float v26, v35, v14

    .line 360
    .local v26, tNearSplit:F
    move-object/from16 v0, v17

    iget v0, v0, Lcom/jme3/collision/bih/BIHNode;->rightPlane:F

    move/from16 v35, v0

    sub-float v35, v35, v19

    mul-float v23, v35, v14

    .line 361
    .local v23, tFarSplit:F
    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/jme3/collision/bih/BIHNode;->left:Lcom/jme3/collision/bih/BIHNode;

    move-object/from16 v16, v0

    .line 362
    .local v16, nearNode:Lcom/jme3/collision/bih/BIHNode;
    move-object/from16 v0, v17

    iget-object v11, v0, Lcom/jme3/collision/bih/BIHNode;->right:Lcom/jme3/collision/bih/BIHNode;

    .line 364
    .local v11, farNode:Lcom/jme3/collision/bih/BIHNode;
    const/16 v35, 0x0

    cmpg-float v35, v14, v35

    if-gez v35, :cond_1

    .line 365
    move/from16 v29, v26

    .line 366
    .local v29, tmpSplit:F
    move/from16 v26, v23

    .line 367
    move/from16 v23, v29

    .line 369
    move-object/from16 v28, v16

    .line 370
    .local v28, tmpNode:Lcom/jme3/collision/bih/BIHNode;
    move-object/from16 v16, v11

    .line 371
    move-object/from16 v11, v28

    .line 374
    .end local v28           #tmpNode:Lcom/jme3/collision/bih/BIHNode;
    .end local v29           #tmpSplit:F
    :cond_1
    cmpl-float v35, v25, v26

    if-lez v35, :cond_2

    cmpg-float v35, v24, v23

    if-ltz v35, :cond_0

    .line 378
    :cond_2
    cmpl-float v35, v25, v26

    if-lez v35, :cond_3

    .line 379
    move/from16 v0, v25

    move/from16 v1, v23

    invoke-static {v0, v1}, Ljava/lang/Math;->max(FF)F

    move-result v25

    .line 380
    move-object/from16 v17, v11

    goto :goto_0

    .line 381
    :cond_3
    cmpg-float v35, v24, v23

    if-gez v35, :cond_4

    .line 382
    move/from16 v0, v24

    move/from16 v1, v26

    invoke-static {v0, v1}, Ljava/lang/Math;->min(FF)F

    move-result v24

    .line 383
    move-object/from16 v17, v16

    goto :goto_0

    .line 385
    :cond_4
    new-instance v35, Lcom/jme3/collision/bih/BIHNode$BIHStackData;

    move/from16 v0, v25

    move/from16 v1, v23

    invoke-static {v0, v1}, Ljava/lang/Math;->max(FF)F

    move-result v36

    move-object/from16 v0, v35

    move/from16 v1, v36

    move/from16 v2, v24

    invoke-direct {v0, v11, v1, v2}, Lcom/jme3/collision/bih/BIHNode$BIHStackData;-><init>(Lcom/jme3/collision/bih/BIHNode;FF)V

    move-object/from16 v0, v21

    move-object/from16 v1, v35

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 386
    move/from16 v0, v24

    move/from16 v1, v26

    invoke-static {v0, v1}, Ljava/lang/Math;->min(FF)F

    move-result v24

    .line 387
    move-object/from16 v17, v16

    goto/16 :goto_0

    .line 399
    .end local v4           #a:I
    .end local v11           #farNode:Lcom/jme3/collision/bih/BIHNode;
    .end local v14           #invDirection:F
    .end local v16           #nearNode:Lcom/jme3/collision/bih/BIHNode;
    .end local v19           #origin:F
    .end local v23           #tFarSplit:F
    .end local v26           #tNearSplit:F
    :cond_5
    move-object/from16 v0, v17

    iget v12, v0, Lcom/jme3/collision/bih/BIHNode;->leftIndex:I

    .local v12, i:I
    :goto_1
    move-object/from16 v0, v17

    iget v0, v0, Lcom/jme3/collision/bih/BIHNode;->rightIndex:I

    move/from16 v35, v0

    move/from16 v0, v35

    if-gt v12, v0, :cond_0

    .line 400
    move-object/from16 v0, p3

    move-object/from16 v1, v30

    move-object/from16 v2, v31

    move-object/from16 v3, v32

    invoke-virtual {v0, v12, v1, v2, v3}, Lcom/jme3/collision/bih/BIHTree;->getTriangle(ILcom/jme3/math/Vector3f;Lcom/jme3/math/Vector3f;Lcom/jme3/math/Vector3f;)V

    .line 402
    move-object/from16 v0, p1

    move-object/from16 v1, v30

    move-object/from16 v2, v31

    move-object/from16 v3, v32

    invoke-virtual {v0, v1, v2, v3}, Lcom/jme3/math/Ray;->intersects(Lcom/jme3/math/Vector3f;Lcom/jme3/math/Vector3f;Lcom/jme3/math/Vector3f;)F

    move-result v22

    .line 403
    .local v22, t:F
    invoke-static/range {v22 .. v22}, Ljava/lang/Float;->isInfinite(F)Z

    move-result v35

    if-nez v35, :cond_7

    .line 404
    if-eqz p2, :cond_6

    .line 405
    move-object/from16 v0, p2

    move-object/from16 v1, v30

    move-object/from16 v2, v30

    invoke-virtual {v0, v1, v2}, Lcom/jme3/math/Matrix4f;->mult(Lcom/jme3/math/Vector3f;Lcom/jme3/math/Vector3f;)Lcom/jme3/math/Vector3f;

    .line 406
    move-object/from16 v0, p2

    move-object/from16 v1, v31

    move-object/from16 v2, v31

    invoke-virtual {v0, v1, v2}, Lcom/jme3/math/Matrix4f;->mult(Lcom/jme3/math/Vector3f;Lcom/jme3/math/Vector3f;)Lcom/jme3/math/Vector3f;

    .line 407
    move-object/from16 v0, p2

    move-object/from16 v1, v32

    move-object/from16 v2, v32

    invoke-virtual {v0, v1, v2}, Lcom/jme3/math/Matrix4f;->mult(Lcom/jme3/math/Vector3f;Lcom/jme3/math/Vector3f;)Lcom/jme3/math/Vector3f;

    .line 408
    new-instance v35, Lcom/jme3/math/Ray;

    move-object/from16 v0, v35

    move-object/from16 v1, v18

    invoke-direct {v0, v1, v9}, Lcom/jme3/math/Ray;-><init>(Lcom/jme3/math/Vector3f;Lcom/jme3/math/Vector3f;)V

    move-object/from16 v0, v35

    move-object/from16 v1, v30

    move-object/from16 v2, v31

    move-object/from16 v3, v32

    invoke-virtual {v0, v1, v2, v3}, Lcom/jme3/math/Ray;->intersects(Lcom/jme3/math/Vector3f;Lcom/jme3/math/Vector3f;Lcom/jme3/math/Vector3f;)F

    move-result v27

    .line 409
    .local v27, t_world:F
    move/from16 v22, v27

    .line 412
    .end local v27           #t_world:F
    :cond_6
    const/16 v35, 0x0

    move-object/from16 v0, v30

    move-object/from16 v1, v31

    move-object/from16 v2, v32

    move-object/from16 v3, v35

    invoke-static {v0, v1, v2, v3}, Lcom/jme3/math/Triangle;->computeTriangleNormal(Lcom/jme3/math/Vector3f;Lcom/jme3/math/Vector3f;Lcom/jme3/math/Vector3f;Lcom/jme3/math/Vector3f;)Lcom/jme3/math/Vector3f;

    move-result-object v6

    .line 413
    .local v6, contactNormal:Lcom/jme3/math/Vector3f;
    new-instance v35, Lcom/jme3/math/Vector3f;

    move-object/from16 v0, v35

    invoke-direct {v0, v9}, Lcom/jme3/math/Vector3f;-><init>(Lcom/jme3/math/Vector3f;)V

    move-object/from16 v0, v35

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/jme3/math/Vector3f;->multLocal(F)Lcom/jme3/math/Vector3f;

    move-result-object v35

    move-object/from16 v0, v35

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/jme3/math/Vector3f;->addLocal(Lcom/jme3/math/Vector3f;)Lcom/jme3/math/Vector3f;

    move-result-object v7

    .line 414
    .local v7, contactPoint:Lcom/jme3/math/Vector3f;
    move-object/from16 v0, v18

    invoke-virtual {v0, v7}, Lcom/jme3/math/Vector3f;->distance(Lcom/jme3/math/Vector3f;)F

    move-result v34

    .line 416
    .local v34, worldSpaceDist:F
    new-instance v8, Lcom/jme3/collision/CollisionResult;

    move/from16 v0, v34

    invoke-direct {v8, v7, v0}, Lcom/jme3/collision/CollisionResult;-><init>(Lcom/jme3/math/Vector3f;F)V

    .line 417
    .local v8, cr:Lcom/jme3/collision/CollisionResult;
    invoke-virtual {v8, v6}, Lcom/jme3/collision/CollisionResult;->setContactNormal(Lcom/jme3/math/Vector3f;)V

    .line 418
    move-object/from16 v0, p3

    invoke-virtual {v0, v12}, Lcom/jme3/collision/bih/BIHTree;->getTriangleIndex(I)I

    move-result v35

    move/from16 v0, v35

    invoke-virtual {v8, v0}, Lcom/jme3/collision/CollisionResult;->setTriangleIndex(I)V

    .line 419
    move-object/from16 v0, p6

    invoke-virtual {v0, v8}, Lcom/jme3/collision/CollisionResults;->addCollision(Lcom/jme3/collision/CollisionResult;)V

    .line 420
    add-int/lit8 v5, v5, 0x1

    .line 399
    .end local v6           #contactNormal:Lcom/jme3/math/Vector3f;
    .end local v7           #contactPoint:Lcom/jme3/math/Vector3f;
    .end local v8           #cr:Lcom/jme3/collision/CollisionResult;
    .end local v34           #worldSpaceDist:F
    :cond_7
    add-int/lit8 v12, v12, 0x1

    goto/16 :goto_1

    .line 424
    .end local v10           #data:Lcom/jme3/collision/bih/BIHNode$BIHStackData;
    .end local v12           #i:I
    .end local v17           #node:Lcom/jme3/collision/bih/BIHNode;
    .end local v22           #t:F
    .end local v24           #tMax:F
    .end local v25           #tMin:F
    :cond_8
    invoke-virtual/range {v33 .. v33}, Lcom/jme3/util/TempVars;->release()V

    .line 425
    move-object/from16 v0, p1

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/jme3/math/Ray;->setOrigin(Lcom/jme3/math/Vector3f;)V

    .line 426
    move-object/from16 v0, p1

    invoke-virtual {v0, v9}, Lcom/jme3/math/Ray;->setDirection(Lcom/jme3/math/Vector3f;)V

    .line 428
    return v5
.end method

.method public read(Lcom/jme3/export/JmeImporter;)V
    .locals 5
    .parameter "im"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 126
    invoke-interface {p1, p0}, Lcom/jme3/export/JmeImporter;->getCapsule(Lcom/jme3/export/Savable;)Lcom/jme3/export/InputCapsule;

    move-result-object v0

    .line 127
    .local v0, ic:Lcom/jme3/export/InputCapsule;
    const-string v1, "left_index"

    invoke-interface {v0, v1, v2}, Lcom/jme3/export/InputCapsule;->readInt(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/jme3/collision/bih/BIHNode;->leftIndex:I

    .line 128
    const-string v1, "right_index"

    invoke-interface {v0, v1, v2}, Lcom/jme3/export/InputCapsule;->readInt(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/jme3/collision/bih/BIHNode;->rightIndex:I

    .line 129
    const-string v1, "left_plane"

    invoke-interface {v0, v1, v3}, Lcom/jme3/export/InputCapsule;->readFloat(Ljava/lang/String;F)F

    move-result v1

    iput v1, p0, Lcom/jme3/collision/bih/BIHNode;->leftPlane:F

    .line 130
    const-string v1, "right_plane"

    invoke-interface {v0, v1, v3}, Lcom/jme3/export/InputCapsule;->readFloat(Ljava/lang/String;F)F

    move-result v1

    iput v1, p0, Lcom/jme3/collision/bih/BIHNode;->rightPlane:F

    .line 131
    const-string v1, "axis"

    invoke-interface {v0, v1, v2}, Lcom/jme3/export/InputCapsule;->readInt(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/jme3/collision/bih/BIHNode;->axis:I

    .line 132
    const-string v1, "left_node"

    invoke-interface {v0, v1, v4}, Lcom/jme3/export/InputCapsule;->readSavable(Ljava/lang/String;Lcom/jme3/export/Savable;)Lcom/jme3/export/Savable;

    move-result-object v1

    check-cast v1, Lcom/jme3/collision/bih/BIHNode;

    iput-object v1, p0, Lcom/jme3/collision/bih/BIHNode;->left:Lcom/jme3/collision/bih/BIHNode;

    .line 133
    const-string v1, "right_node"

    invoke-interface {v0, v1, v4}, Lcom/jme3/export/InputCapsule;->readSavable(Ljava/lang/String;Lcom/jme3/export/Savable;)Lcom/jme3/export/Savable;

    move-result-object v1

    check-cast v1, Lcom/jme3/collision/bih/BIHNode;

    iput-object v1, p0, Lcom/jme3/collision/bih/BIHNode;->right:Lcom/jme3/collision/bih/BIHNode;

    .line 134
    return-void
.end method

.method public setLeftChild(Lcom/jme3/collision/bih/BIHNode;)V
    .locals 0
    .parameter "left"

    .prologue
    .line 87
    iput-object p1, p0, Lcom/jme3/collision/bih/BIHNode;->left:Lcom/jme3/collision/bih/BIHNode;

    .line 88
    return-void
.end method

.method public setLeftPlane(F)V
    .locals 0
    .parameter "leftPlane"

    .prologue
    .line 95
    iput p1, p0, Lcom/jme3/collision/bih/BIHNode;->leftPlane:F

    .line 96
    return-void
.end method

.method public setRightChild(Lcom/jme3/collision/bih/BIHNode;)V
    .locals 0
    .parameter "right"

    .prologue
    .line 103
    iput-object p1, p0, Lcom/jme3/collision/bih/BIHNode;->right:Lcom/jme3/collision/bih/BIHNode;

    .line 104
    return-void
.end method

.method public setRightPlane(F)V
    .locals 0
    .parameter "rightPlane"

    .prologue
    .line 111
    iput p1, p0, Lcom/jme3/collision/bih/BIHNode;->rightPlane:F

    .line 112
    return-void
.end method
