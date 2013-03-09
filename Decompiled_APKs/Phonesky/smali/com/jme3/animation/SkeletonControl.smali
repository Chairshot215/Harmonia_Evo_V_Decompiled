.class public Lcom/jme3/animation/SkeletonControl;
.super Lcom/jme3/scene/control/AbstractControl;
.source "SkeletonControl.java"

# interfaces
.implements Ljava/lang/Cloneable;


# instance fields
.field private skeleton:Lcom/jme3/animation/Skeleton;

.field private targets:[Lcom/jme3/scene/Mesh;

.field private wasMeshUpdated:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 48
    invoke-direct {p0}, Lcom/jme3/scene/control/AbstractControl;-><init>()V

    .line 43
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/jme3/animation/SkeletonControl;->wasMeshUpdated:Z

    .line 49
    return-void
.end method

.method public constructor <init>(Lcom/jme3/animation/Skeleton;)V
    .locals 1
    .parameter "skeleton"

    .prologue
    .line 58
    invoke-direct {p0}, Lcom/jme3/scene/control/AbstractControl;-><init>()V

    .line 43
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/jme3/animation/SkeletonControl;->wasMeshUpdated:Z

    .line 59
    iput-object p1, p0, Lcom/jme3/animation/SkeletonControl;->skeleton:Lcom/jme3/animation/Skeleton;

    .line 60
    return-void
.end method

.method constructor <init>([Lcom/jme3/scene/Mesh;Lcom/jme3/animation/Skeleton;)V
    .locals 1
    .parameter "targets"
    .parameter "skeleton"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 69
    invoke-direct {p0}, Lcom/jme3/scene/control/AbstractControl;-><init>()V

    .line 43
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/jme3/animation/SkeletonControl;->wasMeshUpdated:Z

    .line 70
    iput-object p2, p0, Lcom/jme3/animation/SkeletonControl;->skeleton:Lcom/jme3/animation/Skeleton;

    .line 71
    iput-object p1, p0, Lcom/jme3/animation/SkeletonControl;->targets:[Lcom/jme3/scene/Mesh;

    .line 72
    return-void
.end method

.method private applySkinning(Lcom/jme3/scene/Mesh;[Lcom/jme3/math/Matrix4f;)V
    .locals 41
    .parameter "mesh"
    .parameter "offsetMatrices"

    .prologue
    .line 298
    invoke-virtual/range {p1 .. p1}, Lcom/jme3/scene/Mesh;->getMaxNumWeights()I

    move-result v15

    .line 299
    .local v15, maxWeightsPerVert:I
    if-gtz v15, :cond_0

    .line 300
    new-instance v39, Ljava/lang/IllegalStateException;

    const-string v40, "Max weights per vert is incorrectly set!"

    invoke-direct/range {v39 .. v40}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v39

    .line 303
    :cond_0
    rsub-int/lit8 v4, v15, 0x4

    .line 307
    .local v4, fourMinusMaxWeights:I
    sget-object v39, Lcom/jme3/scene/VertexBuffer$Type;->Position:Lcom/jme3/scene/VertexBuffer$Type;

    move-object/from16 v0, p1

    move-object/from16 v1, v39

    invoke-virtual {v0, v1}, Lcom/jme3/scene/Mesh;->getBuffer(Lcom/jme3/scene/VertexBuffer$Type;)Lcom/jme3/scene/VertexBuffer;

    move-result-object v29

    .line 308
    .local v29, vb:Lcom/jme3/scene/VertexBuffer;
    invoke-virtual/range {v29 .. v29}, Lcom/jme3/scene/VertexBuffer;->getData()Ljava/nio/Buffer;

    move-result-object v5

    check-cast v5, Ljava/nio/FloatBuffer;

    .line 309
    .local v5, fvb:Ljava/nio/FloatBuffer;
    invoke-virtual {v5}, Ljava/nio/FloatBuffer;->rewind()Ljava/nio/Buffer;

    .line 311
    sget-object v39, Lcom/jme3/scene/VertexBuffer$Type;->Normal:Lcom/jme3/scene/VertexBuffer$Type;

    move-object/from16 v0, p1

    move-object/from16 v1, v39

    invoke-virtual {v0, v1}, Lcom/jme3/scene/Mesh;->getBuffer(Lcom/jme3/scene/VertexBuffer$Type;)Lcom/jme3/scene/VertexBuffer;

    move-result-object v16

    .line 312
    .local v16, nb:Lcom/jme3/scene/VertexBuffer;
    invoke-virtual/range {v16 .. v16}, Lcom/jme3/scene/VertexBuffer;->getData()Ljava/nio/Buffer;

    move-result-object v3

    check-cast v3, Ljava/nio/FloatBuffer;

    .line 313
    .local v3, fnb:Ljava/nio/FloatBuffer;
    invoke-virtual {v3}, Ljava/nio/FloatBuffer;->rewind()Ljava/nio/Buffer;

    .line 316
    sget-object v39, Lcom/jme3/scene/VertexBuffer$Type;->BoneIndex:Lcom/jme3/scene/VertexBuffer$Type;

    move-object/from16 v0, p1

    move-object/from16 v1, v39

    invoke-virtual {v0, v1}, Lcom/jme3/scene/Mesh;->getBuffer(Lcom/jme3/scene/VertexBuffer$Type;)Lcom/jme3/scene/VertexBuffer;

    move-result-object v39

    invoke-virtual/range {v39 .. v39}, Lcom/jme3/scene/VertexBuffer;->getData()Ljava/nio/Buffer;

    move-result-object v7

    check-cast v7, Ljava/nio/ByteBuffer;

    .line 317
    .local v7, ib:Ljava/nio/ByteBuffer;
    sget-object v39, Lcom/jme3/scene/VertexBuffer$Type;->BoneWeight:Lcom/jme3/scene/VertexBuffer$Type;

    move-object/from16 v0, p1

    move-object/from16 v1, v39

    invoke-virtual {v0, v1}, Lcom/jme3/scene/Mesh;->getBuffer(Lcom/jme3/scene/VertexBuffer$Type;)Lcom/jme3/scene/VertexBuffer;

    move-result-object v39

    invoke-virtual/range {v39 .. v39}, Lcom/jme3/scene/VertexBuffer;->getData()Ljava/nio/Buffer;

    move-result-object v36

    check-cast v36, Ljava/nio/FloatBuffer;

    .line 319
    .local v36, wb:Ljava/nio/FloatBuffer;
    invoke-virtual {v7}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    .line 320
    invoke-virtual/range {v36 .. v36}, Ljava/nio/FloatBuffer;->rewind()Ljava/nio/Buffer;

    .line 322
    invoke-virtual/range {v36 .. v36}, Ljava/nio/FloatBuffer;->array()[F

    move-result-object v38

    .line 323
    .local v38, weights:[F
    invoke-virtual {v7}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v12

    .line 324
    .local v12, indices:[B
    const/4 v10, 0x0

    .line 326
    .local v10, idxWeights:I
    invoke-static {}, Lcom/jme3/util/TempVars;->get()Lcom/jme3/util/TempVars;

    move-result-object v28

    .line 329
    .local v28, vars:Lcom/jme3/util/TempVars;
    move-object/from16 v0, v28

    iget-object v0, v0, Lcom/jme3/util/TempVars;->skinPositions:[F

    move-object/from16 v21, v0

    .line 330
    .local v21, posBuf:[F
    move-object/from16 v0, v28

    iget-object v0, v0, Lcom/jme3/util/TempVars;->skinNormals:[F

    move-object/from16 v20, v0

    .line 332
    .local v20, normBuf:[F
    invoke-virtual {v5}, Ljava/nio/FloatBuffer;->capacity()I

    move-result v39

    move/from16 v0, v39

    int-to-float v0, v0

    move/from16 v39, v0

    move-object/from16 v0, v21

    array-length v0, v0

    move/from16 v40, v0

    move/from16 v0, v40

    int-to-float v0, v0

    move/from16 v40, v0

    div-float v39, v39, v40

    invoke-static/range {v39 .. v39}, Lcom/jme3/math/FastMath;->ceil(F)F

    move-result v39

    move/from16 v0, v39

    float-to-int v13, v0

    .line 333
    .local v13, iterations:I
    move-object/from16 v0, v21

    array-length v2, v0

    .line 334
    .local v2, bufLength:I
    add-int/lit8 v6, v13, -0x1

    .local v6, i:I
    :goto_0
    if-ltz v6, :cond_3

    .line 336
    move-object/from16 v0, v21

    array-length v0, v0

    move/from16 v39, v0

    invoke-virtual {v5}, Ljava/nio/FloatBuffer;->remaining()I

    move-result v40

    invoke-static/range {v39 .. v40}, Ljava/lang/Math;->min(II)I

    move-result v2

    .line 337
    const/16 v39, 0x0

    move-object/from16 v0, v21

    move/from16 v1, v39

    invoke-virtual {v5, v0, v1, v2}, Ljava/nio/FloatBuffer;->get([FII)Ljava/nio/FloatBuffer;

    .line 338
    const/16 v39, 0x0

    move-object/from16 v0, v20

    move/from16 v1, v39

    invoke-virtual {v3, v0, v1, v2}, Ljava/nio/FloatBuffer;->get([FII)Ljava/nio/FloatBuffer;

    .line 339
    div-int/lit8 v31, v2, 0x3

    .line 340
    .local v31, verts:I
    const/4 v8, 0x0

    .line 343
    .local v8, idxPositions:I
    add-int/lit8 v30, v31, -0x1

    .local v30, vert:I
    move v9, v8

    .end local v8           #idxPositions:I
    .local v9, idxPositions:I
    :goto_1
    if-ltz v30, :cond_2

    .line 344
    aget v17, v20, v9

    .line 345
    .local v17, nmx:F
    add-int/lit8 v8, v9, 0x1

    .end local v9           #idxPositions:I
    .restart local v8       #idxPositions:I
    aget v32, v21, v9

    .line 346
    .local v32, vtx:F
    aget v18, v20, v8

    .line 347
    .local v18, nmy:F
    add-int/lit8 v9, v8, 0x1

    .end local v8           #idxPositions:I
    .restart local v9       #idxPositions:I
    aget v33, v21, v8

    .line 348
    .local v33, vty:F
    aget v19, v20, v9

    .line 349
    .local v19, nmz:F
    add-int/lit8 v8, v9, 0x1

    .end local v9           #idxPositions:I
    .restart local v8       #idxPositions:I
    aget v34, v21, v9

    .line 351
    .local v34, vtz:F
    const/16 v25, 0x0

    .local v25, rx:F
    const/16 v26, 0x0

    .local v26, ry:F
    const/16 v27, 0x0

    .local v27, rz:F
    const/16 v22, 0x0

    .local v22, rnx:F
    const/16 v23, 0x0

    .local v23, rny:F
    const/16 v24, 0x0

    .line 353
    .local v24, rnz:F
    add-int/lit8 v35, v15, -0x1

    .local v35, w:I
    move v11, v10

    .end local v10           #idxWeights:I
    .local v11, idxWeights:I
    :goto_2
    if-ltz v35, :cond_1

    .line 354
    aget v37, v38, v11

    .line 355
    .local v37, weight:F
    add-int/lit8 v10, v11, 0x1

    .end local v11           #idxWeights:I
    .restart local v10       #idxWeights:I
    aget-byte v39, v12, v11

    aget-object v14, p2, v39

    .line 357
    .local v14, mat:Lcom/jme3/math/Matrix4f;
    iget v0, v14, Lcom/jme3/math/Matrix4f;->m00:F

    move/from16 v39, v0

    mul-float v39, v39, v32

    iget v0, v14, Lcom/jme3/math/Matrix4f;->m01:F

    move/from16 v40, v0

    mul-float v40, v40, v33

    add-float v39, v39, v40

    iget v0, v14, Lcom/jme3/math/Matrix4f;->m02:F

    move/from16 v40, v0

    mul-float v40, v40, v34

    add-float v39, v39, v40

    iget v0, v14, Lcom/jme3/math/Matrix4f;->m03:F

    move/from16 v40, v0

    add-float v39, v39, v40

    mul-float v39, v39, v37

    add-float v25, v25, v39

    .line 358
    iget v0, v14, Lcom/jme3/math/Matrix4f;->m10:F

    move/from16 v39, v0

    mul-float v39, v39, v32

    iget v0, v14, Lcom/jme3/math/Matrix4f;->m11:F

    move/from16 v40, v0

    mul-float v40, v40, v33

    add-float v39, v39, v40

    iget v0, v14, Lcom/jme3/math/Matrix4f;->m12:F

    move/from16 v40, v0

    mul-float v40, v40, v34

    add-float v39, v39, v40

    iget v0, v14, Lcom/jme3/math/Matrix4f;->m13:F

    move/from16 v40, v0

    add-float v39, v39, v40

    mul-float v39, v39, v37

    add-float v26, v26, v39

    .line 359
    iget v0, v14, Lcom/jme3/math/Matrix4f;->m20:F

    move/from16 v39, v0

    mul-float v39, v39, v32

    iget v0, v14, Lcom/jme3/math/Matrix4f;->m21:F

    move/from16 v40, v0

    mul-float v40, v40, v33

    add-float v39, v39, v40

    iget v0, v14, Lcom/jme3/math/Matrix4f;->m22:F

    move/from16 v40, v0

    mul-float v40, v40, v34

    add-float v39, v39, v40

    iget v0, v14, Lcom/jme3/math/Matrix4f;->m23:F

    move/from16 v40, v0

    add-float v39, v39, v40

    mul-float v39, v39, v37

    add-float v27, v27, v39

    .line 361
    iget v0, v14, Lcom/jme3/math/Matrix4f;->m00:F

    move/from16 v39, v0

    mul-float v39, v39, v17

    iget v0, v14, Lcom/jme3/math/Matrix4f;->m01:F

    move/from16 v40, v0

    mul-float v40, v40, v18

    add-float v39, v39, v40

    iget v0, v14, Lcom/jme3/math/Matrix4f;->m02:F

    move/from16 v40, v0

    mul-float v40, v40, v19

    add-float v39, v39, v40

    mul-float v39, v39, v37

    add-float v22, v22, v39

    .line 362
    iget v0, v14, Lcom/jme3/math/Matrix4f;->m10:F

    move/from16 v39, v0

    mul-float v39, v39, v17

    iget v0, v14, Lcom/jme3/math/Matrix4f;->m11:F

    move/from16 v40, v0

    mul-float v40, v40, v18

    add-float v39, v39, v40

    iget v0, v14, Lcom/jme3/math/Matrix4f;->m12:F

    move/from16 v40, v0

    mul-float v40, v40, v19

    add-float v39, v39, v40

    mul-float v39, v39, v37

    add-float v23, v23, v39

    .line 363
    iget v0, v14, Lcom/jme3/math/Matrix4f;->m20:F

    move/from16 v39, v0

    mul-float v39, v39, v17

    iget v0, v14, Lcom/jme3/math/Matrix4f;->m21:F

    move/from16 v40, v0

    mul-float v40, v40, v18

    add-float v39, v39, v40

    iget v0, v14, Lcom/jme3/math/Matrix4f;->m22:F

    move/from16 v40, v0

    mul-float v40, v40, v19

    add-float v39, v39, v40

    mul-float v39, v39, v37

    add-float v24, v24, v39

    .line 353
    add-int/lit8 v35, v35, -0x1

    move v11, v10

    .end local v10           #idxWeights:I
    .restart local v11       #idxWeights:I
    goto/16 :goto_2

    .line 366
    .end local v14           #mat:Lcom/jme3/math/Matrix4f;
    .end local v37           #weight:F
    :cond_1
    add-int v10, v11, v4

    .line 368
    .end local v11           #idxWeights:I
    .restart local v10       #idxWeights:I
    add-int/lit8 v8, v8, -0x3

    .line 369
    aput v22, v20, v8

    .line 370
    add-int/lit8 v9, v8, 0x1

    .end local v8           #idxPositions:I
    .restart local v9       #idxPositions:I
    aput v25, v21, v8

    .line 371
    aput v23, v20, v9

    .line 372
    add-int/lit8 v8, v9, 0x1

    .end local v9           #idxPositions:I
    .restart local v8       #idxPositions:I
    aput v26, v21, v9

    .line 373
    aput v24, v20, v8

    .line 374
    add-int/lit8 v9, v8, 0x1

    .end local v8           #idxPositions:I
    .restart local v9       #idxPositions:I
    aput v27, v21, v8

    .line 343
    add-int/lit8 v30, v30, -0x1

    goto/16 :goto_1

    .line 377
    .end local v17           #nmx:F
    .end local v18           #nmy:F
    .end local v19           #nmz:F
    .end local v22           #rnx:F
    .end local v23           #rny:F
    .end local v24           #rnz:F
    .end local v25           #rx:F
    .end local v26           #ry:F
    .end local v27           #rz:F
    .end local v32           #vtx:F
    .end local v33           #vty:F
    .end local v34           #vtz:F
    .end local v35           #w:I
    :cond_2
    invoke-virtual {v5}, Ljava/nio/FloatBuffer;->position()I

    move-result v39

    sub-int v39, v39, v2

    move/from16 v0, v39

    invoke-virtual {v5, v0}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    .line 378
    const/16 v39, 0x0

    move-object/from16 v0, v21

    move/from16 v1, v39

    invoke-virtual {v5, v0, v1, v2}, Ljava/nio/FloatBuffer;->put([FII)Ljava/nio/FloatBuffer;

    .line 379
    invoke-virtual {v3}, Ljava/nio/FloatBuffer;->position()I

    move-result v39

    sub-int v39, v39, v2

    move/from16 v0, v39

    invoke-virtual {v3, v0}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    .line 380
    const/16 v39, 0x0

    move-object/from16 v0, v20

    move/from16 v1, v39

    invoke-virtual {v3, v0, v1, v2}, Ljava/nio/FloatBuffer;->put([FII)Ljava/nio/FloatBuffer;

    .line 334
    add-int/lit8 v6, v6, -0x1

    goto/16 :goto_0

    .line 383
    .end local v9           #idxPositions:I
    .end local v30           #vert:I
    .end local v31           #verts:I
    :cond_3
    invoke-virtual/range {v28 .. v28}, Lcom/jme3/util/TempVars;->release()V

    .line 385
    move-object/from16 v0, v29

    invoke-virtual {v0, v5}, Lcom/jme3/scene/VertexBuffer;->updateData(Ljava/nio/Buffer;)V

    .line 386
    move-object/from16 v0, v16

    invoke-virtual {v0, v3}, Lcom/jme3/scene/VertexBuffer;->updateData(Ljava/nio/Buffer;)V

    .line 388
    return-void
.end method

.method private applySkinningTangents(Lcom/jme3/scene/Mesh;[Lcom/jme3/math/Matrix4f;Lcom/jme3/scene/VertexBuffer;)V
    .locals 53
    .parameter "mesh"
    .parameter "offsetMatrices"
    .parameter "tb"

    .prologue
    .line 400
    invoke-virtual/range {p1 .. p1}, Lcom/jme3/scene/Mesh;->getMaxNumWeights()I

    move-result v19

    .line 402
    .local v19, maxWeightsPerVert:I
    if-gtz v19, :cond_0

    .line 403
    new-instance v51, Ljava/lang/IllegalStateException;

    const-string v52, "Max weights per vert is incorrectly set!"

    invoke-direct/range {v51 .. v52}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v51

    .line 406
    :cond_0
    rsub-int/lit8 v5, v19, 0x4

    .line 410
    .local v5, fourMinusMaxWeights:I
    sget-object v51, Lcom/jme3/scene/VertexBuffer$Type;->Position:Lcom/jme3/scene/VertexBuffer$Type;

    move-object/from16 v0, p1

    move-object/from16 v1, v51

    invoke-virtual {v0, v1}, Lcom/jme3/scene/Mesh;->getBuffer(Lcom/jme3/scene/VertexBuffer$Type;)Lcom/jme3/scene/VertexBuffer;

    move-result-object v41

    .line 411
    .local v41, vb:Lcom/jme3/scene/VertexBuffer;
    invoke-virtual/range {v41 .. v41}, Lcom/jme3/scene/VertexBuffer;->getData()Ljava/nio/Buffer;

    move-result-object v7

    check-cast v7, Ljava/nio/FloatBuffer;

    .line 412
    .local v7, fvb:Ljava/nio/FloatBuffer;
    invoke-virtual {v7}, Ljava/nio/FloatBuffer;->rewind()Ljava/nio/Buffer;

    .line 414
    sget-object v51, Lcom/jme3/scene/VertexBuffer$Type;->Normal:Lcom/jme3/scene/VertexBuffer$Type;

    move-object/from16 v0, p1

    move-object/from16 v1, v51

    invoke-virtual {v0, v1}, Lcom/jme3/scene/Mesh;->getBuffer(Lcom/jme3/scene/VertexBuffer$Type;)Lcom/jme3/scene/VertexBuffer;

    move-result-object v20

    .line 416
    .local v20, nb:Lcom/jme3/scene/VertexBuffer;
    invoke-virtual/range {v20 .. v20}, Lcom/jme3/scene/VertexBuffer;->getData()Ljava/nio/Buffer;

    move-result-object v4

    check-cast v4, Ljava/nio/FloatBuffer;

    .line 417
    .local v4, fnb:Ljava/nio/FloatBuffer;
    invoke-virtual {v4}, Ljava/nio/FloatBuffer;->rewind()Ljava/nio/Buffer;

    .line 420
    invoke-virtual/range {p3 .. p3}, Lcom/jme3/scene/VertexBuffer;->getData()Ljava/nio/Buffer;

    move-result-object v6

    check-cast v6, Ljava/nio/FloatBuffer;

    .line 421
    .local v6, ftb:Ljava/nio/FloatBuffer;
    invoke-virtual {v6}, Ljava/nio/FloatBuffer;->rewind()Ljava/nio/Buffer;

    .line 425
    sget-object v51, Lcom/jme3/scene/VertexBuffer$Type;->BoneIndex:Lcom/jme3/scene/VertexBuffer$Type;

    move-object/from16 v0, p1

    move-object/from16 v1, v51

    invoke-virtual {v0, v1}, Lcom/jme3/scene/Mesh;->getBuffer(Lcom/jme3/scene/VertexBuffer$Type;)Lcom/jme3/scene/VertexBuffer;

    move-result-object v51

    invoke-virtual/range {v51 .. v51}, Lcom/jme3/scene/VertexBuffer;->getData()Ljava/nio/Buffer;

    move-result-object v9

    check-cast v9, Ljava/nio/ByteBuffer;

    .line 426
    .local v9, ib:Ljava/nio/ByteBuffer;
    sget-object v51, Lcom/jme3/scene/VertexBuffer$Type;->BoneWeight:Lcom/jme3/scene/VertexBuffer$Type;

    move-object/from16 v0, p1

    move-object/from16 v1, v51

    invoke-virtual {v0, v1}, Lcom/jme3/scene/Mesh;->getBuffer(Lcom/jme3/scene/VertexBuffer$Type;)Lcom/jme3/scene/VertexBuffer;

    move-result-object v51

    invoke-virtual/range {v51 .. v51}, Lcom/jme3/scene/VertexBuffer;->getData()Ljava/nio/Buffer;

    move-result-object v48

    check-cast v48, Ljava/nio/FloatBuffer;

    .line 428
    .local v48, wb:Ljava/nio/FloatBuffer;
    invoke-virtual {v9}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    .line 429
    invoke-virtual/range {v48 .. v48}, Ljava/nio/FloatBuffer;->rewind()Ljava/nio/Buffer;

    .line 431
    invoke-virtual/range {v48 .. v48}, Ljava/nio/FloatBuffer;->array()[F

    move-result-object v50

    .line 432
    .local v50, weights:[F
    invoke-virtual {v9}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v16

    .line 433
    .local v16, indices:[B
    const/4 v14, 0x0

    .line 435
    .local v14, idxWeights:I
    invoke-static {}, Lcom/jme3/util/TempVars;->get()Lcom/jme3/util/TempVars;

    move-result-object v40

    .line 438
    .local v40, vars:Lcom/jme3/util/TempVars;
    move-object/from16 v0, v40

    iget-object v0, v0, Lcom/jme3/util/TempVars;->skinPositions:[F

    move-object/from16 v25, v0

    .line 439
    .local v25, posBuf:[F
    move-object/from16 v0, v40

    iget-object v0, v0, Lcom/jme3/util/TempVars;->skinNormals:[F

    move-object/from16 v24, v0

    .line 440
    .local v24, normBuf:[F
    move-object/from16 v0, v40

    iget-object v0, v0, Lcom/jme3/util/TempVars;->skinTangents:[F

    move-object/from16 v35, v0

    .line 442
    .local v35, tanBuf:[F
    invoke-virtual {v7}, Ljava/nio/FloatBuffer;->capacity()I

    move-result v51

    move/from16 v0, v51

    int-to-float v0, v0

    move/from16 v51, v0

    move-object/from16 v0, v25

    array-length v0, v0

    move/from16 v52, v0

    move/from16 v0, v52

    int-to-float v0, v0

    move/from16 v52, v0

    div-float v51, v51, v52

    invoke-static/range {v51 .. v51}, Lcom/jme3/math/FastMath;->ceil(F)F

    move-result v51

    move/from16 v0, v51

    float-to-int v0, v0

    move/from16 v17, v0

    .line 443
    .local v17, iterations:I
    const/4 v3, 0x0

    .line 444
    .local v3, bufLength:I
    const/16 v36, 0x0

    .line 445
    .local v36, tanLength:I
    add-int/lit8 v8, v17, -0x1

    .local v8, i:I
    :goto_0
    if-ltz v8, :cond_3

    .line 447
    move-object/from16 v0, v25

    array-length v0, v0

    move/from16 v51, v0

    invoke-virtual {v7}, Ljava/nio/FloatBuffer;->remaining()I

    move-result v52

    invoke-static/range {v51 .. v52}, Ljava/lang/Math;->min(II)I

    move-result v3

    .line 448
    move-object/from16 v0, v35

    array-length v0, v0

    move/from16 v51, v0

    invoke-virtual {v6}, Ljava/nio/FloatBuffer;->remaining()I

    move-result v52

    invoke-static/range {v51 .. v52}, Ljava/lang/Math;->min(II)I

    move-result v36

    .line 449
    const/16 v51, 0x0

    move-object/from16 v0, v25

    move/from16 v1, v51

    invoke-virtual {v7, v0, v1, v3}, Ljava/nio/FloatBuffer;->get([FII)Ljava/nio/FloatBuffer;

    .line 450
    const/16 v51, 0x0

    move-object/from16 v0, v24

    move/from16 v1, v51

    invoke-virtual {v4, v0, v1, v3}, Ljava/nio/FloatBuffer;->get([FII)Ljava/nio/FloatBuffer;

    .line 451
    const/16 v51, 0x0

    move-object/from16 v0, v35

    move/from16 v1, v51

    move/from16 v2, v36

    invoke-virtual {v6, v0, v1, v2}, Ljava/nio/FloatBuffer;->get([FII)Ljava/nio/FloatBuffer;

    .line 452
    div-int/lit8 v43, v3, 0x3

    .line 453
    .local v43, verts:I
    const/4 v10, 0x0

    .line 455
    .local v10, idxPositions:I
    const/4 v12, 0x0

    .line 458
    .local v12, idxTangents:I
    add-int/lit8 v42, v43, -0x1

    .local v42, vert:I
    move v13, v12

    .end local v12           #idxTangents:I
    .local v13, idxTangents:I
    move v11, v10

    .end local v10           #idxPositions:I
    .local v11, idxPositions:I
    :goto_1
    if-ltz v42, :cond_2

    .line 459
    aget v21, v24, v11

    .line 460
    .local v21, nmx:F
    add-int/lit8 v10, v11, 0x1

    .end local v11           #idxPositions:I
    .restart local v10       #idxPositions:I
    aget v44, v25, v11

    .line 461
    .local v44, vtx:F
    aget v22, v24, v10

    .line 462
    .local v22, nmy:F
    add-int/lit8 v11, v10, 0x1

    .end local v10           #idxPositions:I
    .restart local v11       #idxPositions:I
    aget v45, v25, v10

    .line 463
    .local v45, vty:F
    aget v23, v24, v11

    .line 464
    .local v23, nmz:F
    add-int/lit8 v10, v11, 0x1

    .end local v11           #idxPositions:I
    .restart local v10       #idxPositions:I
    aget v46, v25, v11

    .line 466
    .local v46, vtz:F
    add-int/lit8 v12, v13, 0x1

    .end local v13           #idxTangents:I
    .restart local v12       #idxTangents:I
    aget v37, v35, v13

    .line 467
    .local v37, tnx:F
    add-int/lit8 v13, v12, 0x1

    .end local v12           #idxTangents:I
    .restart local v13       #idxTangents:I
    aget v38, v35, v12

    .line 468
    .local v38, tny:F
    add-int/lit8 v12, v13, 0x1

    .end local v13           #idxTangents:I
    .restart local v12       #idxTangents:I
    aget v39, v35, v13

    .line 471
    .local v39, tnz:F
    add-int/lit8 v12, v12, 0x1

    .line 473
    const/16 v32, 0x0

    .local v32, rx:F
    const/16 v33, 0x0

    .local v33, ry:F
    const/16 v34, 0x0

    .local v34, rz:F
    const/16 v26, 0x0

    .local v26, rnx:F
    const/16 v27, 0x0

    .local v27, rny:F
    const/16 v28, 0x0

    .local v28, rnz:F
    const/16 v29, 0x0

    .local v29, rtx:F
    const/16 v30, 0x0

    .local v30, rty:F
    const/16 v31, 0x0

    .line 475
    .local v31, rtz:F
    add-int/lit8 v47, v19, -0x1

    .local v47, w:I
    move v15, v14

    .end local v14           #idxWeights:I
    .local v15, idxWeights:I
    :goto_2
    if-ltz v47, :cond_1

    .line 476
    aget v49, v50, v15

    .line 477
    .local v49, weight:F
    add-int/lit8 v14, v15, 0x1

    .end local v15           #idxWeights:I
    .restart local v14       #idxWeights:I
    aget-byte v51, v16, v15

    aget-object v18, p2, v51

    .line 479
    .local v18, mat:Lcom/jme3/math/Matrix4f;
    move-object/from16 v0, v18

    iget v0, v0, Lcom/jme3/math/Matrix4f;->m00:F

    move/from16 v51, v0

    mul-float v51, v51, v44

    move-object/from16 v0, v18

    iget v0, v0, Lcom/jme3/math/Matrix4f;->m01:F

    move/from16 v52, v0

    mul-float v52, v52, v45

    add-float v51, v51, v52

    move-object/from16 v0, v18

    iget v0, v0, Lcom/jme3/math/Matrix4f;->m02:F

    move/from16 v52, v0

    mul-float v52, v52, v46

    add-float v51, v51, v52

    move-object/from16 v0, v18

    iget v0, v0, Lcom/jme3/math/Matrix4f;->m03:F

    move/from16 v52, v0

    add-float v51, v51, v52

    mul-float v51, v51, v49

    add-float v32, v32, v51

    .line 480
    move-object/from16 v0, v18

    iget v0, v0, Lcom/jme3/math/Matrix4f;->m10:F

    move/from16 v51, v0

    mul-float v51, v51, v44

    move-object/from16 v0, v18

    iget v0, v0, Lcom/jme3/math/Matrix4f;->m11:F

    move/from16 v52, v0

    mul-float v52, v52, v45

    add-float v51, v51, v52

    move-object/from16 v0, v18

    iget v0, v0, Lcom/jme3/math/Matrix4f;->m12:F

    move/from16 v52, v0

    mul-float v52, v52, v46

    add-float v51, v51, v52

    move-object/from16 v0, v18

    iget v0, v0, Lcom/jme3/math/Matrix4f;->m13:F

    move/from16 v52, v0

    add-float v51, v51, v52

    mul-float v51, v51, v49

    add-float v33, v33, v51

    .line 481
    move-object/from16 v0, v18

    iget v0, v0, Lcom/jme3/math/Matrix4f;->m20:F

    move/from16 v51, v0

    mul-float v51, v51, v44

    move-object/from16 v0, v18

    iget v0, v0, Lcom/jme3/math/Matrix4f;->m21:F

    move/from16 v52, v0

    mul-float v52, v52, v45

    add-float v51, v51, v52

    move-object/from16 v0, v18

    iget v0, v0, Lcom/jme3/math/Matrix4f;->m22:F

    move/from16 v52, v0

    mul-float v52, v52, v46

    add-float v51, v51, v52

    move-object/from16 v0, v18

    iget v0, v0, Lcom/jme3/math/Matrix4f;->m23:F

    move/from16 v52, v0

    add-float v51, v51, v52

    mul-float v51, v51, v49

    add-float v34, v34, v51

    .line 483
    move-object/from16 v0, v18

    iget v0, v0, Lcom/jme3/math/Matrix4f;->m00:F

    move/from16 v51, v0

    mul-float v51, v51, v21

    move-object/from16 v0, v18

    iget v0, v0, Lcom/jme3/math/Matrix4f;->m01:F

    move/from16 v52, v0

    mul-float v52, v52, v22

    add-float v51, v51, v52

    move-object/from16 v0, v18

    iget v0, v0, Lcom/jme3/math/Matrix4f;->m02:F

    move/from16 v52, v0

    mul-float v52, v52, v23

    add-float v51, v51, v52

    mul-float v51, v51, v49

    add-float v26, v26, v51

    .line 484
    move-object/from16 v0, v18

    iget v0, v0, Lcom/jme3/math/Matrix4f;->m10:F

    move/from16 v51, v0

    mul-float v51, v51, v21

    move-object/from16 v0, v18

    iget v0, v0, Lcom/jme3/math/Matrix4f;->m11:F

    move/from16 v52, v0

    mul-float v52, v52, v22

    add-float v51, v51, v52

    move-object/from16 v0, v18

    iget v0, v0, Lcom/jme3/math/Matrix4f;->m12:F

    move/from16 v52, v0

    mul-float v52, v52, v23

    add-float v51, v51, v52

    mul-float v51, v51, v49

    add-float v27, v27, v51

    .line 485
    move-object/from16 v0, v18

    iget v0, v0, Lcom/jme3/math/Matrix4f;->m20:F

    move/from16 v51, v0

    mul-float v51, v51, v21

    move-object/from16 v0, v18

    iget v0, v0, Lcom/jme3/math/Matrix4f;->m21:F

    move/from16 v52, v0

    mul-float v52, v52, v22

    add-float v51, v51, v52

    move-object/from16 v0, v18

    iget v0, v0, Lcom/jme3/math/Matrix4f;->m22:F

    move/from16 v52, v0

    mul-float v52, v52, v23

    add-float v51, v51, v52

    mul-float v51, v51, v49

    add-float v28, v28, v51

    .line 487
    move-object/from16 v0, v18

    iget v0, v0, Lcom/jme3/math/Matrix4f;->m00:F

    move/from16 v51, v0

    mul-float v51, v51, v37

    move-object/from16 v0, v18

    iget v0, v0, Lcom/jme3/math/Matrix4f;->m01:F

    move/from16 v52, v0

    mul-float v52, v52, v38

    add-float v51, v51, v52

    move-object/from16 v0, v18

    iget v0, v0, Lcom/jme3/math/Matrix4f;->m02:F

    move/from16 v52, v0

    mul-float v52, v52, v39

    add-float v51, v51, v52

    mul-float v51, v51, v49

    add-float v29, v29, v51

    .line 488
    move-object/from16 v0, v18

    iget v0, v0, Lcom/jme3/math/Matrix4f;->m10:F

    move/from16 v51, v0

    mul-float v51, v51, v37

    move-object/from16 v0, v18

    iget v0, v0, Lcom/jme3/math/Matrix4f;->m11:F

    move/from16 v52, v0

    mul-float v52, v52, v38

    add-float v51, v51, v52

    move-object/from16 v0, v18

    iget v0, v0, Lcom/jme3/math/Matrix4f;->m12:F

    move/from16 v52, v0

    mul-float v52, v52, v39

    add-float v51, v51, v52

    mul-float v51, v51, v49

    add-float v30, v30, v51

    .line 489
    move-object/from16 v0, v18

    iget v0, v0, Lcom/jme3/math/Matrix4f;->m20:F

    move/from16 v51, v0

    mul-float v51, v51, v37

    move-object/from16 v0, v18

    iget v0, v0, Lcom/jme3/math/Matrix4f;->m21:F

    move/from16 v52, v0

    mul-float v52, v52, v38

    add-float v51, v51, v52

    move-object/from16 v0, v18

    iget v0, v0, Lcom/jme3/math/Matrix4f;->m22:F

    move/from16 v52, v0

    mul-float v52, v52, v39

    add-float v51, v51, v52

    mul-float v51, v51, v49

    add-float v31, v31, v51

    .line 475
    add-int/lit8 v47, v47, -0x1

    move v15, v14

    .end local v14           #idxWeights:I
    .restart local v15       #idxWeights:I
    goto/16 :goto_2

    .line 492
    .end local v18           #mat:Lcom/jme3/math/Matrix4f;
    .end local v49           #weight:F
    :cond_1
    add-int v14, v15, v5

    .line 494
    .end local v15           #idxWeights:I
    .restart local v14       #idxWeights:I
    add-int/lit8 v10, v10, -0x3

    .line 496
    aput v26, v24, v10

    .line 497
    add-int/lit8 v11, v10, 0x1

    .end local v10           #idxPositions:I
    .restart local v11       #idxPositions:I
    aput v32, v25, v10

    .line 498
    aput v27, v24, v11

    .line 499
    add-int/lit8 v10, v11, 0x1

    .end local v11           #idxPositions:I
    .restart local v10       #idxPositions:I
    aput v33, v25, v11

    .line 500
    aput v28, v24, v10

    .line 501
    add-int/lit8 v11, v10, 0x1

    .end local v10           #idxPositions:I
    .restart local v11       #idxPositions:I
    aput v34, v25, v10

    .line 503
    add-int/lit8 v12, v12, -0x4

    .line 505
    add-int/lit8 v13, v12, 0x1

    .end local v12           #idxTangents:I
    .restart local v13       #idxTangents:I
    aput v29, v35, v12

    .line 506
    add-int/lit8 v12, v13, 0x1

    .end local v13           #idxTangents:I
    .restart local v12       #idxTangents:I
    aput v30, v35, v13

    .line 507
    add-int/lit8 v13, v12, 0x1

    .end local v12           #idxTangents:I
    .restart local v13       #idxTangents:I
    aput v31, v35, v12

    .line 510
    add-int/lit8 v12, v13, 0x1

    .line 458
    .end local v13           #idxTangents:I
    .restart local v12       #idxTangents:I
    add-int/lit8 v42, v42, -0x1

    move v13, v12

    .end local v12           #idxTangents:I
    .restart local v13       #idxTangents:I
    goto/16 :goto_1

    .line 513
    .end local v21           #nmx:F
    .end local v22           #nmy:F
    .end local v23           #nmz:F
    .end local v26           #rnx:F
    .end local v27           #rny:F
    .end local v28           #rnz:F
    .end local v29           #rtx:F
    .end local v30           #rty:F
    .end local v31           #rtz:F
    .end local v32           #rx:F
    .end local v33           #ry:F
    .end local v34           #rz:F
    .end local v37           #tnx:F
    .end local v38           #tny:F
    .end local v39           #tnz:F
    .end local v44           #vtx:F
    .end local v45           #vty:F
    .end local v46           #vtz:F
    .end local v47           #w:I
    :cond_2
    invoke-virtual {v7}, Ljava/nio/FloatBuffer;->position()I

    move-result v51

    sub-int v51, v51, v3

    move/from16 v0, v51

    invoke-virtual {v7, v0}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    .line 514
    const/16 v51, 0x0

    move-object/from16 v0, v25

    move/from16 v1, v51

    invoke-virtual {v7, v0, v1, v3}, Ljava/nio/FloatBuffer;->put([FII)Ljava/nio/FloatBuffer;

    .line 515
    invoke-virtual {v4}, Ljava/nio/FloatBuffer;->position()I

    move-result v51

    sub-int v51, v51, v3

    move/from16 v0, v51

    invoke-virtual {v4, v0}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    .line 516
    const/16 v51, 0x0

    move-object/from16 v0, v24

    move/from16 v1, v51

    invoke-virtual {v4, v0, v1, v3}, Ljava/nio/FloatBuffer;->put([FII)Ljava/nio/FloatBuffer;

    .line 517
    invoke-virtual {v6}, Ljava/nio/FloatBuffer;->position()I

    move-result v51

    sub-int v51, v51, v36

    move/from16 v0, v51

    invoke-virtual {v6, v0}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    .line 518
    const/16 v51, 0x0

    move-object/from16 v0, v35

    move/from16 v1, v51

    move/from16 v2, v36

    invoke-virtual {v6, v0, v1, v2}, Ljava/nio/FloatBuffer;->put([FII)Ljava/nio/FloatBuffer;

    .line 445
    add-int/lit8 v8, v8, -0x1

    goto/16 :goto_0

    .line 521
    .end local v11           #idxPositions:I
    .end local v13           #idxTangents:I
    .end local v42           #vert:I
    .end local v43           #verts:I
    :cond_3
    invoke-virtual/range {v40 .. v40}, Lcom/jme3/util/TempVars;->release()V

    .line 523
    move-object/from16 v0, v41

    invoke-virtual {v0, v7}, Lcom/jme3/scene/VertexBuffer;->updateData(Ljava/nio/Buffer;)V

    .line 524
    move-object/from16 v0, v20

    invoke-virtual {v0, v4}, Lcom/jme3/scene/VertexBuffer;->updateData(Ljava/nio/Buffer;)V

    .line 525
    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Lcom/jme3/scene/VertexBuffer;->updateData(Ljava/nio/Buffer;)V

    .line 528
    return-void
.end method

.method private findTargets(Lcom/jme3/scene/Node;)[Lcom/jme3/scene/Mesh;
    .locals 10
    .parameter "node"

    .prologue
    .line 79
    const/4 v6, 0x0

    .line 80
    .local v6, sharedMesh:Lcom/jme3/scene/Mesh;
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 82
    .local v0, animatedMeshes:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/jme3/scene/Mesh;>;"
    invoke-virtual {p1}, Lcom/jme3/scene/Node;->getChildren()Ljava/util/List;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_3

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/jme3/scene/Spatial;

    .line 83
    .local v1, child:Lcom/jme3/scene/Spatial;
    instance-of v7, v1, Lcom/jme3/scene/Geometry;

    if-eqz v7, :cond_0

    move-object v3, v1

    .line 87
    check-cast v3, Lcom/jme3/scene/Geometry;

    .line 90
    .local v3, geom:Lcom/jme3/scene/Geometry;
    const-string v7, "JmeSharedMesh"

    invoke-virtual {v3, v7}, Lcom/jme3/scene/Geometry;->getUserData(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/jme3/scene/Mesh;

    .line 92
    .local v2, childSharedMesh:Lcom/jme3/scene/Mesh;
    if-eqz v2, :cond_2

    .line 94
    invoke-direct {p0, v2}, Lcom/jme3/animation/SkeletonControl;->isMeshAnimated(Lcom/jme3/scene/Mesh;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 97
    if-nez v6, :cond_1

    .line 98
    move-object v6, v2

    goto :goto_0

    .line 99
    :cond_1
    if-eq v6, v2, :cond_0

    .line 100
    new-instance v7, Ljava/lang/IllegalStateException;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Two conflicting shared meshes for "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 104
    :cond_2
    invoke-virtual {v3}, Lcom/jme3/scene/Geometry;->getMesh()Lcom/jme3/scene/Mesh;

    move-result-object v5

    .line 105
    .local v5, mesh:Lcom/jme3/scene/Mesh;
    invoke-direct {p0, v5}, Lcom/jme3/animation/SkeletonControl;->isMeshAnimated(Lcom/jme3/scene/Mesh;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 106
    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 111
    .end local v1           #child:Lcom/jme3/scene/Spatial;
    .end local v2           #childSharedMesh:Lcom/jme3/scene/Mesh;
    .end local v3           #geom:Lcom/jme3/scene/Geometry;
    .end local v5           #mesh:Lcom/jme3/scene/Mesh;
    :cond_3
    if-eqz v6, :cond_4

    .line 112
    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 115
    :cond_4
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v7

    new-array v7, v7, [Lcom/jme3/scene/Mesh;

    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v7

    check-cast v7, [Lcom/jme3/scene/Mesh;

    return-object v7
.end method

.method private isMeshAnimated(Lcom/jme3/scene/Mesh;)Z
    .locals 1
    .parameter "mesh"

    .prologue
    .line 75
    sget-object v0, Lcom/jme3/scene/VertexBuffer$Type;->BindPosePosition:Lcom/jme3/scene/VertexBuffer$Type;

    invoke-virtual {p1, v0}, Lcom/jme3/scene/Mesh;->getBuffer(Lcom/jme3/scene/VertexBuffer$Type;)Lcom/jme3/scene/VertexBuffer;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private softwareSkinUpdate(Lcom/jme3/scene/Mesh;[Lcom/jme3/math/Matrix4f;)V
    .locals 2
    .parameter "mesh"
    .parameter "offsetMatrices"

    .prologue
    .line 280
    sget-object v1, Lcom/jme3/scene/VertexBuffer$Type;->Tangent:Lcom/jme3/scene/VertexBuffer$Type;

    invoke-virtual {p1, v1}, Lcom/jme3/scene/Mesh;->getBuffer(Lcom/jme3/scene/VertexBuffer$Type;)Lcom/jme3/scene/VertexBuffer;

    move-result-object v0

    .line 281
    .local v0, tb:Lcom/jme3/scene/VertexBuffer;
    if-nez v0, :cond_0

    .line 283
    invoke-direct {p0, p1, p2}, Lcom/jme3/animation/SkeletonControl;->applySkinning(Lcom/jme3/scene/Mesh;[Lcom/jme3/math/Matrix4f;)V

    .line 290
    :goto_0
    return-void

    .line 286
    :cond_0
    invoke-direct {p0, p1, p2, v0}, Lcom/jme3/animation/SkeletonControl;->applySkinningTangents(Lcom/jme3/scene/Mesh;[Lcom/jme3/math/Matrix4f;Lcom/jme3/scene/VertexBuffer;)V

    goto :goto_0
.end method


# virtual methods
.method public cloneForSpatial(Lcom/jme3/scene/Spatial;)Lcom/jme3/scene/control/Control;
    .locals 6
    .parameter

    .prologue
    .line 196
    move-object v0, p1

    check-cast v0, Lcom/jme3/scene/Node;

    .line 197
    const-class v1, Lcom/jme3/animation/AnimControl;

    invoke-virtual {p1, v1}, Lcom/jme3/scene/Spatial;->getControl(Ljava/lang/Class;)Lcom/jme3/scene/control/Control;

    move-result-object v1

    check-cast v1, Lcom/jme3/animation/AnimControl;

    .line 198
    new-instance v4, Lcom/jme3/animation/SkeletonControl;

    invoke-direct {v4}, Lcom/jme3/animation/SkeletonControl;-><init>()V

    .line 199
    invoke-virtual {v4, v0}, Lcom/jme3/animation/SkeletonControl;->setSpatial(Lcom/jme3/scene/Spatial;)V

    .line 201
    invoke-virtual {v1}, Lcom/jme3/animation/AnimControl;->getSkeleton()Lcom/jme3/animation/Skeleton;

    move-result-object v1

    iput-object v1, v4, Lcom/jme3/animation/SkeletonControl;->skeleton:Lcom/jme3/animation/Skeleton;

    .line 203
    invoke-direct {p0, v0}, Lcom/jme3/animation/SkeletonControl;->findTargets(Lcom/jme3/scene/Node;)[Lcom/jme3/scene/Mesh;

    move-result-object v1

    iput-object v1, v4, Lcom/jme3/animation/SkeletonControl;->targets:[Lcom/jme3/scene/Mesh;

    .line 206
    const/4 v1, 0x0

    move v3, v1

    :goto_0
    invoke-virtual {v0}, Lcom/jme3/scene/Node;->getQuantity()I

    move-result v1

    if-ge v3, v1, :cond_1

    .line 208
    invoke-virtual {v0, v3}, Lcom/jme3/scene/Node;->getChild(I)Lcom/jme3/scene/Spatial;

    move-result-object v1

    .line 209
    instance-of v2, v1, Lcom/jme3/scene/Node;

    if-eqz v2, :cond_0

    .line 210
    check-cast v1, Lcom/jme3/scene/Node;

    .line 211
    const-string v2, "AttachedBone"

    invoke-virtual {v1, v2}, Lcom/jme3/scene/Node;->getUserData(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/jme3/animation/Bone;

    .line 213
    if-eqz v2, :cond_0

    .line 214
    iget-object v5, v4, Lcom/jme3/animation/SkeletonControl;->skeleton:Lcom/jme3/animation/Skeleton;

    invoke-virtual {v2}, Lcom/jme3/animation/Bone;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v5, v2}, Lcom/jme3/animation/Skeleton;->getBone(Ljava/lang/String;)Lcom/jme3/animation/Bone;

    move-result-object v2

    .line 216
    const-string v5, "AttachedBone"

    invoke-virtual {v1, v5, v2}, Lcom/jme3/scene/Node;->setUserData(Ljava/lang/String;Ljava/lang/Object;)V

    .line 217
    invoke-virtual {v2, v1}, Lcom/jme3/animation/Bone;->setAttachmentsNode(Lcom/jme3/scene/Node;)V

    .line 206
    :cond_0
    add-int/lit8 v1, v3, 0x1

    move v3, v1

    goto :goto_0

    .line 222
    :cond_1
    return-object v4
.end method

.method protected controlRender(Lcom/jme3/renderer/RenderManager;Lcom/jme3/renderer/ViewPort;)V
    .locals 3
    .parameter "rm"
    .parameter "vp"

    .prologue
    .line 131
    iget-boolean v2, p0, Lcom/jme3/animation/SkeletonControl;->wasMeshUpdated:Z

    if-nez v2, :cond_1

    .line 132
    invoke-virtual {p0}, Lcom/jme3/animation/SkeletonControl;->resetToBind()V

    .line 134
    iget-object v2, p0, Lcom/jme3/animation/SkeletonControl;->skeleton:Lcom/jme3/animation/Skeleton;

    invoke-virtual {v2}, Lcom/jme3/animation/Skeleton;->computeSkinningMatrices()[Lcom/jme3/math/Matrix4f;

    move-result-object v1

    .line 138
    .local v1, offsetMatrices:[Lcom/jme3/math/Matrix4f;
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v2, p0, Lcom/jme3/animation/SkeletonControl;->targets:[Lcom/jme3/scene/Mesh;

    array-length v2, v2

    if-ge v0, v2, :cond_0

    .line 143
    iget-object v2, p0, Lcom/jme3/animation/SkeletonControl;->targets:[Lcom/jme3/scene/Mesh;

    aget-object v2, v2, v0

    invoke-direct {p0, v2, v1}, Lcom/jme3/animation/SkeletonControl;->softwareSkinUpdate(Lcom/jme3/scene/Mesh;[Lcom/jme3/math/Matrix4f;)V

    .line 138
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 147
    :cond_0
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/jme3/animation/SkeletonControl;->wasMeshUpdated:Z

    .line 149
    .end local v0           #i:I
    .end local v1           #offsetMatrices:[Lcom/jme3/math/Matrix4f;
    :cond_1
    return-void
.end method

.method protected controlUpdate(F)V
    .locals 1
    .parameter "tpf"

    .prologue
    .line 153
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/jme3/animation/SkeletonControl;->wasMeshUpdated:Z

    .line 154
    return-void
.end method

.method public read(Lcom/jme3/export/JmeImporter;)V
    .locals 6
    .parameter "im"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x0

    .line 540
    invoke-super {p0, p1}, Lcom/jme3/scene/control/AbstractControl;->read(Lcom/jme3/export/JmeImporter;)V

    .line 541
    invoke-interface {p1, p0}, Lcom/jme3/export/JmeImporter;->getCapsule(Lcom/jme3/export/Savable;)Lcom/jme3/export/InputCapsule;

    move-result-object v0

    .line 542
    .local v0, in:Lcom/jme3/export/InputCapsule;
    const-string v2, "targets"

    invoke-interface {v0, v2, v5}, Lcom/jme3/export/InputCapsule;->readSavableArray(Ljava/lang/String;[Lcom/jme3/export/Savable;)[Lcom/jme3/export/Savable;

    move-result-object v1

    .line 543
    .local v1, sav:[Lcom/jme3/export/Savable;
    if-eqz v1, :cond_0

    .line 544
    array-length v2, v1

    new-array v2, v2, [Lcom/jme3/scene/Mesh;

    iput-object v2, p0, Lcom/jme3/animation/SkeletonControl;->targets:[Lcom/jme3/scene/Mesh;

    .line 545
    iget-object v2, p0, Lcom/jme3/animation/SkeletonControl;->targets:[Lcom/jme3/scene/Mesh;

    array-length v3, v1

    invoke-static {v1, v4, v2, v4, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 547
    :cond_0
    const-string v2, "skeleton"

    invoke-interface {v0, v2, v5}, Lcom/jme3/export/InputCapsule;->readSavable(Ljava/lang/String;Lcom/jme3/export/Savable;)Lcom/jme3/export/Savable;

    move-result-object v2

    check-cast v2, Lcom/jme3/animation/Skeleton;

    iput-object v2, p0, Lcom/jme3/animation/SkeletonControl;->skeleton:Lcom/jme3/animation/Skeleton;

    .line 548
    return-void
.end method

.method resetToBind()V
    .locals 20

    .prologue
    .line 157
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/jme3/animation/SkeletonControl;->targets:[Lcom/jme3/scene/Mesh;

    .local v1, arr$:[Lcom/jme3/scene/Mesh;
    array-length v11, v1

    .local v11, len$:I
    const/4 v10, 0x0

    .local v10, i$:I
    :goto_0
    if-ge v10, v11, :cond_3

    aget-object v12, v1, v10

    .line 158
    .local v12, mesh:Lcom/jme3/scene/Mesh;
    move-object/from16 v0, p0

    invoke-direct {v0, v12}, Lcom/jme3/animation/SkeletonControl;->isMeshAnimated(Lcom/jme3/scene/Mesh;)Z

    move-result v19

    if-eqz v19, :cond_2

    .line 159
    sget-object v19, Lcom/jme3/scene/VertexBuffer$Type;->BoneIndex:Lcom/jme3/scene/VertexBuffer$Type;

    move-object/from16 v0, v19

    invoke-virtual {v12, v0}, Lcom/jme3/scene/Mesh;->getBuffer(Lcom/jme3/scene/VertexBuffer$Type;)Lcom/jme3/scene/VertexBuffer;

    move-result-object v2

    .line 160
    .local v2, bi:Lcom/jme3/scene/VertexBuffer;
    invoke-virtual {v2}, Lcom/jme3/scene/VertexBuffer;->getData()Ljava/nio/Buffer;

    move-result-object v3

    check-cast v3, Ljava/nio/ByteBuffer;

    .line 161
    .local v3, bib:Ljava/nio/ByteBuffer;
    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->hasArray()Z

    move-result v19

    if-nez v19, :cond_0

    .line 162
    const/16 v19, 0x1

    move/from16 v0, v19

    invoke-virtual {v12, v0}, Lcom/jme3/scene/Mesh;->prepareForAnim(Z)V

    .line 164
    :cond_0
    sget-object v19, Lcom/jme3/scene/VertexBuffer$Type;->BindPosePosition:Lcom/jme3/scene/VertexBuffer$Type;

    move-object/from16 v0, v19

    invoke-virtual {v12, v0}, Lcom/jme3/scene/Mesh;->getBuffer(Lcom/jme3/scene/VertexBuffer$Type;)Lcom/jme3/scene/VertexBuffer;

    move-result-object v5

    .line 165
    .local v5, bindPos:Lcom/jme3/scene/VertexBuffer;
    sget-object v19, Lcom/jme3/scene/VertexBuffer$Type;->BindPoseNormal:Lcom/jme3/scene/VertexBuffer$Type;

    move-object/from16 v0, v19

    invoke-virtual {v12, v0}, Lcom/jme3/scene/Mesh;->getBuffer(Lcom/jme3/scene/VertexBuffer$Type;)Lcom/jme3/scene/VertexBuffer;

    move-result-object v4

    .line 166
    .local v4, bindNorm:Lcom/jme3/scene/VertexBuffer;
    sget-object v19, Lcom/jme3/scene/VertexBuffer$Type;->Position:Lcom/jme3/scene/VertexBuffer$Type;

    move-object/from16 v0, v19

    invoke-virtual {v12, v0}, Lcom/jme3/scene/Mesh;->getBuffer(Lcom/jme3/scene/VertexBuffer$Type;)Lcom/jme3/scene/VertexBuffer;

    move-result-object v16

    .line 167
    .local v16, pos:Lcom/jme3/scene/VertexBuffer;
    sget-object v19, Lcom/jme3/scene/VertexBuffer$Type;->Normal:Lcom/jme3/scene/VertexBuffer$Type;

    move-object/from16 v0, v19

    invoke-virtual {v12, v0}, Lcom/jme3/scene/Mesh;->getBuffer(Lcom/jme3/scene/VertexBuffer$Type;)Lcom/jme3/scene/VertexBuffer;

    move-result-object v14

    .line 168
    .local v14, norm:Lcom/jme3/scene/VertexBuffer;
    invoke-virtual/range {v16 .. v16}, Lcom/jme3/scene/VertexBuffer;->getData()Ljava/nio/Buffer;

    move-result-object v15

    check-cast v15, Ljava/nio/FloatBuffer;

    .line 169
    .local v15, pb:Ljava/nio/FloatBuffer;
    invoke-virtual {v14}, Lcom/jme3/scene/VertexBuffer;->getData()Ljava/nio/Buffer;

    move-result-object v13

    check-cast v13, Ljava/nio/FloatBuffer;

    .line 170
    .local v13, nb:Ljava/nio/FloatBuffer;
    invoke-virtual {v5}, Lcom/jme3/scene/VertexBuffer;->getData()Ljava/nio/Buffer;

    move-result-object v8

    check-cast v8, Ljava/nio/FloatBuffer;

    .line 171
    .local v8, bpb:Ljava/nio/FloatBuffer;
    invoke-virtual {v4}, Lcom/jme3/scene/VertexBuffer;->getData()Ljava/nio/Buffer;

    move-result-object v7

    check-cast v7, Ljava/nio/FloatBuffer;

    .line 172
    .local v7, bnb:Ljava/nio/FloatBuffer;
    invoke-virtual {v15}, Ljava/nio/FloatBuffer;->clear()Ljava/nio/Buffer;

    .line 173
    invoke-virtual {v13}, Ljava/nio/FloatBuffer;->clear()Ljava/nio/Buffer;

    .line 174
    invoke-virtual {v8}, Ljava/nio/FloatBuffer;->clear()Ljava/nio/Buffer;

    .line 175
    invoke-virtual {v7}, Ljava/nio/FloatBuffer;->clear()Ljava/nio/Buffer;

    .line 178
    sget-object v19, Lcom/jme3/scene/VertexBuffer$Type;->BindPoseTangent:Lcom/jme3/scene/VertexBuffer$Type;

    move-object/from16 v0, v19

    invoke-virtual {v12, v0}, Lcom/jme3/scene/Mesh;->getBuffer(Lcom/jme3/scene/VertexBuffer$Type;)Lcom/jme3/scene/VertexBuffer;

    move-result-object v6

    .line 179
    .local v6, bindTangents:Lcom/jme3/scene/VertexBuffer;
    if-eqz v6, :cond_1

    .line 180
    sget-object v19, Lcom/jme3/scene/VertexBuffer$Type;->Tangent:Lcom/jme3/scene/VertexBuffer$Type;

    move-object/from16 v0, v19

    invoke-virtual {v12, v0}, Lcom/jme3/scene/Mesh;->getBuffer(Lcom/jme3/scene/VertexBuffer$Type;)Lcom/jme3/scene/VertexBuffer;

    move-result-object v17

    .line 181
    .local v17, tangents:Lcom/jme3/scene/VertexBuffer;
    invoke-virtual/range {v17 .. v17}, Lcom/jme3/scene/VertexBuffer;->getData()Ljava/nio/Buffer;

    move-result-object v18

    check-cast v18, Ljava/nio/FloatBuffer;

    .line 182
    .local v18, tb:Ljava/nio/FloatBuffer;
    invoke-virtual {v6}, Lcom/jme3/scene/VertexBuffer;->getData()Ljava/nio/Buffer;

    move-result-object v9

    check-cast v9, Ljava/nio/FloatBuffer;

    .line 183
    .local v9, btb:Ljava/nio/FloatBuffer;
    invoke-virtual/range {v18 .. v18}, Ljava/nio/FloatBuffer;->clear()Ljava/nio/Buffer;

    .line 184
    invoke-virtual {v9}, Ljava/nio/FloatBuffer;->clear()Ljava/nio/Buffer;

    .line 185
    move-object/from16 v0, v18

    invoke-virtual {v0, v9}, Ljava/nio/FloatBuffer;->put(Ljava/nio/FloatBuffer;)Ljava/nio/FloatBuffer;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/nio/FloatBuffer;->clear()Ljava/nio/Buffer;

    .line 189
    .end local v9           #btb:Ljava/nio/FloatBuffer;
    .end local v17           #tangents:Lcom/jme3/scene/VertexBuffer;
    .end local v18           #tb:Ljava/nio/FloatBuffer;
    :cond_1
    invoke-virtual {v15, v8}, Ljava/nio/FloatBuffer;->put(Ljava/nio/FloatBuffer;)Ljava/nio/FloatBuffer;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/nio/FloatBuffer;->clear()Ljava/nio/Buffer;

    .line 190
    invoke-virtual {v13, v7}, Ljava/nio/FloatBuffer;->put(Ljava/nio/FloatBuffer;)Ljava/nio/FloatBuffer;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/nio/FloatBuffer;->clear()Ljava/nio/Buffer;

    .line 157
    .end local v2           #bi:Lcom/jme3/scene/VertexBuffer;
    .end local v3           #bib:Ljava/nio/ByteBuffer;
    .end local v4           #bindNorm:Lcom/jme3/scene/VertexBuffer;
    .end local v5           #bindPos:Lcom/jme3/scene/VertexBuffer;
    .end local v6           #bindTangents:Lcom/jme3/scene/VertexBuffer;
    .end local v7           #bnb:Ljava/nio/FloatBuffer;
    .end local v8           #bpb:Ljava/nio/FloatBuffer;
    .end local v13           #nb:Ljava/nio/FloatBuffer;
    .end local v14           #norm:Lcom/jme3/scene/VertexBuffer;
    .end local v15           #pb:Ljava/nio/FloatBuffer;
    .end local v16           #pos:Lcom/jme3/scene/VertexBuffer;
    :cond_2
    add-int/lit8 v10, v10, 0x1

    goto/16 :goto_0

    .line 193
    .end local v12           #mesh:Lcom/jme3/scene/Mesh;
    :cond_3
    return-void
.end method

.method public setSpatial(Lcom/jme3/scene/Spatial;)V
    .locals 2
    .parameter "spatial"

    .prologue
    .line 120
    invoke-super {p0, p1}, Lcom/jme3/scene/control/AbstractControl;->setSpatial(Lcom/jme3/scene/Spatial;)V

    .line 121
    if-eqz p1, :cond_0

    move-object v0, p1

    .line 122
    check-cast v0, Lcom/jme3/scene/Node;

    .line 123
    .local v0, node:Lcom/jme3/scene/Node;
    invoke-direct {p0, v0}, Lcom/jme3/animation/SkeletonControl;->findTargets(Lcom/jme3/scene/Node;)[Lcom/jme3/scene/Mesh;

    move-result-object v1

    iput-object v1, p0, Lcom/jme3/animation/SkeletonControl;->targets:[Lcom/jme3/scene/Mesh;

    .line 127
    .end local v0           #node:Lcom/jme3/scene/Node;
    :goto_0
    return-void

    .line 125
    :cond_0
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/jme3/animation/SkeletonControl;->targets:[Lcom/jme3/scene/Mesh;

    goto :goto_0
.end method
