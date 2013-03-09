.class public Lcom/jme3/bounding/BoundingSphere;
.super Lcom/jme3/bounding/BoundingVolume;
.source "BoundingSphere.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/jme3/bounding/BoundingSphere$1;
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z

.field private static final logger:Ljava/util/logging/Logger;


# instance fields
.field radius:F


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 60
    const-class v0, Lcom/jme3/bounding/BoundingSphere;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lcom/jme3/bounding/BoundingSphere;->$assertionsDisabled:Z

    .line 62
    const-class v0, Lcom/jme3/bounding/BoundingSphere;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lcom/jme3/bounding/BoundingSphere;->logger:Ljava/util/logging/Logger;

    return-void

    .line 60
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 71
    invoke-direct {p0}, Lcom/jme3/bounding/BoundingVolume;-><init>()V

    .line 72
    return-void
.end method

.method public constructor <init>(FLcom/jme3/math/Vector3f;)V
    .locals 1
    .parameter "r"
    .parameter "c"

    .prologue
    .line 82
    invoke-direct {p0}, Lcom/jme3/bounding/BoundingVolume;-><init>()V

    .line 83
    iget-object v0, p0, Lcom/jme3/bounding/BoundingSphere;->center:Lcom/jme3/math/Vector3f;

    invoke-virtual {v0, p2}, Lcom/jme3/math/Vector3f;->set(Lcom/jme3/math/Vector3f;)Lcom/jme3/math/Vector3f;

    .line 84
    iput p1, p0, Lcom/jme3/bounding/BoundingSphere;->radius:F

    .line 85
    return-void
.end method

.method private collideWithRay(Lcom/jme3/math/Ray;Lcom/jme3/collision/CollisionResults;)I
    .locals 15
    .parameter "ray"
    .parameter "results"

    .prologue
    .line 747
    invoke-static {}, Lcom/jme3/util/TempVars;->get()Lcom/jme3/util/TempVars;

    move-result-object v10

    .line 749
    .local v10, vars:Lcom/jme3/util/TempVars;
    iget-object v11, v10, Lcom/jme3/util/TempVars;->vect1:Lcom/jme3/math/Vector3f;

    invoke-virtual/range {p1 .. p1}, Lcom/jme3/math/Ray;->getOrigin()Lcom/jme3/math/Vector3f;

    move-result-object v12

    invoke-virtual {v11, v12}, Lcom/jme3/math/Vector3f;->set(Lcom/jme3/math/Vector3f;)Lcom/jme3/math/Vector3f;

    move-result-object v11

    iget-object v12, p0, Lcom/jme3/bounding/BoundingSphere;->center:Lcom/jme3/math/Vector3f;

    invoke-virtual {v11, v12}, Lcom/jme3/math/Vector3f;->subtractLocal(Lcom/jme3/math/Vector3f;)Lcom/jme3/math/Vector3f;

    move-result-object v3

    .line 751
    .local v3, diff:Lcom/jme3/math/Vector3f;
    invoke-virtual {v3, v3}, Lcom/jme3/math/Vector3f;->dot(Lcom/jme3/math/Vector3f;)F

    move-result v11

    invoke-virtual {p0}, Lcom/jme3/bounding/BoundingSphere;->getRadius()F

    move-result v12

    invoke-virtual {p0}, Lcom/jme3/bounding/BoundingSphere;->getRadius()F

    move-result v13

    mul-float/2addr v12, v13

    sub-float v1, v11, v12

    .line 753
    .local v1, a:F
    float-to-double v11, v1

    const-wide/16 v13, 0x0

    cmpg-double v11, v11, v13

    if-gtz v11, :cond_0

    .line 755
    move-object/from16 v0, p1

    iget-object v11, v0, Lcom/jme3/math/Ray;->direction:Lcom/jme3/math/Vector3f;

    invoke-virtual {v11, v3}, Lcom/jme3/math/Vector3f;->dot(Lcom/jme3/math/Vector3f;)F

    move-result v2

    .line 756
    .local v2, a1:F
    mul-float v11, v2, v2

    sub-float v4, v11, v1

    .line 757
    .local v4, discr:F
    invoke-static {v4}, Lcom/jme3/math/FastMath;->sqrt(F)F

    move-result v9

    .line 759
    .local v9, root:F
    sub-float v6, v9, v2

    .line 760
    .local v6, distance:F
    new-instance v11, Lcom/jme3/math/Vector3f;

    move-object/from16 v0, p1

    iget-object v12, v0, Lcom/jme3/math/Ray;->direction:Lcom/jme3/math/Vector3f;

    invoke-direct {v11, v12}, Lcom/jme3/math/Vector3f;-><init>(Lcom/jme3/math/Vector3f;)V

    invoke-virtual {v11, v6}, Lcom/jme3/math/Vector3f;->multLocal(F)Lcom/jme3/math/Vector3f;

    move-result-object v11

    move-object/from16 v0, p1

    iget-object v12, v0, Lcom/jme3/math/Ray;->origin:Lcom/jme3/math/Vector3f;

    invoke-virtual {v11, v12}, Lcom/jme3/math/Vector3f;->addLocal(Lcom/jme3/math/Vector3f;)Lcom/jme3/math/Vector3f;

    move-result-object v7

    .line 762
    .local v7, point:Lcom/jme3/math/Vector3f;
    new-instance v8, Lcom/jme3/collision/CollisionResult;

    invoke-direct {v8, v7, v6}, Lcom/jme3/collision/CollisionResult;-><init>(Lcom/jme3/math/Vector3f;F)V

    .line 763
    .local v8, result:Lcom/jme3/collision/CollisionResult;
    move-object/from16 v0, p2

    invoke-virtual {v0, v8}, Lcom/jme3/collision/CollisionResults;->addCollision(Lcom/jme3/collision/CollisionResult;)V

    .line 764
    invoke-virtual {v10}, Lcom/jme3/util/TempVars;->release()V

    .line 765
    const/4 v11, 0x1

    .line 791
    .end local v4           #discr:F
    .end local v6           #distance:F
    .end local v7           #point:Lcom/jme3/math/Vector3f;
    .end local v8           #result:Lcom/jme3/collision/CollisionResult;
    .end local v9           #root:F
    :goto_0
    return v11

    .line 768
    .end local v2           #a1:F
    :cond_0
    move-object/from16 v0, p1

    iget-object v11, v0, Lcom/jme3/math/Ray;->direction:Lcom/jme3/math/Vector3f;

    invoke-virtual {v11, v3}, Lcom/jme3/math/Vector3f;->dot(Lcom/jme3/math/Vector3f;)F

    move-result v2

    .line 769
    .restart local v2       #a1:F
    invoke-virtual {v10}, Lcom/jme3/util/TempVars;->release()V

    .line 770
    float-to-double v11, v2

    const-wide/16 v13, 0x0

    cmpl-double v11, v11, v13

    if-ltz v11, :cond_1

    .line 771
    const/4 v11, 0x0

    goto :goto_0

    .line 774
    :cond_1
    mul-float v11, v2, v2

    sub-float v4, v11, v1

    .line 775
    .restart local v4       #discr:F
    float-to-double v11, v4

    const-wide/16 v13, 0x0

    cmpg-double v11, v11, v13

    if-gez v11, :cond_2

    .line 776
    const/4 v11, 0x0

    goto :goto_0

    .line 777
    :cond_2
    const v11, 0x38d1b717

    cmpl-float v11, v4, v11

    if-ltz v11, :cond_3

    .line 778
    invoke-static {v4}, Lcom/jme3/math/FastMath;->sqrt(F)F

    move-result v9

    .line 779
    .restart local v9       #root:F
    neg-float v11, v2

    sub-float v5, v11, v9

    .line 780
    .local v5, dist:F
    new-instance v11, Lcom/jme3/math/Vector3f;

    move-object/from16 v0, p1

    iget-object v12, v0, Lcom/jme3/math/Ray;->direction:Lcom/jme3/math/Vector3f;

    invoke-direct {v11, v12}, Lcom/jme3/math/Vector3f;-><init>(Lcom/jme3/math/Vector3f;)V

    invoke-virtual {v11, v5}, Lcom/jme3/math/Vector3f;->multLocal(F)Lcom/jme3/math/Vector3f;

    move-result-object v11

    move-object/from16 v0, p1

    iget-object v12, v0, Lcom/jme3/math/Ray;->origin:Lcom/jme3/math/Vector3f;

    invoke-virtual {v11, v12}, Lcom/jme3/math/Vector3f;->addLocal(Lcom/jme3/math/Vector3f;)Lcom/jme3/math/Vector3f;

    move-result-object v7

    .line 781
    .restart local v7       #point:Lcom/jme3/math/Vector3f;
    new-instance v11, Lcom/jme3/collision/CollisionResult;

    invoke-direct {v11, v7, v5}, Lcom/jme3/collision/CollisionResult;-><init>(Lcom/jme3/math/Vector3f;F)V

    move-object/from16 v0, p2

    invoke-virtual {v0, v11}, Lcom/jme3/collision/CollisionResults;->addCollision(Lcom/jme3/collision/CollisionResult;)V

    .line 783
    neg-float v11, v2

    add-float v5, v11, v9

    .line 784
    new-instance v11, Lcom/jme3/math/Vector3f;

    move-object/from16 v0, p1

    iget-object v12, v0, Lcom/jme3/math/Ray;->direction:Lcom/jme3/math/Vector3f;

    invoke-direct {v11, v12}, Lcom/jme3/math/Vector3f;-><init>(Lcom/jme3/math/Vector3f;)V

    invoke-virtual {v11, v5}, Lcom/jme3/math/Vector3f;->multLocal(F)Lcom/jme3/math/Vector3f;

    move-result-object v11

    move-object/from16 v0, p1

    iget-object v12, v0, Lcom/jme3/math/Ray;->origin:Lcom/jme3/math/Vector3f;

    invoke-virtual {v11, v12}, Lcom/jme3/math/Vector3f;->addLocal(Lcom/jme3/math/Vector3f;)Lcom/jme3/math/Vector3f;

    move-result-object v7

    .line 785
    new-instance v11, Lcom/jme3/collision/CollisionResult;

    invoke-direct {v11, v7, v5}, Lcom/jme3/collision/CollisionResult;-><init>(Lcom/jme3/math/Vector3f;F)V

    move-object/from16 v0, p2

    invoke-virtual {v0, v11}, Lcom/jme3/collision/CollisionResults;->addCollision(Lcom/jme3/collision/CollisionResult;)V

    .line 786
    const/4 v11, 0x2

    goto :goto_0

    .line 788
    .end local v5           #dist:F
    .end local v7           #point:Lcom/jme3/math/Vector3f;
    .end local v9           #root:F
    :cond_3
    neg-float v5, v2

    .line 789
    .restart local v5       #dist:F
    new-instance v11, Lcom/jme3/math/Vector3f;

    move-object/from16 v0, p1

    iget-object v12, v0, Lcom/jme3/math/Ray;->direction:Lcom/jme3/math/Vector3f;

    invoke-direct {v11, v12}, Lcom/jme3/math/Vector3f;-><init>(Lcom/jme3/math/Vector3f;)V

    invoke-virtual {v11, v5}, Lcom/jme3/math/Vector3f;->multLocal(F)Lcom/jme3/math/Vector3f;

    move-result-object v11

    move-object/from16 v0, p1

    iget-object v12, v0, Lcom/jme3/math/Ray;->origin:Lcom/jme3/math/Vector3f;

    invoke-virtual {v11, v12}, Lcom/jme3/math/Vector3f;->addLocal(Lcom/jme3/math/Vector3f;)Lcom/jme3/math/Vector3f;

    move-result-object v7

    .line 790
    .restart local v7       #point:Lcom/jme3/math/Vector3f;
    new-instance v11, Lcom/jme3/collision/CollisionResult;

    invoke-direct {v11, v7, v5}, Lcom/jme3/collision/CollisionResult;-><init>(Lcom/jme3/math/Vector3f;F)V

    move-object/from16 v0, p2

    invoke-virtual {v0, v11}, Lcom/jme3/collision/CollisionResults;->addCollision(Lcom/jme3/collision/CollisionResult;)V

    .line 791
    const/4 v11, 0x1

    goto/16 :goto_0
