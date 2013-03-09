.class public Lcom/jme3/scene/Geometry;
.super Lcom/jme3/scene/Spatial;
.source "Geometry.java"


# static fields
.field static final synthetic $assertionsDisabled:Z

.field private static final logger:Ljava/util/logging/Logger;


# instance fields
.field protected batchNode:Lcom/jme3/scene/BatchNode;

.field protected cachedOffsetMat:Lcom/jme3/math/Matrix4f;

.field protected transient cachedWorldMat:Lcom/jme3/math/Matrix4f;

.field protected ignoreTransform:Z

.field protected transient lodLevel:I

.field protected material:Lcom/jme3/material/Material;

.field protected mesh:Lcom/jme3/scene/Mesh;

.field protected prevBatchTransforms:Lcom/jme3/math/Transform;

.field protected startIndex:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 60
    const-class v0, Lcom/jme3/scene/Geometry;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lcom/jme3/scene/Geometry;->$assertionsDisabled:Z

    .line 66
    const-class v0, Lcom/jme3/scene/Geometry;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lcom/jme3/scene/Geometry;->logger:Ljava/util/logging/Logger;

    return-void

    .line 60
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 95
    invoke-direct {p0}, Lcom/jme3/scene/Spatial;-><init>()V

    .line 68
    iput v0, p0, Lcom/jme3/scene/Geometry;->lodLevel:I

    .line 73
    iput-boolean v0, p0, Lcom/jme3/scene/Geometry;->ignoreTransform:Z

    .line 74
    new-instance v0, Lcom/jme3/math/Matrix4f;

    invoke-direct {v0}, Lcom/jme3/math/Matrix4f;-><init>()V

    iput-object v0, p0, Lcom/jme3/scene/Geometry;->cachedWorldMat:Lcom/jme3/math/Matrix4f;

    .line 78
    iput-object v1, p0, Lcom/jme3/scene/Geometry;->batchNode:Lcom/jme3/scene/BatchNode;

    .line 86
    iput-object v1, p0, Lcom/jme3/scene/Geometry;->prevBatchTransforms:Lcom/jme3/math/Transform;

    .line 90
    iput-object v1, p0, Lcom/jme3/scene/Geometry;->cachedOffsetMat:Lcom/jme3/math/Matrix4f;

    .line 96
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 2
    .parameter "name"

    .prologue
    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 106
    invoke-direct {p0, p1}, Lcom/jme3/scene/Spatial;-><init>(Ljava/lang/String;)V

    .line 68
    iput v0, p0, Lcom/jme3/scene/Geometry;->lodLevel:I

    .line 73
    iput-boolean v0, p0, Lcom/jme3/scene/Geometry;->ignoreTransform:Z

    .line 74
    new-instance v0, Lcom/jme3/math/Matrix4f;

    invoke-direct {v0}, Lcom/jme3/math/Matrix4f;-><init>()V

    iput-object v0, p0, Lcom/jme3/scene/Geometry;->cachedWorldMat:Lcom/jme3/math/Matrix4f;

    .line 78
    iput-object v1, p0, Lcom/jme3/scene/Geometry;->batchNode:Lcom/jme3/scene/BatchNode;

    .line 86
    iput-object v1, p0, Lcom/jme3/scene/Geometry;->prevBatchTransforms:Lcom/jme3/math/Transform;

    .line 90
    iput-object v1, p0, Lcom/jme3/scene/Geometry;->cachedOffsetMat:Lcom/jme3/math/Matrix4f;

    .line 107
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/jme3/scene/Mesh;)V
    .locals 1
    .parameter "name"
    .parameter "mesh"

    .prologue
    .line 118
    invoke-direct {p0, p1}, Lcom/jme3/scene/Geometry;-><init>(Ljava/lang/String;)V

    .line 119
    if-nez p2, :cond_0

    .line 120
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 123
    :cond_0
    iput-object p2, p0, Lcom/jme3/scene/Geometry;->mesh:Lcom/jme3/scene/Mesh;

    .line 124
    return-void
.end method


