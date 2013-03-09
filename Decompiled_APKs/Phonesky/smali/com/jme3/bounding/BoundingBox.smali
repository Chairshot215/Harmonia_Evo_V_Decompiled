.class public Lcom/jme3/bounding/BoundingBox;
.super Lcom/jme3/bounding/BoundingVolume;
.source "BoundingBox.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/jme3/bounding/BoundingBox$1;
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field xExtent:F

.field yExtent:F

.field zExtent:F


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 62
    const-class v0, Lcom/jme3/bounding/BoundingBox;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lcom/jme3/bounding/BoundingBox;->$assertionsDisabled:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 70
    invoke-direct {p0}, Lcom/jme3/bounding/BoundingVolume;-><init>()V

    .line 71
    return-void
.end method

.method public constructor <init>(Lcom/jme3/bounding/BoundingBox;)V
    .locals 2
    .parameter "source"

    .prologue
    .line 84
    invoke-direct {p0}, Lcom/jme3/bounding/BoundingVolume;-><init>()V

    .line 85
    iget-object v0, p0, Lcom/jme3/bounding/BoundingBox;->center:Lcom/jme3/math/Vector3f;

    iget-object v1, p1, Lcom/jme3/bounding/BoundingBox;->center:Lcom/jme3/math/Vector3f;

    invoke-virtual {v0, v1}, Lcom/jme3/math/Vector3f;->set(Lcom/jme3/math/Vector3f;)Lcom/jme3/math/Vector3f;

    .line 86
    iget v0, p1, Lcom/jme3/bounding/BoundingBox;->xExtent:F

    iput v0, p0, Lcom/jme3/bounding/BoundingBox;->xExtent:F

    .line 87
    iget v0, p1, Lcom/jme3/bounding/BoundingBox;->yExtent:F

    iput v0, p0, Lcom/jme3/bounding/BoundingBox;->yExtent:F

    .line 88
    iget v0, p1, Lcom/jme3/bounding/BoundingBox;->zExtent:F

    iput v0, p0, Lcom/jme3/bounding/BoundingBox;->zExtent:F

    .line 89
    return-void
.end method

.method public constructor <init>(Lcom/jme3/math/Vector3f;FFF)V
    .locals 1
    .parameter "c"
    .parameter "x"
    .parameter "y"
    .parameter "z"

    .prologue
    .line 77
    invoke-direct {p0}, Lcom/jme3/bounding/BoundingVolume;-><init>()V

    .line 78
    iget-object v0, p0, Lcom/jme3/bounding/BoundingBox;->center:Lcom/jme3/math/Vector3f;

    invoke-virtual {v0, p1}, Lcom/jme3/math/Vector3f;->set(Lcom/jme3/math/Vector3f;)Lcom/jme3/math/Vector3f;

    .line 79
    iput p2, p0, Lcom/jme3/bounding/BoundingBox;->xExtent:F

    .line 80
    iput p3, p0, Lcom/jme3/bounding/BoundingBox;->yExtent:F

    .line 81
    iput p4, p0, Lcom/jme3/bounding/BoundingBox;->zExtent:F

    .line 82
    return-void
.end method

.method public constructor <init>(Lcom/jme3/math/Vector3f;Lcom/jme3/math/Vector3f;)V
    .locals 0
    .parameter "min"
    .parameter "max"

    .prologue
    .line 91
    invoke-direct {p0}, Lcom/jme3/bounding/BoundingVolume;-><init>()V

    .line 92
    invoke-virtual {p0, p1, p2}, Lcom/jme3/bounding/BoundingBox;->setMinMax(Lcom/jme3/math/Vector3f;Lcom/jme3/math/Vector3f;)V

    .line 93
    return-void
.end method

.method public static checkMinMax(Lcom/jme3/math/Vector3f;Lcom/jme3/math/Vector3f;Lcom/jme3/math/Vector3f;)V
    .locals 2
    .parameter "min"
    .parameter "max"
    .parameter "point"

    .prologue
    .line 184
    iget v0, p2, Lcom/jme3/math/Vector3f;->x:F

    iget v1, p0, Lcom/jme3/math/Vector3f;->x:F

    cmpg-float v0, v0, v1

    if-gez v0, :cond_0

    .line 185
    iget v0, p2, Lcom/jme3/math/Vector3f;->x:F

    iput v0, p0, Lcom/jme3/math/Vector3f;->x:F

    .line 187
    :cond_0
    iget v0, p2, Lcom/jme3/math/Vector3f;->x:F

    iget v1, p1, Lcom/jme3/math/Vector3f;->x:F

    cmpl-float v0, v0, v1

    if-lez v0, :cond_1

    .line 188
    iget v0, p2, Lcom/jme3/math/Vector3f;->x:F

    iput v0, p1, Lcom/jme3/math/Vector3f;->x:F

    .line 190
    :cond_1
    iget v0, p2, Lcom/jme3/math/Vector3f;->y:F

    iget v1, p0, Lcom/jme3/math/Vector3f;->y:F

    cmpg-float v0, v0, v1

    if-gez v0, :cond_2

    .line 191
    iget v0, p2, Lcom/jme3/math/Vector3f;->y:F

    iput v0, p0, Lcom/jme3/math/Vector3f;->y:F

    .line 193
    :cond_2
    iget v0, p2, Lcom/jme3/math/Vector3f;->y:F

    iget v1, p1, Lcom/jme3/math/Vector3f;->y:F

    cmpl-float v0, v0, v1

    if-lez v0, :cond_3

    .line 194
    iget v0, p2, Lcom/jme3/math/Vector3f;->y:F

    iput v0, p1, Lcom/jme3/math/Vector3f;->y:F

    .line 196
    :cond_3
    iget v0, p2, Lcom/jme3/math/Vector3f;->z:F

    iget v1, p0, Lcom/jme3/math/Vector3f;->z:F

    cmpg-float v0, v0, v1

    if-gez v0, :cond_4

    .line 197
    iget v0, p2, Lcom/jme3/math/Vector3f;->z:F

    iput v0, p0, Lcom/jme3/math/Vector3f;->z:F

    .line 199
    :cond_4
    iget v0, p2, Lcom/jme3/math/Vector3f;->z:F

    iget v1, p1, Lcom/jme3/math/Vector3f;->z:F

    cmpl-float v0, v0, v1

    if-lez v0, :cond_5

    .line 200
    iget v0, p2, Lcom/jme3/math/Vector3f;->z:F

    iput v0, p1, Lcom/jme3/math/Vector3f;->z:F

    .line 202
    :cond_5
    return-void
.end method