.end method

.method private getMaxAxis(Lcom/jme3/math/Vector3f;)F
    .locals 4
    .parameter "scale"

    .prologue
    .line 417
    iget v3, p1, Lcom/jme3/math/Vector3f;->x:F

    invoke-static {v3}, Lcom/jme3/math/FastMath;->abs(F)F

    move-result v0

    .line 418
    .local v0, x:F
    iget v3, p1, Lcom/jme3/math/Vector3f;->y:F

    invoke-static {v3}, Lcom/jme3/math/FastMath;->abs(F)F

    move-result v1

    .line 419
    .local v1, y:F
    iget v3, p1, Lcom/jme3/math/Vector3f;->z:F

    invoke-static {v3}, Lcom/jme3/math/FastMath;->abs(F)F

    move-result v2

    .line 421
    .local v2, z:F
    cmpl-float v3, v0, v1

    if-ltz v3, :cond_1

    .line 422
    cmpl-float v3, v0, v2

    if-ltz v3, :cond_0

    move v2, v0

    .line 432
    .end local v2           #z:F
    :cond_0
    :goto_0
    return v2

    .line 428
    .restart local v2       #z:F
    :cond_1
    cmpl-float v3, v1, v2

    if-ltz v3, :cond_0

    move v2, v1

    .line 429
    goto :goto_0
.end method