# virtual methods
.method public clone()Lcom/jme3/scene/Geometry;
    .locals 1

    .prologue
    .line 506
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/jme3/scene/Geometry;->clone(Z)Lcom/jme3/scene/Geometry;

    move-result-object v0

    return-object v0
.end method

.method public clone(Z)Lcom/jme3/scene/Geometry;
    .locals 3
    .parameter "cloneMaterial"

    .prologue
    .line 480
    invoke-super {p0, p1}, Lcom/jme3/scene/Spatial;->clone(Z)Lcom/jme3/scene/Spatial;

    move-result-object v0

    check-cast v0, Lcom/jme3/scene/Geometry;

    .line 481
    .local v0, geomClone:Lcom/jme3/scene/Geometry;
    iget-object v1, p0, Lcom/jme3/scene/Geometry;->cachedWorldMat:Lcom/jme3/math/Matrix4f;

    invoke-virtual {v1}, Lcom/jme3/math/Matrix4f;->clone()Lcom/jme3/math/Matrix4f;

    move-result-object v1

    iput-object v1, v0, Lcom/jme3/scene/Geometry;->cachedWorldMat:Lcom/jme3/math/Matrix4f;

    .line 482
    iget-object v1, p0, Lcom/jme3/scene/Geometry;->material:Lcom/jme3/material/Material;

    if-eqz v1, :cond_0

    .line 483
    if-eqz p1, :cond_2

    .line 484
    iget-object v1, p0, Lcom/jme3/scene/Geometry;->material:Lcom/jme3/material/Material;

    invoke-virtual {v1}, Lcom/jme3/material/Material;->clone()Lcom/jme3/material/Material;

    move-result-object v1

    iput-object v1, v0, Lcom/jme3/scene/Geometry;->material:Lcom/jme3/material/Material;

    .line 490
    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/jme3/scene/Geometry;->mesh:Lcom/jme3/scene/Mesh;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/jme3/scene/Geometry;->mesh:Lcom/jme3/scene/Mesh;

    sget-object v2, Lcom/jme3/scene/VertexBuffer$Type;->BindPosePosition:Lcom/jme3/scene/VertexBuffer$Type;

    invoke-virtual {v1, v2}, Lcom/jme3/scene/Mesh;->getBuffer(Lcom/jme3/scene/VertexBuffer$Type;)Lcom/jme3/scene/VertexBuffer;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 491
    iget-object v1, p0, Lcom/jme3/scene/Geometry;->mesh:Lcom/jme3/scene/Mesh;

    invoke-virtual {v1}, Lcom/jme3/scene/Mesh;->cloneForAnim()Lcom/jme3/scene/Mesh;

    move-result-object v1

    iput-object v1, v0, Lcom/jme3/scene/Geometry;->mesh:Lcom/jme3/scene/Mesh;

    .line 494
    :cond_1
    return-object v0

    .line 486
    :cond_2
    iget-object v1, p0, Lcom/jme3/scene/Geometry;->material:Lcom/jme3/material/Material;

    iput-object v1, v0, Lcom/jme3/scene/Geometry;->material:Lcom/jme3/material/Material;

    goto :goto_0
.end method

.method public bridge synthetic clone()Lcom/jme3/scene/Spatial;
    .locals 1

    .prologue
    .line 60
    invoke-virtual {p0}, Lcom/jme3/scene/Geometry;->clone()Lcom/jme3/scene/Geometry;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone(Z)Lcom/jme3/scene/Spatial;
    .locals 1
    .parameter "x0"

    .prologue
    .line 60
    invoke-virtual {p0, p1}, Lcom/jme3/scene/Geometry;->clone(Z)Lcom/jme3/scene/Geometry;

    move-result-object v0

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
    .line 60
    invoke-virtual {p0}, Lcom/jme3/scene/Geometry;->clone()Lcom/jme3/scene/Geometry;

    move-result-object v0

    return-object v0
.end method

