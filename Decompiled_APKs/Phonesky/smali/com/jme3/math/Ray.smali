.class public final Lcom/jme3/math/Ray;
.super Ljava/lang/Object;
.source "Ray.java"

# interfaces
.implements Lcom/jme3/collision/Collidable;
.implements Lcom/jme3/export/Savable;
.implements Ljava/io/Serializable;
.implements Ljava/lang/Cloneable;


# static fields
#the value of this static final field might be set in the static constructor
.field static final synthetic $assertionsDisabled:Z = false

.field static final serialVersionUID:J = 0x1L


# instance fields
.field public direction:Lcom/jme3/math/Vector3f;

.field public limit:F

.field public origin:Lcom/jme3/math/Vector3f;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 51
    const-class v0, Lcom/jme3/math/Ray;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lcom/jme3/math/Ray;->$assertionsDisabled:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 73
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 58
    new-instance v0, Lcom/jme3/math/Vector3f;

    invoke-direct {v0}, Lcom/jme3/math/Vector3f;-><init>()V

    iput-object v0, p0, Lcom/jme3/math/Ray;->origin:Lcom/jme3/math/Vector3f;

    .line 63
    new-instance v0, Lcom/jme3/math/Vector3f;

    const/high16 v1, 0x3f80

    invoke-direct {v0, v2, v2, v1}, Lcom/jme3/math/Vector3f;-><init>(FFF)V

    iput-object v0, p0, Lcom/jme3/math/Ray;->direction:Lcom/jme3/math/Vector3f;

    .line 66
    const/high16 v0, 0x7f80

    iput v0, p0, Lcom/jme3/math/Ray;->limit:F

    .line 74
    return-void
.end method

.method public constructor <init>(Lcom/jme3/math/Vector3f;Lcom/jme3/math/Vector3f;)V
    .locals 3
    .parameter "origin"
    .parameter "direction"

    .prologue
    const/4 v2, 0x0

    .line 82
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 58
    new-instance v0, Lcom/jme3/math/Vector3f;

    invoke-direct {v0}, Lcom/jme3/math/Vector3f;-><init>()V

    iput-object v0, p0, Lcom/jme3/math/Ray;->origin:Lcom/jme3/math/Vector3f;

    .line 63
    new-instance v0, Lcom/jme3/math/Vector3f;

    const/high16 v1, 0x3f80

    invoke-direct {v0, v2, v2, v1}, Lcom/jme3/math/Vector3f;-><init>(FFF)V

    iput-object v0, p0, Lcom/jme3/math/Ray;->direction:Lcom/jme3/math/Vector3f;

    .line 66
    const/high16 v0, 0x7f80

    iput v0, p0, Lcom/jme3/math/Ray;->limit:F

    .line 83
    invoke-virtual {p0, p1}, Lcom/jme3/math/Ray;->setOrigin(Lcom/jme3/math/Vector3f;)V

    .line 84
    invoke-virtual {p0, p2}, Lcom/jme3/math/Ray;->setDirection(Lcom/jme3/math/Vector3f;)V

    .line 85
    return-void
.end method


# virtual methods
.method public clone()Lcom/jme3/math/Ray;
    .locals 3

    .prologue
    .line 513
    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/jme3/math/Ray;

    .line 514
    .local v1, r:Lcom/jme3/math/Ray;
    iget-object v2, p0, Lcom/jme3/math/Ray;->direction:Lcom/jme3/math/Vector3f;

    invoke-virtual {v2}, Lcom/jme3/math/Vector3f;->clone()Lcom/jme3/math/Vector3f;

    move-result-object v2

    iput-object v2, v1, Lcom/jme3/math/Ray;->direction:Lcom/jme3/math/Vector3f;

    .line 515
    iget-object v2, p0, Lcom/jme3/math/Ray;->origin:Lcom/jme3/math/Vector3f;

    invoke-virtual {v2}, Lcom/jme3/math/Vector3f;->clone()Lcom/jme3/math/Vector3f;

    move-result-object v2

    iput-object v2, v1, Lcom/jme3/math/Ray;->origin:Lcom/jme3/math/Vector3f;
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 516
    return-object v1

    .line 517
    .end local v1           #r:Lcom/jme3/math/Ray;
    :catch_0
    move-exception v0

    .line 518
    .local v0, e:Ljava/lang/CloneNotSupportedException;
    new-instance v2, Ljava/lang/AssertionError;

    invoke-direct {v2}, Ljava/lang/AssertionError;-><init>()V

    throw v2
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .prologue
    .line 51
    invoke-virtual {p0}, Lcom/jme3/math/Ray;->clone()Lcom/jme3/math/Ray;

    move-result-object v0

    return-object v0