.method private clip(FF[F)Z
    .locals 6
    .parameter "denom"
    .parameter "numer"
    .parameter "t"

    .prologue
    const/4 v3, 0x0

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 860
    cmpl-float v2, p1, v3

    if-lez v2, :cond_2

    .line 861
    aget v2, p3, v0

    mul-float/2addr v2, p1

    cmpl-float v2, p2, v2

    if-lez v2, :cond_1

    move v0, v1

    .line 877
    :cond_0
    :goto_0
    return v0

    .line 864
    :cond_1
    aget v2, p3, v1

    mul-float/2addr v2, p1

    cmpl-float v2, p2, v2

    if-lez v2, :cond_0

    .line 865
    div-float v2, p2, p1

    aput v2, p3, v1

    goto :goto_0

    .line 868
    :cond_2
    cmpg-float v2, p1, v3

    if-gez v2, :cond_4

    .line 869
    aget v2, p3, v1

    mul-float/2addr v2, p1

    cmpl-float v2, p2, v2

    if-lez v2, :cond_3

    move v0, v1

    .line 870
    goto :goto_0

    .line 872
    :cond_3
    aget v1, p3, v0

    mul-float/2addr v1, p1

    cmpl-float v1, p2, v1

    if-lez v1, :cond_0

    .line 873
    div-float v1, p2, p1

    aput v1, p3, v0

    goto :goto_0

    .line 877
    :cond_4
    float-to-double v2, p2

    const-wide/16 v4, 0x0

    cmpg-double v2, v2, v4

    if-lez v2, :cond_0

    move v0, v1

    goto :goto_0
.end method

.method private collideWithRay(Lcom/jme3/math/Ray;Lcom/jme3/collision/CollisionResults;)I
    .locals 15
    .parameter "ray"
    .parameter "results"

    .prologue
    .line 715
    invoke-static {}, Lcom/jme3/util/TempVars;->get()Lcom/jme3/util/TempVars;

    move-result-object v11

    .line 717
    .local v11, vars:Lcom/jme3/util/TempVars;
    iget-object v12, v11, Lcom/jme3/util/TempVars;->vect1:Lcom/jme3/math/Vector3f;

    move-object/from16 v0, p1

    iget-object v13, v0, Lcom/jme3/math/Ray;->origin:Lcom/jme3/math/Vector3f;

    invoke-virtual {v12, v13}, Lcom/jme3/math/Vector3f;->set(Lcom/jme3/math/Vector3f;)Lcom/jme3/math/Vector3f;

    move-result-object v12

    iget-object v13, p0, Lcom/jme3/bounding/BoundingBox;->center:Lcom/jme3/math/Vector3f;

    invoke-virtual {v12, v13}, Lcom/jme3/math/Vector3f;->subtractLocal(Lcom/jme3/math/Vector3f;)Lcom/jme3/math/Vector3f;

    move-result-object v1

    .line 718
    .local v1, diff:Lcom/jme3/math/Vector3f;
    iget-object v12, v11, Lcom/jme3/util/TempVars;->vect2:Lcom/jme3/math/Vector3f;

    move-object/from16 v0, p1

    iget-object v13, v0, Lcom/jme3/math/Ray;->direction:Lcom/jme3/math/Vector3f;

    invoke-virtual {v12, v13}, Lcom/jme3/math/Vector3f;->set(Lcom/jme3/math/Vector3f;)Lcom/jme3/math/Vector3f;

    move-result-object v2

    .line 720
    .local v2, direction:Lcom/jme3/math/Vector3f;
    const/4 v12, 0x2

    new-array v10, v12, [F

    fill-array-data v10, :array_0

    .line 722
    .local v10, t:[F
    const/4 v12, 0x0

    aget v8, v10, v12

    .local v8, saveT0:F
    const/4 v12, 0x1

    aget v9, v10, v12

    .line 723
    .local v9, saveT1:F
    iget v12, v2, Lcom/jme3/math/Vector3f;->x:F

    iget v13, v1, Lcom/jme3/math/Vector3f;->x:F

    neg-float v13, v13

    iget v14, p0, Lcom/jme3/bounding/BoundingBox;->xExtent:F

    sub-float/2addr v13, v14

    invoke-direct {p0, v12, v13, v10}, Lcom/jme3/bounding/BoundingBox;->clip(FF[F)Z

    move-result v12

    if-eqz v12, :cond_1

    iget v12, v2, Lcom/jme3/math/Vector3f;->x:F

    neg-float v12, v12

    iget v13, v1, Lcom/jme3/math/Vector3f;->x:F

    iget v14, p0, Lcom/jme3/bounding/BoundingBox;->xExtent:F

    sub-float/2addr v13, v14

    invoke-direct {p0, v12, v13, v10}, Lcom/jme3/bounding/BoundingBox;->clip(FF[F)Z

    move-result v12

    if-eqz v12, :cond_1

    iget v12, v2, Lcom/jme3/math/Vector3f;->y:F

    iget v13, v1, Lcom/jme3/math/Vector3f;->y:F

    neg-float v13, v13

    iget v14, p0, Lcom/jme3/bounding/BoundingBox;->yExtent:F

    sub-float/2addr v13, v14

    invoke-direct {p0, v12, v13, v10}, Lcom/jme3/bounding/BoundingBox;->clip(FF[F)Z

    move-result v12

    if-eqz v12, :cond_1

    iget v12, v2, Lcom/jme3/math/Vector3f;->y:F

    neg-float v12, v12

    iget v13, v1, Lcom/jme3/math/Vector3f;->y:F

    iget v14, p0, Lcom/jme3/bounding/BoundingBox;->yExtent:F

    sub-float/2addr v13, v14

    invoke-direct {p0, v12, v13, v10}, Lcom/jme3/bounding/BoundingBox;->clip(FF[F)Z

    move-result v12

    if-eqz v12, :cond_1

    iget v12, v2, Lcom/jme3/math/Vector3f;->z:F

    iget v13, v1, Lcom/jme3/math/Vector3f;->z:F

    neg-float v13, v13

    iget v14, p0, Lcom/jme3/bounding/BoundingBox;->zExtent:F

    sub-float/2addr v13, v14

    invoke-direct {p0, v12, v13, v10}, Lcom/jme3/bounding/BoundingBox;->clip(FF[F)Z

    move-result v12

    if-eqz v12, :cond_1

    iget v12, v2, Lcom/jme3/math/Vector3f;->z:F

    neg-float v12, v12

    iget v13, v1, Lcom/jme3/math/Vector3f;->z:F

    iget v14, p0, Lcom/jme3/bounding/BoundingBox;->zExtent:F

    sub-float/2addr v13, v14

    invoke-direct {p0, v12, v13, v10}, Lcom/jme3/bounding/BoundingBox;->clip(FF[F)Z

    move-result v12

    if-eqz v12, :cond_1

    const/4 v4, 0x1

    .line 729
    .local v4, notEntirelyClipped:Z
    :goto_0
    invoke-virtual {v11}, Lcom/jme3/util/TempVars;->release()V

    .line 731
    if-eqz v4, :cond_3

    const/4 v12, 0x0

    aget v12, v10, v12

    cmpl-float v12, v12, v8

    if-nez v12, :cond_0

    const/4 v12, 0x1

    aget v12, v10, v12

    cmpl-float v12, v12, v9

    if-eqz v12, :cond_3

    .line 732
    :cond_0
    const/4 v12, 0x1

    aget v12, v10, v12

    const/4 v13, 0x0

    aget v13, v10, v13

    cmpl-float v12, v12, v13

    if-lez v12, :cond_2

    .line 733
    move-object v3, v10

    .line 734
    .local v3, distances:[F
    const/4 v12, 0x2

    new-array v6, v12, [Lcom/jme3/math/Vector3f;

    const/4 v12, 0x0

    new-instance v13, Lcom/jme3/math/Vector3f;

    move-object/from16 v0, p1

    iget-object v14, v0, Lcom/jme3/math/Ray;->direction:Lcom/jme3/math/Vector3f;

    invoke-direct {v13, v14}, Lcom/jme3/math/Vector3f;-><init>(Lcom/jme3/math/Vector3f;)V

    const/4 v14, 0x0

    aget v14, v3, v14

    invoke-virtual {v13, v14}, Lcom/jme3/math/Vector3f;->multLocal(F)Lcom/jme3/math/Vector3f;

    move-result-object v13

    move-object/from16 v0, p1

    iget-object v14, v0, Lcom/jme3/math/Ray;->origin:Lcom/jme3/math/Vector3f;

    invoke-virtual {v13, v14}, Lcom/jme3/math/Vector3f;->addLocal(Lcom/jme3/math/Vector3f;)Lcom/jme3/math/Vector3f;

    move-result-object v13

    aput-object v13, v6, v12

    const/4 v12, 0x1

    new-instance v13, Lcom/jme3/math/Vector3f;

    move-object/from16 v0, p1

    iget-object v14, v0, Lcom/jme3/math/Ray;->direction:Lcom/jme3/math/Vector3f;

    invoke-direct {v13, v14}, Lcom/jme3/math/Vector3f;-><init>(Lcom/jme3/math/Vector3f;)V

    const/4 v14, 0x1

    aget v14, v3, v14

    invoke-virtual {v13, v14}, Lcom/jme3/math/Vector3f;->multLocal(F)Lcom/jme3/math/Vector3f;

    move-result-object v13

    move-object/from16 v0, p1

    iget-object v14, v0, Lcom/jme3/math/Ray;->origin:Lcom/jme3/math/Vector3f;

    invoke-virtual {v13, v14}, Lcom/jme3/math/Vector3f;->addLocal(Lcom/jme3/math/Vector3f;)Lcom/jme3/math/Vector3f;

    move-result-object v13

    aput-object v13, v6, v12

    .line 739
    .local v6, points:[Lcom/jme3/math/Vector3f;
    new-instance v7, Lcom/jme3/collision/CollisionResult;

    const/4 v12, 0x0

    aget-object v12, v6, v12

    const/4 v13, 0x0

    aget v13, v3, v13

    invoke-direct {v7, v12, v13}, Lcom/jme3/collision/CollisionResult;-><init>(Lcom/jme3/math/Vector3f;F)V

    .line 740
    .local v7, result:Lcom/jme3/collision/CollisionResult;
    move-object/from16 v0, p2

    invoke-virtual {v0, v7}, Lcom/jme3/collision/CollisionResults;->addCollision(Lcom/jme3/collision/CollisionResult;)V

    .line 741
    new-instance v7, Lcom/jme3/collision/CollisionResult;

    .end local v7           #result:Lcom/jme3/collision/CollisionResult;
    const/4 v12, 0x1

    aget-object v12, v6, v12

    const/4 v13, 0x1

    aget v13, v3, v13

    invoke-direct {v7, v12, v13}, Lcom/jme3/collision/CollisionResult;-><init>(Lcom/jme3/math/Vector3f;F)V

    .line 742
    .restart local v7       #result:Lcom/jme3/collision/CollisionResult;
    move-object/from16 v0, p2

    invoke-virtual {v0, v7}, Lcom/jme3/collision/CollisionResults;->addCollision(Lcom/jme3/collision/CollisionResult;)V

    .line 743
    const/4 v12, 0x2

    .line 751
    .end local v3           #distances:[F
    .end local v6           #points:[Lcom/jme3/math/Vector3f;
    .end local v7           #result:Lcom/jme3/collision/CollisionResult;
    :goto_1
    return v12

    .line 723
    .end local v4           #notEntirelyClipped:Z
    :cond_1
    const/4 v4, 0x0

    goto :goto_0

    .line 746
    .restart local v4       #notEntirelyClipped:Z
    :cond_2
    new-instance v12, Lcom/jme3/math/Vector3f;

    move-object/from16 v0, p1

    iget-object v13, v0, Lcom/jme3/math/Ray;->direction:Lcom/jme3/math/Vector3f;

    invoke-direct {v12, v13}, Lcom/jme3/math/Vector3f;-><init>(Lcom/jme3/math/Vector3f;)V

    const/4 v13, 0x0

    aget v13, v10, v13

    invoke-virtual {v12, v13}, Lcom/jme3/math/Vector3f;->multLocal(F)Lcom/jme3/math/Vector3f;

    move-result-object v12

    move-object/from16 v0, p1

    iget-object v13, v0, Lcom/jme3/math/Ray;->origin:Lcom/jme3/math/Vector3f;

    invoke-virtual {v12, v13}, Lcom/jme3/math/Vector3f;->addLocal(Lcom/jme3/math/Vector3f;)Lcom/jme3/math/Vector3f;

    move-result-object v5

    .line 747
    .local v5, point:Lcom/jme3/math/Vector3f;
    new-instance v7, Lcom/jme3/collision/CollisionResult;

    const/4 v12, 0x0

    aget v12, v10, v12

    invoke-direct {v7, v5, v12}, Lcom/jme3/collision/CollisionResult;-><init>(Lcom/jme3/math/Vector3f;F)V

    .line 748
    .restart local v7       #result:Lcom/jme3/collision/CollisionResult;
    move-object/from16 v0, p2

    invoke-virtual {v0, v7}, Lcom/jme3/collision/CollisionResults;->addCollision(Lcom/jme3/collision/CollisionResult;)V

    .line 749
    const/4 v12, 0x1

    goto :goto_1

    .line 751
    .end local v5           #point:Lcom/jme3/math/Vector3f;
    .end local v7           #result:Lcom/jme3/collision/CollisionResult;
    :cond_3
    const/4 v12, 0x0

    goto :goto_1

    .line 720
    nop

    :array_0
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x80t 0x7ft
    .end array-data
.end method

.method private merge(Lcom/jme3/math/Vector3f;FFFLcom/jme3/bounding/BoundingBox;)Lcom/jme3/bounding/BoundingBox;
    .locals 4
    .parameter "boxCenter"
    .parameter "boxX"
    .parameter "boxY"
    .parameter "boxZ"
    .parameter "rVal"

    .prologue
    .line 496
    invoke-static {}, Lcom/jme3/util/TempVars;->get()Lcom/jme3/util/TempVars;

    move-result-object v0

    .line 498
    .local v0, vars:Lcom/jme3/util/TempVars;
    iget-object v1, v0, Lcom/jme3/util/TempVars;->vect1:Lcom/jme3/math/Vector3f;

    iget-object v2, p0, Lcom/jme3/bounding/BoundingBox;->center:Lcom/jme3/math/Vector3f;

    iget v2, v2, Lcom/jme3/math/Vector3f;->x:F

    iget v3, p0, Lcom/jme3/bounding/BoundingBox;->xExtent:F

    sub-float/2addr v2, v3

    iput v2, v1, Lcom/jme3/math/Vector3f;->x:F

    .line 499
    iget-object v1, v0, Lcom/jme3/util/TempVars;->vect1:Lcom/jme3/math/Vector3f;

    iget v1, v1, Lcom/jme3/math/Vector3f;->x:F

    iget v2, p1, Lcom/jme3/math/Vector3f;->x:F

    sub-float/2addr v2, p2

    cmpl-float v1, v1, v2

    if-lez v1, :cond_0

    .line 500
    iget-object v1, v0, Lcom/jme3/util/TempVars;->vect1:Lcom/jme3/math/Vector3f;

    iget v2, p1, Lcom/jme3/math/Vector3f;->x:F

    sub-float/2addr v2, p2

    iput v2, v1, Lcom/jme3/math/Vector3f;->x:F

    .line 502
    :cond_0
    iget-object v1, v0, Lcom/jme3/util/TempVars;->vect1:Lcom/jme3/math/Vector3f;

    iget-object v2, p0, Lcom/jme3/bounding/BoundingBox;->center:Lcom/jme3/math/Vector3f;

    iget v2, v2, Lcom/jme3/math/Vector3f;->y:F

    iget v3, p0, Lcom/jme3/bounding/BoundingBox;->yExtent:F

    sub-float/2addr v2, v3

    iput v2, v1, Lcom/jme3/math/Vector3f;->y:F

    .line 503
    iget-object v1, v0, Lcom/jme3/util/TempVars;->vect1:Lcom/jme3/math/Vector3f;

    iget v1, v1, Lcom/jme3/math/Vector3f;->y:F

    iget v2, p1, Lcom/jme3/math/Vector3f;->y:F

    sub-float/2addr v2, p3

    cmpl-float v1, v1, v2

    if-lez v1, :cond_1

    .line 504
    iget-object v1, v0, Lcom/jme3/util/TempVars;->vect1:Lcom/jme3/math/Vector3f;

    iget v2, p1, Lcom/jme3/math/Vector3f;->y:F

    sub-float/2addr v2, p3

    iput v2, v1, Lcom/jme3/math/Vector3f;->y:F

    .line 506
    :cond_1
    iget-object v1, v0, Lcom/jme3/util/TempVars;->vect1:Lcom/jme3/math/Vector3f;

    iget-object v2, p0, Lcom/jme3/bounding/BoundingBox;->center:Lcom/jme3/math/Vector3f;

    iget v2, v2, Lcom/jme3/math/Vector3f;->z:F

    iget v3, p0, Lcom/jme3/bounding/BoundingBox;->zExtent:F

    sub-float/2addr v2, v3

    iput v2, v1, Lcom/jme3/math/Vector3f;->z:F

    .line 507
    iget-object v1, v0, Lcom/jme3/util/TempVars;->vect1:Lcom/jme3/math/Vector3f;

    iget v1, v1, Lcom/jme3/math/Vector3f;->z:F

    iget v2, p1, Lcom/jme3/math/Vector3f;->z:F

    sub-float/2addr v2, p4

    cmpl-float v1, v1, v2

    if-lez v1, :cond_2

    .line 508
    iget-object v1, v0, Lcom/jme3/util/TempVars;->vect1:Lcom/jme3/math/Vector3f;

    iget v2, p1, Lcom/jme3/math/Vector3f;->z:F

    sub-float/2addr v2, p4

    iput v2, v1, Lcom/jme3/math/Vector3f;->z:F

    .line 511
    :cond_2
    iget-object v1, v0, Lcom/jme3/util/TempVars;->vect2:Lcom/jme3/math/Vector3f;

    iget-object v2, p0, Lcom/jme3/bounding/BoundingBox;->center:Lcom/jme3/math/Vector3f;

    iget v2, v2, Lcom/jme3/math/Vector3f;->x:F

    iget v3, p0, Lcom/jme3/bounding/BoundingBox;->xExtent:F

    add-float/2addr v2, v3

    iput v2, v1, Lcom/jme3/math/Vector3f;->x:F

    .line 512
    iget-object v1, v0, Lcom/jme3/util/TempVars;->vect2:Lcom/jme3/math/Vector3f;

    iget v1, v1, Lcom/jme3/math/Vector3f;->x:F

    iget v2, p1, Lcom/jme3/math/Vector3f;->x:F

    add-float/2addr v2, p2

    cmpg-float v1, v1, v2

    if-gez v1, :cond_3

    .line 513
    iget-object v1, v0, Lcom/jme3/util/TempVars;->vect2:Lcom/jme3/math/Vector3f;

    iget v2, p1, Lcom/jme3/math/Vector3f;->x:F

    add-float/2addr v2, p2

    iput v2, v1, Lcom/jme3/math/Vector3f;->x:F

    .line 515
    :cond_3
    iget-object v1, v0, Lcom/jme3/util/TempVars;->vect2:Lcom/jme3/math/Vector3f;

    iget-object v2, p0, Lcom/jme3/bounding/BoundingBox;->center:Lcom/jme3/math/Vector3f;

    iget v2, v2, Lcom/jme3/math/Vector3f;->y:F

    iget v3, p0, Lcom/jme3/bounding/BoundingBox;->yExtent:F

    add-float/2addr v2, v3

    iput v2, v1, Lcom/jme3/math/Vector3f;->y:F

    .line 516
    iget-object v1, v0, Lcom/jme3/util/TempVars;->vect2:Lcom/jme3/math/Vector3f;

    iget v1, v1, Lcom/jme3/math/Vector3f;->y:F

    iget v2, p1, Lcom/jme3/math/Vector3f;->y:F

    add-float/2addr v2, p3

    cmpg-float v1, v1, v2

    if-gez v1, :cond_4

    .line 517
    iget-object v1, v0, Lcom/jme3/util/TempVars;->vect2:Lcom/jme3/math/Vector3f;

    iget v2, p1, Lcom/jme3/math/Vector3f;->y:F

    add-float/2addr v2, p3

    iput v2, v1, Lcom/jme3/math/Vector3f;->y:F

    .line 519
    :cond_4
    iget-object v1, v0, Lcom/jme3/util/TempVars;->vect2:Lcom/jme3/math/Vector3f;

    iget-object v2, p0, Lcom/jme3/bounding/BoundingBox;->center:Lcom/jme3/math/Vector3f;

    iget v2, v2, Lcom/jme3/math/Vector3f;->z:F

    iget v3, p0, Lcom/jme3/bounding/BoundingBox;->zExtent:F

    add-float/2addr v2, v3

    iput v2, v1, Lcom/jme3/math/Vector3f;->z:F

    .line 520
    iget-object v1, v0, Lcom/jme3/util/TempVars;->vect2:Lcom/jme3/math/Vector3f;

    iget v1, v1, Lcom/jme3/math/Vector3f;->z:F

    iget v2, p1, Lcom/jme3/math/Vector3f;->z:F

    add-float/2addr v2, p4

    cmpg-float v1, v1, v2

    if-gez v1, :cond_5

    .line 521
    iget-object v1, v0, Lcom/jme3/util/TempVars;->vect2:Lcom/jme3/math/Vector3f;

    iget v2, p1, Lcom/jme3/math/Vector3f;->z:F

    add-float/2addr v2, p4

    iput v2, v1, Lcom/jme3/math/Vector3f;->z:F

    .line 524
    :cond_5
    iget-object v1, p0, Lcom/jme3/bounding/BoundingBox;->center:Lcom/jme3/math/Vector3f;

    iget-object v2, v0, Lcom/jme3/util/TempVars;->vect2:Lcom/jme3/math/Vector3f;

    invoke-virtual {v1, v2}, Lcom/jme3/math/Vector3f;->set(Lcom/jme3/math/Vector3f;)Lcom/jme3/math/Vector3f;

    move-result-object v1

    iget-object v2, v0, Lcom/jme3/util/TempVars;->vect1:Lcom/jme3/math/Vector3f;

    invoke-virtual {v1, v2}, Lcom/jme3/math/Vector3f;->addLocal(Lcom/jme3/math/Vector3f;)Lcom/jme3/math/Vector3f;

    move-result-object v1

    const/high16 v2, 0x3f00

    invoke-virtual {v1, v2}, Lcom/jme3/math/Vector3f;->multLocal(F)Lcom/jme3/math/Vector3f;

    .line 526
    iget-object v1, v0, Lcom/jme3/util/TempVars;->vect2:Lcom/jme3/math/Vector3f;

    iget v1, v1, Lcom/jme3/math/Vector3f;->x:F

    iget-object v2, p0, Lcom/jme3/bounding/BoundingBox;->center:Lcom/jme3/math/Vector3f;

    iget v2, v2, Lcom/jme3/math/Vector3f;->x:F

    sub-float/2addr v1, v2

    iput v1, p0, Lcom/jme3/bounding/BoundingBox;->xExtent:F

    .line 527
    iget-object v1, v0, Lcom/jme3/util/TempVars;->vect2:Lcom/jme3/math/Vector3f;

    iget v1, v1, Lcom/jme3/math/Vector3f;->y:F

    iget-object v2, p0, Lcom/jme3/bounding/BoundingBox;->center:Lcom/jme3/math/Vector3f;

    iget v2, v2, Lcom/jme3/math/Vector3f;->y:F

    sub-float/2addr v1, v2

    iput v1, p0, Lcom/jme3/bounding/BoundingBox;->yExtent:F

    .line 528
    iget-object v1, v0, Lcom/jme3/util/TempVars;->vect2:Lcom/jme3/math/Vector3f;

    iget v1, v1, Lcom/jme3/math/Vector3f;->z:F

    iget-object v2, p0, Lcom/jme3/bounding/BoundingBox;->center:Lcom/jme3/math/Vector3f;

    iget v2, v2, Lcom/jme3/math/Vector3f;->z:F

    sub-float/2addr v1, v2

    iput v1, p0, Lcom/jme3/bounding/BoundingBox;->zExtent:F

    .line 530
    invoke-virtual {v0}, Lcom/jme3/util/TempVars;->release()V

    .line 532
    return-object p5
.end method


# virtual methods
.method public clone(Lcom/jme3/bounding/BoundingVolume;)Lcom/jme3/bounding/BoundingVolume;
    .locals 6
    .parameter "store"

    .prologue
    .line 545
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/jme3/bounding/BoundingVolume;->getType()Lcom/jme3/bounding/BoundingVolume$Type;

    move-result-object v2

    sget-object v3, Lcom/jme3/bounding/BoundingVolume$Type;->AABB:Lcom/jme3/bounding/BoundingVolume$Type;

    if-ne v2, v3, :cond_0

    move-object v0, p1

    .line 546
    check-cast v0, Lcom/jme3/bounding/BoundingBox;

    .line 547
    .local v0, rVal:Lcom/jme3/bounding/BoundingBox;
    iget-object v2, v0, Lcom/jme3/bounding/BoundingBox;->center:Lcom/jme3/math/Vector3f;

    iget-object v3, p0, Lcom/jme3/bounding/BoundingBox;->center:Lcom/jme3/math/Vector3f;

    invoke-virtual {v2, v3}, Lcom/jme3/math/Vector3f;->set(Lcom/jme3/math/Vector3f;)Lcom/jme3/math/Vector3f;

    .line 548
    iget v2, p0, Lcom/jme3/bounding/BoundingBox;->xExtent:F

    iput v2, v0, Lcom/jme3/bounding/BoundingBox;->xExtent:F

    .line 549
    iget v2, p0, Lcom/jme3/bounding/BoundingBox;->yExtent:F

    iput v2, v0, Lcom/jme3/bounding/BoundingBox;->yExtent:F

    .line 550
    iget v2, p0, Lcom/jme3/bounding/BoundingBox;->zExtent:F

    iput v2, v0, Lcom/jme3/bounding/BoundingBox;->zExtent:F

    .line 551
    iget v2, p0, Lcom/jme3/bounding/BoundingBox;->checkPlane:I

    iput v2, v0, Lcom/jme3/bounding/BoundingBox;->checkPlane:I

    move-object v1, v0

    .line 557
    .end local v0           #rVal:Lcom/jme3/bounding/BoundingBox;
    .local v1, rVal:Ljava/lang/Object;
    :goto_0
    return-object v1

    .line 555
    .end local v1           #rVal:Ljava/lang/Object;
    :cond_0
    new-instance v0, Lcom/jme3/bounding/BoundingBox;

    iget-object v2, p0, Lcom/jme3/bounding/BoundingBox;->center:Lcom/jme3/math/Vector3f;

    invoke-virtual {v2}, Lcom/jme3/math/Vector3f;->clone()Lcom/jme3/math/Vector3f;

    move-result-object v2

    iget v3, p0, Lcom/jme3/bounding/BoundingBox;->xExtent:F

    iget v4, p0, Lcom/jme3/bounding/BoundingBox;->yExtent:F

    iget v5, p0, Lcom/jme3/bounding/BoundingBox;->zExtent:F

    invoke-direct {v0, v2, v3, v4, v5}, Lcom/jme3/bounding/BoundingBox;-><init>(Lcom/jme3/math/Vector3f;FFF)V

    .restart local v0       #rVal:Lcom/jme3/bounding/BoundingBox;
    move-object v1, v0

    .line 557
    .restart local v1       #rVal:Ljava/lang/Object;
    goto :goto_0
.end method

.method public collideWith(Lcom/jme3/collision/Collidable;Lcom/jme3/collision/CollisionResults;)I
    .locals 6
    .parameter "other"
    .parameter "results"

    .prologue
    .line 755
    instance-of v3, p1, Lcom/jme3/math/Ray;

    if-eqz v3, :cond_0

    move-object v1, p1

    .line 756
    check-cast v1, Lcom/jme3/math/Ray;

    .line 757
    .local v1, ray:Lcom/jme3/math/Ray;
    invoke-direct {p0, v1, p2}, Lcom/jme3/bounding/BoundingBox;->collideWithRay(Lcom/jme3/math/Ray;Lcom/jme3/collision/CollisionResults;)I

    move-result v3

    .line 765
    .end local v1           #ray:Lcom/jme3/math/Ray;
    :goto_0
    return v3

    .line 758
    :cond_0
    instance-of v3, p1, Lcom/jme3/math/Triangle;

    if-eqz v3, :cond_2

    move-object v2, p1

    .line 759
    check-cast v2, Lcom/jme3/math/Triangle;

    .line 760
    .local v2, t:Lcom/jme3/math/Triangle;
    invoke-virtual {v2}, Lcom/jme3/math/Triangle;->get1()Lcom/jme3/math/Vector3f;

    move-result-object v3

    invoke-virtual {v2}, Lcom/jme3/math/Triangle;->get2()Lcom/jme3/math/Vector3f;

    move-result-object v4

    invoke-virtual {v2}, Lcom/jme3/math/Triangle;->get3()Lcom/jme3/math/Vector3f;

    move-result-object v5

    invoke-virtual {p0, v3, v4, v5}, Lcom/jme3/bounding/BoundingBox;->intersects(Lcom/jme3/math/Vector3f;Lcom/jme3/math/Vector3f;Lcom/jme3/math/Vector3f;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 761
    new-instance v0, Lcom/jme3/collision/CollisionResult;

    invoke-direct {v0}, Lcom/jme3/collision/CollisionResult;-><init>()V

    .line 762
    .local v0, r:Lcom/jme3/collision/CollisionResult;
    invoke-virtual {p2, v0}, Lcom/jme3/collision/CollisionResults;->addCollision(Lcom/jme3/collision/CollisionResult;)V

    .line 763
    const/4 v3, 0x1

    goto :goto_0

    .line 765
    .end local v0           #r:Lcom/jme3/collision/CollisionResult;
    :cond_1
    const/4 v3, 0x0

    goto :goto_0

    .line 767
    .end local v2           #t:Lcom/jme3/math/Triangle;
    :cond_2
    new-instance v3, Lcom/jme3/collision/UnsupportedCollisionException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "With: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/jme3/collision/UnsupportedCollisionException;-><init>(Ljava/lang/String;)V

    throw v3
.end method

.method public computeFromPoints(Ljava/nio/FloatBuffer;)V
    .locals 0
    .parameter "points"

    .prologue
    .line 107
    invoke-virtual {p0, p1}, Lcom/jme3/bounding/BoundingBox;->containAABB(Ljava/nio/FloatBuffer;)V

    .line 108
    return-void
.end method

.method public containAABB(Ljava/nio/FloatBuffer;)V
    .locals 13
    .parameter "points"

    .prologue
    .line 213
    if-nez p1, :cond_1

    .line 259
    :cond_0
    :goto_0
    return-void

    .line 217
    :cond_1
    invoke-virtual {p1}, Ljava/nio/FloatBuffer;->rewind()Ljava/nio/Buffer;

    .line 218
    invoke-virtual {p1}, Ljava/nio/FloatBuffer;->remaining()I

    move-result v9

    const/4 v10, 0x2

    if-le v9, v10, :cond_0

    .line 223
    invoke-static {}, Lcom/jme3/util/TempVars;->get()Lcom/jme3/util/TempVars;

    move-result-object v8

    .line 225
    .local v8, vars:Lcom/jme3/util/TempVars;
    iget-object v9, v8, Lcom/jme3/util/TempVars;->vect1:Lcom/jme3/math/Vector3f;

    const/4 v10, 0x0

    invoke-static {v9, p1, v10}, Lcom/jme3/util/BufferUtils;->populateFromBuffer(Lcom/jme3/math/Vector3f;Ljava/nio/FloatBuffer;I)V

    .line 226
    iget-object v9, v8, Lcom/jme3/util/TempVars;->vect1:Lcom/jme3/math/Vector3f;

    iget v5, v9, Lcom/jme3/math/Vector3f;->x:F

    .local v5, minX:F
    iget-object v9, v8, Lcom/jme3/util/TempVars;->vect1:Lcom/jme3/math/Vector3f;

    iget v6, v9, Lcom/jme3/math/Vector3f;->y:F

    .local v6, minY:F
    iget-object v9, v8, Lcom/jme3/util/TempVars;->vect1:Lcom/jme3/math/Vector3f;

    iget v7, v9, Lcom/jme3/math/Vector3f;->z:F

    .line 227
    .local v7, minZ:F
    iget-object v9, v8, Lcom/jme3/util/TempVars;->vect1:Lcom/jme3/math/Vector3f;

    iget v2, v9, Lcom/jme3/math/Vector3f;->x:F

    .local v2, maxX:F
    iget-object v9, v8, Lcom/jme3/util/TempVars;->vect1:Lcom/jme3/math/Vector3f;

    iget v3, v9, Lcom/jme3/math/Vector3f;->y:F

    .local v3, maxY:F
    iget-object v9, v8, Lcom/jme3/util/TempVars;->vect1:Lcom/jme3/math/Vector3f;

    iget v4, v9, Lcom/jme3/math/Vector3f;->z:F

    .line 229
    .local v4, maxZ:F
    const/4 v0, 0x1

    .local v0, i:I
    invoke-virtual {p1}, Ljava/nio/FloatBuffer;->remaining()I

    move-result v9

    div-int/lit8 v1, v9, 0x3

    .local v1, len:I
    :goto_1
    if-ge v0, v1, :cond_8

    .line 230
    iget-object v9, v8, Lcom/jme3/util/TempVars;->vect1:Lcom/jme3/math/Vector3f;

    invoke-static {v9, p1, v0}, Lcom/jme3/util/BufferUtils;->populateFromBuffer(Lcom/jme3/math/Vector3f;Ljava/nio/FloatBuffer;I)V

    .line 232
    iget-object v9, v8, Lcom/jme3/util/TempVars;->vect1:Lcom/jme3/math/Vector3f;

    iget v9, v9, Lcom/jme3/math/Vector3f;->x:F

    cmpg-float v9, v9, v5

    if-gez v9, :cond_5

    .line 233
    iget-object v9, v8, Lcom/jme3/util/TempVars;->vect1:Lcom/jme3/math/Vector3f;

    iget v5, v9, Lcom/jme3/math/Vector3f;->x:F

    .line 238
    :cond_2
    :goto_2
    iget-object v9, v8, Lcom/jme3/util/TempVars;->vect1:Lcom/jme3/math/Vector3f;

    iget v9, v9, Lcom/jme3/math/Vector3f;->y:F

    cmpg-float v9, v9, v6

    if-gez v9, :cond_6

    .line 239
    iget-object v9, v8, Lcom/jme3/util/TempVars;->vect1:Lcom/jme3/math/Vector3f;

    iget v6, v9, Lcom/jme3/math/Vector3f;->y:F

    .line 244
    :cond_3
    :goto_3
    iget-object v9, v8, Lcom/jme3/util/TempVars;->vect1:Lcom/jme3/math/Vector3f;

    iget v9, v9, Lcom/jme3/math/Vector3f;->z:F

    cmpg-float v9, v9, v7

    if-gez v9, :cond_7

    .line 245
    iget-object v9, v8, Lcom/jme3/util/TempVars;->vect1:Lcom/jme3/math/Vector3f;

    iget v7, v9, Lcom/jme3/math/Vector3f;->z:F

    .line 229
    :cond_4
    :goto_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 234
    :cond_5
    iget-object v9, v8, Lcom/jme3/util/TempVars;->vect1:Lcom/jme3/math/Vector3f;

    iget v9, v9, Lcom/jme3/math/Vector3f;->x:F

    cmpl-float v9, v9, v2

    if-lez v9, :cond_2

    .line 235
    iget-object v9, v8, Lcom/jme3/util/TempVars;->vect1:Lcom/jme3/math/Vector3f;

    iget v2, v9, Lcom/jme3/math/Vector3f;->x:F

    goto :goto_2

    .line 240
    :cond_6
    iget-object v9, v8, Lcom/jme3/util/TempVars;->vect1:Lcom/jme3/math/Vector3f;

    iget v9, v9, Lcom/jme3/math/Vector3f;->y:F

    cmpl-float v9, v9, v3

    if-lez v9, :cond_3

    .line 241
    iget-object v9, v8, Lcom/jme3/util/TempVars;->vect1:Lcom/jme3/math/Vector3f;

    iget v3, v9, Lcom/jme3/math/Vector3f;->y:F

    goto :goto_3

    .line 246
    :cond_7
    iget-object v9, v8, Lcom/jme3/util/TempVars;->vect1:Lcom/jme3/math/Vector3f;

    iget v9, v9, Lcom/jme3/math/Vector3f;->z:F

    cmpl-float v9, v9, v4

    if-lez v9, :cond_4

    .line 247
    iget-object v9, v8, Lcom/jme3/util/TempVars;->vect1:Lcom/jme3/math/Vector3f;

    iget v4, v9, Lcom/jme3/math/Vector3f;->z:F

    goto :goto_4

    .line 251
    :cond_8
    invoke-virtual {v8}, Lcom/jme3/util/TempVars;->release()V

    .line 253
    iget-object v9, p0, Lcom/jme3/bounding/BoundingBox;->center:Lcom/jme3/math/Vector3f;

    add-float v10, v5, v2

    add-float v11, v6, v3

    add-float v12, v7, v4

    invoke-virtual {v9, v10, v11, v12}, Lcom/jme3/math/Vector3f;->set(FFF)Lcom/jme3/math/Vector3f;

    .line 254
    iget-object v9, p0, Lcom/jme3/bounding/BoundingBox;->center:Lcom/jme3/math/Vector3f;

    const/high16 v10, 0x3f00

    invoke-virtual {v9, v10}, Lcom/jme3/math/Vector3f;->multLocal(F)Lcom/jme3/math/Vector3f;

    .line 256
    iget-object v9, p0, Lcom/jme3/bounding/BoundingBox;->center:Lcom/jme3/math/Vector3f;

    iget v9, v9, Lcom/jme3/math/Vector3f;->x:F

    sub-float v9, v2, v9

    iput v9, p0, Lcom/jme3/bounding/BoundingBox;->xExtent:F

    .line 257
    iget-object v9, p0, Lcom/jme3/bounding/BoundingBox;->center:Lcom/jme3/math/Vector3f;

    iget v9, v9, Lcom/jme3/math/Vector3f;->y:F

    sub-float v9, v3, v9

    iput v9, p0, Lcom/jme3/bounding/BoundingBox;->yExtent:F

    .line 258
    iget-object v9, p0, Lcom/jme3/bounding/BoundingBox;->center:Lcom/jme3/math/Vector3f;

    iget v9, v9, Lcom/jme3/math/Vector3f;->z:F

    sub-float v9, v4, v9

    iput v9, p0, Lcom/jme3/bounding/BoundingBox;->zExtent:F

    goto/16 :goto_0
.end method

.method public distanceToEdge(Lcom/jme3/math/Vector3f;)F
    .locals 6
    .parameter "point"

    .prologue
    .line 801
    invoke-static {}, Lcom/jme3/util/TempVars;->get()Lcom/jme3/util/TempVars;

    move-result-object v3

    .line 802
    .local v3, vars:Lcom/jme3/util/TempVars;
    iget-object v0, v3, Lcom/jme3/util/TempVars;->vect1:Lcom/jme3/math/Vector3f;

    .line 804
    .local v0, closest:Lcom/jme3/math/Vector3f;
    iget-object v4, p0, Lcom/jme3/bounding/BoundingBox;->center:Lcom/jme3/math/Vector3f;

    invoke-virtual {p1, v4, v0}, Lcom/jme3/math/Vector3f;->subtract(Lcom/jme3/math/Vector3f;Lcom/jme3/math/Vector3f;)Lcom/jme3/math/Vector3f;

    .line 807
    const/4 v2, 0x0

    .line 810
    .local v2, sqrDistance:F
    iget v4, v0, Lcom/jme3/math/Vector3f;->x:F

    iget v5, p0, Lcom/jme3/bounding/BoundingBox;->xExtent:F

    neg-float v5, v5

    cmpg-float v4, v4, v5

    if-gez v4, :cond_3

    .line 811
    iget v4, v0, Lcom/jme3/math/Vector3f;->x:F

    iget v5, p0, Lcom/jme3/bounding/BoundingBox;->xExtent:F

    add-float v1, v4, v5

    .line 812
    .local v1, delta:F
    mul-float v4, v1, v1

    add-float/2addr v2, v4

    .line 813
    iget v4, p0, Lcom/jme3/bounding/BoundingBox;->xExtent:F

    neg-float v4, v4

    iput v4, v0, Lcom/jme3/math/Vector3f;->x:F

    .line 820
    .end local v1           #delta:F
    :cond_0
    :goto_0
    iget v4, v0, Lcom/jme3/math/Vector3f;->y:F

    iget v5, p0, Lcom/jme3/bounding/BoundingBox;->yExtent:F

    neg-float v5, v5

    cmpg-float v4, v4, v5

    if-gez v4, :cond_4

    .line 821
    iget v4, v0, Lcom/jme3/math/Vector3f;->y:F

    iget v5, p0, Lcom/jme3/bounding/BoundingBox;->yExtent:F

    add-float v1, v4, v5

    .line 822
    .restart local v1       #delta:F
    mul-float v4, v1, v1

    add-float/2addr v2, v4

    .line 823
    iget v4, p0, Lcom/jme3/bounding/BoundingBox;->yExtent:F

    neg-float v4, v4

    iput v4, v0, Lcom/jme3/math/Vector3f;->y:F

    .line 830
    .end local v1           #delta:F
    :cond_1
    :goto_1
    iget v4, v0, Lcom/jme3/math/Vector3f;->z:F

    iget v5, p0, Lcom/jme3/bounding/BoundingBox;->zExtent:F

    neg-float v5, v5

    cmpg-float v4, v4, v5

    if-gez v4, :cond_5

    .line 831
    iget v4, v0, Lcom/jme3/math/Vector3f;->z:F

    iget v5, p0, Lcom/jme3/bounding/BoundingBox;->zExtent:F

    add-float v1, v4, v5

    .line 832
    .restart local v1       #delta:F
    mul-float v4, v1, v1

    add-float/2addr v2, v4

    .line 833
    iget v4, p0, Lcom/jme3/bounding/BoundingBox;->zExtent:F

    neg-float v4, v4

    iput v4, v0, Lcom/jme3/math/Vector3f;->z:F

    .line 840
    .end local v1           #delta:F
    :cond_2
    :goto_2
    invoke-virtual {v3}, Lcom/jme3/util/TempVars;->release()V

    .line 841
    invoke-static {v2}, Lcom/jme3/math/FastMath;->sqrt(F)F

    move-result v4

    return v4

    .line 814
    :cond_3
    iget v4, v0, Lcom/jme3/math/Vector3f;->x:F

    iget v5, p0, Lcom/jme3/bounding/BoundingBox;->xExtent:F

    cmpl-float v4, v4, v5

    if-lez v4, :cond_0

    .line 815
    iget v4, v0, Lcom/jme3/math/Vector3f;->x:F

    iget v5, p0, Lcom/jme3/bounding/BoundingBox;->xExtent:F

    sub-float v1, v4, v5

    .line 816
    .restart local v1       #delta:F
    mul-float v4, v1, v1

    add-float/2addr v2, v4

    .line 817
    iget v4, p0, Lcom/jme3/bounding/BoundingBox;->xExtent:F

    iput v4, v0, Lcom/jme3/math/Vector3f;->x:F

    goto :goto_0

    .line 824
    .end local v1           #delta:F
    :cond_4
    iget v4, v0, Lcom/jme3/math/Vector3f;->y:F

    iget v5, p0, Lcom/jme3/bounding/BoundingBox;->yExtent:F

    cmpl-float v4, v4, v5

    if-lez v4, :cond_1

    .line 825
    iget v4, v0, Lcom/jme3/math/Vector3f;->y:F

    iget v5, p0, Lcom/jme3/bounding/BoundingBox;->yExtent:F

    sub-float v1, v4, v5

    .line 826
    .restart local v1       #delta:F
    mul-float v4, v1, v1

    add-float/2addr v2, v4

    .line 827
    iget v4, p0, Lcom/jme3/bounding/BoundingBox;->yExtent:F

    iput v4, v0, Lcom/jme3/math/Vector3f;->y:F

    goto :goto_1

    .line 834
    .end local v1           #delta:F
    :cond_5
    iget v4, v0, Lcom/jme3/math/Vector3f;->z:F

    iget v5, p0, Lcom/jme3/bounding/BoundingBox;->zExtent:F

    cmpl-float v4, v4, v5

    if-lez v4, :cond_2

    .line 835
    iget v4, v0, Lcom/jme3/math/Vector3f;->z:F

    iget v5, p0, Lcom/jme3/bounding/BoundingBox;->zExtent:F

    sub-float v1, v4, v5

    .line 836
    .restart local v1       #delta:F
    mul-float v4, v1, v1

    add-float/2addr v2, v4

    .line 837
    iget v4, p0, Lcom/jme3/bounding/BoundingBox;->zExtent:F

    iput v4, v0, Lcom/jme3/math/Vector3f;->z:F

    goto :goto_2
.end method

.method public getExtent(Lcom/jme3/math/Vector3f;)Lcom/jme3/math/Vector3f;
    .locals 3
    .parameter "store"

    .prologue
    .line 889
    if-nez p1, :cond_0

    .line 890
    new-instance p1, Lcom/jme3/math/Vector3f;

    .end local p1
    invoke-direct {p1}, Lcom/jme3/math/Vector3f;-><init>()V

    .line 892
    .restart local p1
    :cond_0
    iget v0, p0, Lcom/jme3/bounding/BoundingBox;->xExtent:F

    iget v1, p0, Lcom/jme3/bounding/BoundingBox;->yExtent:F

    iget v2, p0, Lcom/jme3/bounding/BoundingBox;->zExtent:F

    invoke-virtual {p1, v0, v1, v2}, Lcom/jme3/math/Vector3f;->set(FFF)Lcom/jme3/math/Vector3f;

    .line 893
    return-object p1
.end method

.method public getMax(Lcom/jme3/math/Vector3f;)Lcom/jme3/math/Vector3f;
    .locals 4
    .parameter "store"

    .prologue
    .line 941
    if-nez p1, :cond_0

    .line 942
    new-instance p1, Lcom/jme3/math/Vector3f;

    .end local p1
    invoke-direct {p1}, Lcom/jme3/math/Vector3f;-><init>()V

    .line 944
    .restart local p1
    :cond_0
    iget-object v0, p0, Lcom/jme3/bounding/BoundingBox;->center:Lcom/jme3/math/Vector3f;

    invoke-virtual {p1, v0}, Lcom/jme3/math/Vector3f;->set(Lcom/jme3/math/Vector3f;)Lcom/jme3/math/Vector3f;

    move-result-object v0

    iget v1, p0, Lcom/jme3/bounding/BoundingBox;->xExtent:F

    iget v2, p0, Lcom/jme3/bounding/BoundingBox;->yExtent:F

    iget v3, p0, Lcom/jme3/bounding/BoundingBox;->zExtent:F

    invoke-virtual {v0, v1, v2, v3}, Lcom/jme3/math/Vector3f;->addLocal(FFF)Lcom/jme3/math/Vector3f;

    .line 945
    return-object p1
.end method

.method public getMin(Lcom/jme3/math/Vector3f;)Lcom/jme3/math/Vector3f;
    .locals 4
    .parameter "store"

    .prologue
    .line 933
    if-nez p1, :cond_0

    .line 934
    new-instance p1, Lcom/jme3/math/Vector3f;

    .end local p1
    invoke-direct {p1}, Lcom/jme3/math/Vector3f;-><init>()V

    .line 936
    .restart local p1
    :cond_0
    iget-object v0, p0, Lcom/jme3/bounding/BoundingBox;->center:Lcom/jme3/math/Vector3f;

    invoke-virtual {p1, v0}, Lcom/jme3/math/Vector3f;->set(Lcom/jme3/math/Vector3f;)Lcom/jme3/math/Vector3f;

    move-result-object v0

    iget v1, p0, Lcom/jme3/bounding/BoundingBox;->xExtent:F

    iget v2, p0, Lcom/jme3/bounding/BoundingBox;->yExtent:F

    iget v3, p0, Lcom/jme3/bounding/BoundingBox;->zExtent:F

    invoke-virtual {v0, v1, v2, v3}, Lcom/jme3/math/Vector3f;->subtractLocal(FFF)Lcom/jme3/math/Vector3f;

    .line 937
    return-object p1
.end method

.method public getType()Lcom/jme3/bounding/BoundingVolume$Type;
    .locals 1

    .prologue
    .line 96
    sget-object v0, Lcom/jme3/bounding/BoundingVolume$Type;->AABB:Lcom/jme3/bounding/BoundingVolume$Type;

    return-object v0
.end method

.method public getXExtent()F
    .locals 1

    .prologue
    .line 897
    iget v0, p0, Lcom/jme3/bounding/BoundingBox;->xExtent:F

    return v0
.end method

.method public getYExtent()F
    .locals 1

    .prologue
    .line 901
    iget v0, p0, Lcom/jme3/bounding/BoundingBox;->yExtent:F

    return v0
.end method

.method public getZExtent()F
    .locals 1

    .prologue
    .line 905
    iget v0, p0, Lcom/jme3/bounding/BoundingBox;->zExtent:F

    return v0
.end method

.method public intersects(Lcom/jme3/bounding/BoundingVolume;)Z
    .locals 1
    .parameter "bv"

    .prologue
    .line 580
    invoke-virtual {p1, p0}, Lcom/jme3/bounding/BoundingVolume;->intersectsBoundingBox(Lcom/jme3/bounding/BoundingBox;)Z

    move-result v0

    return v0
.end method

.method public intersects(Lcom/jme3/math/Vector3f;Lcom/jme3/math/Vector3f;Lcom/jme3/math/Vector3f;)Z
    .locals 1
    .parameter "v1"
    .parameter "v2"
    .parameter "v3"

    .prologue
    .line 782
    invoke-static {p0, p1, p2, p3}, Lcom/jme3/bounding/Intersection;->intersect(Lcom/jme3/bounding/BoundingBox;Lcom/jme3/math/Vector3f;Lcom/jme3/math/Vector3f;Lcom/jme3/math/Vector3f;)Z

    move-result v0

    return v0
.end method

.method public intersectsBoundingBox(Lcom/jme3/bounding/BoundingBox;)Z
    .locals 4
    .parameter "bb"

    .prologue
    const/4 v0, 0x0

    .line 611
    sget-boolean v1, Lcom/jme3/bounding/BoundingBox;->$assertionsDisabled:Z

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/jme3/bounding/BoundingBox;->center:Lcom/jme3/math/Vector3f;

    invoke-static {v1}, Lcom/jme3/math/Vector3f;->isValidVector(Lcom/jme3/math/Vector3f;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p1, Lcom/jme3/bounding/BoundingBox;->center:Lcom/jme3/math/Vector3f;

    invoke-static {v1}, Lcom/jme3/math/Vector3f;->isValidVector(Lcom/jme3/math/Vector3f;)Z

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 613
    :cond_1
    iget-object v1, p0, Lcom/jme3/bounding/BoundingBox;->center:Lcom/jme3/math/Vector3f;

    iget v1, v1, Lcom/jme3/math/Vector3f;->x:F

    iget v2, p0, Lcom/jme3/bounding/BoundingBox;->xExtent:F

    add-float/2addr v1, v2

    iget-object v2, p1, Lcom/jme3/bounding/BoundingBox;->center:Lcom/jme3/math/Vector3f;

    iget v2, v2, Lcom/jme3/math/Vector3f;->x:F

    iget v3, p1, Lcom/jme3/bounding/BoundingBox;->xExtent:F

    sub-float/2addr v2, v3

    cmpg-float v1, v1, v2

    if-ltz v1, :cond_2

    iget-object v1, p0, Lcom/jme3/bounding/BoundingBox;->center:Lcom/jme3/math/Vector3f;

    iget v1, v1, Lcom/jme3/math/Vector3f;->x:F

    iget v2, p0, Lcom/jme3/bounding/BoundingBox;->xExtent:F

    sub-float/2addr v1, v2

    iget-object v2, p1, Lcom/jme3/bounding/BoundingBox;->center:Lcom/jme3/math/Vector3f;

    iget v2, v2, Lcom/jme3/math/Vector3f;->x:F

    iget v3, p1, Lcom/jme3/bounding/BoundingBox;->xExtent:F

    add-float/2addr v2, v3

    cmpl-float v1, v1, v2

    if-lez v1, :cond_3

    .line 623
    :cond_2
    :goto_0
    return v0

    .line 616
    :cond_3
    iget-object v1, p0, Lcom/jme3/bounding/BoundingBox;->center:Lcom/jme3/math/Vector3f;

    iget v1, v1, Lcom/jme3/math/Vector3f;->y:F

    iget v2, p0, Lcom/jme3/bounding/BoundingBox;->yExtent:F

    add-float/2addr v1, v2

    iget-object v2, p1, Lcom/jme3/bounding/BoundingBox;->center:Lcom/jme3/math/Vector3f;

    iget v2, v2, Lcom/jme3/math/Vector3f;->y:F

    iget v3, p1, Lcom/jme3/bounding/BoundingBox;->yExtent:F

    sub-float/2addr v2, v3

    cmpg-float v1, v1, v2

    if-ltz v1, :cond_2

    iget-object v1, p0, Lcom/jme3/bounding/BoundingBox;->center:Lcom/jme3/math/Vector3f;

    iget v1, v1, Lcom/jme3/math/Vector3f;->y:F

    iget v2, p0, Lcom/jme3/bounding/BoundingBox;->yExtent:F

    sub-float/2addr v1, v2

    iget-object v2, p1, Lcom/jme3/bounding/BoundingBox;->center:Lcom/jme3/math/Vector3f;

    iget v2, v2, Lcom/jme3/math/Vector3f;->y:F

    iget v3, p1, Lcom/jme3/bounding/BoundingBox;->yExtent:F

    add-float/2addr v2, v3

    cmpl-float v1, v1, v2

    if-gtz v1, :cond_2

    .line 619
    iget-object v1, p0, Lcom/jme3/bounding/BoundingBox;->center:Lcom/jme3/math/Vector3f;

    iget v1, v1, Lcom/jme3/math/Vector3f;->z:F

    iget v2, p0, Lcom/jme3/bounding/BoundingBox;->zExtent:F

    add-float/2addr v1, v2

    iget-object v2, p1, Lcom/jme3/bounding/BoundingBox;->center:Lcom/jme3/math/Vector3f;

    iget v2, v2, Lcom/jme3/math/Vector3f;->z:F

    iget v3, p1, Lcom/jme3/bounding/BoundingBox;->zExtent:F

    sub-float/2addr v2, v3

    cmpg-float v1, v1, v2

    if-ltz v1, :cond_2

    iget-object v1, p0, Lcom/jme3/bounding/BoundingBox;->center:Lcom/jme3/math/Vector3f;

    iget v1, v1, Lcom/jme3/math/Vector3f;->z:F

    iget v2, p0, Lcom/jme3/bounding/BoundingBox;->zExtent:F

    sub-float/2addr v1, v2

    iget-object v2, p1, Lcom/jme3/bounding/BoundingBox;->center:Lcom/jme3/math/Vector3f;

    iget v2, v2, Lcom/jme3/math/Vector3f;->z:F

    iget v3, p1, Lcom/jme3/bounding/BoundingBox;->zExtent:F

    add-float/2addr v2, v3

    cmpl-float v1, v1, v2

    if-gtz v1, :cond_2

    .line 623
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public mergeLocal(Lcom/jme3/bounding/BoundingVolume;)Lcom/jme3/bounding/BoundingVolume;
    .locals 8
    .parameter "volume"

    .prologue
    .line 408
    if-nez p1, :cond_0

    .line 430
    .end local p0
    :goto_0
    return-object p0

    .line 412
    .restart local p0
    :cond_0
    sget-object v0, Lcom/jme3/bounding/BoundingBox$1;->$SwitchMap$com$jme3$bounding$BoundingVolume$Type:[I

    invoke-virtual {p1}, Lcom/jme3/bounding/BoundingVolume;->getType()Lcom/jme3/bounding/BoundingVolume$Type;

    move-result-object v1

    invoke-virtual {v1}, Lcom/jme3/bounding/BoundingVolume$Type;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 430
    const/4 p0, 0x0

    goto :goto_0

    :pswitch_0
    move-object v6, p1

    .line 414
    check-cast v6, Lcom/jme3/bounding/BoundingBox;

    .line 415
    .local v6, vBox:Lcom/jme3/bounding/BoundingBox;
    iget-object v1, v6, Lcom/jme3/bounding/BoundingBox;->center:Lcom/jme3/math/Vector3f;

    iget v2, v6, Lcom/jme3/bounding/BoundingBox;->xExtent:F

    iget v3, v6, Lcom/jme3/bounding/BoundingBox;->yExtent:F

    iget v4, v6, Lcom/jme3/bounding/BoundingBox;->zExtent:F

    move-object v0, p0

    move-object v5, p0

    invoke-direct/range {v0 .. v5}, Lcom/jme3/bounding/BoundingBox;->merge(Lcom/jme3/math/Vector3f;FFFLcom/jme3/bounding/BoundingBox;)Lcom/jme3/bounding/BoundingBox;

    move-result-object p0

    goto :goto_0

    .end local v6           #vBox:Lcom/jme3/bounding/BoundingBox;
    :pswitch_1
    move-object v7, p1

    .line 420
    check-cast v7, Lcom/jme3/bounding/BoundingSphere;

    .line 421
    .local v7, vSphere:Lcom/jme3/bounding/BoundingSphere;
    iget-object v1, v7, Lcom/jme3/bounding/BoundingSphere;->center:Lcom/jme3/math/Vector3f;

    iget v2, v7, Lcom/jme3/bounding/BoundingSphere;->radius:F

    iget v3, v7, Lcom/jme3/bounding/BoundingSphere;->radius:F

    iget v4, v7, Lcom/jme3/bounding/BoundingSphere;->radius:F

    move-object v0, p0

    move-object v5, p0

    invoke-direct/range {v0 .. v5}, Lcom/jme3/bounding/BoundingBox;->merge(Lcom/jme3/math/Vector3f;FFFLcom/jme3/bounding/BoundingBox;)Lcom/jme3/bounding/BoundingBox;

    move-result-object p0

    goto :goto_0

    .line 412
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
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
    const/4 v2, 0x0

    .line 966
    invoke-super {p0, p1}, Lcom/jme3/bounding/BoundingVolume;->read(Lcom/jme3/export/JmeImporter;)V

    .line 967
    invoke-interface {p1, p0}, Lcom/jme3/export/JmeImporter;->getCapsule(Lcom/jme3/export/Savable;)Lcom/jme3/export/InputCapsule;

    move-result-object v0

    .line 968
    .local v0, capsule:Lcom/jme3/export/InputCapsule;
    const-string v1, "xExtent"

    invoke-interface {v0, v1, v2}, Lcom/jme3/export/InputCapsule;->readFloat(Ljava/lang/String;F)F

    move-result v1

    iput v1, p0, Lcom/jme3/bounding/BoundingBox;->xExtent:F

    .line 969
    const-string v1, "yExtent"

    invoke-interface {v0, v1, v2}, Lcom/jme3/export/InputCapsule;->readFloat(Ljava/lang/String;F)F

    move-result v1

    iput v1, p0, Lcom/jme3/bounding/BoundingBox;->yExtent:F

    .line 970
    const-string v1, "zExtent"

    invoke-interface {v0, v1, v2}, Lcom/jme3/export/InputCapsule;->readFloat(Ljava/lang/String;F)F

    move-result v1

    iput v1, p0, Lcom/jme3/bounding/BoundingBox;->zExtent:F

    .line 971
    return-void
.end method

.method public setMinMax(Lcom/jme3/math/Vector3f;Lcom/jme3/math/Vector3f;)V
    .locals 2
    .parameter "min"
    .parameter "max"

    .prologue
    .line 949
    iget-object v0, p0, Lcom/jme3/bounding/BoundingBox;->center:Lcom/jme3/math/Vector3f;

    invoke-virtual {v0, p2}, Lcom/jme3/math/Vector3f;->set(Lcom/jme3/math/Vector3f;)Lcom/jme3/math/Vector3f;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/jme3/math/Vector3f;->addLocal(Lcom/jme3/math/Vector3f;)Lcom/jme3/math/Vector3f;

    move-result-object v0

    const/high16 v1, 0x3f00

    invoke-virtual {v0, v1}, Lcom/jme3/math/Vector3f;->multLocal(F)Lcom/jme3/math/Vector3f;

    .line 950
    iget v0, p2, Lcom/jme3/math/Vector3f;->x:F

    iget-object v1, p0, Lcom/jme3/bounding/BoundingBox;->center:Lcom/jme3/math/Vector3f;

    iget v1, v1, Lcom/jme3/math/Vector3f;->x:F

    sub-float/2addr v0, v1

    invoke-static {v0}, Lcom/jme3/math/FastMath;->abs(F)F

    move-result v0

    iput v0, p0, Lcom/jme3/bounding/BoundingBox;->xExtent:F

    .line 951
    iget v0, p2, Lcom/jme3/math/Vector3f;->y:F

    iget-object v1, p0, Lcom/jme3/bounding/BoundingBox;->center:Lcom/jme3/math/Vector3f;

    iget v1, v1, Lcom/jme3/math/Vector3f;->y:F

    sub-float/2addr v0, v1

    invoke-static {v0}, Lcom/jme3/math/FastMath;->abs(F)F

    move-result v0

    iput v0, p0, Lcom/jme3/bounding/BoundingBox;->yExtent:F

    .line 952
    iget v0, p2, Lcom/jme3/math/Vector3f;->z:F

    iget-object v1, p0, Lcom/jme3/bounding/BoundingBox;->center:Lcom/jme3/math/Vector3f;

    iget v1, v1, Lcom/jme3/math/Vector3f;->z:F

    sub-float/2addr v0, v1

    invoke-static {v0}, Lcom/jme3/math/FastMath;->abs(F)F

    move-result v0

    iput v0, p0, Lcom/jme3/bounding/BoundingBox;->zExtent:F

    .line 953
    return-void
.end method

.method public setXExtent(F)V
    .locals 1
    .parameter "xExtent"

    .prologue
    .line 909
    const/4 v0, 0x0

    cmpg-float v0, p1, v0

    if-gez v0, :cond_0

    .line 910
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 913
    :cond_0
    iput p1, p0, Lcom/jme3/bounding/BoundingBox;->xExtent:F

    .line 914
    return-void
.end method

.method public setYExtent(F)V
    .locals 1
    .parameter "yExtent"

    .prologue
    .line 917
    const/4 v0, 0x0

    cmpg-float v0, p1, v0

    if-gez v0, :cond_0

    .line 918
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 921
    :cond_0
    iput p1, p0, Lcom/jme3/bounding/BoundingBox;->yExtent:F

    .line 922
    return-void
.end method

.method public setZExtent(F)V
    .locals 1
    .parameter "zExtent"

    .prologue
    .line 925
    const/4 v0, 0x0

    cmpg-float v0, p1, v0

    if-gez v0, :cond_0

    .line 926
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 929
    :cond_0
    iput p1, p0, Lcom/jme3/bounding/BoundingBox;->zExtent:F

    .line 930
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 568
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " [Center: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/jme3/bounding/BoundingBox;->center:Lcom/jme3/math/Vector3f;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "  xExtent: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/jme3/bounding/BoundingBox;->xExtent:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "  yExtent: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/jme3/bounding/BoundingBox;->yExtent:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "  zExtent: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/jme3/bounding/BoundingBox;->zExtent:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public transform(Lcom/jme3/math/Matrix4f;Lcom/jme3/bounding/BoundingVolume;)Lcom/jme3/bounding/BoundingVolume;
    .locals 8
    .parameter "trans"
    .parameter "store"

    .prologue
    .line 305
    if-eqz p2, :cond_0

    invoke-virtual {p2}, Lcom/jme3/bounding/BoundingVolume;->getType()Lcom/jme3/bounding/BoundingVolume$Type;

    move-result-object v4

    sget-object v5, Lcom/jme3/bounding/BoundingVolume$Type;->AABB:Lcom/jme3/bounding/BoundingVolume$Type;

    if-eq v4, v5, :cond_1

    .line 306
    :cond_0
    new-instance v0, Lcom/jme3/bounding/BoundingBox;

    invoke-direct {v0}, Lcom/jme3/bounding/BoundingBox;-><init>()V

    .line 310
    .local v0, box:Lcom/jme3/bounding/BoundingBox;
    :goto_0
    invoke-static {}, Lcom/jme3/util/TempVars;->get()Lcom/jme3/util/TempVars;

    move-result-object v2

    .line 313
    .local v2, vars:Lcom/jme3/util/TempVars;
    iget-object v4, p0, Lcom/jme3/bounding/BoundingBox;->center:Lcom/jme3/math/Vector3f;

    iget-object v5, v0, Lcom/jme3/bounding/BoundingBox;->center:Lcom/jme3/math/Vector3f;

    invoke-virtual {p1, v4, v5}, Lcom/jme3/math/Matrix4f;->multProj(Lcom/jme3/math/Vector3f;Lcom/jme3/math/Vector3f;)F

    move-result v3

    .line 314
    .local v3, w:F
    iget-object v4, v0, Lcom/jme3/bounding/BoundingBox;->center:Lcom/jme3/math/Vector3f;

    invoke-virtual {v4, v3}, Lcom/jme3/math/Vector3f;->divideLocal(F)Lcom/jme3/math/Vector3f;

    .line 316
    iget-object v1, v2, Lcom/jme3/util/TempVars;->tempMat3:Lcom/jme3/math/Matrix3f;

    .line 317
    .local v1, transMatrix:Lcom/jme3/math/Matrix3f;
    invoke-virtual {p1, v1}, Lcom/jme3/math/Matrix4f;->toRotationMatrix(Lcom/jme3/math/Matrix3f;)V

    .line 320
    invoke-virtual {v1}, Lcom/jme3/math/Matrix3f;->absoluteLocal()V

    .line 322
    iget-object v4, v2, Lcom/jme3/util/TempVars;->vect1:Lcom/jme3/math/Vector3f;

    iget v5, p0, Lcom/jme3/bounding/BoundingBox;->xExtent:F

    iget v6, p0, Lcom/jme3/bounding/BoundingBox;->yExtent:F

    iget v7, p0, Lcom/jme3/bounding/BoundingBox;->zExtent:F

    invoke-virtual {v4, v5, v6, v7}, Lcom/jme3/math/Vector3f;->set(FFF)Lcom/jme3/math/Vector3f;

    .line 323
    iget-object v4, v2, Lcom/jme3/util/TempVars;->vect1:Lcom/jme3/math/Vector3f;

    iget-object v5, v2, Lcom/jme3/util/TempVars;->vect1:Lcom/jme3/math/Vector3f;

    invoke-virtual {v1, v4, v5}, Lcom/jme3/math/Matrix3f;->mult(Lcom/jme3/math/Vector3f;Lcom/jme3/math/Vector3f;)Lcom/jme3/math/Vector3f;

    .line 326
    iget-object v4, v2, Lcom/jme3/util/TempVars;->vect1:Lcom/jme3/math/Vector3f;

    invoke-virtual {v4}, Lcom/jme3/math/Vector3f;->getX()F

    move-result v4

    invoke-static {v4}, Lcom/jme3/math/FastMath;->abs(F)F

    move-result v4

    iput v4, v0, Lcom/jme3/bounding/BoundingBox;->xExtent:F

    .line 327
    iget-object v4, v2, Lcom/jme3/util/TempVars;->vect1:Lcom/jme3/math/Vector3f;

    invoke-virtual {v4}, Lcom/jme3/math/Vector3f;->getY()F

    move-result v4

    invoke-static {v4}, Lcom/jme3/math/FastMath;->abs(F)F

    move-result v4

    iput v4, v0, Lcom/jme3/bounding/BoundingBox;->yExtent:F

    .line 328
    iget-object v4, v2, Lcom/jme3/util/TempVars;->vect1:Lcom/jme3/math/Vector3f;

    invoke-virtual {v4}, Lcom/jme3/math/Vector3f;->getZ()F

    move-result v4

    invoke-static {v4}, Lcom/jme3/math/FastMath;->abs(F)F

    move-result v4

    iput v4, v0, Lcom/jme3/bounding/BoundingBox;->zExtent:F

    .line 330
    invoke-virtual {v2}, Lcom/jme3/util/TempVars;->release()V

    .line 332
    return-object v0

    .end local v0           #box:Lcom/jme3/bounding/BoundingBox;
    .end local v1           #transMatrix:Lcom/jme3/math/Matrix3f;
    .end local v2           #vars:Lcom/jme3/util/TempVars;
    .end local v3           #w:F
    :cond_1
    move-object v0, p2

    .line 308
    check-cast v0, Lcom/jme3/bounding/BoundingBox;

    .restart local v0       #box:Lcom/jme3/bounding/BoundingBox;
    goto :goto_0
.end method

.method public transform(Lcom/jme3/math/Transform;Lcom/jme3/bounding/BoundingVolume;)Lcom/jme3/bounding/BoundingVolume;
    .locals 9
    .parameter "trans"
    .parameter "store"

    .prologue
    .line 273
    if-eqz p2, :cond_0

    invoke-virtual {p2}, Lcom/jme3/bounding/BoundingVolume;->getType()Lcom/jme3/bounding/BoundingVolume$Type;

    move-result-object v4

    sget-object v5, Lcom/jme3/bounding/BoundingVolume$Type;->AABB:Lcom/jme3/bounding/BoundingVolume$Type;

    if-eq v4, v5, :cond_1

    .line 274
    :cond_0
    new-instance v0, Lcom/jme3/bounding/BoundingBox;

    invoke-direct {v0}, Lcom/jme3/bounding/BoundingBox;-><init>()V

    .line 279
    .local v0, box:Lcom/jme3/bounding/BoundingBox;
    :goto_0
    iget-object v4, p0, Lcom/jme3/bounding/BoundingBox;->center:Lcom/jme3/math/Vector3f;

    invoke-virtual {p1}, Lcom/jme3/math/Transform;->getScale()Lcom/jme3/math/Vector3f;

    move-result-object v5

    iget-object v6, v0, Lcom/jme3/bounding/BoundingBox;->center:Lcom/jme3/math/Vector3f;

    invoke-virtual {v4, v5, v6}, Lcom/jme3/math/Vector3f;->mult(Lcom/jme3/math/Vector3f;Lcom/jme3/math/Vector3f;)Lcom/jme3/math/Vector3f;

    .line 280
    invoke-virtual {p1}, Lcom/jme3/math/Transform;->getRotation()Lcom/jme3/math/Quaternion;

    move-result-object v4

    iget-object v5, v0, Lcom/jme3/bounding/BoundingBox;->center:Lcom/jme3/math/Vector3f;

    iget-object v6, v0, Lcom/jme3/bounding/BoundingBox;->center:Lcom/jme3/math/Vector3f;

    invoke-virtual {v4, v5, v6}, Lcom/jme3/math/Quaternion;->mult(Lcom/jme3/math/Vector3f;Lcom/jme3/math/Vector3f;)Lcom/jme3/math/Vector3f;

    .line 281
    iget-object v4, v0, Lcom/jme3/bounding/BoundingBox;->center:Lcom/jme3/math/Vector3f;

    invoke-virtual {p1}, Lcom/jme3/math/Transform;->getTranslation()Lcom/jme3/math/Vector3f;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/jme3/math/Vector3f;->addLocal(Lcom/jme3/math/Vector3f;)Lcom/jme3/math/Vector3f;

    .line 283
    invoke-static {}, Lcom/jme3/util/TempVars;->get()Lcom/jme3/util/TempVars;

    move-result-object v3

    .line 285
    .local v3, vars:Lcom/jme3/util/TempVars;
    iget-object v2, v3, Lcom/jme3/util/TempVars;->tempMat3:Lcom/jme3/math/Matrix3f;

    .line 286
    .local v2, transMatrix:Lcom/jme3/math/Matrix3f;
    invoke-virtual {p1}, Lcom/jme3/math/Transform;->getRotation()Lcom/jme3/math/Quaternion;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/jme3/math/Matrix3f;->set(Lcom/jme3/math/Quaternion;)Lcom/jme3/math/Matrix3f;

    .line 288
    invoke-virtual {v2}, Lcom/jme3/math/Matrix3f;->absoluteLocal()V

    .line 290
    invoke-virtual {p1}, Lcom/jme3/math/Transform;->getScale()Lcom/jme3/math/Vector3f;

    move-result-object v1

    .line 291
    .local v1, scale:Lcom/jme3/math/Vector3f;
    iget-object v4, v3, Lcom/jme3/util/TempVars;->vect1:Lcom/jme3/math/Vector3f;

    iget v5, p0, Lcom/jme3/bounding/BoundingBox;->xExtent:F

    iget v6, v1, Lcom/jme3/math/Vector3f;->x:F

    mul-float/2addr v5, v6

    iget v6, p0, Lcom/jme3/bounding/BoundingBox;->yExtent:F

    iget v7, v1, Lcom/jme3/math/Vector3f;->y:F

    mul-float/2addr v6, v7

    iget v7, p0, Lcom/jme3/bounding/BoundingBox;->zExtent:F

    iget v8, v1, Lcom/jme3/math/Vector3f;->z:F

    mul-float/2addr v7, v8

    invoke-virtual {v4, v5, v6, v7}, Lcom/jme3/math/Vector3f;->set(FFF)Lcom/jme3/math/Vector3f;

    .line 292
    iget-object v4, v3, Lcom/jme3/util/TempVars;->vect1:Lcom/jme3/math/Vector3f;

    iget-object v5, v3, Lcom/jme3/util/TempVars;->vect2:Lcom/jme3/math/Vector3f;

    invoke-virtual {v2, v4, v5}, Lcom/jme3/math/Matrix3f;->mult(Lcom/jme3/math/Vector3f;Lcom/jme3/math/Vector3f;)Lcom/jme3/math/Vector3f;

    .line 294
    iget-object v4, v3, Lcom/jme3/util/TempVars;->vect2:Lcom/jme3/math/Vector3f;

    invoke-virtual {v4}, Lcom/jme3/math/Vector3f;->getX()F

    move-result v4

    invoke-static {v4}, Lcom/jme3/math/FastMath;->abs(F)F

    move-result v4

    iput v4, v0, Lcom/jme3/bounding/BoundingBox;->xExtent:F

    .line 295
    iget-object v4, v3, Lcom/jme3/util/TempVars;->vect2:Lcom/jme3/math/Vector3f;

    invoke-virtual {v4}, Lcom/jme3/math/Vector3f;->getY()F

    move-result v4

    invoke-static {v4}, Lcom/jme3/math/FastMath;->abs(F)F

    move-result v4

    iput v4, v0, Lcom/jme3/bounding/BoundingBox;->yExtent:F

    .line 296
    iget-object v4, v3, Lcom/jme3/util/TempVars;->vect2:Lcom/jme3/math/Vector3f;

    invoke-virtual {v4}, Lcom/jme3/math/Vector3f;->getZ()F

    move-result v4

    invoke-static {v4}, Lcom/jme3/math/FastMath;->abs(F)F

    move-result v4

    iput v4, v0, Lcom/jme3/bounding/BoundingBox;->zExtent:F

    .line 298
    invoke-virtual {v3}, Lcom/jme3/util/TempVars;->release()V

    .line 300
    return-object v0

    .end local v0           #box:Lcom/jme3/bounding/BoundingBox;
    .end local v1           #scale:Lcom/jme3/math/Vector3f;
    .end local v2           #transMatrix:Lcom/jme3/math/Matrix3f;
    .end local v3           #vars:Lcom/jme3/util/TempVars;
    :cond_1
    move-object v0, p2

    .line 276
    check-cast v0, Lcom/jme3/bounding/BoundingBox;

    .restart local v0       #box:Lcom/jme3/bounding/BoundingBox;
    goto :goto_0
.end method

.method public whichSide(Lcom/jme3/math/Plane;)Lcom/jme3/math/Plane$Side;
    .locals 5
    .parameter "plane"

    .prologue
    .line 343
    iget v2, p0, Lcom/jme3/bounding/BoundingBox;->xExtent:F

    invoke-virtual {p1}, Lcom/jme3/math/Plane;->getNormal()Lcom/jme3/math/Vector3f;

    move-result-object v3

    invoke-virtual {v3}, Lcom/jme3/math/Vector3f;->getX()F

    move-result v3

    mul-float/2addr v2, v3

    invoke-static {v2}, Lcom/jme3/math/FastMath;->abs(F)F

    move-result v2

    iget v3, p0, Lcom/jme3/bounding/BoundingBox;->yExtent:F

    invoke-virtual {p1}, Lcom/jme3/math/Plane;->getNormal()Lcom/jme3/math/Vector3f;

    move-result-object v4

    invoke-virtual {v4}, Lcom/jme3/math/Vector3f;->getY()F

    move-result v4

    mul-float/2addr v3, v4

    invoke-static {v3}, Lcom/jme3/math/FastMath;->abs(F)F

    move-result v3

    add-float/2addr v2, v3

    iget v3, p0, Lcom/jme3/bounding/BoundingBox;->zExtent:F

    invoke-virtual {p1}, Lcom/jme3/math/Plane;->getNormal()Lcom/jme3/math/Vector3f;

    move-result-object v4

    invoke-virtual {v4}, Lcom/jme3/math/Vector3f;->getZ()F

    move-result v4

    mul-float/2addr v3, v4

    invoke-static {v3}, Lcom/jme3/math/FastMath;->abs(F)F

    move-result v3

    add-float v1, v2, v3

    .line 347
    .local v1, radius:F
    iget-object v2, p0, Lcom/jme3/bounding/BoundingBox;->center:Lcom/jme3/math/Vector3f;

    invoke-virtual {p1, v2}, Lcom/jme3/math/Plane;->pseudoDistance(Lcom/jme3/math/Vector3f;)F

    move-result v0

    .line 350
    .local v0, distance:F
    neg-float v2, v1

    cmpg-float v2, v0, v2

    if-gez v2, :cond_0

    .line 351
    sget-object v2, Lcom/jme3/math/Plane$Side;->Negative:Lcom/jme3/math/Plane$Side;

    .line 355
    :goto_0
    return-object v2

    .line 352
    :cond_0
    cmpl-float v2, v0, v1

    if-lez v2, :cond_1

    .line 353
    sget-object v2, Lcom/jme3/math/Plane$Side;->Positive:Lcom/jme3/math/Plane$Side;

    goto :goto_0

    .line 355
    :cond_1
    sget-object v2, Lcom/jme3/math/Plane$Side;->None:Lcom/jme3/math/Plane$Side;

    goto :goto_0
.end method