.method public collideWith(Lcom/jme3/collision/Collidable;Lcom/jme3/collision/CollisionResults;)I
    .locals 7
    .parameter "other"
    .parameter "results"

    .prologue
    .line 438
    invoke-virtual {p0}, Lcom/jme3/scene/Geometry;->checkDoBoundUpdate()V

    .line 440
    invoke-virtual {p0}, Lcom/jme3/scene/Geometry;->computeWorldMatrix()V

    .line 442
    sget-boolean v4, Lcom/jme3/scene/Geometry;->$assertionsDisabled:Z

    if-nez v4, :cond_0

    iget v4, p0, Lcom/jme3/scene/Geometry;->refreshFlags:I

    and-int/lit8 v4, v4, 0x3

    if-eqz v4, :cond_0

    new-instance v4, Ljava/lang/AssertionError;

    invoke-direct {v4}, Ljava/lang/AssertionError;-><init>()V

    throw v4

    .line 444
    :cond_0
    iget-object v4, p0, Lcom/jme3/scene/Geometry;->mesh:Lcom/jme3/scene/Mesh;

    if-eqz v4, :cond_1

    .line 447
    invoke-virtual {p2}, Lcom/jme3/collision/CollisionResults;->size()I

    move-result v3

    .line 448
    .local v3, prevSize:I
    iget-object v4, p0, Lcom/jme3/scene/Geometry;->mesh:Lcom/jme3/scene/Mesh;

    iget-object v5, p0, Lcom/jme3/scene/Geometry;->cachedWorldMat:Lcom/jme3/math/Matrix4f;

    iget-object v6, p0, Lcom/jme3/scene/Geometry;->worldBound:Lcom/jme3/bounding/BoundingVolume;

    invoke-virtual {v4, p1, v5, v6, p2}, Lcom/jme3/scene/Mesh;->collideWith(Lcom/jme3/collision/Collidable;Lcom/jme3/math/Matrix4f;Lcom/jme3/bounding/BoundingVolume;Lcom/jme3/collision/CollisionResults;)I

    move-result v0

    .line 449
    .local v0, added:I
    invoke-virtual {p2}, Lcom/jme3/collision/CollisionResults;->size()I

    move-result v2

    .line 450
    .local v2, newSize:I
    move v1, v3

    .local v1, i:I
    :goto_0
    if-ge v1, v2, :cond_2

    .line 451
    invoke-virtual {p2, v1}, Lcom/jme3/collision/CollisionResults;->getCollisionDirect(I)Lcom/jme3/collision/CollisionResult;

    move-result-object v4

    invoke-virtual {v4, p0}, Lcom/jme3/collision/CollisionResult;->setGeometry(Lcom/jme3/scene/Geometry;)V

    .line 450
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 455
    .end local v0           #added:I
    .end local v1           #i:I
    .end local v2           #newSize:I
    .end local v3           #prevSize:I
    :cond_1
    const/4 v0, 0x0

    :cond_2
    return v0
.end method