.method private merge(FLcom/jme3/math/Vector3f;Lcom/jme3/bounding/BoundingSphere;)Lcom/jme3/bounding/BoundingVolume;
    .locals 10
    .parameter "temp_radius"
    .parameter "temp_center"
    .parameter "rVal"

    .prologue
    .line 580
    invoke-static {}, Lcom/jme3/util/TempVars;->get()Lcom/jme3/util/TempVars;

    move-result-object v7

    .line 582
    .local v7, vars:Lcom/jme3/util/TempVars;
    iget-object v8, p0, Lcom/jme3/bounding/BoundingSphere;->center:Lcom/jme3/math/Vector3f;

    iget-object v9, v7, Lcom/jme3/util/TempVars;->vect1:Lcom/jme3/math/Vector3f;

    invoke-virtual {p2, v8, v9}, Lcom/jme3/math/Vector3f;->subtract(Lcom/jme3/math/Vector3f;Lcom/jme3/math/Vector3f;)Lcom/jme3/math/Vector3f;

    move-result-object v1

    .line 583
    .local v1, diff:Lcom/jme3/math/Vector3f;
    invoke-virtual {v1}, Lcom/jme3/math/Vector3f;->lengthSquared()F

    move-result v4

    .line 584
    .local v4, lengthSquared:F
    iget v8, p0, Lcom/jme3/bounding/BoundingSphere;->radius:F

    sub-float v6, p1, v8

    .line 586
    .local v6, radiusDiff:F
    mul-float v2, v6, v6

    .line 588
    .local v2, fRDiffSqr:F
    cmpl-float v8, v2, v4

    if-ltz v8, :cond_2

    .line 589
    const/4 v8, 0x0

    cmpg-float v8, v6, v8

    if-gtz v8, :cond_0

    .line 590
    invoke-virtual {v7}, Lcom/jme3/util/TempVars;->release()V

    move-object p3, p0

    .line 619
    .end local p3
    :goto_0
    return-object p3

    .line 594
    .restart local p3
    :cond_0
    iget-object v5, p3, Lcom/jme3/bounding/BoundingSphere;->center:Lcom/jme3/math/Vector3f;

    .line 595
    .local v5, rCenter:Lcom/jme3/math/Vector3f;
    if-nez v5, :cond_1

    .line 596
    new-instance v5, Lcom/jme3/math/Vector3f;

    .end local v5           #rCenter:Lcom/jme3/math/Vector3f;
    invoke-direct {v5}, Lcom/jme3/math/Vector3f;-><init>()V

    .restart local v5       #rCenter:Lcom/jme3/math/Vector3f;
    invoke-virtual {p3, v5}, Lcom/jme3/bounding/BoundingSphere;->setCenter(Lcom/jme3/math/Vector3f;)V

    .line 598
    :cond_1
    invoke-virtual {v5, p2}, Lcom/jme3/math/Vector3f;->set(Lcom/jme3/math/Vector3f;)Lcom/jme3/math/Vector3f;

    .line 599
    invoke-virtual {p3, p1}, Lcom/jme3/bounding/BoundingSphere;->setRadius(F)V

    .line 600
    invoke-virtual {v7}, Lcom/jme3/util/TempVars;->release()V

    goto :goto_0

    .line 604
    .end local v5           #rCenter:Lcom/jme3/math/Vector3f;
    :cond_2
    float-to-double v8, v4

    invoke-static {v8, v9}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v8

    double-to-float v3, v8

    .line 606
    .local v3, length:F
    iget-object v5, p3, Lcom/jme3/bounding/BoundingSphere;->center:Lcom/jme3/math/Vector3f;

    .line 607
    .restart local v5       #rCenter:Lcom/jme3/math/Vector3f;
    if-nez v5, :cond_3

    .line 608
    new-instance v5, Lcom/jme3/math/Vector3f;

    .end local v5           #rCenter:Lcom/jme3/math/Vector3f;
    invoke-direct {v5}, Lcom/jme3/math/Vector3f;-><init>()V

    .restart local v5       #rCenter:Lcom/jme3/math/Vector3f;
    invoke-virtual {p3, v5}, Lcom/jme3/bounding/BoundingSphere;->setCenter(Lcom/jme3/math/Vector3f;)V

    .line 610
    :cond_3
    const v8, 0x3f800054

    cmpl-float v8, v3, v8

    if-lez v8, :cond_4

    .line 611
    add-float v8, v3, v6

    const/high16 v9, 0x4000

    mul-float/2addr v9, v3

    div-float v0, v8, v9

    .line 612
    .local v0, coeff:F
    iget-object v8, p0, Lcom/jme3/bounding/BoundingSphere;->center:Lcom/jme3/math/Vector3f;

    invoke-virtual {v1, v0}, Lcom/jme3/math/Vector3f;->multLocal(F)Lcom/jme3/math/Vector3f;

    move-result-object v9

    invoke-virtual {v8, v9}, Lcom/jme3/math/Vector3f;->addLocal(Lcom/jme3/math/Vector3f;)Lcom/jme3/math/Vector3f;

    move-result-object v8

    invoke-virtual {v5, v8}, Lcom/jme3/math/Vector3f;->set(Lcom/jme3/math/Vector3f;)Lcom/jme3/math/Vector3f;

    .line 617
    .end local v0           #coeff:F
    :goto_1
    const/high16 v8, 0x3f00

    iget v9, p0, Lcom/jme3/bounding/BoundingSphere;->radius:F

    add-float/2addr v9, v3

    add-float/2addr v9, p1

    mul-float/2addr v8, v9

    invoke-virtual {p3, v8}, Lcom/jme3/bounding/BoundingSphere;->setRadius(F)V

    .line 618
    invoke-virtual {v7}, Lcom/jme3/util/TempVars;->release()V

    goto :goto_0

    .line 614
    :cond_4
    iget-object v8, p0, Lcom/jme3/bounding/BoundingSphere;->center:Lcom/jme3/math/Vector3f;

    invoke-virtual {v5, v8}, Lcom/jme3/math/Vector3f;->set(Lcom/jme3/math/Vector3f;)Lcom/jme3/math/Vector3f;

    goto :goto_1
.end method