.end method

.method public collideWith(Lcom/jme3/collision/Collidable;Lcom/jme3/collision/CollisionResults;)I
    .locals 7
    .parameter "other"
    .parameter "results"

    .prologue
    .line 386
    instance-of v4, p1, Lcom/jme3/bounding/BoundingVolume;

    if-eqz v4, :cond_0

    move-object v0, p1

    .line 387
    check-cast v0, Lcom/jme3/bounding/BoundingVolume;

    .line 388
    .local v0, bv:Lcom/jme3/bounding/BoundingVolume;
    invoke-virtual {v0, p0, p2}, Lcom/jme3/bounding/BoundingVolume;->collideWith(Lcom/jme3/collision/Collidable;Lcom/jme3/collision/CollisionResults;)I

    move-result v4

    .line 398
    .end local v0           #bv:Lcom/jme3/bounding/BoundingVolume;
    :goto_0
    return v4

    .line 389
    :cond_0
    instance-of v4, p1, Lcom/jme3/math/AbstractTriangle;

    if-eqz v4, :cond_3

    move-object v3, p1

    .line 390
    check-cast v3, Lcom/jme3/math/AbstractTriangle;

    .line 391
    .local v3, tri:Lcom/jme3/math/AbstractTriangle;
    invoke-virtual {v3}, Lcom/jme3/math/AbstractTriangle;->get1()Lcom/jme3/math/Vector3f;

    move-result-object v4

    invoke-virtual {v3}, Lcom/jme3/math/AbstractTriangle;->get2()Lcom/jme3/math/Vector3f;

    move-result-object v5

    invoke-virtual {v3}, Lcom/jme3/math/AbstractTriangle;->get3()Lcom/jme3/math/Vector3f;

    move-result-object v6

    invoke-virtual {p0, v4, v5, v6}, Lcom/jme3/math/Ray;->intersects(Lcom/jme3/math/Vector3f;Lcom/jme3/math/Vector3f;Lcom/jme3/math/Vector3f;)F

    move-result v1

    .line 392
    .local v1, d:F
    invoke-static {v1}, Ljava/lang/Float;->isInfinite(F)Z

    move-result v4

    if-nez v4, :cond_1

    invoke-static {v1}, Ljava/lang/Float;->isNaN(F)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 393
    :cond_1
    const/4 v4, 0x0

    goto :goto_0

    .line 396
    :cond_2
    new-instance v4, Lcom/jme3/math/Vector3f;

    iget-object v5, p0, Lcom/jme3/math/Ray;->direction:Lcom/jme3/math/Vector3f;

    invoke-direct {v4, v5}, Lcom/jme3/math/Vector3f;-><init>(Lcom/jme3/math/Vector3f;)V

    invoke-virtual {v4, v1}, Lcom/jme3/math/Vector3f;->multLocal(F)Lcom/jme3/math/Vector3f;

    move-result-object v4

    iget-object v5, p0, Lcom/jme3/math/Ray;->origin:Lcom/jme3/math/Vector3f;

    invoke-virtual {v4, v5}, Lcom/jme3/math/Vector3f;->addLocal(Lcom/jme3/math/Vector3f;)Lcom/jme3/math/Vector3f;

    move-result-object v2

    .line 397
    .local v2, point:Lcom/jme3/math/Vector3f;
    new-instance v4, Lcom/jme3/collision/CollisionResult;

    invoke-direct {v4, v2, v1}, Lcom/jme3/collision/CollisionResult;-><init>(Lcom/jme3/math/Vector3f;F)V

    invoke-virtual {p2, v4}, Lcom/jme3/collision/CollisionResults;->addCollision(Lcom/jme3/collision/CollisionResult;)V

    .line 398
    const/4 v4, 0x1

    goto :goto_0

    .line 400
    .end local v1           #d:F
    .end local v2           #point:Lcom/jme3/math/Vector3f;
    .end local v3           #tri:Lcom/jme3/math/AbstractTriangle;
    :cond_3
    new-instance v4, Lcom/jme3/collision/UnsupportedCollisionException;

    invoke-direct {v4}, Lcom/jme3/collision/UnsupportedCollisionException;-><init>()V

    throw v4