.method public computeOffsetTransform()V
    .locals 5

    .prologue
    .line 345
    invoke-static {}, Lcom/jme3/util/TempVars;->get()Lcom/jme3/util/TempVars;

    move-result-object v2

    .line 346
    .local v2, vars:Lcom/jme3/util/TempVars;
    iget-object v1, v2, Lcom/jme3/util/TempVars;->tempMat42:Lcom/jme3/math/Matrix4f;

    .line 349
    .local v1, tmpMat:Lcom/jme3/math/Matrix4f;
    iget-object v3, p0, Lcom/jme3/scene/Geometry;->cachedOffsetMat:Lcom/jme3/math/Matrix4f;

    invoke-virtual {v3}, Lcom/jme3/math/Matrix4f;->loadIdentity()V

    .line 350
    iget-object v3, p0, Lcom/jme3/scene/Geometry;->cachedOffsetMat:Lcom/jme3/math/Matrix4f;

    iget-object v4, p0, Lcom/jme3/scene/Geometry;->prevBatchTransforms:Lcom/jme3/math/Transform;

    invoke-virtual {v4}, Lcom/jme3/math/Transform;->getRotation()Lcom/jme3/math/Quaternion;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/jme3/math/Matrix4f;->setRotationQuaternion(Lcom/jme3/math/Quaternion;)V

    .line 351
    iget-object v3, p0, Lcom/jme3/scene/Geometry;->cachedOffsetMat:Lcom/jme3/math/Matrix4f;

    iget-object v4, p0, Lcom/jme3/scene/Geometry;->prevBatchTransforms:Lcom/jme3/math/Transform;

    invoke-virtual {v4}, Lcom/jme3/math/Transform;->getTranslation()Lcom/jme3/math/Vector3f;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/jme3/math/Matrix4f;->setTranslation(Lcom/jme3/math/Vector3f;)V

    .line 354
    iget-object v0, v2, Lcom/jme3/util/TempVars;->tempMat4:Lcom/jme3/math/Matrix4f;

    .line 355
    .local v0, scaleMat:Lcom/jme3/math/Matrix4f;
    invoke-virtual {v0}, Lcom/jme3/math/Matrix4f;->loadIdentity()V

    .line 356
    iget-object v3, p0, Lcom/jme3/scene/Geometry;->prevBatchTransforms:Lcom/jme3/math/Transform;

    invoke-virtual {v3}, Lcom/jme3/math/Transform;->getScale()Lcom/jme3/math/Vector3f;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/jme3/math/Matrix4f;->scale(Lcom/jme3/math/Vector3f;)V

    .line 357
    iget-object v3, p0, Lcom/jme3/scene/Geometry;->cachedOffsetMat:Lcom/jme3/math/Matrix4f;

    invoke-virtual {v3, v0}, Lcom/jme3/math/Matrix4f;->multLocal(Lcom/jme3/math/Matrix4f;)Lcom/jme3/math/Matrix4f;

    .line 358
    iget-object v3, p0, Lcom/jme3/scene/Geometry;->cachedOffsetMat:Lcom/jme3/math/Matrix4f;

    invoke-virtual {v3}, Lcom/jme3/math/Matrix4f;->invertLocal()Lcom/jme3/math/Matrix4f;

    .line 360
    invoke-virtual {v1}, Lcom/jme3/math/Matrix4f;->loadIdentity()V

    .line 361
    iget-object v3, p0, Lcom/jme3/scene/Geometry;->batchNode:Lcom/jme3/scene/BatchNode;

    invoke-virtual {v3, p0}, Lcom/jme3/scene/BatchNode;->getTransforms(Lcom/jme3/scene/Geometry;)Lcom/jme3/math/Transform;

    move-result-object v3

    invoke-virtual {v3}, Lcom/jme3/math/Transform;->getRotation()Lcom/jme3/math/Quaternion;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/jme3/math/Matrix4f;->setRotationQuaternion(Lcom/jme3/math/Quaternion;)V

    .line 362
    iget-object v3, p0, Lcom/jme3/scene/Geometry;->batchNode:Lcom/jme3/scene/BatchNode;

    invoke-virtual {v3, p0}, Lcom/jme3/scene/BatchNode;->getTransforms(Lcom/jme3/scene/Geometry;)Lcom/jme3/math/Transform;

    move-result-object v3

    invoke-virtual {v3}, Lcom/jme3/math/Transform;->getTranslation()Lcom/jme3/math/Vector3f;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/jme3/math/Matrix4f;->setTranslation(Lcom/jme3/math/Vector3f;)V

    .line 363
    invoke-virtual {v0}, Lcom/jme3/math/Matrix4f;->loadIdentity()V

    .line 364
    iget-object v3, p0, Lcom/jme3/scene/Geometry;->batchNode:Lcom/jme3/scene/BatchNode;

    invoke-virtual {v3, p0}, Lcom/jme3/scene/BatchNode;->getTransforms(Lcom/jme3/scene/Geometry;)Lcom/jme3/math/Transform;

    move-result-object v3

    invoke-virtual {v3}, Lcom/jme3/math/Transform;->getScale()Lcom/jme3/math/Vector3f;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/jme3/math/Matrix4f;->scale(Lcom/jme3/math/Vector3f;)V

    .line 365
    invoke-virtual {v1, v0}, Lcom/jme3/math/Matrix4f;->multLocal(Lcom/jme3/math/Matrix4f;)Lcom/jme3/math/Matrix4f;

    .line 367
    iget-object v3, p0, Lcom/jme3/scene/Geometry;->cachedOffsetMat:Lcom/jme3/math/Matrix4f;

    iget-object v4, p0, Lcom/jme3/scene/Geometry;->cachedOffsetMat:Lcom/jme3/math/Matrix4f;

    invoke-virtual {v1, v3, v4}, Lcom/jme3/math/Matrix4f;->mult(Lcom/jme3/math/Matrix4f;Lcom/jme3/math/Matrix4f;)Lcom/jme3/math/Matrix4f;

    .line 369
    invoke-virtual {v2}, Lcom/jme3/util/TempVars;->release()V

    .line 370
    return-void