.method private recurseMini(Ljava/nio/FloatBuffer;III)V
    .locals 9
    .parameter "points"
    .parameter "p"
    .parameter "b"
    .parameter "ap"

    .prologue
    const/4 v7, 0x0

    .line 212
    new-instance v2, Lcom/jme3/math/Vector3f;

    invoke-direct {v2}, Lcom/jme3/math/Vector3f;-><init>()V

    .line 213
    .local v2, tempA:Lcom/jme3/math/Vector3f;
    new-instance v3, Lcom/jme3/math/Vector3f;

    invoke-direct {v3}, Lcom/jme3/math/Vector3f;-><init>()V

    .line 214
    .local v3, tempB:Lcom/jme3/math/Vector3f;
    new-instance v4, Lcom/jme3/math/Vector3f;

    invoke-direct {v4}, Lcom/jme3/math/Vector3f;-><init>()V

    .line 215
    .local v4, tempC:Lcom/jme3/math/Vector3f;
    new-instance v5, Lcom/jme3/math/Vector3f;

    invoke-direct {v5}, Lcom/jme3/math/Vector3f;-><init>()V

    .line 217
    .local v5, tempD:Lcom/jme3/math/Vector3f;
    packed-switch p3, :pswitch_data_0

    .line 246
    :goto_0
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    if-ge v0, p2, :cond_0

    .line 247
    add-int v6, v0, p4

    invoke-static {v2, p1, v6}, Lcom/jme3/util/BufferUtils;->populateFromBuffer(Lcom/jme3/math/Vector3f;Ljava/nio/FloatBuffer;I)V

    .line 248
    iget-object v6, p0, Lcom/jme3/bounding/BoundingSphere;->center:Lcom/jme3/math/Vector3f;

    invoke-virtual {v2, v6}, Lcom/jme3/math/Vector3f;->distanceSquared(Lcom/jme3/math/Vector3f;)F

    move-result v6

    iget v7, p0, Lcom/jme3/bounding/BoundingSphere;->radius:F

    iget v8, p0, Lcom/jme3/bounding/BoundingSphere;->radius:F

    mul-float/2addr v7, v8

    sub-float/2addr v6, v7

    const/high16 v7, 0x3728

    cmpl-float v6, v6, v7

    if-lez v6, :cond_2

    .line 249
    move v1, v0

    .local v1, j:I
    :goto_2
    if-lez v1, :cond_1

    .line 250
    add-int v6, v1, p4

    invoke-static {v3, p1, v6}, Lcom/jme3/util/BufferUtils;->populateFromBuffer(Lcom/jme3/math/Vector3f;Ljava/nio/FloatBuffer;I)V

    .line 251
    add-int/lit8 v6, v1, -0x1

    add-int/2addr v6, p4

    invoke-static {v4, p1, v6}, Lcom/jme3/util/BufferUtils;->populateFromBuffer(Lcom/jme3/math/Vector3f;Ljava/nio/FloatBuffer;I)V

    .line 252
    add-int v6, v1, p4

    invoke-static {v4, p1, v6}, Lcom/jme3/util/BufferUtils;->setInBuffer(Lcom/jme3/math/Vector3f;Ljava/nio/FloatBuffer;I)V

    .line 253
    add-int/lit8 v6, v1, -0x1

    add-int/2addr v6, p4

    invoke-static {v3, p1, v6}, Lcom/jme3/util/BufferUtils;->setInBuffer(Lcom/jme3/math/Vector3f;Ljava/nio/FloatBuffer;I)V

    .line 249
    add-int/lit8 v1, v1, -0x1

    goto :goto_2

    .line 219
    .end local v0           #i:I
    .end local v1           #j:I
    :pswitch_0
    iput v7, p0, Lcom/jme3/bounding/BoundingSphere;->radius:F

    .line 220
    iget-object v6, p0, Lcom/jme3/bounding/BoundingSphere;->center:Lcom/jme3/math/Vector3f;

    invoke-virtual {v6, v7, v7, v7}, Lcom/jme3/math/Vector3f;->set(FFF)Lcom/jme3/math/Vector3f;

    goto :goto_0

    .line 223
    :pswitch_1
    const/high16 v6, -0x48d8

    iput v6, p0, Lcom/jme3/bounding/BoundingSphere;->radius:F

    .line 224
    iget-object v6, p0, Lcom/jme3/bounding/BoundingSphere;->center:Lcom/jme3/math/Vector3f;

    add-int/lit8 v7, p4, -0x1

    invoke-static {v6, p1, v7}, Lcom/jme3/util/BufferUtils;->populateFromBuffer(Lcom/jme3/math/Vector3f;Ljava/nio/FloatBuffer;I)V

    goto :goto_0

    .line 227
    :pswitch_2
    add-int/lit8 v6, p4, -0x1

    invoke-static {v2, p1, v6}, Lcom/jme3/util/BufferUtils;->populateFromBuffer(Lcom/jme3/math/Vector3f;Ljava/nio/FloatBuffer;I)V

    .line 228
    add-int/lit8 v6, p4, -0x2

    invoke-static {v3, p1, v6}, Lcom/jme3/util/BufferUtils;->populateFromBuffer(Lcom/jme3/math/Vector3f;Ljava/nio/FloatBuffer;I)V

    .line 229
    invoke-direct {p0, v2, v3}, Lcom/jme3/bounding/BoundingSphere;->setSphere(Lcom/jme3/math/Vector3f;Lcom/jme3/math/Vector3f;)V

    goto :goto_0

    .line 232
    :pswitch_3
    add-int/lit8 v6, p4, -0x1

    invoke-static {v2, p1, v6}, Lcom/jme3/util/BufferUtils;->populateFromBuffer(Lcom/jme3/math/Vector3f;Ljava/nio/FloatBuffer;I)V

    .line 233
    add-int/lit8 v6, p4, -0x2

    invoke-static {v3, p1, v6}, Lcom/jme3/util/BufferUtils;->populateFromBuffer(Lcom/jme3/math/Vector3f;Ljava/nio/FloatBuffer;I)V

    .line 234
    add-int/lit8 v6, p4, -0x3

    invoke-static {v4, p1, v6}, Lcom/jme3/util/BufferUtils;->populateFromBuffer(Lcom/jme3/math/Vector3f;Ljava/nio/FloatBuffer;I)V

    .line 235
    invoke-direct {p0, v2, v3, v4}, Lcom/jme3/bounding/BoundingSphere;->setSphere(Lcom/jme3/math/Vector3f;Lcom/jme3/math/Vector3f;Lcom/jme3/math/Vector3f;)V

    goto :goto_0

    .line 238
    :pswitch_4
    add-int/lit8 v6, p4, -0x1

    invoke-static {v2, p1, v6}, Lcom/jme3/util/BufferUtils;->populateFromBuffer(Lcom/jme3/math/Vector3f;Ljava/nio/FloatBuffer;I)V

    .line 239
    add-int/lit8 v6, p4, -0x2

    invoke-static {v3, p1, v6}, Lcom/jme3/util/BufferUtils;->populateFromBuffer(Lcom/jme3/math/Vector3f;Ljava/nio/FloatBuffer;I)V

    .line 240
    add-int/lit8 v6, p4, -0x3

    invoke-static {v4, p1, v6}, Lcom/jme3/util/BufferUtils;->populateFromBuffer(Lcom/jme3/math/Vector3f;Ljava/nio/FloatBuffer;I)V

    .line 241
    add-int/lit8 v6, p4, -0x4

    invoke-static {v5, p1, v6}, Lcom/jme3/util/BufferUtils;->populateFromBuffer(Lcom/jme3/math/Vector3f;Ljava/nio/FloatBuffer;I)V

    .line 242
    invoke-direct {p0, v2, v3, v4, v5}, Lcom/jme3/bounding/BoundingSphere;->setSphere(Lcom/jme3/math/Vector3f;Lcom/jme3/math/Vector3f;Lcom/jme3/math/Vector3f;Lcom/jme3/math/Vector3f;)V

    .line 259
    :cond_0
    return-void

    .line 255
    .restart local v0       #i:I
    .restart local v1       #j:I
    :cond_1
    add-int/lit8 v6, p3, 0x1

    add-int/lit8 v7, p4, 0x1

    invoke-direct {p0, p1, v0, v6, v7}, Lcom/jme3/bounding/BoundingSphere;->recurseMini(Ljava/nio/FloatBuffer;III)V

    .line 246
    .end local v1           #j:I
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_1

    .line 217
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method private setSphere(Lcom/jme3/math/Vector3f;Lcom/jme3/math/Vector3f;)V
    .locals 4
    .parameter "O"
    .parameter "A"

    .prologue
    .line 337
    iget v0, p2, Lcom/jme3/math/Vector3f;->x:F

    iget v1, p1, Lcom/jme3/math/Vector3f;->x:F

    sub-float/2addr v0, v1

    iget v1, p2, Lcom/jme3/math/Vector3f;->x:F

    iget v2, p1, Lcom/jme3/math/Vector3f;->x:F

    sub-float/2addr v1, v2

    mul-float/2addr v0, v1

    iget v1, p2, Lcom/jme3/math/Vector3f;->y:F

    iget v2, p1, Lcom/jme3/math/Vector3f;->y:F

    sub-float/2addr v1, v2

    iget v2, p2, Lcom/jme3/math/Vector3f;->y:F

    iget v3, p1, Lcom/jme3/math/Vector3f;->y:F

    sub-float/2addr v2, v3

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iget v1, p2, Lcom/jme3/math/Vector3f;->z:F

    iget v2, p1, Lcom/jme3/math/Vector3f;->z:F

    sub-float/2addr v1, v2

    iget v2, p2, Lcom/jme3/math/Vector3f;->z:F

    iget v3, p1, Lcom/jme3/math/Vector3f;->z:F

    sub-float/2addr v2, v3

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    const/high16 v1, 0x4080

    div-float/2addr v0, v1

    invoke-static {v0}, Lcom/jme3/math/FastMath;->sqrt(F)F

    move-result v0

    const v1, 0x3f800054

    add-float/2addr v0, v1

    const/high16 v1, 0x3f80

    sub-float/2addr v0, v1

    iput v0, p0, Lcom/jme3/bounding/BoundingSphere;->radius:F

    .line 339
    iget-object v0, p0, Lcom/jme3/bounding/BoundingSphere;->center:Lcom/jme3/math/Vector3f;

    const/high16 v1, 0x3f00

    invoke-virtual {v0, p1, p2, v1}, Lcom/jme3/math/Vector3f;->interpolate(Lcom/jme3/math/Vector3f;Lcom/jme3/math/Vector3f;F)Lcom/jme3/math/Vector3f;

    .line 340
    return-void
.end method

.method private setSphere(Lcom/jme3/math/Vector3f;Lcom/jme3/math/Vector3f;Lcom/jme3/math/Vector3f;)V
    .locals 8
    .parameter "O"
    .parameter "A"
    .parameter "B"

    .prologue
    const/4 v7, 0x0

    .line 309
    invoke-virtual {p2, p1}, Lcom/jme3/math/Vector3f;->subtract(Lcom/jme3/math/Vector3f;)Lcom/jme3/math/Vector3f;

    move-result-object v1

    .line 310
    .local v1, a:Lcom/jme3/math/Vector3f;
    invoke-virtual {p3, p1}, Lcom/jme3/math/Vector3f;->subtract(Lcom/jme3/math/Vector3f;)Lcom/jme3/math/Vector3f;

    move-result-object v3

    .line 311
    .local v3, b:Lcom/jme3/math/Vector3f;
    invoke-virtual {v1, v3}, Lcom/jme3/math/Vector3f;->cross(Lcom/jme3/math/Vector3f;)Lcom/jme3/math/Vector3f;

    move-result-object v2

    .line 313
    .local v2, acrossB:Lcom/jme3/math/Vector3f;
    const/high16 v5, 0x4000

    invoke-virtual {v2, v2}, Lcom/jme3/math/Vector3f;->dot(Lcom/jme3/math/Vector3f;)F

    move-result v6

    mul-float v0, v5, v6

    .line 315
    .local v0, Denominator:F
    cmpl-float v5, v0, v7

    if-nez v5, :cond_0

    .line 316
    iget-object v5, p0, Lcom/jme3/bounding/BoundingSphere;->center:Lcom/jme3/math/Vector3f;

    invoke-virtual {v5, v7, v7, v7}, Lcom/jme3/math/Vector3f;->set(FFF)Lcom/jme3/math/Vector3f;

    .line 317
    iput v7, p0, Lcom/jme3/bounding/BoundingSphere;->radius:F

    .line 324
    :goto_0
    return-void

    .line 320
    :cond_0
    invoke-virtual {v2, v1}, Lcom/jme3/math/Vector3f;->cross(Lcom/jme3/math/Vector3f;)Lcom/jme3/math/Vector3f;

    move-result-object v5

    invoke-virtual {v3}, Lcom/jme3/math/Vector3f;->lengthSquared()F

    move-result v6

    invoke-virtual {v5, v6}, Lcom/jme3/math/Vector3f;->multLocal(F)Lcom/jme3/math/Vector3f;

    move-result-object v5

    invoke-virtual {v3, v2}, Lcom/jme3/math/Vector3f;->cross(Lcom/jme3/math/Vector3f;)Lcom/jme3/math/Vector3f;

    move-result-object v6

    invoke-virtual {v1}, Lcom/jme3/math/Vector3f;->lengthSquared()F

    move-result v7

    invoke-virtual {v6, v7}, Lcom/jme3/math/Vector3f;->multLocal(F)Lcom/jme3/math/Vector3f;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/jme3/math/Vector3f;->addLocal(Lcom/jme3/math/Vector3f;)Lcom/jme3/math/Vector3f;

    move-result-object v5

    invoke-virtual {v5, v0}, Lcom/jme3/math/Vector3f;->divideLocal(F)Lcom/jme3/math/Vector3f;

    move-result-object v4

    .line 321
    .local v4, o:Lcom/jme3/math/Vector3f;
    invoke-virtual {v4}, Lcom/jme3/math/Vector3f;->length()F

    move-result v5

    const v6, 0x3f800054

    mul-float/2addr v5, v6

    iput v5, p0, Lcom/jme3/bounding/BoundingSphere;->radius:F

    .line 322
    iget-object v5, p0, Lcom/jme3/bounding/BoundingSphere;->center:Lcom/jme3/math/Vector3f;

    invoke-virtual {p1, v4, v5}, Lcom/jme3/math/Vector3f;->add(Lcom/jme3/math/Vector3f;Lcom/jme3/math/Vector3f;)Lcom/jme3/math/Vector3f;

    goto :goto_0