.end method

.method public getDirection()Lcom/jme3/math/Vector3f;
    .locals 1

    .prologue
    .line 470
    iget-object v0, p0, Lcom/jme3/math/Ray;->direction:Lcom/jme3/math/Vector3f;

    return-object v0
.end method

.method public getLimit()F
    .locals 1

    .prologue
    .line 452
    iget v0, p0, Lcom/jme3/math/Ray;->limit:F

    return v0
.end method

.method public getOrigin()Lcom/jme3/math/Vector3f;
    .locals 1

    .prologue
    .line 432
    iget-object v0, p0, Lcom/jme3/math/Ray;->origin:Lcom/jme3/math/Vector3f;

    return-object v0
.end method

.method public intersects(Lcom/jme3/math/Vector3f;Lcom/jme3/math/Vector3f;Lcom/jme3/math/Vector3f;)F
    .locals 26
    .parameter "v0"
    .parameter "v1"
    .parameter "v2"

    .prologue
    .line 272
    move-object/from16 v0, p2

    iget v0, v0, Lcom/jme3/math/Vector3f;->x:F

    move/from16 v23, v0

    move-object/from16 v0, p1

    iget v0, v0, Lcom/jme3/math/Vector3f;->x:F

    move/from16 v24, v0

    sub-float v11, v23, v24

    .line 273
    .local v11, edge1X:F
    move-object/from16 v0, p2

    iget v0, v0, Lcom/jme3/math/Vector3f;->y:F

    move/from16 v23, v0

    move-object/from16 v0, p1

    iget v0, v0, Lcom/jme3/math/Vector3f;->y:F

    move/from16 v24, v0

    sub-float v12, v23, v24

    .line 274
    .local v12, edge1Y:F
    move-object/from16 v0, p2

    iget v0, v0, Lcom/jme3/math/Vector3f;->z:F

    move/from16 v23, v0

    move-object/from16 v0, p1

    iget v0, v0, Lcom/jme3/math/Vector3f;->z:F

    move/from16 v24, v0

    sub-float v13, v23, v24

    .line 276
    .local v13, edge1Z:F
    move-object/from16 v0, p3

    iget v0, v0, Lcom/jme3/math/Vector3f;->x:F

    move/from16 v23, v0

    move-object/from16 v0, p1

    iget v0, v0, Lcom/jme3/math/Vector3f;->x:F

    move/from16 v24, v0

    sub-float v14, v23, v24

    .line 277
    .local v14, edge2X:F
    move-object/from16 v0, p3

    iget v0, v0, Lcom/jme3/math/Vector3f;->y:F

    move/from16 v23, v0

    move-object/from16 v0, p1

    iget v0, v0, Lcom/jme3/math/Vector3f;->y:F

    move/from16 v24, v0

    sub-float v15, v23, v24

    .line 278
    .local v15, edge2Y:F
    move-object/from16 v0, p3

    iget v0, v0, Lcom/jme3/math/Vector3f;->z:F

    move/from16 v23, v0

    move-object/from16 v0, p1

    iget v0, v0, Lcom/jme3/math/Vector3f;->z:F

    move/from16 v24, v0

    sub-float v16, v23, v24

    .line 280
    .local v16, edge2Z:F
    mul-float v23, v12, v16

    mul-float v24, v13, v15

    sub-float v18, v23, v24

    .line 281
    .local v18, normX:F
    mul-float v23, v13, v14

    mul-float v24, v11, v16

    sub-float v19, v23, v24

    .line 282
    .local v19, normY:F
    mul-float v23, v11, v15

    mul-float v24, v12, v14

    sub-float v20, v23, v24

    .line 284
    .local v20, normZ:F
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/jme3/math/Ray;->direction:Lcom/jme3/math/Vector3f;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget v0, v0, Lcom/jme3/math/Vector3f;->x:F

    move/from16 v23, v0

    mul-float v23, v23, v18

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/jme3/math/Ray;->direction:Lcom/jme3/math/Vector3f;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    iget v0, v0, Lcom/jme3/math/Vector3f;->y:F

    move/from16 v24, v0

    mul-float v24, v24, v19

    add-float v23, v23, v24

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/jme3/math/Ray;->direction:Lcom/jme3/math/Vector3f;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    iget v0, v0, Lcom/jme3/math/Vector3f;->z:F

    move/from16 v24, v0

    mul-float v24, v24, v20

    add-float v10, v23, v24

    .line 286
    .local v10, dirDotNorm:F
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/jme3/math/Ray;->origin:Lcom/jme3/math/Vector3f;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget v0, v0, Lcom/jme3/math/Vector3f;->x:F

    move/from16 v23, v0

    move-object/from16 v0, p1

    iget v0, v0, Lcom/jme3/math/Vector3f;->x:F

    move/from16 v24, v0

    sub-float v5, v23, v24

    .line 287
    .local v5, diffX:F
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/jme3/math/Ray;->origin:Lcom/jme3/math/Vector3f;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget v0, v0, Lcom/jme3/math/Vector3f;->y:F

    move/from16 v23, v0

    move-object/from16 v0, p1

    iget v0, v0, Lcom/jme3/math/Vector3f;->y:F

    move/from16 v24, v0

    sub-float v6, v23, v24

    .line 288
    .local v6, diffY:F
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/jme3/math/Ray;->origin:Lcom/jme3/math/Vector3f;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget v0, v0, Lcom/jme3/math/Vector3f;->z:F

    move/from16 v23, v0

    move-object/from16 v0, p1

    iget v0, v0, Lcom/jme3/math/Vector3f;->z:F

    move/from16 v24, v0

    sub-float v7, v23, v24

    .line 291
    .local v7, diffZ:F
    const/high16 v23, 0x3400

    cmpl-float v23, v10, v23

    if-lez v23, :cond_0

    .line 292
    const/high16 v21, 0x3f80

    .line 301
    .local v21, sign:F
    :goto_0
    mul-float v23, v6, v16

    mul-float v24, v7, v15

    sub-float v2, v23, v24

    .line 302
    .local v2, diffEdge2X:F
    mul-float v23, v7, v14

    mul-float v24, v5, v16

    sub-float v3, v23, v24

    .line 303
    .local v3, diffEdge2Y:F
    mul-float v23, v5, v15

    mul-float v24, v6, v14

    sub-float v4, v23, v24

    .line 305
    .local v4, diffEdge2Z:F
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/jme3/math/Ray;->direction:Lcom/jme3/math/Vector3f;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget v0, v0, Lcom/jme3/math/Vector3f;->x:F

    move/from16 v23, v0

    mul-float v23, v23, v2

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/jme3/math/Ray;->direction:Lcom/jme3/math/Vector3f;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    iget v0, v0, Lcom/jme3/math/Vector3f;->y:F

    move/from16 v24, v0

    mul-float v24, v24, v3

    add-float v23, v23, v24

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/jme3/math/Ray;->direction:Lcom/jme3/math/Vector3f;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    iget v0, v0, Lcom/jme3/math/Vector3f;->z:F

    move/from16 v24, v0

    mul-float v24, v24, v4

    add-float v23, v23, v24

    mul-float v8, v21, v23

    .line 309
    .local v8, dirDotDiffxEdge2:F
    const/16 v23, 0x0

    cmpl-float v23, v8, v23

    if-ltz v23, :cond_2

    .line 310
    mul-float v23, v12, v7

    mul-float v24, v13, v6

    sub-float v2, v23, v24

    .line 311
    mul-float v23, v13, v5

    mul-float v24, v11, v7

    sub-float v3, v23, v24

    .line 312
    mul-float v23, v11, v6

    mul-float v24, v12, v5

    sub-float v4, v23, v24

    .line 314
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/jme3/math/Ray;->direction:Lcom/jme3/math/Vector3f;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget v0, v0, Lcom/jme3/math/Vector3f;->x:F

    move/from16 v23, v0

    mul-float v23, v23, v2

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/jme3/math/Ray;->direction:Lcom/jme3/math/Vector3f;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    iget v0, v0, Lcom/jme3/math/Vector3f;->y:F

    move/from16 v24, v0

    mul-float v24, v24, v3

    add-float v23, v23, v24

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/jme3/math/Ray;->direction:Lcom/jme3/math/Vector3f;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    iget v0, v0, Lcom/jme3/math/Vector3f;->z:F

    move/from16 v24, v0

    mul-float v24, v24, v4

    add-float v23, v23, v24

    mul-float v9, v21, v23

    .line 318
    .local v9, dirDotEdge1xDiff:F
    const/16 v23, 0x0

    cmpl-float v23, v9, v23

    if-ltz v23, :cond_2

    .line 319
    add-float v23, v8, v9

    cmpg-float v23, v23, v10

    if-gtz v23, :cond_2

    .line 320
    move/from16 v0, v21

    neg-float v0, v0

    move/from16 v23, v0

    mul-float v24, v5, v18

    mul-float v25, v6, v19

    add-float v24, v24, v25

    mul-float v25, v7, v20

    add-float v24, v24, v25

    mul-float v1, v23, v24

    .line 321
    .local v1, diffDotNorm:F
    const/16 v23, 0x0

    cmpl-float v23, v1, v23

    if-ltz v23, :cond_2

    .line 324
    const/high16 v23, 0x3f80

    div-float v17, v23, v10

    .line 325
    .local v17, inv:F
    mul-float v22, v1, v17

    .line 332
    .end local v1           #diffDotNorm:F
    .end local v2           #diffEdge2X:F
    .end local v3           #diffEdge2Y:F
    .end local v4           #diffEdge2Z:F
    .end local v8           #dirDotDiffxEdge2:F
    .end local v9           #dirDotEdge1xDiff:F
    .end local v17           #inv:F
    .end local v21           #sign:F
    :goto_1
    return v22

    .line 293
    :cond_0
    const/high16 v23, -0x4c00

    cmpg-float v23, v10, v23

    if-gez v23, :cond_1

    .line 294
    const/high16 v21, -0x4080

    .line 295
    .restart local v21       #sign:F
    neg-float v10, v10

    goto/16 :goto_0

    .line 298
    .end local v21           #sign:F
    :cond_1
    const/high16 v22, 0x7f80

    goto :goto_1

    .line 332
    .restart local v2       #diffEdge2X:F
    .restart local v3       #diffEdge2Y:F
    .restart local v4       #diffEdge2Z:F
    .restart local v8       #dirDotDiffxEdge2:F
    .restart local v21       #sign:F
    :cond_2
    const/high16 v22, 0x7f80

    goto :goto_1