.end method

.method public computeWorldMatrix()V
    .locals 4

    .prologue
    .line 388
    invoke-virtual {p0}, Lcom/jme3/scene/Geometry;->checkDoTransformUpdate()V

    .line 391
    iget-object v2, p0, Lcom/jme3/scene/Geometry;->cachedWorldMat:Lcom/jme3/math/Matrix4f;

    invoke-virtual {v2}, Lcom/jme3/math/Matrix4f;->loadIdentity()V

    .line 392
    iget-object v2, p0, Lcom/jme3/scene/Geometry;->cachedWorldMat:Lcom/jme3/math/Matrix4f;

    iget-object v3, p0, Lcom/jme3/scene/Geometry;->worldTransform:Lcom/jme3/math/Transform;

    invoke-virtual {v3}, Lcom/jme3/math/Transform;->getRotation()Lcom/jme3/math/Quaternion;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/jme3/math/Matrix4f;->setRotationQuaternion(Lcom/jme3/math/Quaternion;)V

    .line 393
    iget-object v2, p0, Lcom/jme3/scene/Geometry;->cachedWorldMat:Lcom/jme3/math/Matrix4f;

    iget-object v3, p0, Lcom/jme3/scene/Geometry;->worldTransform:Lcom/jme3/math/Transform;

    invoke-virtual {v3}, Lcom/jme3/math/Transform;->getTranslation()Lcom/jme3/math/Vector3f;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/jme3/math/Matrix4f;->setTranslation(Lcom/jme3/math/Vector3f;)V

    .line 395
    invoke-static {}, Lcom/jme3/util/TempVars;->get()Lcom/jme3/util/TempVars;

    move-result-object v1

    .line 396
    .local v1, vars:Lcom/jme3/util/TempVars;
    iget-object v0, v1, Lcom/jme3/util/TempVars;->tempMat4:Lcom/jme3/math/Matrix4f;

    .line 397
    .local v0, scaleMat:Lcom/jme3/math/Matrix4f;
    invoke-virtual {v0}, Lcom/jme3/math/Matrix4f;->loadIdentity()V

    .line 398
    iget-object v2, p0, Lcom/jme3/scene/Geometry;->worldTransform:Lcom/jme3/math/Transform;

    invoke-virtual {v2}, Lcom/jme3/math/Transform;->getScale()Lcom/jme3/math/Vector3f;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/jme3/math/Matrix4f;->scale(Lcom/jme3/math/Vector3f;)V

    .line 399
    iget-object v2, p0, Lcom/jme3/scene/Geometry;->cachedWorldMat:Lcom/jme3/math/Matrix4f;

    invoke-virtual {v2, v0}, Lcom/jme3/math/Matrix4f;->multLocal(Lcom/jme3/math/Matrix4f;)Lcom/jme3/math/Matrix4f;

    .line 400
    invoke-virtual {v1}, Lcom/jme3/util/TempVars;->release()V

    .line 401
    return-void
.end method

.method public getLodLevel()I
    .locals 1

    .prologue
    .line 169
    iget v0, p0, Lcom/jme3/scene/Geometry;->lodLevel:I

    return v0
.end method

.method public getMaterial()Lcom/jme3/material/Material;
    .locals 1

    .prologue
    .line 245
    iget-object v0, p0, Lcom/jme3/scene/Geometry;->material:Lcom/jme3/material/Material;

    return-object v0
.end method

.method public getMesh()Lcom/jme3/scene/Mesh;
    .locals 1

    .prologue
    .line 221
    iget-object v0, p0, Lcom/jme3/scene/Geometry;->mesh:Lcom/jme3/scene/Mesh;

    return-object v0