.end method

.method private setSphere(Lcom/jme3/math/Vector3f;Lcom/jme3/math/Vector3f;Lcom/jme3/math/Vector3f;Lcom/jme3/math/Vector3f;)V
    .locals 11
    .parameter "O"
    .parameter "A"
    .parameter "B"
    .parameter "C"

    .prologue
    .line 276
    invoke-virtual {p2, p1}, Lcom/jme3/math/Vector3f;->subtract(Lcom/jme3/math/Vector3f;)Lcom/jme3/math/Vector3f;

    move-result-object v1

    .line 277
    .local v1, a:Lcom/jme3/math/Vector3f;
    invoke-virtual {p3, p1}, Lcom/jme3/math/Vector3f;->subtract(Lcom/jme3/math/Vector3f;)Lcom/jme3/math/Vector3f;

    move-result-object v2

    .line 278
    .local v2, b:Lcom/jme3/math/Vector3f;
    invoke-virtual {p4, p1}, Lcom/jme3/math/Vector3f;->subtract(Lcom/jme3/math/Vector3f;)Lcom/jme3/math/Vector3f;

    move-result-object v3

    .line 280
    .local v3, c:Lcom/jme3/math/Vector3f;
    const/high16 v5, 0x4000

    iget v6, v1, Lcom/jme3/math/Vector3f;->x:F

    iget v7, v2, Lcom/jme3/math/Vector3f;->y:F

    iget v8, v3, Lcom/jme3/math/Vector3f;->z:F

    mul-float/2addr v7, v8

    iget v8, v3, Lcom/jme3/math/Vector3f;->y:F

    iget v9, v2, Lcom/jme3/math/Vector3f;->z:F

    mul-float/2addr v8, v9

    sub-float/2addr v7, v8

    mul-float/2addr v6, v7

    iget v7, v2, Lcom/jme3/math/Vector3f;->x:F

    iget v8, v1, Lcom/jme3/math/Vector3f;->y:F

    iget v9, v3, Lcom/jme3/math/Vector3f;->z:F

    mul-float/2addr v8, v9

    iget v9, v3, Lcom/jme3/math/Vector3f;->y:F

    iget v10, v1, Lcom/jme3/math/Vector3f;->z:F

    mul-float/2addr v9, v10

    sub-float/2addr v8, v9

    mul-float/2addr v7, v8

    sub-float/2addr v6, v7

    iget v7, v3, Lcom/jme3/math/Vector3f;->x:F

    iget v8, v1, Lcom/jme3/math/Vector3f;->y:F

    iget v9, v2, Lcom/jme3/math/Vector3f;->z:F

    mul-float/2addr v8, v9

    iget v9, v2, Lcom/jme3/math/Vector3f;->y:F

    iget v10, v1, Lcom/jme3/math/Vector3f;->z:F

    mul-float/2addr v9, v10

    sub-float/2addr v8, v9

    mul-float/2addr v7, v8

    add-float/2addr v6, v7

    mul-float v0, v5, v6

    .line 282
    .local v0, Denominator:F
    const/4 v5, 0x0

    cmpl-float v5, v0, v5

    if-nez v5, :cond_0

    .line 283
    iget-object v5, p0, Lcom/jme3/bounding/BoundingSphere;->center:Lcom/jme3/math/Vector3f;

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual {v5, v6, v7, v8}, Lcom/jme3/math/Vector3f;->set(FFF)Lcom/jme3/math/Vector3f;

    .line 284
    const/4 v5, 0x0

    iput v5, p0, Lcom/jme3/bounding/BoundingSphere;->radius:F

    .line 294
    :goto_0
    return-void

    .line 286
    :cond_0
    invoke-virtual {v1, v2}, Lcom/jme3/math/Vector3f;->cross(Lcom/jme3/math/Vector3f;)Lcom/jme3/math/Vector3f;

    move-result-object v5

    invoke-virtual {v3}, Lcom/jme3/math/Vector3f;->lengthSquared()F

    move-result v6

    invoke-virtual {v5, v6}, Lcom/jme3/math/Vector3f;->multLocal(F)Lcom/jme3/math/Vector3f;

    move-result-object v5

    invoke-virtual {v3, v1}, Lcom/jme3/math/Vector3f;->cross(Lcom/jme3/math/Vector3f;)Lcom/jme3/math/Vector3f;

    move-result-object v6

    invoke-virtual {v2}, Lcom/jme3/math/Vector3f;->lengthSquared()F

    move-result v7

    invoke-virtual {v6, v7}, Lcom/jme3/math/Vector3f;->multLocal(F)Lcom/jme3/math/Vector3f;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/jme3/math/Vector3f;->addLocal(Lcom/jme3/math/Vector3f;)Lcom/jme3/math/Vector3f;

    move-result-object v5

    invoke-virtual {v2, v3}, Lcom/jme3/math/Vector3f;->cross(Lcom/jme3/math/Vector3f;)Lcom/jme3/math/Vector3f;

    move-result-object v6

    invoke-virtual {v1}, Lcom/jme3/math/Vector3f;->lengthSquared()F

    move-result v7

    invoke-virtual {v6, v7}, Lcom/jme3/math/Vector3f;->multLocal(F)Lcom/jme3/math/Vector3f;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/jme3/math/Vector3f;->addLocal(Lcom/jme3/math/Vector3f;)Lcom/jme3/math/Vector3f;

    move-result-object v5

    invoke-virtual {v5, v0}, Lcom/jme3/math/Vector3f;->divideLocal(F)Lcom/jme3/math/Vector3f;

    move-result-object v4

    .line 291
    .local v4, o:Lcom/jme3/math/Vector3f;
    invoke-virtual {v4}, Lcom/jme3/math/Vector3f;->length()F

    move-result v5

    const v6, 0x3f800054

    mul-float/2addr v5, v6

    iput v5, p0, Lcom/jme3/bounding/BoundingSphere;->radius:F

    .line 292
    iget-object v5, p0, Lcom/jme3/bounding/BoundingSphere;->center:Lcom/jme3/math/Vector3f;

    invoke-virtual {p1, v4, v5}, Lcom/jme3/math/Vector3f;->add(Lcom/jme3/math/Vector3f;Lcom/jme3/math/Vector3f;)Lcom/jme3/math/Vector3f;

    goto :goto_0
.end method