.end method

.method public intersectsWherePlane(Lcom/jme3/math/Plane;Lcom/jme3/math/Vector3f;)Z
    .locals 7
    .parameter "p"
    .parameter "loc"

    .prologue
    const/4 v3, 0x0

    const/high16 v6, 0x3400

    .line 369
    invoke-virtual {p1}, Lcom/jme3/math/Plane;->getNormal()Lcom/jme3/math/Vector3f;

    move-result-object v4

    iget-object v5, p0, Lcom/jme3/math/Ray;->direction:Lcom/jme3/math/Vector3f;

    invoke-virtual {v4, v5}, Lcom/jme3/math/Vector3f;->dot(Lcom/jme3/math/Vector3f;)F

    move-result v0

    .line 371
    .local v0, denominator:F
    const/high16 v4, -0x4c00

    cmpl-float v4, v0, v4

    if-lez v4, :cond_1

    cmpg-float v4, v0, v6

    if-gez v4, :cond_1

    .line 382
    :cond_0
    :goto_0
    return v3

    .line 374
    :cond_1
    invoke-virtual {p1}, Lcom/jme3/math/Plane;->getNormal()Lcom/jme3/math/Vector3f;

    move-result-object v4

    iget-object v5, p0, Lcom/jme3/math/Ray;->origin:Lcom/jme3/math/Vector3f;

    invoke-virtual {v4, v5}, Lcom/jme3/math/Vector3f;->dot(Lcom/jme3/math/Vector3f;)F

    move-result v4

    invoke-virtual {p1}, Lcom/jme3/math/Plane;->getConstant()F

    move-result v5

    sub-float/2addr v4, v5

    neg-float v1, v4

    .line 375
    .local v1, numerator:F
    div-float v2, v1, v0

    .line 377
    .local v2, ratio:F
    cmpg-float v4, v2, v6

    if-ltz v4, :cond_0

    .line 380
    iget-object v3, p0, Lcom/jme3/math/Ray;->direction:Lcom/jme3/math/Vector3f;

    invoke-virtual {p2, v3}, Lcom/jme3/math/Vector3f;->set(Lcom/jme3/math/Vector3f;)Lcom/jme3/math/Vector3f;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/jme3/math/Vector3f;->multLocal(F)Lcom/jme3/math/Vector3f;

    move-result-object v3

    iget-object v4, p0, Lcom/jme3/math/Ray;->origin:Lcom/jme3/math/Vector3f;

    invoke-virtual {v3, v4}, Lcom/jme3/math/Vector3f;->addLocal(Lcom/jme3/math/Vector3f;)Lcom/jme3/math/Vector3f;

    .line 382
    const/4 v3, 0x1

    goto :goto_0
