.class public Lcom/jme3/scene/BatchNode;
.super Lcom/jme3/scene/Node;
.source "BatchNode.java"

# interfaces
.implements Lcom/jme3/export/Savable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/jme3/scene/BatchNode$Batch;
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z

.field private static final logger:Ljava/util/logging/Logger;


# instance fields
.field protected batches:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lcom/jme3/material/Material;",
            "Lcom/jme3/scene/BatchNode$Batch;",
            ">;"
        }
    .end annotation
.end field

.field maxVertCount:I

.field needsFullRebatch:Z

.field private tmpFloat:[F

.field private tmpFloatN:[F

.field private tmpFloatT:[F

.field useTangents:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 69
    const-class v0, Lcom/jme3/scene/BatchNode;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lcom/jme3/scene/BatchNode;->$assertionsDisabled:Z

    .line 71
    const-class v0, Lcom/jme3/scene/BatchNode;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lcom/jme3/scene/BatchNode;->logger:Ljava/util/logging/Logger;

    return-void

    .line 69
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 90
    invoke-direct {p0}, Lcom/jme3/scene/Node;-><init>()V

    .line 75
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/jme3/scene/BatchNode;->batches:Ljava/util/Map;

    .line 82
    iput v1, p0, Lcom/jme3/scene/BatchNode;->maxVertCount:I

    .line 83
    iput-boolean v1, p0, Lcom/jme3/scene/BatchNode;->useTangents:Z

    .line 84
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/jme3/scene/BatchNode;->needsFullRebatch:Z

    .line 91
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 2
    .parameter "name"

    .prologue
    const/4 v1, 0x0

    .line 94
    invoke-direct {p0, p1}, Lcom/jme3/scene/Node;-><init>(Ljava/lang/String;)V

    .line 75
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/jme3/scene/BatchNode;->batches:Ljava/util/Map;

    .line 82
    iput v1, p0, Lcom/jme3/scene/BatchNode;->maxVertCount:I

    .line 83
    iput-boolean v1, p0, Lcom/jme3/scene/BatchNode;->useTangents:Z

    .line 84
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/jme3/scene/BatchNode;->needsFullRebatch:Z

    .line 95
    return-void
.end method

.method private doTransforms(Ljava/nio/FloatBuffer;Ljava/nio/FloatBuffer;IILcom/jme3/math/Matrix4f;)V
    .locals 10
    .parameter "bufPos"
    .parameter "bufNorm"
    .parameter "start"
    .parameter "end"
    .parameter "transform"

    .prologue
    const/4 v9, 0x0

    .line 509
    invoke-static {}, Lcom/jme3/util/TempVars;->get()Lcom/jme3/util/TempVars;

    move-result-object v6

    .line 510
    .local v6, vars:Lcom/jme3/util/TempVars;
    iget-object v5, v6, Lcom/jme3/util/TempVars;->vect1:Lcom/jme3/math/Vector3f;

    .line 511
    .local v5, pos:Lcom/jme3/math/Vector3f;
    iget-object v3, v6, Lcom/jme3/util/TempVars;->vect2:Lcom/jme3/math/Vector3f;

    .line 513
    .local v3, norm:Lcom/jme3/math/Vector3f;
    sub-int v7, p4, p3

    mul-int/lit8 v2, v7, 0x3

    .line 517
    .local v2, length:I
    mul-int/lit8 v4, p3, 0x3

    .line 518
    .local v4, offset:I
    invoke-virtual {p1, v4}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    .line 519
    invoke-virtual {p2, v4}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    .line 520
    iget-object v7, p0, Lcom/jme3/scene/BatchNode;->tmpFloat:[F

    invoke-virtual {p1, v7, v9, v2}, Ljava/nio/FloatBuffer;->get([FII)Ljava/nio/FloatBuffer;

    .line 521
    iget-object v7, p0, Lcom/jme3/scene/BatchNode;->tmpFloatN:[F

    invoke-virtual {p2, v7, v9, v2}, Ljava/nio/FloatBuffer;->get([FII)Ljava/nio/FloatBuffer;

    .line 522
    const/4 v0, 0x0

    .local v0, index:I
    move v1, v0

    .line 523
    .end local v0           #index:I
    .local v1, index:I
    :goto_0
    if-ge v1, v2, :cond_0

    .line 524
    iget-object v7, p0, Lcom/jme3/scene/BatchNode;->tmpFloat:[F

    aget v7, v7, v1

    iput v7, v5, Lcom/jme3/math/Vector3f;->x:F

    .line 525
    iget-object v7, p0, Lcom/jme3/scene/BatchNode;->tmpFloatN:[F

    add-int/lit8 v0, v1, 0x1

    .end local v1           #index:I
    .restart local v0       #index:I
    aget v7, v7, v1

    iput v7, v3, Lcom/jme3/math/Vector3f;->x:F

    .line 526
    iget-object v7, p0, Lcom/jme3/scene/BatchNode;->tmpFloat:[F

    aget v7, v7, v0

    iput v7, v5, Lcom/jme3/math/Vector3f;->y:F

    .line 527
    iget-object v7, p0, Lcom/jme3/scene/BatchNode;->tmpFloatN:[F

    add-int/lit8 v1, v0, 0x1

    .end local v0           #index:I
    .restart local v1       #index:I
    aget v7, v7, v0

    iput v7, v3, Lcom/jme3/math/Vector3f;->y:F

    .line 528
    iget-object v7, p0, Lcom/jme3/scene/BatchNode;->tmpFloat:[F

    aget v7, v7, v1

    iput v7, v5, Lcom/jme3/math/Vector3f;->z:F

    .line 529
    iget-object v7, p0, Lcom/jme3/scene/BatchNode;->tmpFloatN:[F

    aget v7, v7, v1

    iput v7, v3, Lcom/jme3/math/Vector3f;->z:F

    .line 531
    invoke-virtual {p5, v5, v5}, Lcom/jme3/math/Matrix4f;->mult(Lcom/jme3/math/Vector3f;Lcom/jme3/math/Vector3f;)Lcom/jme3/math/Vector3f;

    .line 532
    invoke-virtual {p5, v3, v3}, Lcom/jme3/math/Matrix4f;->multNormal(Lcom/jme3/math/Vector3f;Lcom/jme3/math/Vector3f;)Lcom/jme3/math/Vector3f;

    .line 534
    add-int/lit8 v0, v1, -0x2

    .line 535
    .end local v1           #index:I
    .restart local v0       #index:I
    iget-object v7, p0, Lcom/jme3/scene/BatchNode;->tmpFloat:[F

    iget v8, v5, Lcom/jme3/math/Vector3f;->x:F

    aput v8, v7, v0

    .line 536
    iget-object v7, p0, Lcom/jme3/scene/BatchNode;->tmpFloatN:[F

    add-int/lit8 v1, v0, 0x1

    .end local v0           #index:I
    .restart local v1       #index:I
    iget v8, v3, Lcom/jme3/math/Vector3f;->x:F

    aput v8, v7, v0

    .line 537
    iget-object v7, p0, Lcom/jme3/scene/BatchNode;->tmpFloat:[F

    iget v8, v5, Lcom/jme3/math/Vector3f;->y:F

    aput v8, v7, v1

    .line 538
    iget-object v7, p0, Lcom/jme3/scene/BatchNode;->tmpFloatN:[F

    add-int/lit8 v0, v1, 0x1

    .end local v1           #index:I
    .restart local v0       #index:I
    iget v8, v3, Lcom/jme3/math/Vector3f;->y:F

    aput v8, v7, v1

    .line 539
    iget-object v7, p0, Lcom/jme3/scene/BatchNode;->tmpFloat:[F

    iget v8, v5, Lcom/jme3/math/Vector3f;->z:F

    aput v8, v7, v0

    .line 540
    iget-object v7, p0, Lcom/jme3/scene/BatchNode;->tmpFloatN:[F

    add-int/lit8 v1, v0, 0x1

    .end local v0           #index:I
    .restart local v1       #index:I
    iget v8, v3, Lcom/jme3/math/Vector3f;->z:F

    aput v8, v7, v0

    goto :goto_0

    .line 543
    :cond_0
    invoke-virtual {v6}, Lcom/jme3/util/TempVars;->release()V

    .line 544
    invoke-virtual {p1, v4}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    .line 546
    iget-object v7, p0, Lcom/jme3/scene/BatchNode;->tmpFloat:[F

    invoke-virtual {p1, v7, v9, v2}, Ljava/nio/FloatBuffer;->put([FII)Ljava/nio/FloatBuffer;

    .line 547
    invoke-virtual {p2, v4}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    .line 549
    iget-object v7, p0, Lcom/jme3/scene/BatchNode;->tmpFloatN:[F

    invoke-virtual {p2, v7, v9, v2}, Ljava/nio/FloatBuffer;->put([FII)Ljava/nio/FloatBuffer;

    .line 550
    return-void
.end method

.method private doTransformsTangents(Ljava/nio/FloatBuffer;Ljava/nio/FloatBuffer;Ljava/nio/FloatBuffer;IILcom/jme3/math/Matrix4f;)V
    .locals 15
    .parameter "bufPos"
    .parameter "bufNorm"
    .parameter "bufTangents"
    .parameter "start"
    .parameter "end"
    .parameter "transform"

    .prologue
    .line 553
    invoke-static {}, Lcom/jme3/util/TempVars;->get()Lcom/jme3/util/TempVars;

    move-result-object v12

    .line 554
    .local v12, vars:Lcom/jme3/util/TempVars;
    iget-object v6, v12, Lcom/jme3/util/TempVars;->vect1:Lcom/jme3/math/Vector3f;

    .line 555
    .local v6, pos:Lcom/jme3/math/Vector3f;
    iget-object v4, v12, Lcom/jme3/util/TempVars;->vect2:Lcom/jme3/math/Vector3f;

    .line 556
    .local v4, norm:Lcom/jme3/math/Vector3f;
    iget-object v7, v12, Lcom/jme3/util/TempVars;->vect3:Lcom/jme3/math/Vector3f;

    .line 558
    .local v7, tan:Lcom/jme3/math/Vector3f;
    sub-int v13, p5, p4

    mul-int/lit8 v3, v13, 0x3

    .line 559
    .local v3, length:I
    sub-int v13, p5, p4

    mul-int/lit8 v10, v13, 0x4

    .line 563
    .local v10, tanLength:I
    mul-int/lit8 v5, p4, 0x3

    .line 564
    .local v5, offset:I
    mul-int/lit8 v11, p4, 0x4

    .line 566
    .local v11, tanOffset:I
    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    .line 567
    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    .line 568
    move-object/from16 v0, p3

    invoke-virtual {v0, v11}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    .line 569
    iget-object v13, p0, Lcom/jme3/scene/BatchNode;->tmpFloat:[F

    const/4 v14, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v13, v14, v3}, Ljava/nio/FloatBuffer;->get([FII)Ljava/nio/FloatBuffer;

    .line 570
    iget-object v13, p0, Lcom/jme3/scene/BatchNode;->tmpFloatN:[F

    const/4 v14, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v0, v13, v14, v3}, Ljava/nio/FloatBuffer;->get([FII)Ljava/nio/FloatBuffer;

    .line 571
    iget-object v13, p0, Lcom/jme3/scene/BatchNode;->tmpFloatT:[F

    const/4 v14, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v13, v14, v10}, Ljava/nio/FloatBuffer;->get([FII)Ljava/nio/FloatBuffer;

    .line 573
    const/4 v1, 0x0

    .line 574
    .local v1, index:I
    const/4 v8, 0x0

    .local v8, tanIndex:I
    move v9, v8

    .end local v8           #tanIndex:I
    .local v9, tanIndex:I
    move v2, v1

    .line 575
    .end local v1           #index:I
    .local v2, index:I
    :goto_0
    if-ge v2, v3, :cond_0

    .line 576
    iget-object v13, p0, Lcom/jme3/scene/BatchNode;->tmpFloat:[F

    aget v13, v13, v2

    iput v13, v6, Lcom/jme3/math/Vector3f;->x:F

    .line 577
    iget-object v13, p0, Lcom/jme3/scene/BatchNode;->tmpFloatN:[F

    add-int/lit8 v1, v2, 0x1

    .end local v2           #index:I
    .restart local v1       #index:I
    aget v13, v13, v2

    iput v13, v4, Lcom/jme3/math/Vector3f;->x:F

    .line 578
    iget-object v13, p0, Lcom/jme3/scene/BatchNode;->tmpFloat:[F

    aget v13, v13, v1

    iput v13, v6, Lcom/jme3/math/Vector3f;->y:F

    .line 579
    iget-object v13, p0, Lcom/jme3/scene/BatchNode;->tmpFloatN:[F

    add-int/lit8 v2, v1, 0x1

    .end local v1           #index:I
    .restart local v2       #index:I
    aget v13, v13, v1

    iput v13, v4, Lcom/jme3/math/Vector3f;->y:F

    .line 580
    iget-object v13, p0, Lcom/jme3/scene/BatchNode;->tmpFloat:[F

    aget v13, v13, v2

    iput v13, v6, Lcom/jme3/math/Vector3f;->z:F

    .line 581
    iget-object v13, p0, Lcom/jme3/scene/BatchNode;->tmpFloatN:[F

    aget v13, v13, v2

    iput v13, v4, Lcom/jme3/math/Vector3f;->z:F

    .line 583
    iget-object v13, p0, Lcom/jme3/scene/BatchNode;->tmpFloatT:[F

    add-int/lit8 v8, v9, 0x1

    .end local v9           #tanIndex:I
    .restart local v8       #tanIndex:I
    aget v13, v13, v9

    iput v13, v7, Lcom/jme3/math/Vector3f;->x:F

    .line 584
    iget-object v13, p0, Lcom/jme3/scene/BatchNode;->tmpFloatT:[F

    add-int/lit8 v9, v8, 0x1

    .end local v8           #tanIndex:I
    .restart local v9       #tanIndex:I
    aget v13, v13, v8

    iput v13, v7, Lcom/jme3/math/Vector3f;->y:F

    .line 585
    iget-object v13, p0, Lcom/jme3/scene/BatchNode;->tmpFloatT:[F

    add-int/lit8 v8, v9, 0x1

    .end local v9           #tanIndex:I
    .restart local v8       #tanIndex:I
    aget v13, v13, v9

    iput v13, v7, Lcom/jme3/math/Vector3f;->z:F

    .line 587
    move-object/from16 v0, p6

    invoke-virtual {v0, v6, v6}, Lcom/jme3/math/Matrix4f;->mult(Lcom/jme3/math/Vector3f;Lcom/jme3/math/Vector3f;)Lcom/jme3/math/Vector3f;

    .line 588
    move-object/from16 v0, p6

    invoke-virtual {v0, v4, v4}, Lcom/jme3/math/Matrix4f;->multNormal(Lcom/jme3/math/Vector3f;Lcom/jme3/math/Vector3f;)Lcom/jme3/math/Vector3f;

    .line 589
    move-object/from16 v0, p6

    invoke-virtual {v0, v7, v7}, Lcom/jme3/math/Matrix4f;->multNormal(Lcom/jme3/math/Vector3f;Lcom/jme3/math/Vector3f;)Lcom/jme3/math/Vector3f;

    .line 591
    add-int/lit8 v1, v2, -0x2

    .line 592
    .end local v2           #index:I
    .restart local v1       #index:I
    add-int/lit8 v8, v8, -0x3

    .line 594
    iget-object v13, p0, Lcom/jme3/scene/BatchNode;->tmpFloat:[F

    iget v14, v6, Lcom/jme3/math/Vector3f;->x:F

    aput v14, v13, v1

    .line 595
    iget-object v13, p0, Lcom/jme3/scene/BatchNode;->tmpFloatN:[F

    add-int/lit8 v2, v1, 0x1

    .end local v1           #index:I
    .restart local v2       #index:I
    iget v14, v4, Lcom/jme3/math/Vector3f;->x:F

    aput v14, v13, v1

    .line 596
    iget-object v13, p0, Lcom/jme3/scene/BatchNode;->tmpFloat:[F

    iget v14, v6, Lcom/jme3/math/Vector3f;->y:F

    aput v14, v13, v2

    .line 597
    iget-object v13, p0, Lcom/jme3/scene/BatchNode;->tmpFloatN:[F

    add-int/lit8 v1, v2, 0x1

    .end local v2           #index:I
    .restart local v1       #index:I
    iget v14, v4, Lcom/jme3/math/Vector3f;->y:F

    aput v14, v13, v2

    .line 598
    iget-object v13, p0, Lcom/jme3/scene/BatchNode;->tmpFloat:[F

    iget v14, v6, Lcom/jme3/math/Vector3f;->z:F

    aput v14, v13, v1

    .line 599
    iget-object v13, p0, Lcom/jme3/scene/BatchNode;->tmpFloatN:[F

    add-int/lit8 v2, v1, 0x1

    .end local v1           #index:I
    .restart local v2       #index:I
    iget v14, v4, Lcom/jme3/math/Vector3f;->z:F

    aput v14, v13, v1

    .line 601
    iget-object v13, p0, Lcom/jme3/scene/BatchNode;->tmpFloatT:[F

    add-int/lit8 v9, v8, 0x1

    .end local v8           #tanIndex:I
    .restart local v9       #tanIndex:I
    iget v14, v7, Lcom/jme3/math/Vector3f;->x:F

    aput v14, v13, v8

    .line 602
    iget-object v13, p0, Lcom/jme3/scene/BatchNode;->tmpFloatT:[F

    add-int/lit8 v8, v9, 0x1

    .end local v9           #tanIndex:I
    .restart local v8       #tanIndex:I
    iget v14, v7, Lcom/jme3/math/Vector3f;->y:F

    aput v14, v13, v9

    .line 603
    iget-object v13, p0, Lcom/jme3/scene/BatchNode;->tmpFloatT:[F

    add-int/lit8 v9, v8, 0x1

    .end local v8           #tanIndex:I
    .restart local v9       #tanIndex:I
    iget v14, v7, Lcom/jme3/math/Vector3f;->z:F

    aput v14, v13, v8

    .line 606
    add-int/lit8 v8, v9, 0x1

    .end local v9           #tanIndex:I
    .restart local v8       #tanIndex:I
    move v9, v8

    .end local v8           #tanIndex:I
    .restart local v9       #tanIndex:I
    goto/16 :goto_0

    .line 609
    :cond_0
    invoke-virtual {v12}, Lcom/jme3/util/TempVars;->release()V

    .line 610
    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    .line 612
    iget-object v13, p0, Lcom/jme3/scene/BatchNode;->tmpFloat:[F

    const/4 v14, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v13, v14, v3}, Ljava/nio/FloatBuffer;->put([FII)Ljava/nio/FloatBuffer;

    .line 613
    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    .line 615
    iget-object v13, p0, Lcom/jme3/scene/BatchNode;->tmpFloatN:[F

    const/4 v14, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v0, v13, v14, v3}, Ljava/nio/FloatBuffer;->put([FII)Ljava/nio/FloatBuffer;

    .line 616
    move-object/from16 v0, p3

    invoke-virtual {v0, v11}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    .line 618
    iget-object v13, p0, Lcom/jme3/scene/BatchNode;->tmpFloatT:[F

    const/4 v14, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v13, v14, v10}, Ljava/nio/FloatBuffer;->put([FII)Ljava/nio/FloatBuffer;

    .line 619
    return-void
.end method


# virtual methods
.method protected getTransforms(Lcom/jme3/scene/Geometry;)Lcom/jme3/math/Transform;
    .locals 1
    .parameter "geom"

    .prologue
    .line 140
    invoke-virtual {p1}, Lcom/jme3/scene/Geometry;->getWorldTransform()Lcom/jme3/math/Transform;

    move-result-object v0

    return-object v0
.end method

.method public read(Lcom/jme3/export/JmeImporter;)V
    .locals 1
    .parameter "im"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 342
    invoke-super {p0, p1}, Lcom/jme3/scene/Node;->read(Lcom/jme3/export/JmeImporter;)V

    .line 343
    invoke-interface {p1, p0}, Lcom/jme3/export/JmeImporter;->getCapsule(Lcom/jme3/export/Savable;)Lcom/jme3/export/InputCapsule;

    move-result-object v0

    .line 364
    .local v0, ic:Lcom/jme3/export/InputCapsule;
    return-void
.end method

.method public setMaterial(Lcom/jme3/material/Material;)V
    .locals 2
    .parameter "material"

    .prologue
    .line 279
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Unsupported for now, please set the material on the geoms before batching"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected setNeedsFullRebatch(Z)V
    .locals 0
    .parameter "needsFullRebatch"

    .prologue
    .line 648
    iput-boolean p1, p0, Lcom/jme3/scene/BatchNode;->needsFullRebatch:Z

    .line 649
    return-void
.end method

.method public updateGeometricState()V
    .locals 6

    .prologue
    .line 99
    iget v5, p0, Lcom/jme3/scene/BatchNode;->refreshFlags:I

    and-int/lit8 v5, v5, 0x4

    if-eqz v5, :cond_0

    .line 100
    invoke-virtual {p0}, Lcom/jme3/scene/BatchNode;->updateWorldLightList()V

    .line 103
    :cond_0
    iget v5, p0, Lcom/jme3/scene/BatchNode;->refreshFlags:I

    and-int/lit8 v5, v5, 0x1

    if-eqz v5, :cond_1

    .line 106
    invoke-virtual {p0}, Lcom/jme3/scene/BatchNode;->updateWorldTransforms()V

    .line 109
    :cond_1
    iget-object v5, p0, Lcom/jme3/scene/BatchNode;->children:Lcom/jme3/util/SafeArrayList;

    invoke-virtual {v5}, Lcom/jme3/util/SafeArrayList;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_4

    .line 116
    iget-object v5, p0, Lcom/jme3/scene/BatchNode;->children:Lcom/jme3/util/SafeArrayList;

    invoke-virtual {v5}, Lcom/jme3/util/SafeArrayList;->getArray()[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/jme3/scene/Spatial;

    .local v0, arr$:[Lcom/jme3/scene/Spatial;
    array-length v4, v0

    .local v4, len$:I
    const/4 v3, 0x0

    .local v3, i$:I
    :goto_0
    if-ge v3, v4, :cond_2

    aget-object v2, v0, v3

    .line 117
    .local v2, child:Lcom/jme3/scene/Spatial;
    invoke-virtual {v2}, Lcom/jme3/scene/Spatial;->updateGeometricState()V

    .line 116
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 120
    .end local v2           #child:Lcom/jme3/scene/Spatial;
    :cond_2
    iget-object v5, p0, Lcom/jme3/scene/BatchNode;->batches:Ljava/util/Map;

    invoke-interface {v5}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, i$:Ljava/util/Iterator;
    :cond_3
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_4

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/jme3/scene/BatchNode$Batch;

    .line 121
    .local v1, batch:Lcom/jme3/scene/BatchNode$Batch;
    iget-boolean v5, v1, Lcom/jme3/scene/BatchNode$Batch;->needMeshUpdate:Z

    if-eqz v5, :cond_3

    .line 122
    iget-object v5, v1, Lcom/jme3/scene/BatchNode$Batch;->geometry:Lcom/jme3/scene/Geometry;

    invoke-virtual {v5}, Lcom/jme3/scene/Geometry;->getMesh()Lcom/jme3/scene/Mesh;

    move-result-object v5

    invoke-virtual {v5}, Lcom/jme3/scene/Mesh;->updateBound()V

    .line 123
    iget-object v5, v1, Lcom/jme3/scene/BatchNode$Batch;->geometry:Lcom/jme3/scene/Geometry;

    invoke-virtual {v5}, Lcom/jme3/scene/Geometry;->updateWorldBound()V

    .line 124
    const/4 v5, 0x0

    iput-boolean v5, v1, Lcom/jme3/scene/BatchNode$Batch;->needMeshUpdate:Z

    goto :goto_1

    .line 132
    .end local v0           #arr$:[Lcom/jme3/scene/Spatial;
    .end local v1           #batch:Lcom/jme3/scene/BatchNode$Batch;
    .end local v3           #i$:Ljava/util/Iterator;
    .end local v4           #len$:I
    :cond_4
    iget v5, p0, Lcom/jme3/scene/BatchNode;->refreshFlags:I

    and-int/lit8 v5, v5, 0x2

    if-eqz v5, :cond_5

    .line 133
    invoke-virtual {p0}, Lcom/jme3/scene/BatchNode;->updateWorldBound()V

    .line 136
    :cond_5
    sget-boolean v5, Lcom/jme3/scene/BatchNode;->$assertionsDisabled:Z

    if-nez v5, :cond_6

    iget v5, p0, Lcom/jme3/scene/BatchNode;->refreshFlags:I

    if-eqz v5, :cond_6

    new-instance v5, Ljava/lang/AssertionError;

    invoke-direct {v5}, Ljava/lang/AssertionError;-><init>()V

    throw v5

    .line 137
    :cond_6
    return-void
.end method

.method protected updateSubBatch(Lcom/jme3/scene/Geometry;)V
    .locals 16
    .parameter "bg"

    .prologue
    .line 144
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/jme3/scene/BatchNode;->batches:Ljava/util/Map;

    invoke-virtual/range {p1 .. p1}, Lcom/jme3/scene/Geometry;->getMaterial()Lcom/jme3/material/Material;

    move-result-object v5

    invoke-interface {v1, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/jme3/scene/BatchNode$Batch;

    .line 145
    .local v11, batch:Lcom/jme3/scene/BatchNode$Batch;
    if-eqz v11, :cond_0

    .line 146
    iget-object v1, v11, Lcom/jme3/scene/BatchNode$Batch;->geometry:Lcom/jme3/scene/Geometry;

    invoke-virtual {v1}, Lcom/jme3/scene/Geometry;->getMesh()Lcom/jme3/scene/Mesh;

    move-result-object v12

    .line 148
    .local v12, mesh:Lcom/jme3/scene/Mesh;
    sget-object v1, Lcom/jme3/scene/VertexBuffer$Type;->Position:Lcom/jme3/scene/VertexBuffer$Type;

    invoke-virtual {v12, v1}, Lcom/jme3/scene/Mesh;->getBuffer(Lcom/jme3/scene/VertexBuffer$Type;)Lcom/jme3/scene/VertexBuffer;

    move-result-object v14

    .line 149
    .local v14, pvb:Lcom/jme3/scene/VertexBuffer;
    invoke-virtual {v14}, Lcom/jme3/scene/VertexBuffer;->getData()Ljava/nio/Buffer;

    move-result-object v2

    check-cast v2, Ljava/nio/FloatBuffer;

    .line 150
    .local v2, posBuf:Ljava/nio/FloatBuffer;
    sget-object v1, Lcom/jme3/scene/VertexBuffer$Type;->Normal:Lcom/jme3/scene/VertexBuffer$Type;

    invoke-virtual {v12, v1}, Lcom/jme3/scene/Mesh;->getBuffer(Lcom/jme3/scene/VertexBuffer$Type;)Lcom/jme3/scene/VertexBuffer;

    move-result-object v13

    .line 151
    .local v13, nvb:Lcom/jme3/scene/VertexBuffer;
    invoke-virtual {v13}, Lcom/jme3/scene/VertexBuffer;->getData()Ljava/nio/Buffer;

    move-result-object v3

    check-cast v3, Ljava/nio/FloatBuffer;

    .line 153
    .local v3, normBuf:Ljava/nio/FloatBuffer;
    sget-object v1, Lcom/jme3/scene/VertexBuffer$Type;->Tangent:Lcom/jme3/scene/VertexBuffer$Type;

    invoke-virtual {v12, v1}, Lcom/jme3/scene/Mesh;->getBuffer(Lcom/jme3/scene/VertexBuffer$Type;)Lcom/jme3/scene/VertexBuffer;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 155
    sget-object v1, Lcom/jme3/scene/VertexBuffer$Type;->Tangent:Lcom/jme3/scene/VertexBuffer$Type;

    invoke-virtual {v12, v1}, Lcom/jme3/scene/Mesh;->getBuffer(Lcom/jme3/scene/VertexBuffer$Type;)Lcom/jme3/scene/VertexBuffer;

    move-result-object v15

    .line 156
    .local v15, tvb:Lcom/jme3/scene/VertexBuffer;
    invoke-virtual {v15}, Lcom/jme3/scene/VertexBuffer;->getData()Ljava/nio/Buffer;

    move-result-object v4

    check-cast v4, Ljava/nio/FloatBuffer;

    .line 157
    .local v4, tanBuf:Ljava/nio/FloatBuffer;
    move-object/from16 v0, p1

    iget v5, v0, Lcom/jme3/scene/Geometry;->startIndex:I

    move-object/from16 v0, p1

    iget v1, v0, Lcom/jme3/scene/Geometry;->startIndex:I

    invoke-virtual/range {p1 .. p1}, Lcom/jme3/scene/Geometry;->getVertexCount()I

    move-result v6

    add-int/2addr v6, v1

    move-object/from16 v0, p1

    iget-object v7, v0, Lcom/jme3/scene/Geometry;->cachedOffsetMat:Lcom/jme3/math/Matrix4f;

    move-object/from16 v1, p0

    invoke-direct/range {v1 .. v7}, Lcom/jme3/scene/BatchNode;->doTransformsTangents(Ljava/nio/FloatBuffer;Ljava/nio/FloatBuffer;Ljava/nio/FloatBuffer;IILcom/jme3/math/Matrix4f;)V

    .line 158
    invoke-virtual {v15, v4}, Lcom/jme3/scene/VertexBuffer;->updateData(Ljava/nio/Buffer;)V

    .line 162
    .end local v4           #tanBuf:Ljava/nio/FloatBuffer;
    .end local v15           #tvb:Lcom/jme3/scene/VertexBuffer;
    :goto_0
    invoke-virtual {v14, v2}, Lcom/jme3/scene/VertexBuffer;->updateData(Ljava/nio/Buffer;)V

    .line 163
    invoke-virtual {v13, v3}, Lcom/jme3/scene/VertexBuffer;->updateData(Ljava/nio/Buffer;)V

    .line 166
    const/4 v1, 0x1

    iput-boolean v1, v11, Lcom/jme3/scene/BatchNode$Batch;->needMeshUpdate:Z

    .line 168
    .end local v2           #posBuf:Ljava/nio/FloatBuffer;
    .end local v3           #normBuf:Ljava/nio/FloatBuffer;
    .end local v12           #mesh:Lcom/jme3/scene/Mesh;
    .end local v13           #nvb:Lcom/jme3/scene/VertexBuffer;
    .end local v14           #pvb:Lcom/jme3/scene/VertexBuffer;
    :cond_0
    return-void

    .line 160
    .restart local v2       #posBuf:Ljava/nio/FloatBuffer;
    .restart local v3       #normBuf:Ljava/nio/FloatBuffer;
    .restart local v12       #mesh:Lcom/jme3/scene/Mesh;
    .restart local v13       #nvb:Lcom/jme3/scene/VertexBuffer;
    .restart local v14       #pvb:Lcom/jme3/scene/VertexBuffer;
    :cond_1
    move-object/from16 v0, p1

    iget v8, v0, Lcom/jme3/scene/Geometry;->startIndex:I

    move-object/from16 v0, p1

    iget v1, v0, Lcom/jme3/scene/Geometry;->startIndex:I

    invoke-virtual/range {p1 .. p1}, Lcom/jme3/scene/Geometry;->getVertexCount()I

    move-result v5

    add-int v9, v1, v5

    move-object/from16 v0, p1

    iget-object v10, v0, Lcom/jme3/scene/Geometry;->cachedOffsetMat:Lcom/jme3/math/Matrix4f;

    move-object/from16 v5, p0

    move-object v6, v2

    move-object v7, v3

    invoke-direct/range {v5 .. v10}, Lcom/jme3/scene/BatchNode;->doTransforms(Ljava/nio/FloatBuffer;Ljava/nio/FloatBuffer;IILcom/jme3/math/Matrix4f;)V

    goto :goto_0
.end method
