.class public Lcom/jme3/scene/Mesh;
.super Ljava/lang/Object;
.source "Mesh.java"

# interfaces
.implements Lcom/jme3/export/Savable;
.implements Ljava/lang/Cloneable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/jme3/scene/Mesh$1;,
        Lcom/jme3/scene/Mesh$Mode;
    }
.end annotation


# instance fields
.field private buffers:Lcom/jme3/util/IntMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/jme3/util/IntMap",
            "<",
            "Lcom/jme3/scene/VertexBuffer;",
            ">;"
        }
    .end annotation
.end field

.field private buffersList:Lcom/jme3/util/SafeArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/jme3/util/SafeArrayList",
            "<",
            "Lcom/jme3/scene/VertexBuffer;",
            ">;"
        }
    .end annotation
.end field

.field private collisionTree:Lcom/jme3/scene/CollisionData;

.field private elementCount:I

.field private elementLengths:[I

.field private lineWidth:F

.field private lodLevels:[Lcom/jme3/scene/VertexBuffer;

.field private maxNumWeights:I

.field private meshBound:Lcom/jme3/bounding/BoundingVolume;

.field private mode:Lcom/jme3/scene/Mesh$Mode;

.field private modeStart:[I

.field private pointSize:F

.field private vertCount:I

.field private transient vertexArrayID:I


# direct methods
.method public constructor <init>()V
    .locals 4

    .prologue
    const/high16 v3, 0x3f80

    const/4 v2, -0x1

    .line 188
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 164
    new-instance v0, Lcom/jme3/bounding/BoundingBox;

    invoke-direct {v0}, Lcom/jme3/bounding/BoundingBox;-><init>()V

    iput-object v0, p0, Lcom/jme3/scene/Mesh;->meshBound:Lcom/jme3/bounding/BoundingVolume;

    .line 166
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/jme3/scene/Mesh;->collisionTree:Lcom/jme3/scene/CollisionData;

    .line 168
    new-instance v0, Lcom/jme3/util/SafeArrayList;

    const-class v1, Lcom/jme3/scene/VertexBuffer;

    invoke-direct {v0, v1}, Lcom/jme3/util/SafeArrayList;-><init>(Ljava/lang/Class;)V

    iput-object v0, p0, Lcom/jme3/scene/Mesh;->buffersList:Lcom/jme3/util/SafeArrayList;

    .line 169
    new-instance v0, Lcom/jme3/util/IntMap;

    invoke-direct {v0}, Lcom/jme3/util/IntMap;-><init>()V

    iput-object v0, p0, Lcom/jme3/scene/Mesh;->buffers:Lcom/jme3/util/IntMap;

    .line 171
    iput v3, p0, Lcom/jme3/scene/Mesh;->pointSize:F

    .line 172
    iput v3, p0, Lcom/jme3/scene/Mesh;->lineWidth:F

    .line 174
    iput v2, p0, Lcom/jme3/scene/Mesh;->vertexArrayID:I

    .line 176
    iput v2, p0, Lcom/jme3/scene/Mesh;->vertCount:I

    .line 177
    iput v2, p0, Lcom/jme3/scene/Mesh;->elementCount:I

    .line 178
    iput v2, p0, Lcom/jme3/scene/Mesh;->maxNumWeights:I

    .line 183
    sget-object v0, Lcom/jme3/scene/Mesh$Mode;->Triangles:Lcom/jme3/scene/Mesh$Mode;

    iput-object v0, p0, Lcom/jme3/scene/Mesh;->mode:Lcom/jme3/scene/Mesh$Mode;

    .line 189
    return-void
.end method

.method private computeNumElements(I)I
    .locals 2
    .parameter "bufSize"

    .prologue
    .line 654
    sget-object v0, Lcom/jme3/scene/Mesh$1;->$SwitchMap$com$jme3$scene$Mesh$Mode:[I

    iget-object v1, p0, Lcom/jme3/scene/Mesh;->mode:Lcom/jme3/scene/Mesh$Mode;

    invoke-virtual {v1}, Lcom/jme3/scene/Mesh$Mode;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 669
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0

    .line 656
    :pswitch_0
    div-int/lit8 p1, p1, 0x3

    .line 667
    .end local p1
    :goto_0
    :pswitch_1
    return p1

    .line 659
    .restart local p1
    :pswitch_2
    add-int/lit8 p1, p1, -0x2

    goto :goto_0

    .line 663
    :pswitch_3
    div-int/lit8 p1, p1, 0x2

    goto :goto_0

    .line 667
    :pswitch_4
    add-int/lit8 p1, p1, -0x1

    goto :goto_0

    .line 654
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_2
        :pswitch_2
        :pswitch_1
        :pswitch_3
        :pswitch_1
        :pswitch_4
    .end packed-switch
.end method


# virtual methods
.method public clearBuffer(Lcom/jme3/scene/VertexBuffer$Type;)V
    .locals 3
    .parameter "type"

    .prologue
    .line 883
    iget-object v1, p0, Lcom/jme3/scene/Mesh;->buffers:Lcom/jme3/util/IntMap;

    invoke-virtual {p1}, Lcom/jme3/scene/VertexBuffer$Type;->ordinal()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/jme3/util/IntMap;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/jme3/scene/VertexBuffer;

    .line 884
    .local v0, vb:Lcom/jme3/scene/VertexBuffer;
    if-eqz v0, :cond_0

    .line 885
    iget-object v1, p0, Lcom/jme3/scene/Mesh;->buffersList:Lcom/jme3/util/SafeArrayList;

    invoke-virtual {v1, v0}, Lcom/jme3/util/SafeArrayList;->remove(Ljava/lang/Object;)Z

    .line 886
    invoke-virtual {p0}, Lcom/jme3/scene/Mesh;->updateCounts()V

    .line 888
    :cond_0
    return-void
.end method

.method public clone()Lcom/jme3/scene/Mesh;
    .locals 4

    .prologue
    .line 201
    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/jme3/scene/Mesh;

    .line 202
    iget-object v1, p0, Lcom/jme3/scene/Mesh;->meshBound:Lcom/jme3/bounding/BoundingVolume;

    invoke-virtual {v1}, Lcom/jme3/bounding/BoundingVolume;->clone()Lcom/jme3/bounding/BoundingVolume;

    move-result-object v1

    iput-object v1, v0, Lcom/jme3/scene/Mesh;->meshBound:Lcom/jme3/bounding/BoundingVolume;

    .line 203
    iget-object v1, p0, Lcom/jme3/scene/Mesh;->collisionTree:Lcom/jme3/scene/CollisionData;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/jme3/scene/Mesh;->collisionTree:Lcom/jme3/scene/CollisionData;

    :goto_0
    iput-object v1, v0, Lcom/jme3/scene/Mesh;->collisionTree:Lcom/jme3/scene/CollisionData;

    .line 204
    iget-object v1, p0, Lcom/jme3/scene/Mesh;->buffers:Lcom/jme3/util/IntMap;

    invoke-virtual {v1}, Lcom/jme3/util/IntMap;->clone()Lcom/jme3/util/IntMap;

    move-result-object v1

    iput-object v1, v0, Lcom/jme3/scene/Mesh;->buffers:Lcom/jme3/util/IntMap;

    .line 205
    new-instance v1, Lcom/jme3/util/SafeArrayList;

    const-class v2, Lcom/jme3/scene/VertexBuffer;

    iget-object v3, p0, Lcom/jme3/scene/Mesh;->buffersList:Lcom/jme3/util/SafeArrayList;

    invoke-direct {v1, v2, v3}, Lcom/jme3/util/SafeArrayList;-><init>(Ljava/lang/Class;Ljava/util/Collection;)V

    iput-object v1, v0, Lcom/jme3/scene/Mesh;->buffersList:Lcom/jme3/util/SafeArrayList;

    .line 206
    const/4 v1, -0x1

    iput v1, v0, Lcom/jme3/scene/Mesh;->vertexArrayID:I

    .line 207
    iget-object v1, p0, Lcom/jme3/scene/Mesh;->elementLengths:[I

    if-eqz v1, :cond_0

    .line 208
    iget-object v1, p0, Lcom/jme3/scene/Mesh;->elementLengths:[I

    invoke-virtual {v1}, [I->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [I

    iput-object v1, v0, Lcom/jme3/scene/Mesh;->elementLengths:[I

    .line 210
    :cond_0
    iget-object v1, p0, Lcom/jme3/scene/Mesh;->modeStart:[I

    if-eqz v1, :cond_1

    .line 211
    iget-object v1, p0, Lcom/jme3/scene/Mesh;->modeStart:[I

    invoke-virtual {v1}, [I->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [I

    iput-object v1, v0, Lcom/jme3/scene/Mesh;->modeStart:[I
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 213
    :cond_1
    return-object v0

    .line 203
    :cond_2
    const/4 v1, 0x0

    goto :goto_0

    .line 214
    :catch_0
    move-exception v0

    .line 215
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .prologue
    .line 75
    invoke-virtual {p0}, Lcom/jme3/scene/Mesh;->clone()Lcom/jme3/scene/Mesh;

    move-result-object v0

    return-object v0
.end method

.method public cloneForAnim()Lcom/jme3/scene/Mesh;
    .locals 8

    .prologue
    .line 269
    invoke-virtual {p0}, Lcom/jme3/scene/Mesh;->clone()Lcom/jme3/scene/Mesh;

    move-result-object v0

    .line 270
    .local v0, clone:Lcom/jme3/scene/Mesh;
    sget-object v7, Lcom/jme3/scene/VertexBuffer$Type;->BindPosePosition:Lcom/jme3/scene/VertexBuffer$Type;

    invoke-virtual {p0, v7}, Lcom/jme3/scene/Mesh;->getBuffer(Lcom/jme3/scene/VertexBuffer$Type;)Lcom/jme3/scene/VertexBuffer;

    move-result-object v7

    if-eqz v7, :cond_0

    .line 271
    sget-object v7, Lcom/jme3/scene/VertexBuffer$Type;->Position:Lcom/jme3/scene/VertexBuffer$Type;

    invoke-virtual {p0, v7}, Lcom/jme3/scene/Mesh;->getBuffer(Lcom/jme3/scene/VertexBuffer$Type;)Lcom/jme3/scene/VertexBuffer;

    move-result-object v5

    .line 274
    .local v5, oldPos:Lcom/jme3/scene/VertexBuffer;
    invoke-virtual {v5}, Lcom/jme3/scene/VertexBuffer;->clone()Lcom/jme3/scene/VertexBuffer;

    move-result-object v2

    .line 275
    .local v2, newPos:Lcom/jme3/scene/VertexBuffer;
    sget-object v7, Lcom/jme3/scene/VertexBuffer$Type;->Position:Lcom/jme3/scene/VertexBuffer$Type;

    invoke-virtual {v0, v7}, Lcom/jme3/scene/Mesh;->clearBuffer(Lcom/jme3/scene/VertexBuffer$Type;)V

    .line 276
    invoke-virtual {v0, v2}, Lcom/jme3/scene/Mesh;->setBuffer(Lcom/jme3/scene/VertexBuffer;)V

    .line 278
    sget-object v7, Lcom/jme3/scene/VertexBuffer$Type;->BindPoseNormal:Lcom/jme3/scene/VertexBuffer$Type;

    invoke-virtual {p0, v7}, Lcom/jme3/scene/Mesh;->getBuffer(Lcom/jme3/scene/VertexBuffer$Type;)Lcom/jme3/scene/VertexBuffer;

    move-result-object v7

    if-eqz v7, :cond_0

    .line 279
    sget-object v7, Lcom/jme3/scene/VertexBuffer$Type;->Normal:Lcom/jme3/scene/VertexBuffer$Type;

    invoke-virtual {p0, v7}, Lcom/jme3/scene/Mesh;->getBuffer(Lcom/jme3/scene/VertexBuffer$Type;)Lcom/jme3/scene/VertexBuffer;

    move-result-object v4

    .line 280
    .local v4, oldNorm:Lcom/jme3/scene/VertexBuffer;
    invoke-virtual {v4}, Lcom/jme3/scene/VertexBuffer;->clone()Lcom/jme3/scene/VertexBuffer;

    move-result-object v1

    .line 281
    .local v1, newNorm:Lcom/jme3/scene/VertexBuffer;
    sget-object v7, Lcom/jme3/scene/VertexBuffer$Type;->Normal:Lcom/jme3/scene/VertexBuffer$Type;

    invoke-virtual {v0, v7}, Lcom/jme3/scene/Mesh;->clearBuffer(Lcom/jme3/scene/VertexBuffer$Type;)V

    .line 282
    invoke-virtual {v0, v1}, Lcom/jme3/scene/Mesh;->setBuffer(Lcom/jme3/scene/VertexBuffer;)V

    .line 284
    sget-object v7, Lcom/jme3/scene/VertexBuffer$Type;->BindPoseTangent:Lcom/jme3/scene/VertexBuffer$Type;

    invoke-virtual {p0, v7}, Lcom/jme3/scene/Mesh;->getBuffer(Lcom/jme3/scene/VertexBuffer$Type;)Lcom/jme3/scene/VertexBuffer;

    move-result-object v7

    if-eqz v7, :cond_0

    .line 285
    sget-object v7, Lcom/jme3/scene/VertexBuffer$Type;->Tangent:Lcom/jme3/scene/VertexBuffer$Type;

    invoke-virtual {p0, v7}, Lcom/jme3/scene/Mesh;->getBuffer(Lcom/jme3/scene/VertexBuffer$Type;)Lcom/jme3/scene/VertexBuffer;

    move-result-object v6

    .line 286
    .local v6, oldTang:Lcom/jme3/scene/VertexBuffer;
    invoke-virtual {v6}, Lcom/jme3/scene/VertexBuffer;->clone()Lcom/jme3/scene/VertexBuffer;

    move-result-object v3

    .line 287
    .local v3, newTang:Lcom/jme3/scene/VertexBuffer;
    sget-object v7, Lcom/jme3/scene/VertexBuffer$Type;->Tangent:Lcom/jme3/scene/VertexBuffer$Type;

    invoke-virtual {v0, v7}, Lcom/jme3/scene/Mesh;->clearBuffer(Lcom/jme3/scene/VertexBuffer$Type;)V

    .line 288
    invoke-virtual {v0, v3}, Lcom/jme3/scene/Mesh;->setBuffer(Lcom/jme3/scene/VertexBuffer;)V

    .line 292
    .end local v1           #newNorm:Lcom/jme3/scene/VertexBuffer;
    .end local v2           #newPos:Lcom/jme3/scene/VertexBuffer;
    .end local v3           #newTang:Lcom/jme3/scene/VertexBuffer;
    .end local v4           #oldNorm:Lcom/jme3/scene/VertexBuffer;
    .end local v5           #oldPos:Lcom/jme3/scene/VertexBuffer;
    .end local v6           #oldTang:Lcom/jme3/scene/VertexBuffer;
    :cond_0
    return-object v0
.end method

.method public collideWith(Lcom/jme3/collision/Collidable;Lcom/jme3/math/Matrix4f;Lcom/jme3/bounding/BoundingVolume;Lcom/jme3/collision/CollisionResults;)I
    .locals 1
    .parameter "other"
    .parameter "worldMatrix"
    .parameter "worldBound"
    .parameter "results"

    .prologue
    .line 852
    iget-object v0, p0, Lcom/jme3/scene/Mesh;->collisionTree:Lcom/jme3/scene/CollisionData;

    if-nez v0, :cond_0

    .line 853
    invoke-virtual {p0}, Lcom/jme3/scene/Mesh;->createCollisionData()V

    .line 856
    :cond_0
    iget-object v0, p0, Lcom/jme3/scene/Mesh;->collisionTree:Lcom/jme3/scene/CollisionData;

    invoke-interface {v0, p1, p2, p3, p4}, Lcom/jme3/scene/CollisionData;->collideWith(Lcom/jme3/collision/Collidable;Lcom/jme3/math/Matrix4f;Lcom/jme3/bounding/BoundingVolume;Lcom/jme3/collision/CollisionResults;)I

    move-result v0

    return v0
.end method

.method public createCollisionData()V
    .locals 1

    .prologue
    .line 837
    new-instance v0, Lcom/jme3/collision/bih/BIHTree;

    invoke-direct {v0, p0}, Lcom/jme3/collision/bih/BIHTree;-><init>(Lcom/jme3/scene/Mesh;)V

    .line 838
    .local v0, tree:Lcom/jme3/collision/bih/BIHTree;
    invoke-virtual {v0}, Lcom/jme3/collision/bih/BIHTree;->construct()V

    .line 839
    iput-object v0, p0, Lcom/jme3/scene/Mesh;->collisionTree:Lcom/jme3/scene/CollisionData;

    .line 840
    return-void
.end method

.method public extractVertexData(Lcom/jme3/scene/Mesh;)V
    .locals 24
    .parameter "other"

    .prologue
    .line 1068
    sget-object v20, Lcom/jme3/scene/VertexBuffer$Type;->Index:Lcom/jme3/scene/VertexBuffer$Type;

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/jme3/scene/Mesh;->getBuffer(Lcom/jme3/scene/VertexBuffer$Type;)Lcom/jme3/scene/VertexBuffer;

    move-result-object v15

    .line 1069
    .local v15, oldIdxBuf:Lcom/jme3/scene/VertexBuffer;
    invoke-virtual/range {p0 .. p0}, Lcom/jme3/scene/Mesh;->getIndexBuffer()Lcom/jme3/scene/mesh/IndexBuffer;

    move-result-object v7

    .line 1070
    .local v7, indexBuf:Lcom/jme3/scene/mesh/IndexBuffer;
    invoke-virtual {v7}, Lcom/jme3/scene/mesh/IndexBuffer;->size()I

    move-result v14

    .line 1072
    .local v14, numIndices:I
    new-instance v17, Lcom/jme3/util/IntMap;

    move-object/from16 v0, v17

    invoke-direct {v0, v14}, Lcom/jme3/util/IntMap;-><init>(I)V

    .line 1073
    .local v17, oldIndicesToNewIndices:Lcom/jme3/util/IntMap;,"Lcom/jme3/util/IntMap<Ljava/lang/Integer;>;"
    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    .line 1074
    .local v11, newIndicesToOldIndices:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    const/4 v9, 0x0

    .line 1076
    .local v9, newIndex:I
    const/4 v5, 0x0

    .local v5, i:I
    :goto_0
    if-ge v5, v14, :cond_1

    .line 1077
    invoke-virtual {v7, v5}, Lcom/jme3/scene/mesh/IndexBuffer;->get(I)I

    move-result v16

    .line 1079
    .local v16, oldIndex:I
    move-object/from16 v0, v17

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/jme3/util/IntMap;->containsKey(I)Z

    move-result v20

    if-nez v20, :cond_0

    .line 1082
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v20

    move-object/from16 v0, v17

    move/from16 v1, v16

    move-object/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Lcom/jme3/util/IntMap;->put(ILjava/lang/Object;)Ljava/lang/Object;

    .line 1083
    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v11, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1086
    add-int/lit8 v9, v9, 0x1

    .line 1076
    :cond_0
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 1091
    .end local v16           #oldIndex:I
    :cond_1
    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v12

    .line 1093
    .local v12, newNumVerts:I
    if-eq v9, v12, :cond_2

    .line 1094
    new-instance v20, Ljava/lang/AssertionError;

    invoke-direct/range {v20 .. v20}, Ljava/lang/AssertionError;-><init>()V

    throw v20

    .line 1101
    :cond_2
    const/high16 v20, 0x1

    move/from16 v0, v20

    if-lt v12, v0, :cond_3

    .line 1102
    new-instance v10, Lcom/jme3/scene/mesh/IndexIntBuffer;

    invoke-static {v14}, Lcom/jme3/util/BufferUtils;->createIntBuffer(I)Ljava/nio/IntBuffer;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-direct {v10, v0}, Lcom/jme3/scene/mesh/IndexIntBuffer;-><init>(Ljava/nio/IntBuffer;)V

    .line 1107
    .local v10, newIndexBuf:Lcom/jme3/scene/mesh/IndexBuffer;
    :goto_1
    const/4 v5, 0x0

    :goto_2
    if-ge v5, v14, :cond_4

    .line 1109
    invoke-virtual {v7, v5}, Lcom/jme3/scene/mesh/IndexBuffer;->get(I)I

    move-result v16

    .line 1110
    .restart local v16       #oldIndex:I
    move-object/from16 v0, v17

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/jme3/util/IntMap;->get(I)Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Ljava/lang/Integer;

    invoke-virtual/range {v20 .. v20}, Ljava/lang/Integer;->intValue()I

    move-result v9

    .line 1112
    invoke-virtual {v10, v5, v9}, Lcom/jme3/scene/mesh/IndexBuffer;->put(II)V

    .line 1107
    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    .line 1104
    .end local v10           #newIndexBuf:Lcom/jme3/scene/mesh/IndexBuffer;
    .end local v16           #oldIndex:I
    :cond_3
    new-instance v10, Lcom/jme3/scene/mesh/IndexShortBuffer;

    invoke-static {v14}, Lcom/jme3/util/BufferUtils;->createShortBuffer(I)Ljava/nio/ShortBuffer;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-direct {v10, v0}, Lcom/jme3/scene/mesh/IndexShortBuffer;-><init>(Ljava/nio/ShortBuffer;)V

    .restart local v10       #newIndexBuf:Lcom/jme3/scene/mesh/IndexBuffer;
    goto :goto_1

    .line 1115
    :cond_4
    new-instance v8, Lcom/jme3/scene/VertexBuffer;

    sget-object v20, Lcom/jme3/scene/VertexBuffer$Type;->Index:Lcom/jme3/scene/VertexBuffer$Type;

    move-object/from16 v0, v20

    invoke-direct {v8, v0}, Lcom/jme3/scene/VertexBuffer;-><init>(Lcom/jme3/scene/VertexBuffer$Type;)V

    .line 1116
    .local v8, newIdxBuf:Lcom/jme3/scene/VertexBuffer;
    invoke-virtual {v15}, Lcom/jme3/scene/VertexBuffer;->getUsage()Lcom/jme3/scene/VertexBuffer$Usage;

    move-result-object v21

    invoke-virtual {v15}, Lcom/jme3/scene/VertexBuffer;->getNumComponents()I

    move-result v22

    instance-of v0, v10, Lcom/jme3/scene/mesh/IndexIntBuffer;

    move/from16 v20, v0

    if-eqz v20, :cond_6

    sget-object v20, Lcom/jme3/scene/VertexBuffer$Format;->UnsignedInt:Lcom/jme3/scene/VertexBuffer$Format;

    :goto_3
    invoke-virtual {v10}, Lcom/jme3/scene/mesh/IndexBuffer;->getBuffer()Ljava/nio/Buffer;

    move-result-object v23

    move-object/from16 v0, v21

    move/from16 v1, v22

    move-object/from16 v2, v20

    move-object/from16 v3, v23

    invoke-virtual {v8, v0, v1, v2, v3}, Lcom/jme3/scene/VertexBuffer;->setupData(Lcom/jme3/scene/VertexBuffer$Usage;ILcom/jme3/scene/VertexBuffer$Format;Ljava/nio/Buffer;)V

    .line 1120
    sget-object v20, Lcom/jme3/scene/VertexBuffer$Type;->Index:Lcom/jme3/scene/VertexBuffer$Type;

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/jme3/scene/Mesh;->clearBuffer(Lcom/jme3/scene/VertexBuffer$Type;)V

    .line 1121
    move-object/from16 v0, p0

    invoke-virtual {v0, v8}, Lcom/jme3/scene/Mesh;->setBuffer(Lcom/jme3/scene/VertexBuffer;)V

    .line 1124
    invoke-virtual/range {p1 .. p1}, Lcom/jme3/scene/Mesh;->getBufferList()Lcom/jme3/util/SafeArrayList;

    move-result-object v19

    .line 1125
    .local v19, oldVertexData:Lcom/jme3/util/SafeArrayList;,"Lcom/jme3/util/SafeArrayList<Lcom/jme3/scene/VertexBuffer;>;"
    invoke-virtual/range {v19 .. v19}, Lcom/jme3/util/SafeArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v6

    .local v6, i$:Ljava/util/Iterator;
    :cond_5
    :goto_4
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v20

    if-eqz v20, :cond_8

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Lcom/jme3/scene/VertexBuffer;

    .line 1126
    .local v18, oldVb:Lcom/jme3/scene/VertexBuffer;
    invoke-virtual/range {v18 .. v18}, Lcom/jme3/scene/VertexBuffer;->getBufferType()Lcom/jme3/scene/VertexBuffer$Type;

    move-result-object v20

    sget-object v21, Lcom/jme3/scene/VertexBuffer$Type;->Index:Lcom/jme3/scene/VertexBuffer$Type;

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    if-eq v0, v1, :cond_5

    .line 1133
    invoke-virtual/range {v18 .. v18}, Lcom/jme3/scene/VertexBuffer;->getFormat()Lcom/jme3/scene/VertexBuffer$Format;

    move-result-object v20

    invoke-virtual/range {v18 .. v18}, Lcom/jme3/scene/VertexBuffer;->getNumComponents()I

    move-result v21

    move-object/from16 v0, v20

    move/from16 v1, v21

    invoke-static {v0, v1, v12}, Lcom/jme3/scene/VertexBuffer;->createBuffer(Lcom/jme3/scene/VertexBuffer$Format;II)Ljava/nio/Buffer;

    move-result-object v4

    .line 1135
    .local v4, buffer:Ljava/nio/Buffer;
    new-instance v13, Lcom/jme3/scene/VertexBuffer;

    invoke-virtual/range {v18 .. v18}, Lcom/jme3/scene/VertexBuffer;->getBufferType()Lcom/jme3/scene/VertexBuffer$Type;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-direct {v13, v0}, Lcom/jme3/scene/VertexBuffer;-><init>(Lcom/jme3/scene/VertexBuffer$Type;)V

    .line 1136
    .local v13, newVb:Lcom/jme3/scene/VertexBuffer;
    invoke-virtual/range {v18 .. v18}, Lcom/jme3/scene/VertexBuffer;->isNormalized()Z

    move-result v20

    move/from16 v0, v20

    invoke-virtual {v13, v0}, Lcom/jme3/scene/VertexBuffer;->setNormalized(Z)V

    .line 1137
    invoke-virtual/range {v18 .. v18}, Lcom/jme3/scene/VertexBuffer;->getUsage()Lcom/jme3/scene/VertexBuffer$Usage;

    move-result-object v20

    invoke-virtual/range {v18 .. v18}, Lcom/jme3/scene/VertexBuffer;->getNumComponents()I

    move-result v21

    invoke-virtual/range {v18 .. v18}, Lcom/jme3/scene/VertexBuffer;->getFormat()Lcom/jme3/scene/VertexBuffer$Format;

    move-result-object v22

    move-object/from16 v0, v20

    move/from16 v1, v21

    move-object/from16 v2, v22

    invoke-virtual {v13, v0, v1, v2, v4}, Lcom/jme3/scene/VertexBuffer;->setupData(Lcom/jme3/scene/VertexBuffer$Usage;ILcom/jme3/scene/VertexBuffer$Format;Ljava/nio/Buffer;)V

    .line 1140
    const/4 v5, 0x0

    :goto_5
    if-ge v5, v12, :cond_7

    .line 1141
    invoke-virtual {v11, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Ljava/lang/Integer;

    invoke-virtual/range {v20 .. v20}, Ljava/lang/Integer;->intValue()I

    move-result v16

    .line 1145
    .restart local v16       #oldIndex:I
    move-object/from16 v0, v18

    move/from16 v1, v16

    invoke-virtual {v0, v1, v13, v5}, Lcom/jme3/scene/VertexBuffer;->copyElement(ILcom/jme3/scene/VertexBuffer;I)V

    .line 1140
    add-int/lit8 v5, v5, 0x1

    goto :goto_5

    .line 1116
    .end local v4           #buffer:Ljava/nio/Buffer;
    .end local v6           #i$:Ljava/util/Iterator;
    .end local v13           #newVb:Lcom/jme3/scene/VertexBuffer;
    .end local v16           #oldIndex:I
    .end local v18           #oldVb:Lcom/jme3/scene/VertexBuffer;
    .end local v19           #oldVertexData:Lcom/jme3/util/SafeArrayList;,"Lcom/jme3/util/SafeArrayList<Lcom/jme3/scene/VertexBuffer;>;"
    :cond_6
    sget-object v20, Lcom/jme3/scene/VertexBuffer$Format;->UnsignedShort:Lcom/jme3/scene/VertexBuffer$Format;

    goto/16 :goto_3

    .line 1149
    .restart local v4       #buffer:Ljava/nio/Buffer;
    .restart local v6       #i$:Ljava/util/Iterator;
    .restart local v13       #newVb:Lcom/jme3/scene/VertexBuffer;
    .restart local v18       #oldVb:Lcom/jme3/scene/VertexBuffer;
    .restart local v19       #oldVertexData:Lcom/jme3/util/SafeArrayList;,"Lcom/jme3/util/SafeArrayList<Lcom/jme3/scene/VertexBuffer;>;"
    :cond_7
    invoke-virtual {v13}, Lcom/jme3/scene/VertexBuffer;->getBufferType()Lcom/jme3/scene/VertexBuffer$Type;

    move-result-object v20

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/jme3/scene/Mesh;->clearBuffer(Lcom/jme3/scene/VertexBuffer$Type;)V

    .line 1150
    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/jme3/scene/Mesh;->setBuffer(Lcom/jme3/scene/VertexBuffer;)V

    goto :goto_4

    .line 1154
    .end local v4           #buffer:Ljava/nio/Buffer;
    .end local v13           #newVb:Lcom/jme3/scene/VertexBuffer;
    .end local v18           #oldVb:Lcom/jme3/scene/VertexBuffer;
    :cond_8
    invoke-virtual/range {p1 .. p1}, Lcom/jme3/scene/Mesh;->getMaxNumWeights()I

    move-result v20

    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/jme3/scene/Mesh;->setMaxNumWeights(I)V

    .line 1157
    invoke-virtual/range {p0 .. p0}, Lcom/jme3/scene/Mesh;->updateCounts()V

    .line 1158
    invoke-virtual/range {p0 .. p0}, Lcom/jme3/scene/Mesh;->updateBound()V

    .line 1159
    return-void
.end method

.method public generateBindPose(Z)V
    .locals 10
    .parameter "forSoftwareAnim"

    .prologue
    const/4 v9, 0x3

    .line 306
    if-eqz p1, :cond_0

    .line 307
    sget-object v6, Lcom/jme3/scene/VertexBuffer$Type;->Position:Lcom/jme3/scene/VertexBuffer$Type;

    invoke-virtual {p0, v6}, Lcom/jme3/scene/Mesh;->getBuffer(Lcom/jme3/scene/VertexBuffer$Type;)Lcom/jme3/scene/VertexBuffer;

    move-result-object v4

    .line 308
    .local v4, pos:Lcom/jme3/scene/VertexBuffer;
    if-eqz v4, :cond_0

    sget-object v6, Lcom/jme3/scene/VertexBuffer$Type;->BoneIndex:Lcom/jme3/scene/VertexBuffer$Type;

    invoke-virtual {p0, v6}, Lcom/jme3/scene/Mesh;->getBuffer(Lcom/jme3/scene/VertexBuffer$Type;)Lcom/jme3/scene/VertexBuffer;

    move-result-object v6

    if-nez v6, :cond_1

    .line 347
    .end local v4           #pos:Lcom/jme3/scene/VertexBuffer;
    :cond_0
    :goto_0
    return-void

    .line 314
    .restart local v4       #pos:Lcom/jme3/scene/VertexBuffer;
    :cond_1
    new-instance v1, Lcom/jme3/scene/VertexBuffer;

    sget-object v6, Lcom/jme3/scene/VertexBuffer$Type;->BindPosePosition:Lcom/jme3/scene/VertexBuffer$Type;

    invoke-direct {v1, v6}, Lcom/jme3/scene/VertexBuffer;-><init>(Lcom/jme3/scene/VertexBuffer$Type;)V

    .line 315
    .local v1, bindPos:Lcom/jme3/scene/VertexBuffer;
    sget-object v6, Lcom/jme3/scene/VertexBuffer$Usage;->CpuOnly:Lcom/jme3/scene/VertexBuffer$Usage;

    sget-object v7, Lcom/jme3/scene/VertexBuffer$Format;->Float:Lcom/jme3/scene/VertexBuffer$Format;

    invoke-virtual {v4}, Lcom/jme3/scene/VertexBuffer;->getData()Ljava/nio/Buffer;

    move-result-object v8

    invoke-static {v8}, Lcom/jme3/util/BufferUtils;->clone(Ljava/nio/Buffer;)Ljava/nio/Buffer;

    move-result-object v8

    invoke-virtual {v1, v6, v9, v7, v8}, Lcom/jme3/scene/VertexBuffer;->setupData(Lcom/jme3/scene/VertexBuffer$Usage;ILcom/jme3/scene/VertexBuffer$Format;Ljava/nio/Buffer;)V

    .line 319
    invoke-virtual {p0, v1}, Lcom/jme3/scene/Mesh;->setBuffer(Lcom/jme3/scene/VertexBuffer;)V

    .line 323
    sget-object v6, Lcom/jme3/scene/VertexBuffer$Usage;->Stream:Lcom/jme3/scene/VertexBuffer$Usage;

    invoke-virtual {v4, v6}, Lcom/jme3/scene/VertexBuffer;->setUsage(Lcom/jme3/scene/VertexBuffer$Usage;)V

    .line 325
    sget-object v6, Lcom/jme3/scene/VertexBuffer$Type;->Normal:Lcom/jme3/scene/VertexBuffer$Type;

    invoke-virtual {p0, v6}, Lcom/jme3/scene/Mesh;->getBuffer(Lcom/jme3/scene/VertexBuffer$Type;)Lcom/jme3/scene/VertexBuffer;

    move-result-object v3

    .line 326
    .local v3, norm:Lcom/jme3/scene/VertexBuffer;
    if-eqz v3, :cond_2

    .line 327
    new-instance v0, Lcom/jme3/scene/VertexBuffer;

    sget-object v6, Lcom/jme3/scene/VertexBuffer$Type;->BindPoseNormal:Lcom/jme3/scene/VertexBuffer$Type;

    invoke-direct {v0, v6}, Lcom/jme3/scene/VertexBuffer;-><init>(Lcom/jme3/scene/VertexBuffer$Type;)V

    .line 328
    .local v0, bindNorm:Lcom/jme3/scene/VertexBuffer;
    sget-object v6, Lcom/jme3/scene/VertexBuffer$Usage;->CpuOnly:Lcom/jme3/scene/VertexBuffer$Usage;

    sget-object v7, Lcom/jme3/scene/VertexBuffer$Format;->Float:Lcom/jme3/scene/VertexBuffer$Format;

    invoke-virtual {v3}, Lcom/jme3/scene/VertexBuffer;->getData()Ljava/nio/Buffer;

    move-result-object v8

    invoke-static {v8}, Lcom/jme3/util/BufferUtils;->clone(Ljava/nio/Buffer;)Ljava/nio/Buffer;

    move-result-object v8

    invoke-virtual {v0, v6, v9, v7, v8}, Lcom/jme3/scene/VertexBuffer;->setupData(Lcom/jme3/scene/VertexBuffer$Usage;ILcom/jme3/scene/VertexBuffer$Format;Ljava/nio/Buffer;)V

    .line 332
    invoke-virtual {p0, v0}, Lcom/jme3/scene/Mesh;->setBuffer(Lcom/jme3/scene/VertexBuffer;)V

    .line 333
    sget-object v6, Lcom/jme3/scene/VertexBuffer$Usage;->Stream:Lcom/jme3/scene/VertexBuffer$Usage;

    invoke-virtual {v3, v6}, Lcom/jme3/scene/VertexBuffer;->setUsage(Lcom/jme3/scene/VertexBuffer$Usage;)V

    .line 336
    .end local v0           #bindNorm:Lcom/jme3/scene/VertexBuffer;
    :cond_2
    sget-object v6, Lcom/jme3/scene/VertexBuffer$Type;->Tangent:Lcom/jme3/scene/VertexBuffer$Type;

    invoke-virtual {p0, v6}, Lcom/jme3/scene/Mesh;->getBuffer(Lcom/jme3/scene/VertexBuffer$Type;)Lcom/jme3/scene/VertexBuffer;

    move-result-object v5

    .line 337
    .local v5, tangents:Lcom/jme3/scene/VertexBuffer;
    if-eqz v5, :cond_0

    .line 338
    new-instance v2, Lcom/jme3/scene/VertexBuffer;

    sget-object v6, Lcom/jme3/scene/VertexBuffer$Type;->BindPoseTangent:Lcom/jme3/scene/VertexBuffer$Type;

    invoke-direct {v2, v6}, Lcom/jme3/scene/VertexBuffer;-><init>(Lcom/jme3/scene/VertexBuffer$Type;)V

    .line 339
    .local v2, bindTangents:Lcom/jme3/scene/VertexBuffer;
    sget-object v6, Lcom/jme3/scene/VertexBuffer$Usage;->CpuOnly:Lcom/jme3/scene/VertexBuffer$Usage;

    const/4 v7, 0x4

    sget-object v8, Lcom/jme3/scene/VertexBuffer$Format;->Float:Lcom/jme3/scene/VertexBuffer$Format;

    invoke-virtual {v5}, Lcom/jme3/scene/VertexBuffer;->getData()Ljava/nio/Buffer;

    move-result-object v9

    invoke-static {v9}, Lcom/jme3/util/BufferUtils;->clone(Ljava/nio/Buffer;)Ljava/nio/Buffer;

    move-result-object v9

    invoke-virtual {v2, v6, v7, v8, v9}, Lcom/jme3/scene/VertexBuffer;->setupData(Lcom/jme3/scene/VertexBuffer$Usage;ILcom/jme3/scene/VertexBuffer$Format;Ljava/nio/Buffer;)V

    .line 343
    invoke-virtual {p0, v2}, Lcom/jme3/scene/Mesh;->setBuffer(Lcom/jme3/scene/VertexBuffer;)V

    .line 344
    sget-object v6, Lcom/jme3/scene/VertexBuffer$Usage;->Stream:Lcom/jme3/scene/VertexBuffer$Usage;

    invoke-virtual {v5, v6}, Lcom/jme3/scene/VertexBuffer;->setUsage(Lcom/jme3/scene/VertexBuffer$Usage;)V

    goto :goto_0
.end method

.method public getBound()Lcom/jme3/bounding/BoundingVolume;
    .locals 1

    .prologue
    .line 1222
    iget-object v0, p0, Lcom/jme3/scene/Mesh;->meshBound:Lcom/jme3/bounding/BoundingVolume;

    return-object v0
.end method

.method public getBuffer(Lcom/jme3/scene/VertexBuffer$Type;)Lcom/jme3/scene/VertexBuffer;
    .locals 2
    .parameter "type"

    .prologue
    .line 969
    iget-object v0, p0, Lcom/jme3/scene/Mesh;->buffers:Lcom/jme3/util/IntMap;

    invoke-virtual {p1}, Lcom/jme3/scene/VertexBuffer$Type;->ordinal()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/jme3/util/IntMap;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/jme3/scene/VertexBuffer;

    return-object v0
.end method

.method public getBufferList()Lcom/jme3/util/SafeArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/jme3/util/SafeArrayList",
            "<",
            "Lcom/jme3/scene/VertexBuffer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1258
    iget-object v0, p0, Lcom/jme3/scene/Mesh;->buffersList:Lcom/jme3/util/SafeArrayList;

    return-object v0
.end method

.method public getElementLengths()[I
    .locals 1

    .prologue
    .line 414
    iget-object v0, p0, Lcom/jme3/scene/Mesh;->elementLengths:[I

    return-object v0
.end method

.method public getFloatBuffer(Lcom/jme3/scene/VertexBuffer$Type;)Ljava/nio/FloatBuffer;
    .locals 2
    .parameter "type"

    .prologue
    .line 980
    invoke-virtual {p0, p1}, Lcom/jme3/scene/Mesh;->getBuffer(Lcom/jme3/scene/VertexBuffer$Type;)Lcom/jme3/scene/VertexBuffer;

    move-result-object v0

    .line 981
    .local v0, vb:Lcom/jme3/scene/VertexBuffer;
    if-nez v0, :cond_0

    .line 982
    const/4 v1, 0x0

    .line 984
    :goto_0
    return-object v1

    :cond_0
    invoke-virtual {v0}, Lcom/jme3/scene/VertexBuffer;->getData()Ljava/nio/Buffer;

    move-result-object v1

    check-cast v1, Ljava/nio/FloatBuffer;

    goto :goto_0
.end method

.method public getIndexBuffer()Lcom/jme3/scene/mesh/IndexBuffer;
    .locals 5

    .prologue
    .line 1038
    sget-object v2, Lcom/jme3/scene/VertexBuffer$Type;->Index:Lcom/jme3/scene/VertexBuffer$Type;

    invoke-virtual {p0, v2}, Lcom/jme3/scene/Mesh;->getBuffer(Lcom/jme3/scene/VertexBuffer$Type;)Lcom/jme3/scene/VertexBuffer;

    move-result-object v1

    .line 1039
    .local v1, vb:Lcom/jme3/scene/VertexBuffer;
    if-nez v1, :cond_0

    .line 1040
    const/4 v2, 0x0

    .line 1048
    :goto_0
    return-object v2

    .line 1042
    :cond_0
    invoke-virtual {v1}, Lcom/jme3/scene/VertexBuffer;->getData()Ljava/nio/Buffer;

    move-result-object v0

    .line 1043
    .local v0, buf:Ljava/nio/Buffer;
    instance-of v2, v0, Ljava/nio/ByteBuffer;

    if-eqz v2, :cond_1

    .line 1044
    new-instance v2, Lcom/jme3/scene/mesh/IndexByteBuffer;

    check-cast v0, Ljava/nio/ByteBuffer;

    .end local v0           #buf:Ljava/nio/Buffer;
    invoke-direct {v2, v0}, Lcom/jme3/scene/mesh/IndexByteBuffer;-><init>(Ljava/nio/ByteBuffer;)V

    goto :goto_0

    .line 1045
    .restart local v0       #buf:Ljava/nio/Buffer;
    :cond_1
    instance-of v2, v0, Ljava/nio/ShortBuffer;

    if-eqz v2, :cond_2

    .line 1046
    new-instance v2, Lcom/jme3/scene/mesh/IndexShortBuffer;

    check-cast v0, Ljava/nio/ShortBuffer;

    .end local v0           #buf:Ljava/nio/Buffer;
    invoke-direct {v2, v0}, Lcom/jme3/scene/mesh/IndexShortBuffer;-><init>(Ljava/nio/ShortBuffer;)V

    goto :goto_0

    .line 1047
    .restart local v0       #buf:Ljava/nio/Buffer;
    :cond_2
    instance-of v2, v0, Ljava/nio/IntBuffer;

    if-eqz v2, :cond_3

    .line 1048
    new-instance v2, Lcom/jme3/scene/mesh/IndexIntBuffer;

    check-cast v0, Ljava/nio/IntBuffer;

    .end local v0           #buf:Ljava/nio/Buffer;
    invoke-direct {v2, v0}, Lcom/jme3/scene/mesh/IndexIntBuffer;-><init>(Ljava/nio/IntBuffer;)V

    goto :goto_0

    .line 1050
    .restart local v0       #buf:Ljava/nio/Buffer;
    :cond_3
    new-instance v2, Ljava/lang/UnsupportedOperationException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Index buffer type unsupported: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public getLineWidth()F
    .locals 1

    .prologue
    .line 520
    iget v0, p0, Lcom/jme3/scene/Mesh;->lineWidth:F

    return v0
.end method

.method public getLodLevel(I)Lcom/jme3/scene/VertexBuffer;
    .locals 1
    .parameter "lod"

    .prologue
    .line 405
    iget-object v0, p0, Lcom/jme3/scene/Mesh;->lodLevels:[Lcom/jme3/scene/VertexBuffer;

    aget-object v0, v0, p1

    return-object v0
.end method

.method public getMaxNumWeights()I
    .locals 1

    .prologue
    .line 475
    iget v0, p0, Lcom/jme3/scene/Mesh;->maxNumWeights:I

    return v0
.end method

.method public getMode()Lcom/jme3/scene/Mesh$Mode;
    .locals 1

    .prologue
    .line 452
    iget-object v0, p0, Lcom/jme3/scene/Mesh;->mode:Lcom/jme3/scene/Mesh$Mode;

    return-object v0
.end method

.method public getModeStart()[I
    .locals 1

    .prologue
    .line 432
    iget-object v0, p0, Lcom/jme3/scene/Mesh;->modeStart:[I

    return-object v0
.end method

.method public getNumLodLevels()I
    .locals 1

    .prologue
    .line 389
    iget-object v0, p0, Lcom/jme3/scene/Mesh;->lodLevels:[Lcom/jme3/scene/VertexBuffer;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/jme3/scene/Mesh;->lodLevels:[Lcom/jme3/scene/VertexBuffer;

    array-length v0, v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getPointSize()F
    .locals 1

    .prologue
    .line 497
    iget v0, p0, Lcom/jme3/scene/Mesh;->pointSize:F

    return v0
.end method

.method public getTriangleCount()I
    .locals 1

    .prologue
    .line 731
    iget v0, p0, Lcom/jme3/scene/Mesh;->elementCount:I

    return v0
.end method

.method public getTriangleCount(I)I
    .locals 3
    .parameter "lod"

    .prologue
    .line 706
    iget-object v0, p0, Lcom/jme3/scene/Mesh;->lodLevels:[Lcom/jme3/scene/VertexBuffer;

    if-eqz v0, :cond_2

    .line 707
    if-gez p1, :cond_0

    .line 708
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "LOD level cannot be < 0"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 710
    :cond_0
    iget-object v0, p0, Lcom/jme3/scene/Mesh;->lodLevels:[Lcom/jme3/scene/VertexBuffer;

    array-length v0, v0

    if-lt p1, v0, :cond_1

    .line 711
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "LOD level "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " does not exist!"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 713
    :cond_1
    iget-object v0, p0, Lcom/jme3/scene/Mesh;->lodLevels:[Lcom/jme3/scene/VertexBuffer;

    aget-object v0, v0, p1

    invoke-virtual {v0}, Lcom/jme3/scene/VertexBuffer;->getData()Ljava/nio/Buffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/nio/Buffer;->capacity()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/jme3/scene/Mesh;->computeNumElements(I)I

    move-result v0

    .line 715
    :goto_0
    return v0

    .line 714
    :cond_2
    if-nez p1, :cond_3

    .line 715
    iget v0, p0, Lcom/jme3/scene/Mesh;->elementCount:I

    goto :goto_0

    .line 717
    :cond_3
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "There are no LOD levels on the mesh!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getVertexCount()I
    .locals 1

    .prologue
    .line 742
    iget v0, p0, Lcom/jme3/scene/Mesh;->vertCount:I

    return v0
.end method

.method public prepareForAnim(Z)V
    .locals 7
    .parameter "forSoftwareAnim"

    .prologue
    .line 356
    if-eqz p1, :cond_0

    .line 358
    sget-object v6, Lcom/jme3/scene/VertexBuffer$Type;->BoneIndex:Lcom/jme3/scene/VertexBuffer$Type;

    invoke-virtual {p0, v6}, Lcom/jme3/scene/Mesh;->getBuffer(Lcom/jme3/scene/VertexBuffer$Type;)Lcom/jme3/scene/VertexBuffer;

    move-result-object v2

    .line 359
    .local v2, indices:Lcom/jme3/scene/VertexBuffer;
    invoke-virtual {v2}, Lcom/jme3/scene/VertexBuffer;->getData()Ljava/nio/Buffer;

    move-result-object v3

    check-cast v3, Ljava/nio/ByteBuffer;

    .line 360
    .local v3, originalIndex:Ljava/nio/ByteBuffer;
    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v6

    invoke-static {v6}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 361
    .local v0, arrayIndex:Ljava/nio/ByteBuffer;
    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    .line 362
    invoke-virtual {v0, v3}, Ljava/nio/ByteBuffer;->put(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    .line 363
    invoke-virtual {v2, v0}, Lcom/jme3/scene/VertexBuffer;->updateData(Ljava/nio/Buffer;)V

    .line 366
    sget-object v6, Lcom/jme3/scene/VertexBuffer$Type;->BoneWeight:Lcom/jme3/scene/VertexBuffer$Type;

    invoke-virtual {p0, v6}, Lcom/jme3/scene/Mesh;->getBuffer(Lcom/jme3/scene/VertexBuffer$Type;)Lcom/jme3/scene/VertexBuffer;

    move-result-object v5

    .line 367
    .local v5, weights:Lcom/jme3/scene/VertexBuffer;
    invoke-virtual {v5}, Lcom/jme3/scene/VertexBuffer;->getData()Ljava/nio/Buffer;

    move-result-object v4

    check-cast v4, Ljava/nio/FloatBuffer;

    .line 368
    .local v4, originalWeight:Ljava/nio/FloatBuffer;
    invoke-virtual {v4}, Ljava/nio/FloatBuffer;->capacity()I

    move-result v6

    invoke-static {v6}, Ljava/nio/FloatBuffer;->allocate(I)Ljava/nio/FloatBuffer;

    move-result-object v1

    .line 369
    .local v1, arrayWeight:Ljava/nio/FloatBuffer;
    invoke-virtual {v4}, Ljava/nio/FloatBuffer;->clear()Ljava/nio/Buffer;

    .line 370
    invoke-virtual {v1, v4}, Ljava/nio/FloatBuffer;->put(Ljava/nio/FloatBuffer;)Ljava/nio/FloatBuffer;

    .line 371
    invoke-virtual {v5, v1}, Lcom/jme3/scene/VertexBuffer;->updateData(Ljava/nio/Buffer;)V

    .line 373
    .end local v0           #arrayIndex:Ljava/nio/ByteBuffer;
    .end local v1           #arrayWeight:Ljava/nio/FloatBuffer;
    .end local v2           #indices:Lcom/jme3/scene/VertexBuffer;
    .end local v3           #originalIndex:Ljava/nio/ByteBuffer;
    .end local v4           #originalWeight:Ljava/nio/FloatBuffer;
    .end local v5           #weights:Lcom/jme3/scene/VertexBuffer;
    :cond_0
    return-void
.end method

.method public read(Lcom/jme3/export/JmeImporter;)V
    .locals 6
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v5, 0x0

    const/4 v2, -0x1

    const/4 v4, 0x0

    .line 1286
    invoke-interface {p1, p0}, Lcom/jme3/export/JmeImporter;->getCapsule(Lcom/jme3/export/Savable;)Lcom/jme3/export/InputCapsule;

    move-result-object v1

    .line 1287
    const-string v0, "modelBound"

    invoke-interface {v1, v0, v4}, Lcom/jme3/export/InputCapsule;->readSavable(Ljava/lang/String;Lcom/jme3/export/Savable;)Lcom/jme3/export/Savable;

    move-result-object v0

    check-cast v0, Lcom/jme3/bounding/BoundingVolume;

    iput-object v0, p0, Lcom/jme3/scene/Mesh;->meshBound:Lcom/jme3/bounding/BoundingVolume;

    .line 1288
    const-string v0, "vertCount"

    invoke-interface {v1, v0, v2}, Lcom/jme3/export/InputCapsule;->readInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/jme3/scene/Mesh;->vertCount:I

    .line 1289
    const-string v0, "elementCount"

    invoke-interface {v1, v0, v2}, Lcom/jme3/export/InputCapsule;->readInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/jme3/scene/Mesh;->elementCount:I

    .line 1290
    const-string v0, "max_num_weights"

    invoke-interface {v1, v0, v2}, Lcom/jme3/export/InputCapsule;->readInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/jme3/scene/Mesh;->maxNumWeights:I

    .line 1291
    const-string v0, "mode"

    const-class v2, Lcom/jme3/scene/Mesh$Mode;

    sget-object v3, Lcom/jme3/scene/Mesh$Mode;->Triangles:Lcom/jme3/scene/Mesh$Mode;

    invoke-interface {v1, v0, v2, v3}, Lcom/jme3/export/InputCapsule;->readEnum(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Enum;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/jme3/scene/Mesh$Mode;

    iput-object v0, p0, Lcom/jme3/scene/Mesh;->mode:Lcom/jme3/scene/Mesh$Mode;

    .line 1292
    const-string v0, "elementLengths"

    invoke-interface {v1, v0, v4}, Lcom/jme3/export/InputCapsule;->readIntArray(Ljava/lang/String;[I)[I

    move-result-object v0

    iput-object v0, p0, Lcom/jme3/scene/Mesh;->elementLengths:[I

    .line 1293
    const-string v0, "modeStart"

    invoke-interface {v1, v0, v4}, Lcom/jme3/export/InputCapsule;->readIntArray(Ljava/lang/String;[I)[I

    move-result-object v0

    iput-object v0, p0, Lcom/jme3/scene/Mesh;->modeStart:[I

    .line 1294
    const-string v0, "collisionTree"

    invoke-interface {v1, v0, v4}, Lcom/jme3/export/InputCapsule;->readSavable(Ljava/lang/String;Lcom/jme3/export/Savable;)Lcom/jme3/export/Savable;

    move-result-object v0

    check-cast v0, Lcom/jme3/collision/bih/BIHTree;

    iput-object v0, p0, Lcom/jme3/scene/Mesh;->collisionTree:Lcom/jme3/scene/CollisionData;

    .line 1295
    const-string v0, "elementLengths"

    invoke-interface {v1, v0, v4}, Lcom/jme3/export/InputCapsule;->readIntArray(Ljava/lang/String;[I)[I

    move-result-object v0

    iput-object v0, p0, Lcom/jme3/scene/Mesh;->elementLengths:[I

    .line 1296
    const-string v0, "modeStart"

    invoke-interface {v1, v0, v4}, Lcom/jme3/export/InputCapsule;->readIntArray(Ljava/lang/String;[I)[I

    move-result-object v0

    iput-object v0, p0, Lcom/jme3/scene/Mesh;->modeStart:[I

    .line 1297
    const-string v0, "pointSize"

    const/high16 v2, 0x3f80

    invoke-interface {v1, v0, v2}, Lcom/jme3/export/InputCapsule;->readFloat(Ljava/lang/String;F)F

    move-result v0

    iput v0, p0, Lcom/jme3/scene/Mesh;->pointSize:F

    .line 1300
    const-string v0, "buffers"

    invoke-interface {v1, v0, v4}, Lcom/jme3/export/InputCapsule;->readIntSavableMap(Ljava/lang/String;Lcom/jme3/util/IntMap;)Lcom/jme3/util/IntMap;

    move-result-object v0

    iput-object v0, p0, Lcom/jme3/scene/Mesh;->buffers:Lcom/jme3/util/IntMap;

    .line 1301
    iget-object v0, p0, Lcom/jme3/scene/Mesh;->buffers:Lcom/jme3/util/IntMap;

    invoke-virtual {v0}, Lcom/jme3/util/IntMap;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/jme3/util/IntMap$Entry;

    .line 1302
    iget-object v3, p0, Lcom/jme3/scene/Mesh;->buffersList:Lcom/jme3/util/SafeArrayList;

    invoke-virtual {v0}, Lcom/jme3/util/IntMap$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v3, v0}, Lcom/jme3/util/SafeArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 1305
    :cond_0
    const-string v0, "lodLevels"

    invoke-interface {v1, v0, v4}, Lcom/jme3/export/InputCapsule;->readSavableArray(Ljava/lang/String;[Lcom/jme3/export/Savable;)[Lcom/jme3/export/Savable;

    move-result-object v0

    .line 1306
    if-eqz v0, :cond_1

    .line 1307
    array-length v1, v0

    new-array v1, v1, [Lcom/jme3/scene/VertexBuffer;

    iput-object v1, p0, Lcom/jme3/scene/Mesh;->lodLevels:[Lcom/jme3/scene/VertexBuffer;

    .line 1308
    iget-object v1, p0, Lcom/jme3/scene/Mesh;->lodLevels:[Lcom/jme3/scene/VertexBuffer;

    iget-object v2, p0, Lcom/jme3/scene/Mesh;->lodLevels:[Lcom/jme3/scene/VertexBuffer;

    array-length v2, v2

    invoke-static {v0, v5, v1, v5, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1310
    :cond_1
    return-void
.end method

.method public setBuffer(Lcom/jme3/scene/VertexBuffer$Type;ILcom/jme3/scene/VertexBuffer$Format;Ljava/nio/Buffer;)V
    .locals 3
    .parameter "type"
    .parameter "components"
    .parameter "format"
    .parameter "buf"

    .prologue
    .line 903
    iget-object v1, p0, Lcom/jme3/scene/Mesh;->buffers:Lcom/jme3/util/IntMap;

    invoke-virtual {p1}, Lcom/jme3/scene/VertexBuffer$Type;->ordinal()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/jme3/util/IntMap;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/jme3/scene/VertexBuffer;

    .line 904
    .local v0, vb:Lcom/jme3/scene/VertexBuffer;
    if-nez v0, :cond_0

    .line 905
    new-instance v0, Lcom/jme3/scene/VertexBuffer;

    .end local v0           #vb:Lcom/jme3/scene/VertexBuffer;
    invoke-direct {v0, p1}, Lcom/jme3/scene/VertexBuffer;-><init>(Lcom/jme3/scene/VertexBuffer$Type;)V

    .line 906
    .restart local v0       #vb:Lcom/jme3/scene/VertexBuffer;
    sget-object v1, Lcom/jme3/scene/VertexBuffer$Usage;->Dynamic:Lcom/jme3/scene/VertexBuffer$Usage;

    invoke-virtual {v0, v1, p2, p3, p4}, Lcom/jme3/scene/VertexBuffer;->setupData(Lcom/jme3/scene/VertexBuffer$Usage;ILcom/jme3/scene/VertexBuffer$Format;Ljava/nio/Buffer;)V

    .line 907
    invoke-virtual {p0, v0}, Lcom/jme3/scene/Mesh;->setBuffer(Lcom/jme3/scene/VertexBuffer;)V

    .line 916
    :goto_0
    return-void

    .line 909
    :cond_0
    invoke-virtual {v0}, Lcom/jme3/scene/VertexBuffer;->getNumComponents()I

    move-result v1

    if-ne v1, p2, :cond_1

    invoke-virtual {v0}, Lcom/jme3/scene/VertexBuffer;->getFormat()Lcom/jme3/scene/VertexBuffer$Format;

    move-result-object v1

    if-eq v1, p3, :cond_2

    .line 910
    :cond_1
    new-instance v1, Ljava/lang/UnsupportedOperationException;

    const-string v2, "The buffer already set is incompatible with the given parameters"

    invoke-direct {v1, v2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 913
    :cond_2
    invoke-virtual {v0, p4}, Lcom/jme3/scene/VertexBuffer;->updateData(Ljava/nio/Buffer;)V

    .line 914
    invoke-virtual {p0}, Lcom/jme3/scene/Mesh;->updateCounts()V

    goto :goto_0
.end method

.method public setBuffer(Lcom/jme3/scene/VertexBuffer$Type;ILjava/nio/FloatBuffer;)V
    .locals 1
    .parameter "type"
    .parameter "components"
    .parameter "buf"

    .prologue
    .line 930
    sget-object v0, Lcom/jme3/scene/VertexBuffer$Format;->Float:Lcom/jme3/scene/VertexBuffer$Format;

    invoke-virtual {p0, p1, p2, v0, p3}, Lcom/jme3/scene/Mesh;->setBuffer(Lcom/jme3/scene/VertexBuffer$Type;ILcom/jme3/scene/VertexBuffer$Format;Ljava/nio/Buffer;)V

    .line 931
    return-void
.end method

.method public setBuffer(Lcom/jme3/scene/VertexBuffer$Type;ILjava/nio/IntBuffer;)V
    .locals 1
    .parameter "type"
    .parameter "components"
    .parameter "buf"

    .prologue
    .line 938
    sget-object v0, Lcom/jme3/scene/VertexBuffer$Format;->UnsignedInt:Lcom/jme3/scene/VertexBuffer$Format;

    invoke-virtual {p0, p1, p2, v0, p3}, Lcom/jme3/scene/Mesh;->setBuffer(Lcom/jme3/scene/VertexBuffer$Type;ILcom/jme3/scene/VertexBuffer$Format;Ljava/nio/Buffer;)V

    .line 939
    return-void
.end method

.method public setBuffer(Lcom/jme3/scene/VertexBuffer$Type;ILjava/nio/ShortBuffer;)V
    .locals 1
    .parameter "type"
    .parameter "components"
    .parameter "buf"

    .prologue
    .line 946
    sget-object v0, Lcom/jme3/scene/VertexBuffer$Format;->UnsignedShort:Lcom/jme3/scene/VertexBuffer$Format;

    invoke-virtual {p0, p1, p2, v0, p3}, Lcom/jme3/scene/Mesh;->setBuffer(Lcom/jme3/scene/VertexBuffer$Type;ILcom/jme3/scene/VertexBuffer$Format;Ljava/nio/Buffer;)V

    .line 947
    return-void
.end method

.method public setBuffer(Lcom/jme3/scene/VertexBuffer$Type;I[F)V
    .locals 1
    .parameter "type"
    .parameter "components"
    .parameter "buf"

    .prologue
    .line 934
    invoke-static {p3}, Lcom/jme3/util/BufferUtils;->createFloatBuffer([F)Ljava/nio/FloatBuffer;

    move-result-object v0

    invoke-virtual {p0, p1, p2, v0}, Lcom/jme3/scene/Mesh;->setBuffer(Lcom/jme3/scene/VertexBuffer$Type;ILjava/nio/FloatBuffer;)V

    .line 935
    return-void
.end method

.method public setBuffer(Lcom/jme3/scene/VertexBuffer$Type;I[S)V
    .locals 1
    .parameter "type"
    .parameter "components"
    .parameter "buf"

    .prologue
    .line 958
    invoke-static {p3}, Lcom/jme3/util/BufferUtils;->createShortBuffer([S)Ljava/nio/ShortBuffer;

    move-result-object v0

    invoke-virtual {p0, p1, p2, v0}, Lcom/jme3/scene/Mesh;->setBuffer(Lcom/jme3/scene/VertexBuffer$Type;ILjava/nio/ShortBuffer;)V

    .line 959
    return-void
.end method

.method public setBuffer(Lcom/jme3/scene/VertexBuffer;)V
    .locals 3
    .parameter "vb"

    .prologue
    .line 867
    iget-object v0, p0, Lcom/jme3/scene/Mesh;->buffers:Lcom/jme3/util/IntMap;

    invoke-virtual {p1}, Lcom/jme3/scene/VertexBuffer;->getBufferType()Lcom/jme3/scene/VertexBuffer$Type;

    move-result-object v1

    invoke-virtual {v1}, Lcom/jme3/scene/VertexBuffer$Type;->ordinal()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/jme3/util/IntMap;->containsKey(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 868
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Buffer type already set: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/jme3/scene/VertexBuffer;->getBufferType()Lcom/jme3/scene/VertexBuffer$Type;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 870
    :cond_0
    iget-object v0, p0, Lcom/jme3/scene/Mesh;->buffers:Lcom/jme3/util/IntMap;

    invoke-virtual {p1}, Lcom/jme3/scene/VertexBuffer;->getBufferType()Lcom/jme3/scene/VertexBuffer$Type;

    move-result-object v1

    invoke-virtual {v1}, Lcom/jme3/scene/VertexBuffer$Type;->ordinal()I

    move-result v1

    invoke-virtual {v0, v1, p1}, Lcom/jme3/util/IntMap;->put(ILjava/lang/Object;)Ljava/lang/Object;

    .line 871
    iget-object v0, p0, Lcom/jme3/scene/Mesh;->buffersList:Lcom/jme3/util/SafeArrayList;

    invoke-virtual {v0, p1}, Lcom/jme3/util/SafeArrayList;->add(Ljava/lang/Object;)Z

    .line 872
    invoke-virtual {p0}, Lcom/jme3/scene/Mesh;->updateCounts()V

    .line 873
    return-void
.end method

.method public setLodLevels([Lcom/jme3/scene/VertexBuffer;)V
    .locals 0
    .parameter "lodLevels"

    .prologue
    .line 381
    iput-object p1, p0, Lcom/jme3/scene/Mesh;->lodLevels:[Lcom/jme3/scene/VertexBuffer;

    .line 382
    return-void
.end method

.method public setMaxNumWeights(I)V
    .locals 0
    .parameter "maxNumWeights"

    .prologue
    .line 486
    iput p1, p0, Lcom/jme3/scene/Mesh;->maxNumWeights:I

    .line 487
    return-void
.end method

.method public setMode(Lcom/jme3/scene/Mesh$Mode;)V
    .locals 0
    .parameter "mode"

    .prologue
    .line 463
    iput-object p1, p0, Lcom/jme3/scene/Mesh;->mode:Lcom/jme3/scene/Mesh$Mode;

    .line 464
    invoke-virtual {p0}, Lcom/jme3/scene/Mesh;->updateCounts()V

    .line 465
    return-void
.end method

.method public setStatic()V
    .locals 5

    .prologue
    .line 540
    iget-object v4, p0, Lcom/jme3/scene/Mesh;->buffersList:Lcom/jme3/util/SafeArrayList;

    invoke-virtual {v4}, Lcom/jme3/util/SafeArrayList;->getArray()[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/jme3/scene/VertexBuffer;

    .local v0, arr$:[Lcom/jme3/scene/VertexBuffer;
    array-length v2, v0

    .local v2, len$:I
    const/4 v1, 0x0

    .local v1, i$:I
    :goto_0
    if-ge v1, v2, :cond_0

    aget-object v3, v0, v1

    .line 541
    .local v3, vb:Lcom/jme3/scene/VertexBuffer;
    sget-object v4, Lcom/jme3/scene/VertexBuffer$Usage;->Static:Lcom/jme3/scene/VertexBuffer$Usage;

    invoke-virtual {v3, v4}, Lcom/jme3/scene/VertexBuffer;->setUsage(Lcom/jme3/scene/VertexBuffer$Usage;)V

    .line 540
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 543
    .end local v3           #vb:Lcom/jme3/scene/VertexBuffer;
    :cond_0
    return-void
.end method

.method public updateBound()V
    .locals 3

    .prologue
    .line 1209
    sget-object v1, Lcom/jme3/scene/VertexBuffer$Type;->Position:Lcom/jme3/scene/VertexBuffer$Type;

    invoke-virtual {p0, v1}, Lcom/jme3/scene/Mesh;->getBuffer(Lcom/jme3/scene/VertexBuffer$Type;)Lcom/jme3/scene/VertexBuffer;

    move-result-object v0

    .line 1210
    .local v0, posBuf:Lcom/jme3/scene/VertexBuffer;
    iget-object v1, p0, Lcom/jme3/scene/Mesh;->meshBound:Lcom/jme3/bounding/BoundingVolume;

    if-eqz v1, :cond_0

    if-eqz v0, :cond_0

    .line 1211
    iget-object v2, p0, Lcom/jme3/scene/Mesh;->meshBound:Lcom/jme3/bounding/BoundingVolume;

    invoke-virtual {v0}, Lcom/jme3/scene/VertexBuffer;->getData()Ljava/nio/Buffer;

    move-result-object v1

    check-cast v1, Ljava/nio/FloatBuffer;

    invoke-virtual {v2, v1}, Lcom/jme3/bounding/BoundingVolume;->computeFromPoints(Ljava/nio/FloatBuffer;)V

    .line 1213
    :cond_0
    return-void
.end method

.method public updateCounts()V
    .locals 4

    .prologue
    .line 684
    sget-object v2, Lcom/jme3/scene/VertexBuffer$Type;->InterleavedData:Lcom/jme3/scene/VertexBuffer$Type;

    invoke-virtual {p0, v2}, Lcom/jme3/scene/Mesh;->getBuffer(Lcom/jme3/scene/VertexBuffer$Type;)Lcom/jme3/scene/VertexBuffer;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 685
    new-instance v2, Ljava/lang/IllegalStateException;

    const-string v3, "Should update counts before interleave"

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 687
    :cond_0
    sget-object v2, Lcom/jme3/scene/VertexBuffer$Type;->Position:Lcom/jme3/scene/VertexBuffer$Type;

    invoke-virtual {p0, v2}, Lcom/jme3/scene/Mesh;->getBuffer(Lcom/jme3/scene/VertexBuffer$Type;)Lcom/jme3/scene/VertexBuffer;

    move-result-object v1

    .line 688
    .local v1, pb:Lcom/jme3/scene/VertexBuffer;
    sget-object v2, Lcom/jme3/scene/VertexBuffer$Type;->Index:Lcom/jme3/scene/VertexBuffer$Type;

    invoke-virtual {p0, v2}, Lcom/jme3/scene/Mesh;->getBuffer(Lcom/jme3/scene/VertexBuffer$Type;)Lcom/jme3/scene/VertexBuffer;

    move-result-object v0

    .line 689
    .local v0, ib:Lcom/jme3/scene/VertexBuffer;
    if-eqz v1, :cond_1

    .line 690
    invoke-virtual {v1}, Lcom/jme3/scene/VertexBuffer;->getData()Ljava/nio/Buffer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/nio/Buffer;->capacity()I

    move-result v2

    invoke-virtual {v1}, Lcom/jme3/scene/VertexBuffer;->getNumComponents()I

    move-result v3

    div-int/2addr v2, v3

    iput v2, p0, Lcom/jme3/scene/Mesh;->vertCount:I

    .line 692
    :cond_1
    if-eqz v0, :cond_2

    .line 693
    invoke-virtual {v0}, Lcom/jme3/scene/VertexBuffer;->getData()Ljava/nio/Buffer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/nio/Buffer;->capacity()I

    move-result v2

    invoke-direct {p0, v2}, Lcom/jme3/scene/Mesh;->computeNumElements(I)I

    move-result v2

    iput v2, p0, Lcom/jme3/scene/Mesh;->elementCount:I

    .line 697
    :goto_0
    return-void

    .line 695
    :cond_2
    iget v2, p0, Lcom/jme3/scene/Mesh;->vertCount:I

    invoke-direct {p0, v2}, Lcom/jme3/scene/Mesh;->computeNumElements(I)I

    move-result v2

    iput v2, p0, Lcom/jme3/scene/Mesh;->elementCount:I

    goto :goto_0
.end method