.end method

.method public read(Lcom/jme3/export/JmeImporter;)V
    .locals 3
    .parameter "e"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 505
    invoke-interface {p1, p0}, Lcom/jme3/export/JmeImporter;->getCapsule(Lcom/jme3/export/Savable;)Lcom/jme3/export/InputCapsule;

    move-result-object v0

    .line 506
    .local v0, capsule:Lcom/jme3/export/InputCapsule;
    const-string v1, "origin"

    sget-object v2, Lcom/jme3/math/Vector3f;->ZERO:Lcom/jme3/math/Vector3f;

    invoke-virtual {v2}, Lcom/jme3/math/Vector3f;->clone()Lcom/jme3/math/Vector3f;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/jme3/export/InputCapsule;->readSavable(Ljava/lang/String;Lcom/jme3/export/Savable;)Lcom/jme3/export/Savable;

    move-result-object v1

    check-cast v1, Lcom/jme3/math/Vector3f;

    iput-object v1, p0, Lcom/jme3/math/Ray;->origin:Lcom/jme3/math/Vector3f;

    .line 507
    const-string v1, "direction"

    sget-object v2, Lcom/jme3/math/Vector3f;->ZERO:Lcom/jme3/math/Vector3f;

    invoke-virtual {v2}, Lcom/jme3/math/Vector3f;->clone()Lcom/jme3/math/Vector3f;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/jme3/export/InputCapsule;->readSavable(Ljava/lang/String;Lcom/jme3/export/Savable;)Lcom/jme3/export/Savable;

    move-result-object v1

    check-cast v1, Lcom/jme3/math/Vector3f;

    iput-object v1, p0, Lcom/jme3/math/Ray;->direction:Lcom/jme3/math/Vector3f;

    .line 508
    return-void