# virtual methods
.method public calcWelzl(Ljava/nio/FloatBuffer;)V
    .locals 3
    .parameter "points"

    .prologue
    const/4 v2, 0x0

    .line 184
    iget-object v1, p0, Lcom/jme3/bounding/BoundingSphere;->center:Lcom/jme3/math/Vector3f;

    if-nez v1, :cond_0

    .line 185
    new-instance v1, Lcom/jme3/math/Vector3f;

    invoke-direct {v1}, Lcom/jme3/math/Vector3f;-><init>()V

    iput-object v1, p0, Lcom/jme3/bounding/BoundingSphere;->center:Lcom/jme3/math/Vector3f;

    .line 187
    :cond_0
    invoke-virtual {p1}, Ljava/nio/FloatBuffer;->limit()I

    move-result v1

    invoke-static {v1}, Lcom/jme3/util/BufferUtils;->createFloatBuffer(I)Ljava/nio/FloatBuffer;

    move-result-object v0

    .line 188
    .local v0, buf:Ljava/nio/FloatBuffer;
    invoke-virtual {p1}, Ljava/nio/FloatBuffer;->rewind()Ljava/nio/Buffer;

    .line 189
    invoke-virtual {v0, p1}, Ljava/nio/FloatBuffer;->put(Ljava/nio/FloatBuffer;)Ljava/nio/FloatBuffer;

    .line 190
    invoke-virtual {v0}, Ljava/nio/FloatBuffer;->flip()Ljava/nio/Buffer;

    .line 191
    invoke-virtual {v0}, Ljava/nio/FloatBuffer;->limit()I

    move-result v1

    div-int/lit8 v1, v1, 0x3

    invoke-direct {p0, v0, v1, v2, v2}, Lcom/jme3/bounding/BoundingSphere;->recurseMini(Ljava/nio/FloatBuffer;III)V

    .line 192
    return-void
.end method

.method public clone(Lcom/jme3/bounding/BoundingVolume;)Lcom/jme3/bounding/BoundingVolume;
    .locals 3
    .parameter "store"

    .prologue
    .line 632
    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lcom/jme3/bounding/BoundingVolume;->getType()Lcom/jme3/bounding/BoundingVolume$Type;

    move-result-object v1

    sget-object v2, Lcom/jme3/bounding/BoundingVolume$Type;->Sphere:Lcom/jme3/bounding/BoundingVolume$Type;

    if-ne v1, v2, :cond_1

    move-object v0, p1

    .line 633
    check-cast v0, Lcom/jme3/bounding/BoundingSphere;

    .line 634
    .local v0, rVal:Lcom/jme3/bounding/BoundingSphere;
    iget-object v1, v0, Lcom/jme3/bounding/BoundingSphere;->center:Lcom/jme3/math/Vector3f;

    if-nez v1, :cond_0

    .line 635
    new-instance v1, Lcom/jme3/math/Vector3f;

    invoke-direct {v1}, Lcom/jme3/math/Vector3f;-><init>()V

    iput-object v1, v0, Lcom/jme3/bounding/BoundingSphere;->center:Lcom/jme3/math/Vector3f;

    .line 637
    :cond_0
    iget-object v1, v0, Lcom/jme3/bounding/BoundingSphere;->center:Lcom/jme3/math/Vector3f;

    iget-object v2, p0, Lcom/jme3/bounding/BoundingSphere;->center:Lcom/jme3/math/Vector3f;

    invoke-virtual {v1, v2}, Lcom/jme3/math/Vector3f;->set(Lcom/jme3/math/Vector3f;)Lcom/jme3/math/Vector3f;

    .line 638
    iget v1, p0, Lcom/jme3/bounding/BoundingSphere;->radius:F

    iput v1, v0, Lcom/jme3/bounding/BoundingSphere;->radius:F

    .line 639
    iget v1, p0, Lcom/jme3/bounding/BoundingSphere;->checkPlane:I

    iput v1, v0, Lcom/jme3/bounding/BoundingSphere;->checkPlane:I

    .line 643
    .end local v0           #rVal:Lcom/jme3/bounding/BoundingSphere;
    :goto_0
    return-object v0

    :cond_1
    new-instance v0, Lcom/jme3/bounding/BoundingSphere;

    iget v2, p0, Lcom/jme3/bounding/BoundingSphere;->radius:F

    iget-object v1, p0, Lcom/jme3/bounding/BoundingSphere;->center:Lcom/jme3/math/Vector3f;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/jme3/bounding/BoundingSphere;->center:Lcom/jme3/math/Vector3f;

    invoke-virtual {v1}, Lcom/jme3/math/Vector3f;->clone()Lcom/jme3/math/Vector3f;

    move-result-object v1

    :goto_1
    invoke-direct {v0, v2, v1}, Lcom/jme3/bounding/BoundingSphere;-><init>(FLcom/jme3/math/Vector3f;)V

    goto :goto_0

    :cond_2
    const/4 v1, 0x0

    goto :goto_1
.end method

.method public collideWith(Lcom/jme3/collision/Collidable;Lcom/jme3/collision/CollisionResults;)I
    .locals 9
    .parameter "other"
    .parameter "results"

    .prologue
    .line 796
    instance-of v7, p1, Lcom/jme3/math/Ray;

    if-eqz v7, :cond_0

    move-object v5, p1

    .line 797
    check-cast v5, Lcom/jme3/math/Ray;

    .line 798
    .local v5, ray:Lcom/jme3/math/Ray;
    invoke-direct {p0, v5, p2}, Lcom/jme3/bounding/BoundingSphere;->collideWithRay(Lcom/jme3/math/Ray;Lcom/jme3/collision/CollisionResults;)I

    move-result v7

    .line 814
    .end local v5           #ray:Lcom/jme3/math/Ray;
    :goto_0
    return v7

    .line 799
    :cond_0
    instance-of v7, p1, Lcom/jme3/math/Triangle;

    if-eqz v7, :cond_3

    move-object v6, p1

    .line 800
    check-cast v6, Lcom/jme3/math/Triangle;

    .line 802
    .local v6, t:Lcom/jme3/math/Triangle;
    iget v7, p0, Lcom/jme3/bounding/BoundingSphere;->radius:F

    iget v8, p0, Lcom/jme3/bounding/BoundingSphere;->radius:F

    mul-float v4, v7, v8

    .line 803
    .local v4, r2:F
    iget-object v7, p0, Lcom/jme3/bounding/BoundingSphere;->center:Lcom/jme3/math/Vector3f;

    invoke-virtual {v6}, Lcom/jme3/math/Triangle;->get1()Lcom/jme3/math/Vector3f;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/jme3/math/Vector3f;->distanceSquared(Lcom/jme3/math/Vector3f;)F

    move-result v0

    .line 804
    .local v0, d1:F
    iget-object v7, p0, Lcom/jme3/bounding/BoundingSphere;->center:Lcom/jme3/math/Vector3f;

    invoke-virtual {v6}, Lcom/jme3/math/Triangle;->get2()Lcom/jme3/math/Vector3f;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/jme3/math/Vector3f;->distanceSquared(Lcom/jme3/math/Vector3f;)F

    move-result v1

    .line 805
    .local v1, d2:F
    iget-object v7, p0, Lcom/jme3/bounding/BoundingSphere;->center:Lcom/jme3/math/Vector3f;

    invoke-virtual {v6}, Lcom/jme3/math/Triangle;->get3()Lcom/jme3/math/Vector3f;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/jme3/math/Vector3f;->distanceSquared(Lcom/jme3/math/Vector3f;)F

    move-result v2

    .line 807
    .local v2, d3:F
    cmpg-float v7, v0, v4

    if-lez v7, :cond_1

    cmpg-float v7, v1, v4

    if-lez v7, :cond_1

    cmpg-float v7, v2, v4

    if-gtz v7, :cond_2

    .line 808
    :cond_1
    new-instance v3, Lcom/jme3/collision/CollisionResult;

    invoke-direct {v3}, Lcom/jme3/collision/CollisionResult;-><init>()V

    .line 809
    .local v3, r:Lcom/jme3/collision/CollisionResult;
    invoke-static {v0, v1}, Ljava/lang/Math;->min(FF)F

    move-result v7

    invoke-static {v7, v2}, Ljava/lang/Math;->min(FF)F

    move-result v7

    invoke-static {v7}, Lcom/jme3/math/FastMath;->sqrt(F)F

    move-result v7

    iget v8, p0, Lcom/jme3/bounding/BoundingSphere;->radius:F

    sub-float/2addr v7, v8

    invoke-virtual {v3, v7}, Lcom/jme3/collision/CollisionResult;->setDistance(F)V

    .line 810
    invoke-virtual {p2, v3}, Lcom/jme3/collision/CollisionResults;->addCollision(Lcom/jme3/collision/CollisionResult;)V

    .line 811
    const/4 v7, 0x1

    goto :goto_0

    .line 814
    .end local v3           #r:Lcom/jme3/collision/CollisionResult;
    :cond_2
    const/4 v7, 0x0

    goto :goto_0

    .line 816
    .end local v0           #d1:F
    .end local v1           #d2:F
    .end local v2           #d3:F
    .end local v4           #r2:F
    .end local v6           #t:Lcom/jme3/math/Triangle;
    :cond_3
    new-instance v7, Lcom/jme3/collision/UnsupportedCollisionException;

    invoke-direct {v7}, Lcom/jme3/collision/UnsupportedCollisionException;-><init>()V

    throw v7