.end method

.method public getVertexCount()I
    .locals 1

    .prologue
    .line 180
    iget-object v0, p0, Lcom/jme3/scene/Geometry;->mesh:Lcom/jme3/scene/Mesh;

    invoke-virtual {v0}, Lcom/jme3/scene/Mesh;->getVertexCount()I

    move-result v0

    return v0
.end method

.method public getWorldMatrix()Lcom/jme3/math/Matrix4f;
    .locals 1

    .prologue
    .line 413
    iget-object v0, p0, Lcom/jme3/scene/Geometry;->cachedWorldMat:Lcom/jme3/math/Matrix4f;

    return-object v0
.end method

.method public isBatched()Z
    .locals 1

    .prologue
    .line 468
    iget-object v0, p0, Lcom/jme3/scene/Geometry;->batchNode:Lcom/jme3/scene/BatchNode;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isIgnoreTransform()Z
    .locals 1

    .prologue
    .line 132
    iget-boolean v0, p0, Lcom/jme3/scene/Geometry;->ignoreTransform:Z

    return v0
.end method

.method public read(Lcom/jme3/export/JmeImporter;)V
    .locals 9
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v8, 0x0

    const/4 v7, 0x0

    .line 535
    invoke-super {p0, p1}, Lcom/jme3/scene/Spatial;->read(Lcom/jme3/export/JmeImporter;)V

    .line 536
    invoke-interface {p1, p0}, Lcom/jme3/export/JmeImporter;->getCapsule(Lcom/jme3/export/Savable;)Lcom/jme3/export/InputCapsule;

    move-result-object v1

    .line 537
    const-string v0, "mesh"

    invoke-interface {v1, v0, v7}, Lcom/jme3/export/InputCapsule;->readSavable(Ljava/lang/String;Lcom/jme3/export/Savable;)Lcom/jme3/export/Savable;

    move-result-object v0

    check-cast v0, Lcom/jme3/scene/Mesh;

    iput-object v0, p0, Lcom/jme3/scene/Geometry;->mesh:Lcom/jme3/scene/Mesh;

    .line 539
    iput-object v7, p0, Lcom/jme3/scene/Geometry;->material:Lcom/jme3/material/Material;

    .line 540
    const-string v0, "materialName"

    invoke-interface {v1, v0, v7}, Lcom/jme3/export/InputCapsule;->readString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 541
    if-eqz v0, :cond_0

    .line 545
    :try_start_0
    invoke-interface {p1}, Lcom/jme3/export/JmeImporter;->getAssetManager()Lcom/jme3/asset/AssetManager;

    move-result-object v2

    invoke-interface {v2, v0}, Lcom/jme3/asset/AssetManager;->loadMaterial(Ljava/lang/String;)Lcom/jme3/material/Material;

    move-result-object v2

    iput-object v2, p0, Lcom/jme3/scene/Geometry;->material:Lcom/jme3/material/Material;
    :try_end_0
    .catch Lcom/jme3/asset/AssetNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 552
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/jme3/scene/Geometry;->material:Lcom/jme3/material/Material;

    if-nez v0, :cond_1

    .line 553
    const-string v0, "material"

    invoke-interface {v1, v0, v7}, Lcom/jme3/export/InputCapsule;->readSavable(Ljava/lang/String;Lcom/jme3/export/Savable;)Lcom/jme3/export/Savable;

    move-result-object v0

    check-cast v0, Lcom/jme3/material/Material;

    iput-object v0, p0, Lcom/jme3/scene/Geometry;->material:Lcom/jme3/material/Material;

    .line 555
    :cond_1
    const-string v0, "ignoreTransform"

    invoke-interface {v1, v0, v8}, Lcom/jme3/export/InputCapsule;->readBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/jme3/scene/Geometry;->ignoreTransform:Z

    .line 557
    const-class v0, Lcom/jme3/scene/Geometry;

    invoke-interface {v1, v0}, Lcom/jme3/export/InputCapsule;->getSavableVersion(Ljava/lang/Class;)I

    move-result v0

    if-nez v0, :cond_2

    .line 559
    const-string v0, "JmeSharedMesh"

    invoke-virtual {p0, v0}, Lcom/jme3/scene/Geometry;->getUserData(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/jme3/scene/Mesh;

    .line 560
    if-eqz v0, :cond_2

    .line 561
    invoke-virtual {p0}, Lcom/jme3/scene/Geometry;->getMesh()Lcom/jme3/scene/Mesh;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/jme3/scene/Mesh;->extractVertexData(Lcom/jme3/scene/Mesh;)V

    .line 564
    :cond_2
    return-void

    .line 546
    :catch_0
    move-exception v2

    .line 548
    sget-object v2, Lcom/jme3/scene/Geometry;->logger:Ljava/util/logging/Logger;

    sget-object v3, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    const-string v4, "Cannot locate {0} for geometry {1}"

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    aput-object v0, v5, v8

    const/4 v0, 0x1

    iget-object v6, p0, Lcom/jme3/scene/Geometry;->key:Lcom/jme3/asset/AssetKey;

    aput-object v6, v5, v0

    invoke-virtual {v2, v3, v4, v5}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public removeFromParent()Z
    .locals 2

    .prologue
    .line 333
    invoke-super {p0}, Lcom/jme3/scene/Spatial;->removeFromParent()Z

    move-result v0

    .line 335
    .local v0, removed:Z
    invoke-virtual {p0}, Lcom/jme3/scene/Geometry;->isBatched()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 336
    invoke-virtual {p0}, Lcom/jme3/scene/Geometry;->unBatch()V

    .line 338
    :cond_0
    return v0
.end method

.method public setMaterial(Lcom/jme3/material/Material;)V
    .locals 2
    .parameter "material"

    .prologue
    .line 231
    invoke-virtual {p0}, Lcom/jme3/scene/Geometry;->isBatched()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 232
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Cannot set the material of a batched geometry, change the material of the parent BatchNode."

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 234
    :cond_0
    iput-object p1, p0, Lcom/jme3/scene/Geometry;->material:Lcom/jme3/material/Material;

    .line 235
    return-void
.end method

.method protected setTransformRefresh()V
    .locals 1

    .prologue
    .line 378
    iget v0, p0, Lcom/jme3/scene/Geometry;->refreshFlags:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/jme3/scene/Geometry;->refreshFlags:I

    .line 379
    invoke-virtual {p0}, Lcom/jme3/scene/Geometry;->setBoundRefresh()V

    .line 380
    return-void
.end method

.method protected unBatch()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 322
    const/4 v0, 0x0

    iput v0, p0, Lcom/jme3/scene/Geometry;->startIndex:I

    .line 323
    iput-object v2, p0, Lcom/jme3/scene/Geometry;->prevBatchTransforms:Lcom/jme3/math/Transform;

    .line 324
    iput-object v2, p0, Lcom/jme3/scene/Geometry;->cachedOffsetMat:Lcom/jme3/math/Matrix4f;

    .line 326
    iget-object v0, p0, Lcom/jme3/scene/Geometry;->batchNode:Lcom/jme3/scene/BatchNode;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/jme3/scene/BatchNode;->setNeedsFullRebatch(Z)V

    .line 327
    iput-object v2, p0, Lcom/jme3/scene/Geometry;->batchNode:Lcom/jme3/scene/BatchNode;

    .line 328
    sget-object v0, Lcom/jme3/scene/Spatial$CullHint;->Dynamic:Lcom/jme3/scene/Spatial$CullHint;

    invoke-virtual {p0, v0}, Lcom/jme3/scene/Geometry;->setCullHint(Lcom/jme3/scene/Spatial$CullHint;)V

    .line 329
    return-void
.end method

.method protected updateWorldBound()V
    .locals 3

    .prologue
    .line 273
    invoke-super {p0}, Lcom/jme3/scene/Spatial;->updateWorldBound()V

    .line 274
    iget-object v0, p0, Lcom/jme3/scene/Geometry;->mesh:Lcom/jme3/scene/Mesh;

    if-nez v0, :cond_0

    .line 275
    new-instance v0, Ljava/lang/NullPointerException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Geometry: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/jme3/scene/Geometry;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " has null mesh"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 278
    :cond_0
    iget-object v0, p0, Lcom/jme3/scene/Geometry;->mesh:Lcom/jme3/scene/Mesh;

    invoke-virtual {v0}, Lcom/jme3/scene/Mesh;->getBound()Lcom/jme3/bounding/BoundingVolume;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 279
    iget-boolean v0, p0, Lcom/jme3/scene/Geometry;->ignoreTransform:Z

    if-eqz v0, :cond_2

    .line 282
    iget-object v0, p0, Lcom/jme3/scene/Geometry;->mesh:Lcom/jme3/scene/Mesh;

    invoke-virtual {v0}, Lcom/jme3/scene/Mesh;->getBound()Lcom/jme3/bounding/BoundingVolume;

    move-result-object v0

    iget-object v1, p0, Lcom/jme3/scene/Geometry;->worldBound:Lcom/jme3/bounding/BoundingVolume;

    invoke-virtual {v0, v1}, Lcom/jme3/bounding/BoundingVolume;->clone(Lcom/jme3/bounding/BoundingVolume;)Lcom/jme3/bounding/BoundingVolume;

    move-result-object v0

    iput-object v0, p0, Lcom/jme3/scene/Geometry;->worldBound:Lcom/jme3/bounding/BoundingVolume;

    .line 287
    :cond_1
    :goto_0
    return-void

    .line 284
    :cond_2
    iget-object v0, p0, Lcom/jme3/scene/Geometry;->mesh:Lcom/jme3/scene/Mesh;

    invoke-virtual {v0}, Lcom/jme3/scene/Mesh;->getBound()Lcom/jme3/bounding/BoundingVolume;

    move-result-object v0

    iget-object v1, p0, Lcom/jme3/scene/Geometry;->worldTransform:Lcom/jme3/math/Transform;

    iget-object v2, p0, Lcom/jme3/scene/Geometry;->worldBound:Lcom/jme3/bounding/BoundingVolume;

    invoke-virtual {v0, v1, v2}, Lcom/jme3/bounding/BoundingVolume;->transform(Lcom/jme3/math/Transform;Lcom/jme3/bounding/BoundingVolume;)Lcom/jme3/bounding/BoundingVolume;

    move-result-object v0

    iput-object v0, p0, Lcom/jme3/scene/Geometry;->worldBound:Lcom/jme3/bounding/BoundingVolume;

    goto :goto_0
.end method

.method protected updateWorldTransforms()V
    .locals 2

    .prologue
    .line 292
    invoke-super {p0}, Lcom/jme3/scene/Spatial;->updateWorldTransforms()V

    .line 293
    invoke-virtual {p0}, Lcom/jme3/scene/Geometry;->computeWorldMatrix()V

    .line 295
    invoke-virtual {p0}, Lcom/jme3/scene/Geometry;->isBatched()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 296
    invoke-virtual {p0}, Lcom/jme3/scene/Geometry;->computeOffsetTransform()V

    .line 297
    iget-object v0, p0, Lcom/jme3/scene/Geometry;->batchNode:Lcom/jme3/scene/BatchNode;

    invoke-virtual {v0, p0}, Lcom/jme3/scene/BatchNode;->updateSubBatch(Lcom/jme3/scene/Geometry;)V

    .line 298
    iget-object v0, p0, Lcom/jme3/scene/Geometry;->prevBatchTransforms:Lcom/jme3/math/Transform;

    iget-object v1, p0, Lcom/jme3/scene/Geometry;->batchNode:Lcom/jme3/scene/BatchNode;

    invoke-virtual {v1, p0}, Lcom/jme3/scene/BatchNode;->getTransforms(Lcom/jme3/scene/Geometry;)Lcom/jme3/math/Transform;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/jme3/math/Transform;->set(Lcom/jme3/math/Transform;)Lcom/jme3/math/Transform;

    .line 302
    :cond_0
    iget-object v0, p0, Lcom/jme3/scene/Geometry;->worldLights:Lcom/jme3/light/LightList;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/jme3/light/LightList;->sort(Z)V

    .line 303
    return-void
.end method