.end method

.method public setDirection(Lcom/jme3/math/Vector3f;)V
    .locals 1
    .parameter "direction"

    .prologue
    .line 479
    sget-boolean v0, Lcom/jme3/math/Ray;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    invoke-virtual {p1}, Lcom/jme3/math/Vector3f;->isUnitVector()Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 480
    :cond_0
    iget-object v0, p0, Lcom/jme3/math/Ray;->direction:Lcom/jme3/math/Vector3f;

    invoke-virtual {v0, p1}, Lcom/jme3/math/Vector3f;->set(Lcom/jme3/math/Vector3f;)Lcom/jme3/math/Vector3f;

    .line 481
    return-void
.end method

.method public setOrigin(Lcom/jme3/math/Vector3f;)V
    .locals 1
    .parameter "origin"

    .prologue
    .line 441
    iget-object v0, p0, Lcom/jme3/math/Ray;->origin:Lcom/jme3/math/Vector3f;

    invoke-virtual {v0, p1}, Lcom/jme3/math/Vector3f;->set(Lcom/jme3/math/Vector3f;)Lcom/jme3/math/Vector3f;

    .line 442
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 495
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " [Origin: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/jme3/math/Ray;->origin:Lcom/jme3/math/Vector3f;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", Direction: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/jme3/math/Ray;->direction:Lcom/jme3/math/Vector3f;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