.end method

.method public computeFromPoints(Ljava/nio/FloatBuffer;)V
    .locals 0
    .parameter "points"

    .prologue
    .line 119
    invoke-virtual {p0, p1}, Lcom/jme3/bounding/BoundingSphere;->calcWelzl(Ljava/nio/FloatBuffer;)V

    .line 120
    return-void
.end method

.method public distanceToEdge(Lcom/jme3/math/Vector3f;)F
    .locals 2
    .parameter "point"

    .prologue
    .line 831
    iget-object v0, p0, Lcom/jme3/bounding/BoundingSphere;->center:Lcom/jme3/math/Vector3f;

    invoke-virtual {v0, p1}, Lcom/jme3/math/Vector3f;->distance(Lcom/jme3/math/Vector3f;)F

    move-result v0

    iget v1, p0, Lcom/jme3/bounding/BoundingSphere;->radius:F

    sub-float/2addr v0, v1

    return v0
.end method

.method public getRadius()F
    .locals 1

    .prologue
    .line 97
    iget v0, p0, Lcom/jme3/bounding/BoundingSphere;->radius:F

    return v0
.end method

.method public getType()Lcom/jme3/bounding/BoundingVolume$Type;
    .locals 1

    .prologue
    .line 88
    sget-object v0, Lcom/jme3/bounding/BoundingVolume$Type;->Sphere:Lcom/jme3/bounding/BoundingVolume$Type;

    return-object v0
.end method

.method public intersectsBoundingBox(Lcom/jme3/bounding/BoundingBox;)Z
    .locals 3
    .parameter "bb"

    .prologue
    .line 691
    sget-boolean v0, Lcom/jme3/bounding/BoundingSphere;->$assertionsDisabled:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/jme3/bounding/BoundingSphere;->center:Lcom/jme3/math/Vector3f;

    invoke-static {v0}, Lcom/jme3/math/Vector3f;->isValidVector(Lcom/jme3/math/Vector3f;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p1, Lcom/jme3/bounding/BoundingBox;->center:Lcom/jme3/math/Vector3f;

    invoke-static {v0}, Lcom/jme3/math/Vector3f;->isValidVector(Lcom/jme3/math/Vector3f;)Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 693
    :cond_1
    iget-object v0, p1, Lcom/jme3/bounding/BoundingBox;->center:Lcom/jme3/math/Vector3f;

    iget v0, v0, Lcom/jme3/math/Vector3f;->x:F

    iget-object v1, p0, Lcom/jme3/bounding/BoundingSphere;->center:Lcom/jme3/math/Vector3f;

    iget v1, v1, Lcom/jme3/math/Vector3f;->x:F

    sub-float/2addr v0, v1

    invoke-static {v0}, Lcom/jme3/math/FastMath;->abs(F)F

    move-result v0

    invoke-virtual {p0}, Lcom/jme3/bounding/BoundingSphere;->getRadius()F

    move-result v1

    iget v2, p1, Lcom/jme3/bounding/BoundingBox;->xExtent:F

    add-float/2addr v1, v2

    cmpg-float v0, v0, v1

    if-gez v0, :cond_2

    iget-object v0, p1, Lcom/jme3/bounding/BoundingBox;->center:Lcom/jme3/math/Vector3f;

    iget v0, v0, Lcom/jme3/math/Vector3f;->y:F

    iget-object v1, p0, Lcom/jme3/bounding/BoundingSphere;->center:Lcom/jme3/math/Vector3f;

    iget v1, v1, Lcom/jme3/math/Vector3f;->y:F

    sub-float/2addr v0, v1

    invoke-static {v0}, Lcom/jme3/math/FastMath;->abs(F)F

    move-result v0

    invoke-virtual {p0}, Lcom/jme3/bounding/BoundingSphere;->getRadius()F

    move-result v1

    iget v2, p1, Lcom/jme3/bounding/BoundingBox;->yExtent:F

    add-float/2addr v1, v2

    cmpg-float v0, v0, v1

    if-gez v0, :cond_2

    iget-object v0, p1, Lcom/jme3/bounding/BoundingBox;->center:Lcom/jme3/math/Vector3f;

    iget v0, v0, Lcom/jme3/math/Vector3f;->z:F

    iget-object v1, p0, Lcom/jme3/bounding/BoundingSphere;->center:Lcom/jme3/math/Vector3f;

    iget v1, v1, Lcom/jme3/math/Vector3f;->z:F

    sub-float/2addr v0, v1

    invoke-static {v0}, Lcom/jme3/math/FastMath;->abs(F)F

    move-result v0

    invoke-virtual {p0}, Lcom/jme3/bounding/BoundingSphere;->getRadius()F

    move-result v1

    iget v2, p1, Lcom/jme3/bounding/BoundingBox;->zExtent:F

    add-float/2addr v1, v2

    cmpg-float v0, v0, v1

    if-gez v0, :cond_2

    .line 699
    const/4 v0, 0x1

    .line 702
    :goto_0
    return v0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public mergeLocal(Lcom/jme3/bounding/BoundingVolume;)Lcom/jme3/bounding/BoundingVolume;
    .locals 10
    .parameter "volume"

    .prologue
    .line 509
    if-nez p1, :cond_0

    .line 538
    .end local p0
    :goto_0
    return-object p0

    .line 513
    .restart local p0
    :cond_0
    sget-object v7, Lcom/jme3/bounding/BoundingSphere$1;->$SwitchMap$com$jme3$bounding$BoundingVolume$Type:[I

    invoke-virtual {p1}, Lcom/jme3/bounding/BoundingVolume;->getType()Lcom/jme3/bounding/BoundingVolume$Type;

    move-result-object v8

    invoke-virtual {v8}, Lcom/jme3/bounding/BoundingVolume$Type;->ordinal()I

    move-result v8

    aget v7, v7, v8

    packed-switch v7, :pswitch_data_0

    .line 538
    const/4 p0, 0x0

    goto :goto_0

    :pswitch_0
    move-object v3, p1

    .line 516
    check-cast v3, Lcom/jme3/bounding/BoundingSphere;

    .line 517
    .local v3, sphere:Lcom/jme3/bounding/BoundingSphere;
    invoke-virtual {v3}, Lcom/jme3/bounding/BoundingSphere;->getRadius()F

    move-result v5

    .line 518
    .local v5, temp_radius:F
    iget-object v4, v3, Lcom/jme3/bounding/BoundingSphere;->center:Lcom/jme3/math/Vector3f;

    .line 519
    .local v4, temp_center:Lcom/jme3/math/Vector3f;
    invoke-direct {p0, v5, v4, p0}, Lcom/jme3/bounding/BoundingSphere;->merge(FLcom/jme3/math/Vector3f;Lcom/jme3/bounding/BoundingSphere;)Lcom/jme3/bounding/BoundingVolume;

    move-result-object p0

    goto :goto_0

    .end local v3           #sphere:Lcom/jme3/bounding/BoundingSphere;
    .end local v4           #temp_center:Lcom/jme3/math/Vector3f;
    .end local v5           #temp_radius:F
    :pswitch_1
    move-object v0, p1

    .line 523
    check-cast v0, Lcom/jme3/bounding/BoundingBox;

    .line 524
    .local v0, box:Lcom/jme3/bounding/BoundingBox;
    invoke-static {}, Lcom/jme3/util/TempVars;->get()Lcom/jme3/util/TempVars;

    move-result-object v6

    .line 525
    .local v6, vars:Lcom/jme3/util/TempVars;
    iget-object v2, v6, Lcom/jme3/util/TempVars;->vect1:Lcom/jme3/math/Vector3f;

    .line 526
    .local v2, radVect:Lcom/jme3/math/Vector3f;
    iget v7, v0, Lcom/jme3/bounding/BoundingBox;->xExtent:F

    iget v8, v0, Lcom/jme3/bounding/BoundingBox;->yExtent:F

    iget v9, v0, Lcom/jme3/bounding/BoundingBox;->zExtent:F

    invoke-virtual {v2, v7, v8, v9}, Lcom/jme3/math/Vector3f;->set(FFF)Lcom/jme3/math/Vector3f;

    .line 527
    iget-object v4, v0, Lcom/jme3/bounding/BoundingBox;->center:Lcom/jme3/math/Vector3f;

    .line 528
    .restart local v4       #temp_center:Lcom/jme3/math/Vector3f;
    invoke-virtual {v2}, Lcom/jme3/math/Vector3f;->length()F

    move-result v1

    .line 529
    .local v1, len:F
    invoke-virtual {v6}, Lcom/jme3/util/TempVars;->release()V

    .line 530
    invoke-direct {p0, v1, v4, p0}, Lcom/jme3/bounding/BoundingSphere;->merge(FLcom/jme3/math/Vector3f;Lcom/jme3/bounding/BoundingSphere;)Lcom/jme3/bounding/BoundingVolume;

    move-result-object p0

    goto :goto_0

    .line 513
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public read(Lcom/jme3/export/JmeImporter;)V
    .locals 6
    .parameter "e"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 846
    invoke-super {p0, p1}, Lcom/jme3/bounding/BoundingVolume;->read(Lcom/jme3/export/JmeImporter;)V

    .line 848
    :try_start_0
    invoke-interface {p1, p0}, Lcom/jme3/export/JmeImporter;->getCapsule(Lcom/jme3/export/Savable;)Lcom/jme3/export/InputCapsule;

    move-result-object v0

    const-string v1, "radius"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Lcom/jme3/export/InputCapsule;->readFloat(Ljava/lang/String;F)F

    move-result v0

    iput v0, p0, Lcom/jme3/bounding/BoundingSphere;->radius:F
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 852
    :goto_0
    return-void

    .line 849
    :catch_0
    move-exception v5

    .line 850
    .local v5, ex:Ljava/io/IOException;
    sget-object v0, Lcom/jme3/bounding/BoundingSphere;->logger:Ljava/util/logging/Logger;

    sget-object v1, Ljava/util/logging/Level;->SEVERE:Ljava/util/logging/Level;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "read(JMEImporter)"

    const-string v4, "Exception"

    invoke-virtual/range {v0 .. v5}, Ljava/util/logging/Logger;->logp(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public setRadius(F)V
    .locals 0
    .parameter "radius"

    .prologue
    .line 107
    iput p1, p0, Lcom/jme3/bounding/BoundingSphere;->radius:F

    .line 108
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 655
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " [Radius: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/jme3/bounding/BoundingSphere;->radius:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " Center: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/jme3/bounding/BoundingSphere;->center:Lcom/jme3/math/Vector3f;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public transform(Lcom/jme3/math/Transform;Lcom/jme3/bounding/BoundingVolume;)Lcom/jme3/bounding/BoundingVolume;
    .locals 5
    .parameter "trans"
    .parameter "store"

    .prologue
    const/high16 v4, 0x3f80

    const/4 v3, 0x0

    .line 387
    if-eqz p2, :cond_0

    invoke-virtual {p2}, Lcom/jme3/bounding/BoundingVolume;->getType()Lcom/jme3/bounding/BoundingVolume$Type;

    move-result-object v1

    sget-object v2, Lcom/jme3/bounding/BoundingVolume$Type;->Sphere:Lcom/jme3/bounding/BoundingVolume$Type;

    if-eq v1, v2, :cond_1

    .line 388
    :cond_0
    new-instance v0, Lcom/jme3/bounding/BoundingSphere;

    new-instance v1, Lcom/jme3/math/Vector3f;

    invoke-direct {v1, v3, v3, v3}, Lcom/jme3/math/Vector3f;-><init>(FFF)V

    invoke-direct {v0, v4, v1}, Lcom/jme3/bounding/BoundingSphere;-><init>(FLcom/jme3/math/Vector3f;)V

    .line 393
    .local v0, sphere:Lcom/jme3/bounding/BoundingSphere;
    :goto_0
    iget-object v1, p0, Lcom/jme3/bounding/BoundingSphere;->center:Lcom/jme3/math/Vector3f;

    invoke-virtual {p1}, Lcom/jme3/math/Transform;->getScale()Lcom/jme3/math/Vector3f;

    move-result-object v2

    iget-object v3, v0, Lcom/jme3/bounding/BoundingSphere;->center:Lcom/jme3/math/Vector3f;

    invoke-virtual {v1, v2, v3}, Lcom/jme3/math/Vector3f;->mult(Lcom/jme3/math/Vector3f;Lcom/jme3/math/Vector3f;)Lcom/jme3/math/Vector3f;

    .line 394
    invoke-virtual {p1}, Lcom/jme3/math/Transform;->getRotation()Lcom/jme3/math/Quaternion;

    move-result-object v1

    iget-object v2, v0, Lcom/jme3/bounding/BoundingSphere;->center:Lcom/jme3/math/Vector3f;

    iget-object v3, v0, Lcom/jme3/bounding/BoundingSphere;->center:Lcom/jme3/math/Vector3f;

    invoke-virtual {v1, v2, v3}, Lcom/jme3/math/Quaternion;->mult(Lcom/jme3/math/Vector3f;Lcom/jme3/math/Vector3f;)Lcom/jme3/math/Vector3f;

    .line 395
    iget-object v1, v0, Lcom/jme3/bounding/BoundingSphere;->center:Lcom/jme3/math/Vector3f;

    invoke-virtual {p1}, Lcom/jme3/math/Transform;->getTranslation()Lcom/jme3/math/Vector3f;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/jme3/math/Vector3f;->addLocal(Lcom/jme3/math/Vector3f;)Lcom/jme3/math/Vector3f;

    .line 396
    invoke-virtual {p1}, Lcom/jme3/math/Transform;->getScale()Lcom/jme3/math/Vector3f;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/jme3/bounding/BoundingSphere;->getMaxAxis(Lcom/jme3/math/Vector3f;)F

    move-result v1

    iget v2, p0, Lcom/jme3/bounding/BoundingSphere;->radius:F

    mul-float/2addr v1, v2

    invoke-static {v1}, Lcom/jme3/math/FastMath;->abs(F)F

    move-result v1

    const v2, 0x3f800054

    add-float/2addr v1, v2

    sub-float/2addr v1, v4

    iput v1, v0, Lcom/jme3/bounding/BoundingSphere;->radius:F

    .line 397
    return-object v0

    .end local v0           #sphere:Lcom/jme3/bounding/BoundingSphere;
    :cond_1
    move-object v0, p2

    .line 390
    check-cast v0, Lcom/jme3/bounding/BoundingSphere;

    .restart local v0       #sphere:Lcom/jme3/bounding/BoundingSphere;
    goto :goto_0
.end method

.method public whichSide(Lcom/jme3/math/Plane;)Lcom/jme3/math/Plane$Side;
    .locals 2
    .parameter "plane"

    .prologue
    .line 444
    iget-object v1, p0, Lcom/jme3/bounding/BoundingSphere;->center:Lcom/jme3/math/Vector3f;

    invoke-virtual {p1, v1}, Lcom/jme3/math/Plane;->pseudoDistance(Lcom/jme3/math/Vector3f;)F

    move-result v0

    .line 446
    .local v0, distance:F
    iget v1, p0, Lcom/jme3/bounding/BoundingSphere;->radius:F

    neg-float v1, v1

    cmpg-float v1, v0, v1

    if-gtz v1, :cond_0

    .line 447
    sget-object v1, Lcom/jme3/math/Plane$Side;->Negative:Lcom/jme3/math/Plane$Side;

    .line 451
    :goto_0
    return-object v1

    .line 448
    :cond_0
    iget v1, p0, Lcom/jme3/bounding/BoundingSphere;->radius:F

    cmpl-float v1, v0, v1

    if-ltz v1, :cond_1

    .line 449
    sget-object v1, Lcom/jme3/math/Plane$Side;->Positive:Lcom/jme3/math/Plane$Side;

    goto :goto_0

    .line 451
    :cond_1
    sget-object v1, Lcom/jme3/math/Plane$Side;->None:Lcom/jme3/math/Plane$Side;

    goto :goto_0
.end method
