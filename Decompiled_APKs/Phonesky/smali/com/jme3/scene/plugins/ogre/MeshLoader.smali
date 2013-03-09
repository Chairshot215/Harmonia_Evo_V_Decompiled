.class public Lcom/jme3/scene/plugins/ogre/MeshLoader;
.super Lorg/xml/sax/helpers/DefaultHandler;
.source "MeshLoader.java"

# interfaces
.implements Lcom/jme3/asset/AssetLoader;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/jme3/scene/plugins/ogre/MeshLoader$1;
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z

.field public static AUTO_INTERLEAVE:Z

.field public static HARDWARE_SKINNING:Z

.field private static final TEXCOORD_TYPES:[Lcom/jme3/scene/VertexBuffer$Type;

.field private static final logger:Ljava/util/logging/Logger;


# instance fields
.field private actuallyHasWeights:Z

.field private animData:Lcom/jme3/scene/plugins/ogre/AnimData;

.field private assetManager:Lcom/jme3/asset/AssetManager;

.field private fb:Ljava/nio/FloatBuffer;

.field private folderName:Ljava/lang/String;

.field private geom:Lcom/jme3/scene/Geometry;

.field private geoms:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/jme3/scene/Geometry;",
            ">;"
        }
    .end annotation
.end field

.field private ib:Ljava/nio/IntBuffer;

.field private ignoreUntilEnd:Ljava/lang/String;

.field private indicesData:Ljava/nio/ByteBuffer;

.field private key:Lcom/jme3/asset/AssetKey;

.field private lodLevels:Lcom/jme3/util/IntMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/jme3/util/IntMap",
            "<",
            "Ljava/util/List",
            "<",
            "Lcom/jme3/scene/VertexBuffer;",
            ">;>;"
        }
    .end annotation
.end field

.field private materialList:Lcom/jme3/material/MaterialList;

.field private mesh:Lcom/jme3/scene/Mesh;

.field private meshIndex:I

.field private meshName:Ljava/lang/String;

.field private sb:Ljava/nio/ShortBuffer;

.field private sharedMesh:Lcom/jme3/scene/Mesh;

.field private texCoordIndex:I

.field private usesBigIndices:Z

.field private usesSharedMesh:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private usesSharedVerts:Z

.field private vb:Lcom/jme3/scene/VertexBuffer;

.field private vertCount:I

.field private weightsFloatData:Ljava/nio/FloatBuffer;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 71
    const-class v0, Lcom/jme3/scene/plugins/ogre/MeshLoader;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    move v0, v1

    :goto_0
    sput-boolean v0, Lcom/jme3/scene/plugins/ogre/MeshLoader;->$assertionsDisabled:Z

    .line 73
    const-class v0, Lcom/jme3/scene/plugins/ogre/MeshLoader;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lcom/jme3/scene/plugins/ogre/MeshLoader;->logger:Ljava/util/logging/Logger;

    .line 74
    sput-boolean v1, Lcom/jme3/scene/plugins/ogre/MeshLoader;->AUTO_INTERLEAVE:Z

    .line 75
    sput-boolean v2, Lcom/jme3/scene/plugins/ogre/MeshLoader;->HARDWARE_SKINNING:Z

    .line 76
    const/16 v0, 0x8

    new-array v0, v0, [Lcom/jme3/scene/VertexBuffer$Type;

    sget-object v3, Lcom/jme3/scene/VertexBuffer$Type;->TexCoord:Lcom/jme3/scene/VertexBuffer$Type;

    aput-object v3, v0, v2

    sget-object v2, Lcom/jme3/scene/VertexBuffer$Type;->TexCoord2:Lcom/jme3/scene/VertexBuffer$Type;

    aput-object v2, v0, v1

    const/4 v1, 0x2

    sget-object v2, Lcom/jme3/scene/VertexBuffer$Type;->TexCoord3:Lcom/jme3/scene/VertexBuffer$Type;

    aput-object v2, v0, v1

    const/4 v1, 0x3

    sget-object v2, Lcom/jme3/scene/VertexBuffer$Type;->TexCoord4:Lcom/jme3/scene/VertexBuffer$Type;

    aput-object v2, v0, v1

    const/4 v1, 0x4

    sget-object v2, Lcom/jme3/scene/VertexBuffer$Type;->TexCoord5:Lcom/jme3/scene/VertexBuffer$Type;

    aput-object v2, v0, v1

    const/4 v1, 0x5

    sget-object v2, Lcom/jme3/scene/VertexBuffer$Type;->TexCoord6:Lcom/jme3/scene/VertexBuffer$Type;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/jme3/scene/VertexBuffer$Type;->TexCoord7:Lcom/jme3/scene/VertexBuffer$Type;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/jme3/scene/VertexBuffer$Type;->TexCoord8:Lcom/jme3/scene/VertexBuffer$Type;

    aput-object v2, v0, v1

    sput-object v0, Lcom/jme3/scene/plugins/ogre/MeshLoader;->TEXCOORD_TYPES:[Lcom/jme3/scene/VertexBuffer$Type;

    return-void

    :cond_0
    move v0, v2

    .line 71
    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 115
    invoke-direct {p0}, Lorg/xml/sax/helpers/DefaultHandler;-><init>()V

    .line 100
    iput-boolean v0, p0, Lcom/jme3/scene/plugins/ogre/MeshLoader;->actuallyHasWeights:Z

    .line 106
    iput v0, p0, Lcom/jme3/scene/plugins/ogre/MeshLoader;->meshIndex:I

    .line 107
    iput v0, p0, Lcom/jme3/scene/plugins/ogre/MeshLoader;->texCoordIndex:I

    .line 108
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/jme3/scene/plugins/ogre/MeshLoader;->ignoreUntilEnd:Ljava/lang/String;

    .line 109
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/jme3/scene/plugins/ogre/MeshLoader;->geoms:Ljava/util/List;

    .line 110
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/jme3/scene/plugins/ogre/MeshLoader;->usesSharedMesh:Ljava/util/ArrayList;

    .line 111
    new-instance v0, Lcom/jme3/util/IntMap;

    invoke-direct {v0}, Lcom/jme3/util/IntMap;-><init>()V

    iput-object v0, p0, Lcom/jme3/scene/plugins/ogre/MeshLoader;->lodLevels:Lcom/jme3/util/IntMap;

    .line 116
    return-void
.end method

.method private applyMaterial(Lcom/jme3/scene/Geometry;Ljava/lang/String;)V
    .locals 8
    .parameter "geom"
    .parameter "matName"

    .prologue
    .line 214
    const/4 v1, 0x0

    .line 215
    .local v1, mat:Lcom/jme3/material/Material;
    const-string v2, ".j3m"

    invoke-virtual {p2, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 218
    :try_start_0
    iget-object v2, p0, Lcom/jme3/scene/plugins/ogre/MeshLoader;->assetManager:Lcom/jme3/asset/AssetManager;

    invoke-interface {v2, p2}, Lcom/jme3/asset/AssetManager;->loadMaterial(Ljava/lang/String;)Lcom/jme3/material/Material;
    :try_end_0
    .catch Lcom/jme3/asset/AssetNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 231
    :cond_0
    :goto_0
    if-nez v1, :cond_1

    .line 232
    sget-object v2, Lcom/jme3/scene/plugins/ogre/MeshLoader;->logger:Ljava/util/logging/Logger;

    sget-object v3, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    const-string v4, "Cannot locate {0} for model {1}"

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object p2, v5, v6

    const/4 v6, 0x1

    iget-object v7, p0, Lcom/jme3/scene/plugins/ogre/MeshLoader;->key:Lcom/jme3/asset/AssetKey;

    aput-object v7, v5, v6

    invoke-virtual {v2, v3, v4, v5}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 233
    iget-object v2, p0, Lcom/jme3/scene/plugins/ogre/MeshLoader;->assetManager:Lcom/jme3/asset/AssetManager;

    invoke-static {v2}, Lcom/jme3/util/PlaceholderAssets;->getPlaceholderMaterial(Lcom/jme3/asset/AssetManager;)Lcom/jme3/material/Material;

    move-result-object v1

    .line 236
    :cond_1
    invoke-virtual {v1}, Lcom/jme3/material/Material;->isTransparent()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 237
    sget-object v2, Lcom/jme3/renderer/queue/RenderQueue$Bucket;->Transparent:Lcom/jme3/renderer/queue/RenderQueue$Bucket;

    invoke-virtual {p1, v2}, Lcom/jme3/scene/Geometry;->setQueueBucket(Lcom/jme3/renderer/queue/RenderQueue$Bucket;)V

    .line 240
    :cond_2
    invoke-virtual {p1, v1}, Lcom/jme3/scene/Geometry;->setMaterial(Lcom/jme3/material/Material;)V

    .line 241
    return-void

    .line 219
    :catch_0
    move-exception v0

    .line 221
    .local v0, ex:Lcom/jme3/asset/AssetNotFoundException;
    invoke-virtual {v0}, Lcom/jme3/asset/AssetNotFoundException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 222
    throw v0

    .line 226
    .end local v0           #ex:Lcom/jme3/asset/AssetNotFoundException;
    :cond_3
    iget-object v2, p0, Lcom/jme3/scene/plugins/ogre/MeshLoader;->materialList:Lcom/jme3/material/MaterialList;

    if-eqz v2, :cond_0

    .line 227
    iget-object v2, p0, Lcom/jme3/scene/plugins/ogre/MeshLoader;->materialList:Lcom/jme3/material/MaterialList;

    invoke-virtual {v2, p2}, Lcom/jme3/material/MaterialList;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .end local v1           #mat:Lcom/jme3/material/Material;
    check-cast v1, Lcom/jme3/material/Material;

    .restart local v1       #mat:Lcom/jme3/material/Material;
    goto :goto_0
.end method

.method private compileModel()Lcom/jme3/scene/Node;
    .locals 6

    .prologue
    const/4 v2, 0x0

    .line 744
    new-instance v3, Lcom/jme3/scene/Node;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/jme3/scene/plugins/ogre/MeshLoader;->meshName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "-ogremesh"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v3, v0}, Lcom/jme3/scene/Node;-><init>(Ljava/lang/String;)V

    move v1, v2

    .line 746
    :goto_0
    iget-object v0, p0, Lcom/jme3/scene/plugins/ogre/MeshLoader;->geoms:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_1

    .line 747
    iget-object v0, p0, Lcom/jme3/scene/plugins/ogre/MeshLoader;->geoms:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/jme3/scene/Geometry;

    .line 748
    invoke-virtual {v0}, Lcom/jme3/scene/Geometry;->getMesh()Lcom/jme3/scene/Mesh;

    move-result-object v4

    .line 751
    iget-object v0, p0, Lcom/jme3/scene/plugins/ogre/MeshLoader;->sharedMesh:Lcom/jme3/scene/Mesh;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/jme3/scene/plugins/ogre/MeshLoader;->usesSharedMesh:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 752
    iget-object v0, p0, Lcom/jme3/scene/plugins/ogre/MeshLoader;->sharedMesh:Lcom/jme3/scene/Mesh;

    invoke-virtual {v4, v0}, Lcom/jme3/scene/Mesh;->extractVertexData(Lcom/jme3/scene/Mesh;)V

    .line 759
    :cond_0
    iget-object v0, p0, Lcom/jme3/scene/plugins/ogre/MeshLoader;->geoms:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/jme3/scene/Spatial;

    invoke-virtual {v3, v0}, Lcom/jme3/scene/Node;->attachChild(Lcom/jme3/scene/Spatial;)I

    .line 746
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 764
    :cond_1
    iget-object v0, p0, Lcom/jme3/scene/plugins/ogre/MeshLoader;->animData:Lcom/jme3/scene/plugins/ogre/AnimData;

    if-eqz v0, :cond_5

    move v1, v2

    .line 775
    :goto_1
    iget-object v0, p0, Lcom/jme3/scene/plugins/ogre/MeshLoader;->geoms:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_3

    .line 776
    iget-object v0, p0, Lcom/jme3/scene/plugins/ogre/MeshLoader;->geoms:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/jme3/scene/Geometry;

    .line 777
    iget-object v0, p0, Lcom/jme3/scene/plugins/ogre/MeshLoader;->geoms:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/jme3/scene/Geometry;

    invoke-virtual {v0}, Lcom/jme3/scene/Geometry;->getMesh()Lcom/jme3/scene/Mesh;

    move-result-object v4

    .line 779
    sget-boolean v0, Lcom/jme3/scene/plugins/ogre/MeshLoader;->HARDWARE_SKINNING:Z

    if-nez v0, :cond_2

    const/4 v0, 0x1

    :goto_2
    invoke-virtual {v4, v0}, Lcom/jme3/scene/Mesh;->generateBindPose(Z)V

    .line 775
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1

    :cond_2
    move v0, v2

    .line 779
    goto :goto_2

    .line 790
    :cond_3
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 791
    iget-object v0, p0, Lcom/jme3/scene/plugins/ogre/MeshLoader;->animData:Lcom/jme3/scene/plugins/ogre/AnimData;

    iget-object v4, v0, Lcom/jme3/scene/plugins/ogre/AnimData;->anims:Ljava/util/ArrayList;

    .line 792
    :goto_3
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v2, v0, :cond_4

    .line 793
    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/jme3/animation/Animation;

    .line 794
    invoke-virtual {v0}, Lcom/jme3/animation/Animation;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 792
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .line 797
    :cond_4
    new-instance v0, Lcom/jme3/animation/AnimControl;

    iget-object v2, p0, Lcom/jme3/scene/plugins/ogre/MeshLoader;->animData:Lcom/jme3/scene/plugins/ogre/AnimData;

    iget-object v2, v2, Lcom/jme3/scene/plugins/ogre/AnimData;->skeleton:Lcom/jme3/animation/Skeleton;

    invoke-direct {v0, v2}, Lcom/jme3/animation/AnimControl;-><init>(Lcom/jme3/animation/Skeleton;)V

    .line 798
    invoke-virtual {v0, v1}, Lcom/jme3/animation/AnimControl;->setAnimations(Ljava/util/HashMap;)V

    .line 799
    invoke-virtual {v3, v0}, Lcom/jme3/scene/Node;->addControl(Lcom/jme3/scene/control/Control;)V

    .line 802
    new-instance v0, Lcom/jme3/animation/SkeletonControl;

    iget-object v1, p0, Lcom/jme3/scene/plugins/ogre/MeshLoader;->animData:Lcom/jme3/scene/plugins/ogre/AnimData;

    iget-object v1, v1, Lcom/jme3/scene/plugins/ogre/AnimData;->skeleton:Lcom/jme3/animation/Skeleton;

    invoke-direct {v0, v1}, Lcom/jme3/animation/SkeletonControl;-><init>(Lcom/jme3/animation/Skeleton;)V

    .line 805
    invoke-virtual {v3, v0}, Lcom/jme3/scene/Node;->addControl(Lcom/jme3/scene/control/Control;)V

    .line 808
    :cond_5
    return-object v3
.end method

.method private endBoneAssigns()V
    .locals 13

    .prologue
    const/high16 v12, 0x3f80

    const/4 v11, 0x0

    const/4 v10, 0x0

    .line 310
    iget-boolean v8, p0, Lcom/jme3/scene/plugins/ogre/MeshLoader;->actuallyHasWeights:Z

    if-nez v8, :cond_0

    .line 313
    iget-object v8, p0, Lcom/jme3/scene/plugins/ogre/MeshLoader;->mesh:Lcom/jme3/scene/Mesh;

    sget-object v9, Lcom/jme3/scene/VertexBuffer$Type;->BoneIndex:Lcom/jme3/scene/VertexBuffer$Type;

    invoke-virtual {v8, v9}, Lcom/jme3/scene/Mesh;->clearBuffer(Lcom/jme3/scene/VertexBuffer$Type;)V

    .line 314
    iget-object v8, p0, Lcom/jme3/scene/plugins/ogre/MeshLoader;->mesh:Lcom/jme3/scene/Mesh;

    sget-object v9, Lcom/jme3/scene/VertexBuffer$Type;->BoneWeight:Lcom/jme3/scene/VertexBuffer$Type;

    invoke-virtual {v8, v9}, Lcom/jme3/scene/Mesh;->clearBuffer(Lcom/jme3/scene/VertexBuffer$Type;)V

    .line 316
    iput-object v11, p0, Lcom/jme3/scene/plugins/ogre/MeshLoader;->weightsFloatData:Ljava/nio/FloatBuffer;

    .line 317
    iput-object v11, p0, Lcom/jme3/scene/plugins/ogre/MeshLoader;->indicesData:Ljava/nio/ByteBuffer;

    .line 359
    :goto_0
    return-void

    .line 323
    :cond_0
    const/4 v0, 0x0

    .line 324
    .local v0, maxWeightsPerVert:I
    iget-object v8, p0, Lcom/jme3/scene/plugins/ogre/MeshLoader;->weightsFloatData:Ljava/nio/FloatBuffer;

    invoke-virtual {v8}, Ljava/nio/FloatBuffer;->rewind()Ljava/nio/Buffer;

    .line 325
    const/4 v3, 0x0

    .local v3, v:I
    :goto_1
    iget v8, p0, Lcom/jme3/scene/plugins/ogre/MeshLoader;->vertCount:I

    if-ge v3, v8, :cond_6

    .line 326
    iget-object v8, p0, Lcom/jme3/scene/plugins/ogre/MeshLoader;->weightsFloatData:Ljava/nio/FloatBuffer;

    invoke-virtual {v8}, Ljava/nio/FloatBuffer;->get()F

    move-result v4

    .line 327
    .local v4, w0:F
    iget-object v8, p0, Lcom/jme3/scene/plugins/ogre/MeshLoader;->weightsFloatData:Ljava/nio/FloatBuffer;

    invoke-virtual {v8}, Ljava/nio/FloatBuffer;->get()F

    move-result v5

    .line 328
    .local v5, w1:F
    iget-object v8, p0, Lcom/jme3/scene/plugins/ogre/MeshLoader;->weightsFloatData:Ljava/nio/FloatBuffer;

    invoke-virtual {v8}, Ljava/nio/FloatBuffer;->get()F

    move-result v6

    .line 329
    .local v6, w2:F
    iget-object v8, p0, Lcom/jme3/scene/plugins/ogre/MeshLoader;->weightsFloatData:Ljava/nio/FloatBuffer;

    invoke-virtual {v8}, Ljava/nio/FloatBuffer;->get()F

    move-result v7

    .line 331
    .local v7, w3:F
    cmpl-float v8, v7, v10

    if-eqz v8, :cond_3

    .line 332
    const/4 v8, 0x4

    invoke-static {v0, v8}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 341
    :cond_1
    :goto_2
    add-float v8, v4, v5

    add-float/2addr v8, v6

    add-float v1, v8, v7

    .line 342
    .local v1, sum:F
    cmpl-float v8, v1, v12

    if-eqz v8, :cond_2

    .line 343
    iget-object v8, p0, Lcom/jme3/scene/plugins/ogre/MeshLoader;->weightsFloatData:Ljava/nio/FloatBuffer;

    iget-object v9, p0, Lcom/jme3/scene/plugins/ogre/MeshLoader;->weightsFloatData:Ljava/nio/FloatBuffer;

    invoke-virtual {v9}, Ljava/nio/FloatBuffer;->position()I

    move-result v9

    add-int/lit8 v9, v9, -0x4

    invoke-virtual {v8, v9}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    .line 345
    div-float v2, v12, v1

    .line 346
    .local v2, sumToB:F
    iget-object v8, p0, Lcom/jme3/scene/plugins/ogre/MeshLoader;->weightsFloatData:Ljava/nio/FloatBuffer;

    mul-float v9, v4, v2

    invoke-virtual {v8, v9}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    .line 347
    iget-object v8, p0, Lcom/jme3/scene/plugins/ogre/MeshLoader;->weightsFloatData:Ljava/nio/FloatBuffer;

    mul-float v9, v5, v2

    invoke-virtual {v8, v9}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    .line 348
    iget-object v8, p0, Lcom/jme3/scene/plugins/ogre/MeshLoader;->weightsFloatData:Ljava/nio/FloatBuffer;

    mul-float v9, v6, v2

    invoke-virtual {v8, v9}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    .line 349
    iget-object v8, p0, Lcom/jme3/scene/plugins/ogre/MeshLoader;->weightsFloatData:Ljava/nio/FloatBuffer;

    mul-float v9, v7, v2

    invoke-virtual {v8, v9}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    .line 325
    .end local v2           #sumToB:F
    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 333
    .end local v1           #sum:F
    :cond_3
    cmpl-float v8, v6, v10

    if-eqz v8, :cond_4

    .line 334
    const/4 v8, 0x3

    invoke-static {v0, v8}, Ljava/lang/Math;->max(II)I

    move-result v0

    goto :goto_2

    .line 335
    :cond_4
    cmpl-float v8, v5, v10

    if-eqz v8, :cond_5

    .line 336
    const/4 v8, 0x2

    invoke-static {v0, v8}, Ljava/lang/Math;->max(II)I

    move-result v0

    goto :goto_2

    .line 337
    :cond_5
    cmpl-float v8, v4, v10

    if-eqz v8, :cond_1

    .line 338
    const/4 v8, 0x1

    invoke-static {v0, v8}, Ljava/lang/Math;->max(II)I

    move-result v0

    goto :goto_2

    .line 352
    .end local v4           #w0:F
    .end local v5           #w1:F
    .end local v6           #w2:F
    .end local v7           #w3:F
    :cond_6
    iget-object v8, p0, Lcom/jme3/scene/plugins/ogre/MeshLoader;->weightsFloatData:Ljava/nio/FloatBuffer;

    invoke-virtual {v8}, Ljava/nio/FloatBuffer;->rewind()Ljava/nio/Buffer;

    .line 354
    const/4 v8, 0x0

    iput-boolean v8, p0, Lcom/jme3/scene/plugins/ogre/MeshLoader;->actuallyHasWeights:Z

    .line 355
    iput-object v11, p0, Lcom/jme3/scene/plugins/ogre/MeshLoader;->weightsFloatData:Ljava/nio/FloatBuffer;

    .line 356
    iput-object v11, p0, Lcom/jme3/scene/plugins/ogre/MeshLoader;->indicesData:Ljava/nio/ByteBuffer;

    .line 358
    iget-object v8, p0, Lcom/jme3/scene/plugins/ogre/MeshLoader;->mesh:Lcom/jme3/scene/Mesh;

    invoke-virtual {v8, v0}, Lcom/jme3/scene/Mesh;->setMaxNumWeights(I)V

    goto/16 :goto_0
.end method

.method private endLevelOfDetail()V
    .locals 7

    .prologue
    .line 550
    iget-object v5, p0, Lcom/jme3/scene/plugins/ogre/MeshLoader;->lodLevels:Lcom/jme3/util/IntMap;

    invoke-virtual {v5}, Lcom/jme3/util/IntMap;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/jme3/util/IntMap$Entry;

    .line 551
    .local v0, entry:Lcom/jme3/util/IntMap$Entry;,"Lcom/jme3/util/IntMap$Entry<Ljava/util/List<Lcom/jme3/scene/VertexBuffer;>;>;"
    iget-object v5, p0, Lcom/jme3/scene/plugins/ogre/MeshLoader;->geoms:Ljava/util/List;

    invoke-virtual {v0}, Lcom/jme3/util/IntMap$Entry;->getKey()I

    move-result v6

    invoke-interface {v5, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/jme3/scene/Geometry;

    invoke-virtual {v5}, Lcom/jme3/scene/Geometry;->getMesh()Lcom/jme3/scene/Mesh;

    move-result-object v4

    .line 552
    .local v4, m:Lcom/jme3/scene/Mesh;
    invoke-virtual {v0}, Lcom/jme3/util/IntMap$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    .line 553
    .local v3, levels:Ljava/util/List;,"Ljava/util/List<Lcom/jme3/scene/VertexBuffer;>;"
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v5

    new-array v2, v5, [Lcom/jme3/scene/VertexBuffer;

    .line 554
    .local v2, levelArray:[Lcom/jme3/scene/VertexBuffer;
    invoke-interface {v3, v2}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 555
    invoke-virtual {v4, v2}, Lcom/jme3/scene/Mesh;->setLodLevels([Lcom/jme3/scene/VertexBuffer;)V

    goto :goto_0

    .line 557
    .end local v0           #entry:Lcom/jme3/util/IntMap$Entry;,"Lcom/jme3/util/IntMap$Entry<Ljava/util/List<Lcom/jme3/scene/VertexBuffer;>;>;"
    .end local v2           #levelArray:[Lcom/jme3/scene/VertexBuffer;
    .end local v3           #levels:Ljava/util/List;,"Ljava/util/List<Lcom/jme3/scene/VertexBuffer;>;"
    .end local v4           #m:Lcom/jme3/scene/Mesh;
    :cond_0
    return-void
.end method

.method private pushAttrib(Lcom/jme3/scene/VertexBuffer$Type;Lorg/xml/sax/Attributes;)V
    .locals 4
    .parameter "type"
    .parameter "attribs"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 450
    :try_start_0
    iget-object v2, p0, Lcom/jme3/scene/plugins/ogre/MeshLoader;->mesh:Lcom/jme3/scene/Mesh;

    invoke-virtual {v2, p1}, Lcom/jme3/scene/Mesh;->getBuffer(Lcom/jme3/scene/VertexBuffer$Type;)Lcom/jme3/scene/VertexBuffer;

    move-result-object v2

    invoke-virtual {v2}, Lcom/jme3/scene/VertexBuffer;->getData()Ljava/nio/Buffer;

    move-result-object v0

    check-cast v0, Ljava/nio/FloatBuffer;

    .line 451
    .local v0, buf:Ljava/nio/FloatBuffer;
    const-string v2, "x"

    invoke-interface {p2, v2}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/jme3/util/xml/SAXUtil;->parseFloat(Ljava/lang/String;)F

    move-result v2

    invoke-virtual {v0, v2}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    move-result-object v2

    const-string v3, "y"

    invoke-interface {p2, v3}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/jme3/util/xml/SAXUtil;->parseFloat(Ljava/lang/String;)F

    move-result v3

    invoke-virtual {v2, v3}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    move-result-object v2

    const-string v3, "z"

    invoke-interface {p2, v3}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/jme3/util/xml/SAXUtil;->parseFloat(Ljava/lang/String;)F

    move-result v3

    invoke-virtual {v2, v3}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 455
    return-void

    .line 452
    .end local v0           #buf:Ljava/nio/FloatBuffer;
    :catch_0
    move-exception v1

    .line 453
    .local v1, ex:Ljava/lang/Exception;
    new-instance v2, Lorg/xml/sax/SAXException;

    const-string v3, "Failed to push attrib"

    invoke-direct {v2, v3, v1}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v2
.end method

.method private pushBoneAssign(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 9
    .parameter "vertIndex"
    .parameter "boneIndex"
    .parameter "weight"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    const/4 v6, 0x0

    .line 563
    invoke-static {p1}, Lcom/jme3/util/xml/SAXUtil;->parseInt(Ljava/lang/String;)I

    move-result v3

    .line 564
    .local v3, vert:I
    invoke-static {p3}, Lcom/jme3/util/xml/SAXUtil;->parseFloat(Ljava/lang/String;)F

    move-result v4

    .line 565
    .local v4, w:F
    invoke-static {p2}, Lcom/jme3/util/xml/SAXUtil;->parseInt(Ljava/lang/String;)I

    move-result v5

    int-to-byte v0, v5

    .line 567
    .local v0, bone:B
    sget-boolean v5, Lcom/jme3/scene/plugins/ogre/MeshLoader;->$assertionsDisabled:Z

    if-nez v5, :cond_0

    if-gez v0, :cond_0

    new-instance v5, Ljava/lang/AssertionError;

    invoke-direct {v5}, Ljava/lang/AssertionError;-><init>()V

    throw v5

    .line 568
    :cond_0
    sget-boolean v5, Lcom/jme3/scene/plugins/ogre/MeshLoader;->$assertionsDisabled:Z

    if-nez v5, :cond_2

    if-ltz v3, :cond_1

    iget-object v5, p0, Lcom/jme3/scene/plugins/ogre/MeshLoader;->mesh:Lcom/jme3/scene/Mesh;

    invoke-virtual {v5}, Lcom/jme3/scene/Mesh;->getVertexCount()I

    move-result v5

    if-lt v3, v5, :cond_2

    :cond_1
    new-instance v5, Ljava/lang/AssertionError;

    invoke-direct {v5}, Ljava/lang/AssertionError;-><init>()V

    throw v5

    .line 571
    :cond_2
    const/4 v2, 0x0

    .line 573
    .local v2, v:F
    mul-int/lit8 v1, v3, 0x4

    .local v1, i:I
    :goto_0
    mul-int/lit8 v5, v3, 0x4

    add-int/lit8 v5, v5, 0x4

    if-ge v1, v5, :cond_3

    .line 574
    iget-object v5, p0, Lcom/jme3/scene/plugins/ogre/MeshLoader;->weightsFloatData:Ljava/nio/FloatBuffer;

    invoke-virtual {v5, v1}, Ljava/nio/FloatBuffer;->get(I)F

    move-result v2

    .line 575
    cmpl-float v5, v2, v6

    if-nez v5, :cond_4

    .line 579
    :cond_3
    cmpl-float v5, v2, v6

    if-eqz v5, :cond_5

    .line 580
    sget-object v5, Lcom/jme3/scene/plugins/ogre/MeshLoader;->logger:Ljava/util/logging/Logger;

    sget-object v6, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    const-string v7, "Vertex {0} has more than 4 weights per vertex! Ignoring.."

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v5, v6, v7, v8}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Object;)V

    .line 587
    :goto_1
    return-void

    .line 573
    :cond_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 584
    :cond_5
    iget-object v5, p0, Lcom/jme3/scene/plugins/ogre/MeshLoader;->weightsFloatData:Ljava/nio/FloatBuffer;

    invoke-virtual {v5, v1, v4}, Ljava/nio/FloatBuffer;->put(IF)Ljava/nio/FloatBuffer;

    .line 585
    iget-object v5, p0, Lcom/jme3/scene/plugins/ogre/MeshLoader;->indicesData:Ljava/nio/ByteBuffer;

    invoke-virtual {v5, v1, v0}, Ljava/nio/ByteBuffer;->put(IB)Ljava/nio/ByteBuffer;

    .line 586
    const/4 v5, 0x1

    iput-boolean v5, p0, Lcom/jme3/scene/plugins/ogre/MeshLoader;->actuallyHasWeights:Z

    goto :goto_1
.end method

.method private pushColor(Lorg/xml/sax/Attributes;)V
    .locals 7
    .parameter "attribs"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    const/4 v6, 0x3

    .line 494
    iget-object v4, p0, Lcom/jme3/scene/plugins/ogre/MeshLoader;->mesh:Lcom/jme3/scene/Mesh;

    sget-object v5, Lcom/jme3/scene/VertexBuffer$Type;->Color:Lcom/jme3/scene/VertexBuffer$Type;

    invoke-virtual {v4, v5}, Lcom/jme3/scene/Mesh;->getBuffer(Lcom/jme3/scene/VertexBuffer$Type;)Lcom/jme3/scene/VertexBuffer;

    move-result-object v4

    invoke-virtual {v4}, Lcom/jme3/scene/VertexBuffer;->getData()Ljava/nio/Buffer;

    move-result-object v0

    check-cast v0, Ljava/nio/FloatBuffer;

    .line 495
    .local v0, buf:Ljava/nio/FloatBuffer;
    const-string v4, "value"

    invoke-interface {p1, v4}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/jme3/util/xml/SAXUtil;->parseString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 496
    .local v3, value:Ljava/lang/String;
    const-string v4, "\\s"

    invoke-virtual {v3, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 497
    .local v2, vals:[Ljava/lang/String;
    array-length v4, v2

    if-eq v4, v6, :cond_0

    array-length v4, v2

    const/4 v5, 0x4

    if-eq v4, v5, :cond_0

    .line 498
    new-instance v4, Lorg/xml/sax/SAXException;

    const-string v5, "Color value must contain 3 or 4 components"

    invoke-direct {v4, v5}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 501
    :cond_0
    new-instance v1, Lcom/jme3/math/ColorRGBA;

    invoke-direct {v1}, Lcom/jme3/math/ColorRGBA;-><init>()V

    .line 502
    .local v1, color:Lcom/jme3/math/ColorRGBA;
    const/4 v4, 0x0

    aget-object v4, v2, v4

    invoke-static {v4}, Lcom/jme3/util/xml/SAXUtil;->parseFloat(Ljava/lang/String;)F

    move-result v4

    iput v4, v1, Lcom/jme3/math/ColorRGBA;->r:F

    .line 503
    const/4 v4, 0x1

    aget-object v4, v2, v4

    invoke-static {v4}, Lcom/jme3/util/xml/SAXUtil;->parseFloat(Ljava/lang/String;)F

    move-result v4

    iput v4, v1, Lcom/jme3/math/ColorRGBA;->g:F

    .line 504
    const/4 v4, 0x2

    aget-object v4, v2, v4

    invoke-static {v4}, Lcom/jme3/util/xml/SAXUtil;->parseFloat(Ljava/lang/String;)F

    move-result v4

    iput v4, v1, Lcom/jme3/math/ColorRGBA;->b:F

    .line 505
    array-length v4, v2

    if-ne v4, v6, :cond_1

    .line 506
    const/high16 v4, 0x3f80

    iput v4, v1, Lcom/jme3/math/ColorRGBA;->a:F

    .line 511
    :goto_0
    iget v4, v1, Lcom/jme3/math/ColorRGBA;->r:F

    invoke-virtual {v0, v4}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    move-result-object v4

    iget v5, v1, Lcom/jme3/math/ColorRGBA;->g:F

    invoke-virtual {v4, v5}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    move-result-object v4

    iget v5, v1, Lcom/jme3/math/ColorRGBA;->b:F

    invoke-virtual {v4, v5}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    move-result-object v4

    iget v5, v1, Lcom/jme3/math/ColorRGBA;->a:F

    invoke-virtual {v4, v5}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    .line 512
    return-void

    .line 508
    :cond_1
    aget-object v4, v2, v6

    invoke-static {v4}, Lcom/jme3/util/xml/SAXUtil;->parseFloat(Ljava/lang/String;)F

    move-result v4

    iput v4, v1, Lcom/jme3/math/ColorRGBA;->a:F

    goto :goto_0
.end method

.method private pushFace(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .parameter "v1"
    .parameter "v2"
    .parameter "v3"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 159
    sget-object v0, Lcom/jme3/scene/plugins/ogre/MeshLoader$1;->$SwitchMap$com$jme3$scene$Mesh$Mode:[I

    iget-object v1, p0, Lcom/jme3/scene/plugins/ogre/MeshLoader;->mesh:Lcom/jme3/scene/Mesh;

    invoke-virtual {v1}, Lcom/jme3/scene/Mesh;->getMode()Lcom/jme3/scene/Mesh$Mode;

    move-result-object v1

    invoke-virtual {v1}, Lcom/jme3/scene/Mesh$Mode;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 173
    :goto_0
    return-void

    .line 161
    :pswitch_0
    invoke-static {p1}, Lcom/jme3/util/xml/SAXUtil;->parseInt(Ljava/lang/String;)I

    move-result v0

    invoke-direct {p0, v0}, Lcom/jme3/scene/plugins/ogre/MeshLoader;->pushIndex(I)V

    .line 162
    invoke-static {p2}, Lcom/jme3/util/xml/SAXUtil;->parseInt(Ljava/lang/String;)I

    move-result v0

    invoke-direct {p0, v0}, Lcom/jme3/scene/plugins/ogre/MeshLoader;->pushIndex(I)V

    .line 163
    invoke-static {p3}, Lcom/jme3/util/xml/SAXUtil;->parseInt(Ljava/lang/String;)I

    move-result v0

    invoke-direct {p0, v0}, Lcom/jme3/scene/plugins/ogre/MeshLoader;->pushIndex(I)V

    goto :goto_0

    .line 166
    :pswitch_1
    invoke-static {p1}, Lcom/jme3/util/xml/SAXUtil;->parseInt(Ljava/lang/String;)I

    move-result v0

    invoke-direct {p0, v0}, Lcom/jme3/scene/plugins/ogre/MeshLoader;->pushIndex(I)V

    .line 167
    invoke-static {p2}, Lcom/jme3/util/xml/SAXUtil;->parseInt(Ljava/lang/String;)I

    move-result v0

    invoke-direct {p0, v0}, Lcom/jme3/scene/plugins/ogre/MeshLoader;->pushIndex(I)V

    goto :goto_0

    .line 170
    :pswitch_2
    invoke-static {p1}, Lcom/jme3/util/xml/SAXUtil;->parseInt(Ljava/lang/String;)I

    move-result v0

    invoke-direct {p0, v0}, Lcom/jme3/scene/plugins/ogre/MeshLoader;->pushIndex(I)V

    goto :goto_0

    .line 159
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private pushIndex(I)V
    .locals 2
    .parameter "index"

    .prologue
    .line 150
    iget-object v0, p0, Lcom/jme3/scene/plugins/ogre/MeshLoader;->ib:Ljava/nio/IntBuffer;

    if-eqz v0, :cond_0

    .line 151
    iget-object v0, p0, Lcom/jme3/scene/plugins/ogre/MeshLoader;->ib:Ljava/nio/IntBuffer;

    invoke-virtual {v0, p1}, Ljava/nio/IntBuffer;->put(I)Ljava/nio/IntBuffer;

    .line 155
    :goto_0
    return-void

    .line 153
    :cond_0
    iget-object v0, p0, Lcom/jme3/scene/plugins/ogre/MeshLoader;->sb:Ljava/nio/ShortBuffer;

    int-to-short v1, p1

    invoke-virtual {v0, v1}, Ljava/nio/ShortBuffer;->put(S)Ljava/nio/ShortBuffer;

    goto :goto_0
.end method

.method private pushTangent(Lorg/xml/sax/Attributes;)V
    .locals 5
    .parameter "attribs"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 459
    :try_start_0
    iget-object v3, p0, Lcom/jme3/scene/plugins/ogre/MeshLoader;->mesh:Lcom/jme3/scene/Mesh;

    sget-object v4, Lcom/jme3/scene/VertexBuffer$Type;->Tangent:Lcom/jme3/scene/VertexBuffer$Type;

    invoke-virtual {v3, v4}, Lcom/jme3/scene/Mesh;->getBuffer(Lcom/jme3/scene/VertexBuffer$Type;)Lcom/jme3/scene/VertexBuffer;

    move-result-object v2

    .line 460
    .local v2, tangentBuf:Lcom/jme3/scene/VertexBuffer;
    invoke-virtual {v2}, Lcom/jme3/scene/VertexBuffer;->getData()Ljava/nio/Buffer;

    move-result-object v0

    check-cast v0, Ljava/nio/FloatBuffer;

    .line 461
    .local v0, buf:Ljava/nio/FloatBuffer;
    const-string v3, "x"

    invoke-interface {p1, v3}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/jme3/util/xml/SAXUtil;->parseFloat(Ljava/lang/String;)F

    move-result v3

    invoke-virtual {v0, v3}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    move-result-object v3

    const-string v4, "y"

    invoke-interface {p1, v4}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/jme3/util/xml/SAXUtil;->parseFloat(Ljava/lang/String;)F

    move-result v4

    invoke-virtual {v3, v4}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    move-result-object v3

    const-string v4, "z"

    invoke-interface {p1, v4}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/jme3/util/xml/SAXUtil;->parseFloat(Ljava/lang/String;)F

    move-result v4

    invoke-virtual {v3, v4}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    .line 462
    invoke-virtual {v2}, Lcom/jme3/scene/VertexBuffer;->getNumComponents()I

    move-result v3

    const/4 v4, 0x4

    if-ne v3, v4, :cond_0

    .line 463
    const-string v3, "w"

    invoke-interface {p1, v3}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/jme3/util/xml/SAXUtil;->parseFloat(Ljava/lang/String;)F

    move-result v3

    invoke-virtual {v0, v3}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 468
    :cond_0
    return-void

    .line 465
    .end local v0           #buf:Ljava/nio/FloatBuffer;
    .end local v2           #tangentBuf:Lcom/jme3/scene/VertexBuffer;
    :catch_0
    move-exception v1

    .line 466
    .local v1, ex:Ljava/lang/Exception;
    new-instance v3, Lorg/xml/sax/SAXException;

    const-string v4, "Failed to push attrib"

    invoke-direct {v3, v4, v1}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v3
.end method

.method private pushTexCoord(Lorg/xml/sax/Attributes;)V
    .locals 5
    .parameter "attribs"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 471
    iget v3, p0, Lcom/jme3/scene/plugins/ogre/MeshLoader;->texCoordIndex:I

    const/16 v4, 0x8

    if-lt v3, v4, :cond_0

    .line 491
    :goto_0
    return-void

    .line 474
    :cond_0
    sget-object v3, Lcom/jme3/scene/plugins/ogre/MeshLoader;->TEXCOORD_TYPES:[Lcom/jme3/scene/VertexBuffer$Type;

    iget v4, p0, Lcom/jme3/scene/plugins/ogre/MeshLoader;->texCoordIndex:I

    aget-object v2, v3, v4

    .line 476
    .local v2, type:Lcom/jme3/scene/VertexBuffer$Type;
    iget-object v3, p0, Lcom/jme3/scene/plugins/ogre/MeshLoader;->mesh:Lcom/jme3/scene/Mesh;

    invoke-virtual {v3, v2}, Lcom/jme3/scene/Mesh;->getBuffer(Lcom/jme3/scene/VertexBuffer$Type;)Lcom/jme3/scene/VertexBuffer;

    move-result-object v1

    .line 477
    .local v1, tcvb:Lcom/jme3/scene/VertexBuffer;
    invoke-virtual {v1}, Lcom/jme3/scene/VertexBuffer;->getData()Ljava/nio/Buffer;

    move-result-object v0

    check-cast v0, Ljava/nio/FloatBuffer;

    .line 479
    .local v0, buf:Ljava/nio/FloatBuffer;
    const-string v3, "u"

    invoke-interface {p1, v3}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/jme3/util/xml/SAXUtil;->parseFloat(Ljava/lang/String;)F

    move-result v3

    invoke-virtual {v0, v3}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    .line 480
    invoke-virtual {v1}, Lcom/jme3/scene/VertexBuffer;->getNumComponents()I

    move-result v3

    const/4 v4, 0x2

    if-lt v3, v4, :cond_1

    .line 481
    const-string v3, "v"

    invoke-interface {p1, v3}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/jme3/util/xml/SAXUtil;->parseFloat(Ljava/lang/String;)F

    move-result v3

    invoke-virtual {v0, v3}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    .line 482
    invoke-virtual {v1}, Lcom/jme3/scene/VertexBuffer;->getNumComponents()I

    move-result v3

    const/4 v4, 0x3

    if-lt v3, v4, :cond_1

    .line 483
    const-string v3, "w"

    invoke-interface {p1, v3}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/jme3/util/xml/SAXUtil;->parseFloat(Ljava/lang/String;)F

    move-result v3

    invoke-virtual {v0, v3}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    .line 484
    invoke-virtual {v1}, Lcom/jme3/scene/VertexBuffer;->getNumComponents()I

    move-result v3

    const/4 v4, 0x4

    if-ne v3, v4, :cond_1

    .line 485
    const-string v3, "x"

    invoke-interface {p1, v3}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/jme3/util/xml/SAXUtil;->parseFloat(Ljava/lang/String;)F

    move-result v3

    invoke-virtual {v0, v3}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    .line 490
    :cond_1
    iget v3, p0, Lcom/jme3/scene/plugins/ogre/MeshLoader;->texCoordIndex:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lcom/jme3/scene/plugins/ogre/MeshLoader;->texCoordIndex:I

    goto :goto_0
.end method

.method private startBoneAssigns()V
    .locals 6

    .prologue
    const/4 v5, 0x4

    .line 362
    iget-object v3, p0, Lcom/jme3/scene/plugins/ogre/MeshLoader;->mesh:Lcom/jme3/scene/Mesh;

    iget-object v4, p0, Lcom/jme3/scene/plugins/ogre/MeshLoader;->sharedMesh:Lcom/jme3/scene/Mesh;

    if-eq v3, v4, :cond_0

    iget-boolean v3, p0, Lcom/jme3/scene/plugins/ogre/MeshLoader;->usesSharedVerts:Z

    if-eqz v3, :cond_0

    .line 390
    :goto_0
    return-void

    .line 372
    :cond_0
    sget-boolean v3, Lcom/jme3/scene/plugins/ogre/MeshLoader;->HARDWARE_SKINNING:Z

    if-eqz v3, :cond_1

    .line 373
    iget v3, p0, Lcom/jme3/scene/plugins/ogre/MeshLoader;->vertCount:I

    mul-int/lit8 v3, v3, 0x4

    invoke-static {v3}, Lcom/jme3/util/BufferUtils;->createFloatBuffer(I)Ljava/nio/FloatBuffer;

    move-result-object v3

    iput-object v3, p0, Lcom/jme3/scene/plugins/ogre/MeshLoader;->weightsFloatData:Ljava/nio/FloatBuffer;

    .line 374
    iget v3, p0, Lcom/jme3/scene/plugins/ogre/MeshLoader;->vertCount:I

    mul-int/lit8 v3, v3, 0x4

    invoke-static {v3}, Lcom/jme3/util/BufferUtils;->createByteBuffer(I)Ljava/nio/ByteBuffer;

    move-result-object v3

    iput-object v3, p0, Lcom/jme3/scene/plugins/ogre/MeshLoader;->indicesData:Ljava/nio/ByteBuffer;

    .line 381
    :goto_1
    new-instance v2, Lcom/jme3/scene/VertexBuffer;

    sget-object v3, Lcom/jme3/scene/VertexBuffer$Type;->BoneWeight:Lcom/jme3/scene/VertexBuffer$Type;

    invoke-direct {v2, v3}, Lcom/jme3/scene/VertexBuffer;-><init>(Lcom/jme3/scene/VertexBuffer$Type;)V

    .line 382
    .local v2, weights:Lcom/jme3/scene/VertexBuffer;
    new-instance v0, Lcom/jme3/scene/VertexBuffer;

    sget-object v3, Lcom/jme3/scene/VertexBuffer$Type;->BoneIndex:Lcom/jme3/scene/VertexBuffer$Type;

    invoke-direct {v0, v3}, Lcom/jme3/scene/VertexBuffer;-><init>(Lcom/jme3/scene/VertexBuffer$Type;)V

    .line 384
    .local v0, indices:Lcom/jme3/scene/VertexBuffer;
    sget-boolean v3, Lcom/jme3/scene/plugins/ogre/MeshLoader;->HARDWARE_SKINNING:Z

    if-eqz v3, :cond_2

    sget-object v1, Lcom/jme3/scene/VertexBuffer$Usage;->Static:Lcom/jme3/scene/VertexBuffer$Usage;

    .line 385
    .local v1, usage:Lcom/jme3/scene/VertexBuffer$Usage;
    :goto_2
    sget-object v3, Lcom/jme3/scene/VertexBuffer$Format;->Float:Lcom/jme3/scene/VertexBuffer$Format;

    iget-object v4, p0, Lcom/jme3/scene/plugins/ogre/MeshLoader;->weightsFloatData:Ljava/nio/FloatBuffer;

    invoke-virtual {v2, v1, v5, v3, v4}, Lcom/jme3/scene/VertexBuffer;->setupData(Lcom/jme3/scene/VertexBuffer$Usage;ILcom/jme3/scene/VertexBuffer$Format;Ljava/nio/Buffer;)V

    .line 386
    sget-object v3, Lcom/jme3/scene/VertexBuffer$Format;->UnsignedByte:Lcom/jme3/scene/VertexBuffer$Format;

    iget-object v4, p0, Lcom/jme3/scene/plugins/ogre/MeshLoader;->indicesData:Ljava/nio/ByteBuffer;

    invoke-virtual {v0, v1, v5, v3, v4}, Lcom/jme3/scene/VertexBuffer;->setupData(Lcom/jme3/scene/VertexBuffer$Usage;ILcom/jme3/scene/VertexBuffer$Format;Ljava/nio/Buffer;)V

    .line 388
    iget-object v3, p0, Lcom/jme3/scene/plugins/ogre/MeshLoader;->mesh:Lcom/jme3/scene/Mesh;

    invoke-virtual {v3, v2}, Lcom/jme3/scene/Mesh;->setBuffer(Lcom/jme3/scene/VertexBuffer;)V

    .line 389
    iget-object v3, p0, Lcom/jme3/scene/plugins/ogre/MeshLoader;->mesh:Lcom/jme3/scene/Mesh;

    invoke-virtual {v3, v0}, Lcom/jme3/scene/Mesh;->setBuffer(Lcom/jme3/scene/VertexBuffer;)V

    goto :goto_0

    .line 377
    .end local v0           #indices:Lcom/jme3/scene/VertexBuffer;
    .end local v1           #usage:Lcom/jme3/scene/VertexBuffer$Usage;
    .end local v2           #weights:Lcom/jme3/scene/VertexBuffer;
    :cond_1
    iget v3, p0, Lcom/jme3/scene/plugins/ogre/MeshLoader;->vertCount:I

    mul-int/lit8 v3, v3, 0x4

    invoke-static {v3}, Ljava/nio/FloatBuffer;->allocate(I)Ljava/nio/FloatBuffer;

    move-result-object v3

    iput-object v3, p0, Lcom/jme3/scene/plugins/ogre/MeshLoader;->weightsFloatData:Ljava/nio/FloatBuffer;

    .line 378
    iget v3, p0, Lcom/jme3/scene/plugins/ogre/MeshLoader;->vertCount:I

    mul-int/lit8 v3, v3, 0x4

    invoke-static {v3}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v3

    iput-object v3, p0, Lcom/jme3/scene/plugins/ogre/MeshLoader;->indicesData:Ljava/nio/ByteBuffer;

    goto :goto_1

    .line 384
    .restart local v0       #indices:Lcom/jme3/scene/VertexBuffer;
    .restart local v2       #weights:Lcom/jme3/scene/VertexBuffer;
    :cond_2
    sget-object v1, Lcom/jme3/scene/VertexBuffer$Usage;->CpuOnly:Lcom/jme3/scene/VertexBuffer$Usage;

    goto :goto_2
.end method

.method private startFaces(Ljava/lang/String;)V
    .locals 7
    .parameter "count"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    const/4 v5, 0x0

    .line 181
    invoke-static {p1}, Lcom/jme3/util/xml/SAXUtil;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 182
    .local v1, numFaces:I
    const/4 v0, 0x0

    .line 184
    .local v0, indicesPerFace:I
    sget-object v3, Lcom/jme3/scene/plugins/ogre/MeshLoader$1;->$SwitchMap$com$jme3$scene$Mesh$Mode:[I

    iget-object v4, p0, Lcom/jme3/scene/plugins/ogre/MeshLoader;->mesh:Lcom/jme3/scene/Mesh;

    invoke-virtual {v4}, Lcom/jme3/scene/Mesh;->getMode()Lcom/jme3/scene/Mesh$Mode;

    move-result-object v4

    invoke-virtual {v4}, Lcom/jme3/scene/Mesh$Mode;->ordinal()I

    move-result v4

    aget v3, v3, v4

    packed-switch v3, :pswitch_data_0

    .line 195
    new-instance v3, Lorg/xml/sax/SAXException;

    const-string v4, "Strips or fans not supported!"

    invoke-direct {v3, v4}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 186
    :pswitch_0
    const/4 v0, 0x3

    .line 198
    :goto_0
    mul-int v2, v0, v1

    .line 200
    .local v2, numIndices:I
    new-instance v3, Lcom/jme3/scene/VertexBuffer;

    sget-object v4, Lcom/jme3/scene/VertexBuffer$Type;->Index:Lcom/jme3/scene/VertexBuffer$Type;

    invoke-direct {v3, v4}, Lcom/jme3/scene/VertexBuffer;-><init>(Lcom/jme3/scene/VertexBuffer$Type;)V

    iput-object v3, p0, Lcom/jme3/scene/plugins/ogre/MeshLoader;->vb:Lcom/jme3/scene/VertexBuffer;

    .line 201
    iget-boolean v3, p0, Lcom/jme3/scene/plugins/ogre/MeshLoader;->usesBigIndices:Z

    if-nez v3, :cond_0

    .line 202
    invoke-static {v2}, Lcom/jme3/util/BufferUtils;->createShortBuffer(I)Ljava/nio/ShortBuffer;

    move-result-object v3

    iput-object v3, p0, Lcom/jme3/scene/plugins/ogre/MeshLoader;->sb:Ljava/nio/ShortBuffer;

    .line 203
    iput-object v5, p0, Lcom/jme3/scene/plugins/ogre/MeshLoader;->ib:Ljava/nio/IntBuffer;

    .line 204
    iget-object v3, p0, Lcom/jme3/scene/plugins/ogre/MeshLoader;->vb:Lcom/jme3/scene/VertexBuffer;

    sget-object v4, Lcom/jme3/scene/VertexBuffer$Usage;->Static:Lcom/jme3/scene/VertexBuffer$Usage;

    sget-object v5, Lcom/jme3/scene/VertexBuffer$Format;->UnsignedShort:Lcom/jme3/scene/VertexBuffer$Format;

    iget-object v6, p0, Lcom/jme3/scene/plugins/ogre/MeshLoader;->sb:Ljava/nio/ShortBuffer;

    invoke-virtual {v3, v4, v0, v5, v6}, Lcom/jme3/scene/VertexBuffer;->setupData(Lcom/jme3/scene/VertexBuffer$Usage;ILcom/jme3/scene/VertexBuffer$Format;Ljava/nio/Buffer;)V

    .line 210
    :goto_1
    iget-object v3, p0, Lcom/jme3/scene/plugins/ogre/MeshLoader;->mesh:Lcom/jme3/scene/Mesh;

    iget-object v4, p0, Lcom/jme3/scene/plugins/ogre/MeshLoader;->vb:Lcom/jme3/scene/VertexBuffer;

    invoke-virtual {v3, v4}, Lcom/jme3/scene/Mesh;->setBuffer(Lcom/jme3/scene/VertexBuffer;)V

    .line 211
    return-void

    .line 189
    .end local v2           #numIndices:I
    :pswitch_1
    const/4 v0, 0x2

    .line 190
    goto :goto_0

    .line 192
    :pswitch_2
    const/4 v0, 0x1

    .line 193
    goto :goto_0

    .line 206
    .restart local v2       #numIndices:I
    :cond_0
    invoke-static {v2}, Lcom/jme3/util/BufferUtils;->createIntBuffer(I)Ljava/nio/IntBuffer;

    move-result-object v3

    iput-object v3, p0, Lcom/jme3/scene/plugins/ogre/MeshLoader;->ib:Ljava/nio/IntBuffer;

    .line 207
    iput-object v5, p0, Lcom/jme3/scene/plugins/ogre/MeshLoader;->sb:Ljava/nio/ShortBuffer;

    .line 208
    iget-object v3, p0, Lcom/jme3/scene/plugins/ogre/MeshLoader;->vb:Lcom/jme3/scene/VertexBuffer;

    sget-object v4, Lcom/jme3/scene/VertexBuffer$Usage;->Static:Lcom/jme3/scene/VertexBuffer$Usage;

    sget-object v5, Lcom/jme3/scene/VertexBuffer$Format;->UnsignedInt:Lcom/jme3/scene/VertexBuffer$Format;

    iget-object v6, p0, Lcom/jme3/scene/plugins/ogre/MeshLoader;->ib:Ljava/nio/IntBuffer;

    invoke-virtual {v3, v4, v0, v5, v6}, Lcom/jme3/scene/VertexBuffer;->setupData(Lcom/jme3/scene/VertexBuffer$Usage;ILcom/jme3/scene/VertexBuffer$Format;Ljava/nio/Buffer;)V

    goto :goto_1

    .line 184
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private startGeometry(Ljava/lang/String;)V
    .locals 1
    .parameter "vertexcount"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 298
    invoke-static {p1}, Lcom/jme3/util/xml/SAXUtil;->parseInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/jme3/scene/plugins/ogre/MeshLoader;->vertCount:I

    .line 299
    return-void
.end method

.method private startLevelOfDetail(Ljava/lang/String;)V
    .locals 0
    .parameter "numlevels"

    .prologue
    .line 546
    return-void
.end method

.method private startLodFaceList(Ljava/lang/String;Ljava/lang/String;)V
    .locals 9
    .parameter "submeshindex"
    .parameter "numfaces"

    .prologue
    const/4 v6, 0x0

    const/4 v8, 0x3

    .line 515
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 516
    .local v1, index:I
    iget-object v4, p0, Lcom/jme3/scene/plugins/ogre/MeshLoader;->geoms:Ljava/util/List;

    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/jme3/scene/Geometry;

    invoke-virtual {v4}, Lcom/jme3/scene/Geometry;->getMesh()Lcom/jme3/scene/Mesh;

    move-result-object v4

    iput-object v4, p0, Lcom/jme3/scene/plugins/ogre/MeshLoader;->mesh:Lcom/jme3/scene/Mesh;

    .line 517
    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 519
    .local v0, faceCount:I
    iget-object v4, p0, Lcom/jme3/scene/plugins/ogre/MeshLoader;->mesh:Lcom/jme3/scene/Mesh;

    sget-object v5, Lcom/jme3/scene/VertexBuffer$Type;->Index:Lcom/jme3/scene/VertexBuffer$Type;

    invoke-virtual {v4, v5}, Lcom/jme3/scene/Mesh;->getBuffer(Lcom/jme3/scene/VertexBuffer$Type;)Lcom/jme3/scene/VertexBuffer;

    move-result-object v3

    .line 520
    .local v3, originalIndexBuffer:Lcom/jme3/scene/VertexBuffer;
    new-instance v4, Lcom/jme3/scene/VertexBuffer;

    sget-object v5, Lcom/jme3/scene/VertexBuffer$Type;->Index:Lcom/jme3/scene/VertexBuffer$Type;

    invoke-direct {v4, v5}, Lcom/jme3/scene/VertexBuffer;-><init>(Lcom/jme3/scene/VertexBuffer$Type;)V

    iput-object v4, p0, Lcom/jme3/scene/plugins/ogre/MeshLoader;->vb:Lcom/jme3/scene/VertexBuffer;

    .line 521
    invoke-virtual {v3}, Lcom/jme3/scene/VertexBuffer;->getFormat()Lcom/jme3/scene/VertexBuffer$Format;

    move-result-object v4

    sget-object v5, Lcom/jme3/scene/VertexBuffer$Format;->UnsignedInt:Lcom/jme3/scene/VertexBuffer$Format;

    if-ne v4, v5, :cond_1

    .line 523
    mul-int/lit8 v4, v0, 0x3

    invoke-static {v4}, Lcom/jme3/util/BufferUtils;->createIntBuffer(I)Ljava/nio/IntBuffer;

    move-result-object v4

    iput-object v4, p0, Lcom/jme3/scene/plugins/ogre/MeshLoader;->ib:Ljava/nio/IntBuffer;

    .line 524
    iput-object v6, p0, Lcom/jme3/scene/plugins/ogre/MeshLoader;->sb:Ljava/nio/ShortBuffer;

    .line 525
    iget-object v4, p0, Lcom/jme3/scene/plugins/ogre/MeshLoader;->vb:Lcom/jme3/scene/VertexBuffer;

    sget-object v5, Lcom/jme3/scene/VertexBuffer$Usage;->Static:Lcom/jme3/scene/VertexBuffer$Usage;

    sget-object v6, Lcom/jme3/scene/VertexBuffer$Format;->UnsignedInt:Lcom/jme3/scene/VertexBuffer$Format;

    iget-object v7, p0, Lcom/jme3/scene/plugins/ogre/MeshLoader;->ib:Ljava/nio/IntBuffer;

    invoke-virtual {v4, v5, v8, v6, v7}, Lcom/jme3/scene/VertexBuffer;->setupData(Lcom/jme3/scene/VertexBuffer$Usage;ILcom/jme3/scene/VertexBuffer$Format;Ljava/nio/Buffer;)V

    .line 532
    :goto_0
    iget-object v4, p0, Lcom/jme3/scene/plugins/ogre/MeshLoader;->lodLevels:Lcom/jme3/util/IntMap;

    invoke-virtual {v4, v1}, Lcom/jme3/util/IntMap;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    .line 533
    .local v2, levels:Ljava/util/List;,"Ljava/util/List<Lcom/jme3/scene/VertexBuffer;>;"
    if-nez v2, :cond_0

    .line 535
    new-instance v2, Ljava/util/ArrayList;

    .end local v2           #levels:Ljava/util/List;,"Ljava/util/List<Lcom/jme3/scene/VertexBuffer;>;"
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 538
    .restart local v2       #levels:Ljava/util/List;,"Ljava/util/List<Lcom/jme3/scene/VertexBuffer;>;"
    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 539
    iget-object v4, p0, Lcom/jme3/scene/plugins/ogre/MeshLoader;->lodLevels:Lcom/jme3/util/IntMap;

    invoke-virtual {v4, v1, v2}, Lcom/jme3/util/IntMap;->put(ILjava/lang/Object;)Ljava/lang/Object;

    .line 541
    :cond_0
    iget-object v4, p0, Lcom/jme3/scene/plugins/ogre/MeshLoader;->vb:Lcom/jme3/scene/VertexBuffer;

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 542
    return-void

    .line 527
    .end local v2           #levels:Ljava/util/List;,"Ljava/util/List<Lcom/jme3/scene/VertexBuffer;>;"
    :cond_1
    mul-int/lit8 v4, v0, 0x3

    invoke-static {v4}, Lcom/jme3/util/BufferUtils;->createShortBuffer(I)Ljava/nio/ShortBuffer;

    move-result-object v4

    iput-object v4, p0, Lcom/jme3/scene/plugins/ogre/MeshLoader;->sb:Ljava/nio/ShortBuffer;

    .line 528
    iput-object v6, p0, Lcom/jme3/scene/plugins/ogre/MeshLoader;->ib:Ljava/nio/IntBuffer;

    .line 529
    iget-object v4, p0, Lcom/jme3/scene/plugins/ogre/MeshLoader;->vb:Lcom/jme3/scene/VertexBuffer;

    sget-object v5, Lcom/jme3/scene/VertexBuffer$Usage;->Static:Lcom/jme3/scene/VertexBuffer$Usage;

    sget-object v6, Lcom/jme3/scene/VertexBuffer$Format;->UnsignedShort:Lcom/jme3/scene/VertexBuffer$Format;

    iget-object v7, p0, Lcom/jme3/scene/plugins/ogre/MeshLoader;->sb:Ljava/nio/ShortBuffer;

    invoke-virtual {v4, v5, v8, v6, v7}, Lcom/jme3/scene/VertexBuffer;->setupData(Lcom/jme3/scene/VertexBuffer$Usage;ILcom/jme3/scene/VertexBuffer$Format;Ljava/nio/Buffer;)V

    goto :goto_0
.end method

.method private startLodGenerated(Ljava/lang/String;)V
    .locals 0
    .parameter "depthsqr"

    .prologue
    .line 560
    return-void
.end method

.method private startSharedGeom(Ljava/lang/String;)V
    .locals 1
    .parameter "vertexcount"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 289
    new-instance v0, Lcom/jme3/scene/Mesh;

    invoke-direct {v0}, Lcom/jme3/scene/Mesh;-><init>()V

    iput-object v0, p0, Lcom/jme3/scene/plugins/ogre/MeshLoader;->sharedMesh:Lcom/jme3/scene/Mesh;

    .line 290
    invoke-static {p1}, Lcom/jme3/util/xml/SAXUtil;->parseInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/jme3/scene/plugins/ogre/MeshLoader;->vertCount:I

    .line 291
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/jme3/scene/plugins/ogre/MeshLoader;->usesSharedVerts:Z

    .line 293
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/jme3/scene/plugins/ogre/MeshLoader;->geom:Lcom/jme3/scene/Geometry;

    .line 294
    iget-object v0, p0, Lcom/jme3/scene/plugins/ogre/MeshLoader;->sharedMesh:Lcom/jme3/scene/Mesh;

    iput-object v0, p0, Lcom/jme3/scene/plugins/ogre/MeshLoader;->mesh:Lcom/jme3/scene/Mesh;

    .line 295
    return-void
.end method

.method private startSkeleton(Ljava/lang/String;)V
    .locals 8
    .parameter "name"

    .prologue
    .line 590
    new-instance v0, Lcom/jme3/asset/AssetKey;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/jme3/scene/plugins/ogre/MeshLoader;->folderName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ".xml"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/jme3/asset/AssetKey;-><init>(Ljava/lang/String;)V

    .line 592
    .local v0, assetKey:Lcom/jme3/asset/AssetKey;
    :try_start_0
    iget-object v2, p0, Lcom/jme3/scene/plugins/ogre/MeshLoader;->assetManager:Lcom/jme3/asset/AssetManager;

    invoke-interface {v2, v0}, Lcom/jme3/asset/AssetManager;->loadAsset(Lcom/jme3/asset/AssetKey;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/jme3/scene/plugins/ogre/AnimData;

    iput-object v2, p0, Lcom/jme3/scene/plugins/ogre/MeshLoader;->animData:Lcom/jme3/scene/plugins/ogre/AnimData;
    :try_end_0
    .catch Lcom/jme3/asset/AssetNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 597
    :goto_0
    return-void

    .line 593
    :catch_0
    move-exception v1

    .line 594
    .local v1, ex:Lcom/jme3/asset/AssetNotFoundException;
    sget-object v2, Lcom/jme3/scene/plugins/ogre/MeshLoader;->logger:Ljava/util/logging/Logger;

    sget-object v3, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    const-string v4, "Cannot locate {0} for model {1}"

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object v0, v5, v6

    const/4 v6, 0x1

    iget-object v7, p0, Lcom/jme3/scene/plugins/ogre/MeshLoader;->key:Lcom/jme3/asset/AssetKey;

    aput-object v7, v5, v6

    invoke-virtual {v2, v3, v4, v5}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 595
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/jme3/scene/plugins/ogre/MeshLoader;->animData:Lcom/jme3/scene/plugins/ogre/AnimData;

    goto :goto_0
.end method

.method private startSubMesh(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .parameter "matName"
    .parameter "usesharedvertices"
    .parameter "use32bitIndices"
    .parameter "opType"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 244
    new-instance v0, Lcom/jme3/scene/Mesh;

    invoke-direct {v0}, Lcom/jme3/scene/Mesh;-><init>()V

    iput-object v0, p0, Lcom/jme3/scene/plugins/ogre/MeshLoader;->mesh:Lcom/jme3/scene/Mesh;

    .line 245
    if-eqz p4, :cond_0

    const-string v0, "triangle_list"

    invoke-virtual {p4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 246
    :cond_0
    iget-object v0, p0, Lcom/jme3/scene/plugins/ogre/MeshLoader;->mesh:Lcom/jme3/scene/Mesh;

    sget-object v1, Lcom/jme3/scene/Mesh$Mode;->Triangles:Lcom/jme3/scene/Mesh$Mode;

    invoke-virtual {v0, v1}, Lcom/jme3/scene/Mesh;->setMode(Lcom/jme3/scene/Mesh$Mode;)V

    .line 257
    :goto_0
    invoke-static {p3, v2}, Lcom/jme3/util/xml/SAXUtil;->parseBool(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/jme3/scene/plugins/ogre/MeshLoader;->usesBigIndices:Z

    .line 258
    invoke-static {p2, v2}, Lcom/jme3/util/xml/SAXUtil;->parseBool(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/jme3/scene/plugins/ogre/MeshLoader;->usesSharedVerts:Z

    .line 259
    iget-boolean v0, p0, Lcom/jme3/scene/plugins/ogre/MeshLoader;->usesSharedVerts:Z

    if-eqz v0, :cond_4

    .line 260
    iget-object v0, p0, Lcom/jme3/scene/plugins/ogre/MeshLoader;->usesSharedMesh:Ljava/util/ArrayList;

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 272
    :goto_1
    iget-object v0, p0, Lcom/jme3/scene/plugins/ogre/MeshLoader;->meshName:Ljava/lang/String;

    if-nez v0, :cond_5

    .line 273
    new-instance v0, Lcom/jme3/scene/Geometry;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "OgreSubmesh-"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/jme3/scene/plugins/ogre/MeshLoader;->meshIndex:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/jme3/scene/plugins/ogre/MeshLoader;->meshIndex:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/jme3/scene/plugins/ogre/MeshLoader;->mesh:Lcom/jme3/scene/Mesh;

    invoke-direct {v0, v1, v2}, Lcom/jme3/scene/Geometry;-><init>(Ljava/lang/String;Lcom/jme3/scene/Mesh;)V

    iput-object v0, p0, Lcom/jme3/scene/plugins/ogre/MeshLoader;->geom:Lcom/jme3/scene/Geometry;

    .line 278
    :goto_2
    iget-boolean v0, p0, Lcom/jme3/scene/plugins/ogre/MeshLoader;->usesSharedVerts:Z

    if-eqz v0, :cond_1

    .line 284
    :cond_1
    iget-object v0, p0, Lcom/jme3/scene/plugins/ogre/MeshLoader;->geom:Lcom/jme3/scene/Geometry;

    invoke-direct {p0, v0, p1}, Lcom/jme3/scene/plugins/ogre/MeshLoader;->applyMaterial(Lcom/jme3/scene/Geometry;Ljava/lang/String;)V

    .line 285
    iget-object v0, p0, Lcom/jme3/scene/plugins/ogre/MeshLoader;->geoms:Ljava/util/List;

    iget-object v1, p0, Lcom/jme3/scene/plugins/ogre/MeshLoader;->geom:Lcom/jme3/scene/Geometry;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 286
    return-void

    .line 251
    :cond_2
    const-string v0, "line_list"

    invoke-virtual {p4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 252
    iget-object v0, p0, Lcom/jme3/scene/plugins/ogre/MeshLoader;->mesh:Lcom/jme3/scene/Mesh;

    sget-object v1, Lcom/jme3/scene/Mesh$Mode;->Lines:Lcom/jme3/scene/Mesh$Mode;

    invoke-virtual {v0, v1}, Lcom/jme3/scene/Mesh;->setMode(Lcom/jme3/scene/Mesh$Mode;)V

    goto :goto_0

    .line 254
    :cond_3
    new-instance v0, Lorg/xml/sax/SAXException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unsupported operation type: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 269
    :cond_4
    iget-object v0, p0, Lcom/jme3/scene/plugins/ogre/MeshLoader;->usesSharedMesh:Ljava/util/ArrayList;

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 275
    :cond_5
    new-instance v0, Lcom/jme3/scene/Geometry;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/jme3/scene/plugins/ogre/MeshLoader;->meshName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "-geom-"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/jme3/scene/plugins/ogre/MeshLoader;->meshIndex:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/jme3/scene/plugins/ogre/MeshLoader;->meshIndex:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/jme3/scene/plugins/ogre/MeshLoader;->mesh:Lcom/jme3/scene/Mesh;

    invoke-direct {v0, v1, v2}, Lcom/jme3/scene/Geometry;-><init>(Ljava/lang/String;Lcom/jme3/scene/Mesh;)V

    iput-object v0, p0, Lcom/jme3/scene/plugins/ogre/MeshLoader;->geom:Lcom/jme3/scene/Geometry;

    goto :goto_2
.end method

.method private startSubmeshName(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .parameter "indexStr"
    .parameter "nameStr"

    .prologue
    .line 600
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 601
    .local v0, index:I
    iget-object v1, p0, Lcom/jme3/scene/plugins/ogre/MeshLoader;->geoms:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/jme3/scene/Geometry;

    invoke-virtual {v1, p2}, Lcom/jme3/scene/Geometry;->setName(Ljava/lang/String;)V

    .line 602
    return-void
.end method

.method private startVertex()V
    .locals 1

    .prologue
    .line 445
    const/4 v0, 0x0

    iput v0, p0, Lcom/jme3/scene/plugins/ogre/MeshLoader;->texCoordIndex:I

    .line 446
    return-void
.end method

.method private startVertexBuffer(Lorg/xml/sax/Attributes;)V
    .locals 11
    .parameter "attribs"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    const/4 v10, 0x4

    const/4 v9, 0x3

    const/4 v8, 0x0

    .line 393
    const-string v4, "positions"

    invoke-interface {p1, v4}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4, v8}, Lcom/jme3/util/xml/SAXUtil;->parseBool(Ljava/lang/String;Z)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 394
    new-instance v4, Lcom/jme3/scene/VertexBuffer;

    sget-object v5, Lcom/jme3/scene/VertexBuffer$Type;->Position:Lcom/jme3/scene/VertexBuffer$Type;

    invoke-direct {v4, v5}, Lcom/jme3/scene/VertexBuffer;-><init>(Lcom/jme3/scene/VertexBuffer$Type;)V

    iput-object v4, p0, Lcom/jme3/scene/plugins/ogre/MeshLoader;->vb:Lcom/jme3/scene/VertexBuffer;

    .line 395
    iget v4, p0, Lcom/jme3/scene/plugins/ogre/MeshLoader;->vertCount:I

    mul-int/lit8 v4, v4, 0x3

    invoke-static {v4}, Lcom/jme3/util/BufferUtils;->createFloatBuffer(I)Ljava/nio/FloatBuffer;

    move-result-object v4

    iput-object v4, p0, Lcom/jme3/scene/plugins/ogre/MeshLoader;->fb:Ljava/nio/FloatBuffer;

    .line 396
    iget-object v4, p0, Lcom/jme3/scene/plugins/ogre/MeshLoader;->vb:Lcom/jme3/scene/VertexBuffer;

    sget-object v5, Lcom/jme3/scene/VertexBuffer$Usage;->Static:Lcom/jme3/scene/VertexBuffer$Usage;

    sget-object v6, Lcom/jme3/scene/VertexBuffer$Format;->Float:Lcom/jme3/scene/VertexBuffer$Format;

    iget-object v7, p0, Lcom/jme3/scene/plugins/ogre/MeshLoader;->fb:Ljava/nio/FloatBuffer;

    invoke-virtual {v4, v5, v9, v6, v7}, Lcom/jme3/scene/VertexBuffer;->setupData(Lcom/jme3/scene/VertexBuffer$Usage;ILcom/jme3/scene/VertexBuffer$Format;Ljava/nio/Buffer;)V

    .line 397
    iget-object v4, p0, Lcom/jme3/scene/plugins/ogre/MeshLoader;->mesh:Lcom/jme3/scene/Mesh;

    iget-object v5, p0, Lcom/jme3/scene/plugins/ogre/MeshLoader;->vb:Lcom/jme3/scene/VertexBuffer;

    invoke-virtual {v4, v5}, Lcom/jme3/scene/Mesh;->setBuffer(Lcom/jme3/scene/VertexBuffer;)V

    .line 399
    :cond_0
    const-string v4, "normals"

    invoke-interface {p1, v4}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4, v8}, Lcom/jme3/util/xml/SAXUtil;->parseBool(Ljava/lang/String;Z)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 400
    new-instance v4, Lcom/jme3/scene/VertexBuffer;

    sget-object v5, Lcom/jme3/scene/VertexBuffer$Type;->Normal:Lcom/jme3/scene/VertexBuffer$Type;

    invoke-direct {v4, v5}, Lcom/jme3/scene/VertexBuffer;-><init>(Lcom/jme3/scene/VertexBuffer$Type;)V

    iput-object v4, p0, Lcom/jme3/scene/plugins/ogre/MeshLoader;->vb:Lcom/jme3/scene/VertexBuffer;

    .line 401
    iget v4, p0, Lcom/jme3/scene/plugins/ogre/MeshLoader;->vertCount:I

    mul-int/lit8 v4, v4, 0x3

    invoke-static {v4}, Lcom/jme3/util/BufferUtils;->createFloatBuffer(I)Ljava/nio/FloatBuffer;

    move-result-object v4

    iput-object v4, p0, Lcom/jme3/scene/plugins/ogre/MeshLoader;->fb:Ljava/nio/FloatBuffer;

    .line 402
    iget-object v4, p0, Lcom/jme3/scene/plugins/ogre/MeshLoader;->vb:Lcom/jme3/scene/VertexBuffer;

    sget-object v5, Lcom/jme3/scene/VertexBuffer$Usage;->Static:Lcom/jme3/scene/VertexBuffer$Usage;

    sget-object v6, Lcom/jme3/scene/VertexBuffer$Format;->Float:Lcom/jme3/scene/VertexBuffer$Format;

    iget-object v7, p0, Lcom/jme3/scene/plugins/ogre/MeshLoader;->fb:Ljava/nio/FloatBuffer;

    invoke-virtual {v4, v5, v9, v6, v7}, Lcom/jme3/scene/VertexBuffer;->setupData(Lcom/jme3/scene/VertexBuffer$Usage;ILcom/jme3/scene/VertexBuffer$Format;Ljava/nio/Buffer;)V

    .line 403
    iget-object v4, p0, Lcom/jme3/scene/plugins/ogre/MeshLoader;->mesh:Lcom/jme3/scene/Mesh;

    iget-object v5, p0, Lcom/jme3/scene/plugins/ogre/MeshLoader;->vb:Lcom/jme3/scene/VertexBuffer;

    invoke-virtual {v4, v5}, Lcom/jme3/scene/Mesh;->setBuffer(Lcom/jme3/scene/VertexBuffer;)V

    .line 405
    :cond_1
    const-string v4, "colours_diffuse"

    invoke-interface {p1, v4}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4, v8}, Lcom/jme3/util/xml/SAXUtil;->parseBool(Ljava/lang/String;Z)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 406
    new-instance v4, Lcom/jme3/scene/VertexBuffer;

    sget-object v5, Lcom/jme3/scene/VertexBuffer$Type;->Color:Lcom/jme3/scene/VertexBuffer$Type;

    invoke-direct {v4, v5}, Lcom/jme3/scene/VertexBuffer;-><init>(Lcom/jme3/scene/VertexBuffer$Type;)V

    iput-object v4, p0, Lcom/jme3/scene/plugins/ogre/MeshLoader;->vb:Lcom/jme3/scene/VertexBuffer;

    .line 407
    iget v4, p0, Lcom/jme3/scene/plugins/ogre/MeshLoader;->vertCount:I

    mul-int/lit8 v4, v4, 0x4

    invoke-static {v4}, Lcom/jme3/util/BufferUtils;->createFloatBuffer(I)Ljava/nio/FloatBuffer;

    move-result-object v4

    iput-object v4, p0, Lcom/jme3/scene/plugins/ogre/MeshLoader;->fb:Ljava/nio/FloatBuffer;

    .line 408
    iget-object v4, p0, Lcom/jme3/scene/plugins/ogre/MeshLoader;->vb:Lcom/jme3/scene/VertexBuffer;

    sget-object v5, Lcom/jme3/scene/VertexBuffer$Usage;->Static:Lcom/jme3/scene/VertexBuffer$Usage;

    sget-object v6, Lcom/jme3/scene/VertexBuffer$Format;->Float:Lcom/jme3/scene/VertexBuffer$Format;

    iget-object v7, p0, Lcom/jme3/scene/plugins/ogre/MeshLoader;->fb:Ljava/nio/FloatBuffer;

    invoke-virtual {v4, v5, v10, v6, v7}, Lcom/jme3/scene/VertexBuffer;->setupData(Lcom/jme3/scene/VertexBuffer$Usage;ILcom/jme3/scene/VertexBuffer$Format;Ljava/nio/Buffer;)V

    .line 409
    iget-object v4, p0, Lcom/jme3/scene/plugins/ogre/MeshLoader;->mesh:Lcom/jme3/scene/Mesh;

    iget-object v5, p0, Lcom/jme3/scene/plugins/ogre/MeshLoader;->vb:Lcom/jme3/scene/VertexBuffer;

    invoke-virtual {v4, v5}, Lcom/jme3/scene/Mesh;->setBuffer(Lcom/jme3/scene/VertexBuffer;)V

    .line 411
    :cond_2
    const-string v4, "tangents"

    invoke-interface {p1, v4}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4, v8}, Lcom/jme3/util/xml/SAXUtil;->parseBool(Ljava/lang/String;Z)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 412
    const-string v4, "tangent_dimensions"

    invoke-interface {p1, v4}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4, v9}, Lcom/jme3/util/xml/SAXUtil;->parseInt(Ljava/lang/String;I)I

    move-result v0

    .line 413
    .local v0, dimensions:I
    new-instance v4, Lcom/jme3/scene/VertexBuffer;

    sget-object v5, Lcom/jme3/scene/VertexBuffer$Type;->Tangent:Lcom/jme3/scene/VertexBuffer$Type;

    invoke-direct {v4, v5}, Lcom/jme3/scene/VertexBuffer;-><init>(Lcom/jme3/scene/VertexBuffer$Type;)V

    iput-object v4, p0, Lcom/jme3/scene/plugins/ogre/MeshLoader;->vb:Lcom/jme3/scene/VertexBuffer;

    .line 414
    iget v4, p0, Lcom/jme3/scene/plugins/ogre/MeshLoader;->vertCount:I

    mul-int/2addr v4, v0

    invoke-static {v4}, Lcom/jme3/util/BufferUtils;->createFloatBuffer(I)Ljava/nio/FloatBuffer;

    move-result-object v4

    iput-object v4, p0, Lcom/jme3/scene/plugins/ogre/MeshLoader;->fb:Ljava/nio/FloatBuffer;

    .line 415
    iget-object v4, p0, Lcom/jme3/scene/plugins/ogre/MeshLoader;->vb:Lcom/jme3/scene/VertexBuffer;

    sget-object v5, Lcom/jme3/scene/VertexBuffer$Usage;->Static:Lcom/jme3/scene/VertexBuffer$Usage;

    sget-object v6, Lcom/jme3/scene/VertexBuffer$Format;->Float:Lcom/jme3/scene/VertexBuffer$Format;

    iget-object v7, p0, Lcom/jme3/scene/plugins/ogre/MeshLoader;->fb:Ljava/nio/FloatBuffer;

    invoke-virtual {v4, v5, v0, v6, v7}, Lcom/jme3/scene/VertexBuffer;->setupData(Lcom/jme3/scene/VertexBuffer$Usage;ILcom/jme3/scene/VertexBuffer$Format;Ljava/nio/Buffer;)V

    .line 416
    iget-object v4, p0, Lcom/jme3/scene/plugins/ogre/MeshLoader;->mesh:Lcom/jme3/scene/Mesh;

    iget-object v5, p0, Lcom/jme3/scene/plugins/ogre/MeshLoader;->vb:Lcom/jme3/scene/VertexBuffer;

    invoke-virtual {v4, v5}, Lcom/jme3/scene/Mesh;->setBuffer(Lcom/jme3/scene/VertexBuffer;)V

    .line 418
    .end local v0           #dimensions:I
    :cond_3
    const-string v4, "binormals"

    invoke-interface {p1, v4}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4, v8}, Lcom/jme3/util/xml/SAXUtil;->parseBool(Ljava/lang/String;Z)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 419
    new-instance v4, Lcom/jme3/scene/VertexBuffer;

    sget-object v5, Lcom/jme3/scene/VertexBuffer$Type;->Binormal:Lcom/jme3/scene/VertexBuffer$Type;

    invoke-direct {v4, v5}, Lcom/jme3/scene/VertexBuffer;-><init>(Lcom/jme3/scene/VertexBuffer$Type;)V

    iput-object v4, p0, Lcom/jme3/scene/plugins/ogre/MeshLoader;->vb:Lcom/jme3/scene/VertexBuffer;

    .line 420
    iget v4, p0, Lcom/jme3/scene/plugins/ogre/MeshLoader;->vertCount:I

    mul-int/lit8 v4, v4, 0x3

    invoke-static {v4}, Lcom/jme3/util/BufferUtils;->createFloatBuffer(I)Ljava/nio/FloatBuffer;

    move-result-object v4

    iput-object v4, p0, Lcom/jme3/scene/plugins/ogre/MeshLoader;->fb:Ljava/nio/FloatBuffer;

    .line 421
    iget-object v4, p0, Lcom/jme3/scene/plugins/ogre/MeshLoader;->vb:Lcom/jme3/scene/VertexBuffer;

    sget-object v5, Lcom/jme3/scene/VertexBuffer$Usage;->Static:Lcom/jme3/scene/VertexBuffer$Usage;

    sget-object v6, Lcom/jme3/scene/VertexBuffer$Format;->Float:Lcom/jme3/scene/VertexBuffer$Format;

    iget-object v7, p0, Lcom/jme3/scene/plugins/ogre/MeshLoader;->fb:Ljava/nio/FloatBuffer;

    invoke-virtual {v4, v5, v9, v6, v7}, Lcom/jme3/scene/VertexBuffer;->setupData(Lcom/jme3/scene/VertexBuffer$Usage;ILcom/jme3/scene/VertexBuffer$Format;Ljava/nio/Buffer;)V

    .line 422
    iget-object v4, p0, Lcom/jme3/scene/plugins/ogre/MeshLoader;->mesh:Lcom/jme3/scene/Mesh;

    iget-object v5, p0, Lcom/jme3/scene/plugins/ogre/MeshLoader;->vb:Lcom/jme3/scene/VertexBuffer;

    invoke-virtual {v4, v5}, Lcom/jme3/scene/Mesh;->setBuffer(Lcom/jme3/scene/VertexBuffer;)V

    .line 425
    :cond_4
    const-string v4, "texture_coords"

    invoke-interface {p1, v4}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4, v8}, Lcom/jme3/util/xml/SAXUtil;->parseInt(Ljava/lang/String;I)I

    move-result v3

    .line 426
    .local v3, texCoords:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    if-ge v2, v3, :cond_8

    .line 427
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "texture_coord_dimensions_"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {p1, v4}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x2

    invoke-static {v4, v5}, Lcom/jme3/util/xml/SAXUtil;->parseInt(Ljava/lang/String;I)I

    move-result v1

    .line 428
    .local v1, dims:I
    const/4 v4, 0x1

    if-lt v1, v4, :cond_5

    if-le v1, v10, :cond_6

    .line 429
    :cond_5
    new-instance v4, Lorg/xml/sax/SAXException;

    const-string v5, "Texture coord dimensions must be 1 <= dims <= 4"

    invoke-direct {v4, v5}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 432
    :cond_6
    const/4 v4, 0x7

    if-gt v2, v4, :cond_7

    .line 433
    new-instance v4, Lcom/jme3/scene/VertexBuffer;

    sget-object v5, Lcom/jme3/scene/plugins/ogre/MeshLoader;->TEXCOORD_TYPES:[Lcom/jme3/scene/VertexBuffer$Type;

    aget-object v5, v5, v2

    invoke-direct {v4, v5}, Lcom/jme3/scene/VertexBuffer;-><init>(Lcom/jme3/scene/VertexBuffer$Type;)V

    iput-object v4, p0, Lcom/jme3/scene/plugins/ogre/MeshLoader;->vb:Lcom/jme3/scene/VertexBuffer;

    .line 438
    iget v4, p0, Lcom/jme3/scene/plugins/ogre/MeshLoader;->vertCount:I

    mul-int/2addr v4, v1

    invoke-static {v4}, Lcom/jme3/util/BufferUtils;->createFloatBuffer(I)Ljava/nio/FloatBuffer;

    move-result-object v4

    iput-object v4, p0, Lcom/jme3/scene/plugins/ogre/MeshLoader;->fb:Ljava/nio/FloatBuffer;

    .line 439
    iget-object v4, p0, Lcom/jme3/scene/plugins/ogre/MeshLoader;->vb:Lcom/jme3/scene/VertexBuffer;

    sget-object v5, Lcom/jme3/scene/VertexBuffer$Usage;->Static:Lcom/jme3/scene/VertexBuffer$Usage;

    sget-object v6, Lcom/jme3/scene/VertexBuffer$Format;->Float:Lcom/jme3/scene/VertexBuffer$Format;

    iget-object v7, p0, Lcom/jme3/scene/plugins/ogre/MeshLoader;->fb:Ljava/nio/FloatBuffer;

    invoke-virtual {v4, v5, v1, v6, v7}, Lcom/jme3/scene/VertexBuffer;->setupData(Lcom/jme3/scene/VertexBuffer$Usage;ILcom/jme3/scene/VertexBuffer$Format;Ljava/nio/Buffer;)V

    .line 440
    iget-object v4, p0, Lcom/jme3/scene/plugins/ogre/MeshLoader;->mesh:Lcom/jme3/scene/Mesh;

    iget-object v5, p0, Lcom/jme3/scene/plugins/ogre/MeshLoader;->vb:Lcom/jme3/scene/VertexBuffer;

    invoke-virtual {v4, v5}, Lcom/jme3/scene/Mesh;->setBuffer(Lcom/jme3/scene/VertexBuffer;)V

    .line 426
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 436
    :cond_7
    new-instance v4, Lorg/xml/sax/SAXException;

    const-string v5, "More than 8 texture coordinates not supported"

    invoke-direct {v4, v5}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 442
    .end local v1           #dims:I
    :cond_8
    return-void
.end method


# virtual methods
.method public characters([CII)V
    .locals 0
    .parameter "ch"
    .parameter "start"
    .parameter "length"

    .prologue
    .line 741
    return-void
.end method

.method public endDocument()V
    .locals 0

    .prologue
    .line 147
    return-void
.end method

.method public endElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 8
    .parameter "uri"
    .parameter "name"
    .parameter "qName"

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x0

    .line 683
    iget-object v5, p0, Lcom/jme3/scene/plugins/ogre/MeshLoader;->ignoreUntilEnd:Ljava/lang/String;

    if-eqz v5, :cond_1

    .line 684
    iget-object v5, p0, Lcom/jme3/scene/plugins/ogre/MeshLoader;->ignoreUntilEnd:Ljava/lang/String;

    invoke-virtual {v5, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 685
    iput-object v6, p0, Lcom/jme3/scene/plugins/ogre/MeshLoader;->ignoreUntilEnd:Ljava/lang/String;

    .line 737
    :cond_0
    :goto_0
    return-void

    .line 690
    :cond_1
    const-string v5, "submesh"

    invoke-virtual {p3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 691
    iput-boolean v7, p0, Lcom/jme3/scene/plugins/ogre/MeshLoader;->usesBigIndices:Z

    .line 692
    iput-object v6, p0, Lcom/jme3/scene/plugins/ogre/MeshLoader;->geom:Lcom/jme3/scene/Geometry;

    .line 693
    iput-object v6, p0, Lcom/jme3/scene/plugins/ogre/MeshLoader;->mesh:Lcom/jme3/scene/Mesh;

    goto :goto_0

    .line 694
    :cond_2
    const-string v5, "submeshes"

    invoke-virtual {p3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 696
    iput-object v6, p0, Lcom/jme3/scene/plugins/ogre/MeshLoader;->geom:Lcom/jme3/scene/Geometry;

    .line 697
    iget-object v5, p0, Lcom/jme3/scene/plugins/ogre/MeshLoader;->sharedMesh:Lcom/jme3/scene/Mesh;

    iput-object v5, p0, Lcom/jme3/scene/plugins/ogre/MeshLoader;->mesh:Lcom/jme3/scene/Mesh;

    .line 698
    iput-boolean v7, p0, Lcom/jme3/scene/plugins/ogre/MeshLoader;->usesSharedVerts:Z

    goto :goto_0

    .line 699
    :cond_3
    const-string v5, "faces"

    invoke-virtual {p3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 700
    iget-object v5, p0, Lcom/jme3/scene/plugins/ogre/MeshLoader;->ib:Ljava/nio/IntBuffer;

    if-eqz v5, :cond_4

    .line 701
    iget-object v5, p0, Lcom/jme3/scene/plugins/ogre/MeshLoader;->ib:Ljava/nio/IntBuffer;

    invoke-virtual {v5}, Ljava/nio/IntBuffer;->flip()Ljava/nio/Buffer;

    .line 706
    :goto_1
    iput-object v6, p0, Lcom/jme3/scene/plugins/ogre/MeshLoader;->vb:Lcom/jme3/scene/VertexBuffer;

    .line 707
    iput-object v6, p0, Lcom/jme3/scene/plugins/ogre/MeshLoader;->ib:Ljava/nio/IntBuffer;

    .line 708
    iput-object v6, p0, Lcom/jme3/scene/plugins/ogre/MeshLoader;->sb:Ljava/nio/ShortBuffer;

    goto :goto_0

    .line 703
    :cond_4
    iget-object v5, p0, Lcom/jme3/scene/plugins/ogre/MeshLoader;->sb:Ljava/nio/ShortBuffer;

    invoke-virtual {v5}, Ljava/nio/ShortBuffer;->flip()Ljava/nio/Buffer;

    goto :goto_1

    .line 709
    :cond_5
    const-string v5, "vertexbuffer"

    invoke-virtual {p3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_6

    .line 710
    iput-object v6, p0, Lcom/jme3/scene/plugins/ogre/MeshLoader;->fb:Ljava/nio/FloatBuffer;

    .line 711
    iput-object v6, p0, Lcom/jme3/scene/plugins/ogre/MeshLoader;->vb:Lcom/jme3/scene/VertexBuffer;

    goto :goto_0

    .line 712
    :cond_6
    const-string v5, "geometry"

    invoke-virtual {p3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_7

    const-string v5, "sharedgeometry"

    invoke-virtual {p3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_a

    .line 715
    :cond_7
    iget-object v5, p0, Lcom/jme3/scene/plugins/ogre/MeshLoader;->mesh:Lcom/jme3/scene/Mesh;

    invoke-virtual {v5}, Lcom/jme3/scene/Mesh;->getBufferList()Lcom/jme3/util/SafeArrayList;

    move-result-object v5

    invoke-virtual {v5}, Lcom/jme3/util/SafeArrayList;->getArray()[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/jme3/scene/VertexBuffer;

    .local v0, arr$:[Lcom/jme3/scene/VertexBuffer;
    array-length v4, v0

    .local v4, len$:I
    const/4 v3, 0x0

    .local v3, i$:I
    :goto_2
    if-ge v3, v4, :cond_9

    aget-object v1, v0, v3

    .line 716
    .local v1, buf:Lcom/jme3/scene/VertexBuffer;
    invoke-virtual {v1}, Lcom/jme3/scene/VertexBuffer;->getData()Ljava/nio/Buffer;

    move-result-object v2

    .line 717
    .local v2, data:Ljava/nio/Buffer;
    invoke-virtual {v2}, Ljava/nio/Buffer;->position()I

    move-result v5

    if-eqz v5, :cond_8

    .line 718
    invoke-virtual {v2}, Ljava/nio/Buffer;->flip()Ljava/nio/Buffer;

    .line 715
    :cond_8
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 721
    .end local v1           #buf:Lcom/jme3/scene/VertexBuffer;
    .end local v2           #data:Ljava/nio/Buffer;
    :cond_9
    iget-object v5, p0, Lcom/jme3/scene/plugins/ogre/MeshLoader;->mesh:Lcom/jme3/scene/Mesh;

    invoke-virtual {v5}, Lcom/jme3/scene/Mesh;->updateBound()V

    .line 722
    iget-object v5, p0, Lcom/jme3/scene/plugins/ogre/MeshLoader;->mesh:Lcom/jme3/scene/Mesh;

    invoke-virtual {v5}, Lcom/jme3/scene/Mesh;->setStatic()V

    .line 724
    const-string v5, "sharedgeometry"

    invoke-virtual {p3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 725
    iput-object v6, p0, Lcom/jme3/scene/plugins/ogre/MeshLoader;->geom:Lcom/jme3/scene/Geometry;

    .line 726
    iput-object v6, p0, Lcom/jme3/scene/plugins/ogre/MeshLoader;->mesh:Lcom/jme3/scene/Mesh;

    goto/16 :goto_0

    .line 728
    .end local v0           #arr$:[Lcom/jme3/scene/VertexBuffer;
    .end local v3           #i$:I
    .end local v4           #len$:I
    :cond_a
    const-string v5, "lodfacelist"

    invoke-virtual {p3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_b

    .line 729
    iget-object v5, p0, Lcom/jme3/scene/plugins/ogre/MeshLoader;->sb:Ljava/nio/ShortBuffer;

    invoke-virtual {v5}, Ljava/nio/ShortBuffer;->flip()Ljava/nio/Buffer;

    .line 730
    iput-object v6, p0, Lcom/jme3/scene/plugins/ogre/MeshLoader;->vb:Lcom/jme3/scene/VertexBuffer;

    .line 731
    iput-object v6, p0, Lcom/jme3/scene/plugins/ogre/MeshLoader;->sb:Ljava/nio/ShortBuffer;

    goto/16 :goto_0

    .line 732
    :cond_b
    const-string v5, "levelofdetail"

    invoke-virtual {p3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_c

    .line 733
    invoke-direct {p0}, Lcom/jme3/scene/plugins/ogre/MeshLoader;->endLevelOfDetail()V

    goto/16 :goto_0

    .line 734
    :cond_c
    const-string v5, "boneassignments"

    invoke-virtual {p3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 735
    invoke-direct {p0}, Lcom/jme3/scene/plugins/ogre/MeshLoader;->endBoneAssigns()V

    goto/16 :goto_0
.end method

.method public load(Lcom/jme3/asset/AssetInfo;)Ljava/lang/Object;
    .locals 7
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 813
    :try_start_0
    invoke-virtual {p1}, Lcom/jme3/asset/AssetInfo;->getKey()Lcom/jme3/asset/AssetKey;

    move-result-object v0

    iput-object v0, p0, Lcom/jme3/scene/plugins/ogre/MeshLoader;->key:Lcom/jme3/asset/AssetKey;

    .line 814
    iget-object v0, p0, Lcom/jme3/scene/plugins/ogre/MeshLoader;->key:Lcom/jme3/asset/AssetKey;

    invoke-virtual {v0}, Lcom/jme3/asset/AssetKey;->getName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/jme3/scene/plugins/ogre/MeshLoader;->meshName:Ljava/lang/String;

    .line 815
    iget-object v0, p0, Lcom/jme3/scene/plugins/ogre/MeshLoader;->key:Lcom/jme3/asset/AssetKey;

    invoke-virtual {v0}, Lcom/jme3/asset/AssetKey;->getFolder()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/jme3/scene/plugins/ogre/MeshLoader;->folderName:Ljava/lang/String;

    .line 816
    iget-object v0, p0, Lcom/jme3/scene/plugins/ogre/MeshLoader;->key:Lcom/jme3/asset/AssetKey;

    invoke-virtual {v0}, Lcom/jme3/asset/AssetKey;->getExtension()Ljava/lang/String;

    move-result-object v0

    .line 817
    iget-object v1, p0, Lcom/jme3/scene/plugins/ogre/MeshLoader;->meshName:Ljava/lang/String;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/jme3/scene/plugins/ogre/MeshLoader;->meshName:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    sub-int v0, v4, v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {v1, v3, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/jme3/scene/plugins/ogre/MeshLoader;->meshName:Ljava/lang/String;

    .line 818
    iget-object v0, p0, Lcom/jme3/scene/plugins/ogre/MeshLoader;->folderName:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/jme3/scene/plugins/ogre/MeshLoader;->folderName:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_0

    .line 819
    iget-object v0, p0, Lcom/jme3/scene/plugins/ogre/MeshLoader;->meshName:Ljava/lang/String;

    iget-object v1, p0, Lcom/jme3/scene/plugins/ogre/MeshLoader;->folderName:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/jme3/scene/plugins/ogre/MeshLoader;->meshName:Ljava/lang/String;

    .line 821
    :cond_0
    invoke-virtual {p1}, Lcom/jme3/asset/AssetInfo;->getManager()Lcom/jme3/asset/AssetManager;

    move-result-object v0

    iput-object v0, p0, Lcom/jme3/scene/plugins/ogre/MeshLoader;->assetManager:Lcom/jme3/asset/AssetManager;

    .line 823
    iget-object v0, p0, Lcom/jme3/scene/plugins/ogre/MeshLoader;->key:Lcom/jme3/asset/AssetKey;

    instance-of v0, v0, Lcom/jme3/scene/plugins/ogre/OgreMeshKey;

    if-eqz v0, :cond_4

    .line 826
    iget-object v0, p0, Lcom/jme3/scene/plugins/ogre/MeshLoader;->key:Lcom/jme3/asset/AssetKey;

    check-cast v0, Lcom/jme3/scene/plugins/ogre/OgreMeshKey;

    .line 827
    invoke-virtual {v0}, Lcom/jme3/scene/plugins/ogre/OgreMeshKey;->getMaterialList()Lcom/jme3/material/MaterialList;

    move-result-object v1

    iput-object v1, p0, Lcom/jme3/scene/plugins/ogre/MeshLoader;->materialList:Lcom/jme3/material/MaterialList;

    .line 828
    invoke-virtual {v0}, Lcom/jme3/scene/plugins/ogre/OgreMeshKey;->getMaterialName()Ljava/lang/String;

    move-result-object v0

    .line 831
    iget-object v1, p0, Lcom/jme3/scene/plugins/ogre/MeshLoader;->materialList:Lcom/jme3/material/MaterialList;

    if-nez v1, :cond_1

    if-eqz v0, :cond_1

    .line 832
    new-instance v1, Lcom/jme3/scene/plugins/ogre/matext/OgreMaterialKey;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/jme3/scene/plugins/ogre/MeshLoader;->folderName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, ".material"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/jme3/scene/plugins/ogre/matext/OgreMaterialKey;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/xml/sax/SAXException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_0 .. :try_end_0} :catch_2

    .line 834
    :try_start_1
    iget-object v0, p0, Lcom/jme3/scene/plugins/ogre/MeshLoader;->assetManager:Lcom/jme3/asset/AssetManager;

    invoke-interface {v0, v1}, Lcom/jme3/asset/AssetManager;->loadAsset(Lcom/jme3/asset/AssetKey;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/jme3/material/MaterialList;

    iput-object v0, p0, Lcom/jme3/scene/plugins/ogre/MeshLoader;->materialList:Lcom/jme3/material/MaterialList;
    :try_end_1
    .catch Lcom/jme3/asset/AssetNotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Lorg/xml/sax/SAXException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_1 .. :try_end_1} :catch_2

    .line 848
    :cond_1
    :goto_0
    :try_start_2
    iget-object v0, p0, Lcom/jme3/scene/plugins/ogre/MeshLoader;->materialList:Lcom/jme3/material/MaterialList;

    if-nez v0, :cond_2

    .line 849
    new-instance v1, Lcom/jme3/scene/plugins/ogre/matext/OgreMaterialKey;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/jme3/scene/plugins/ogre/MeshLoader;->folderName:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v3, p0, Lcom/jme3/scene/plugins/ogre/MeshLoader;->meshName:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, ".material"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/jme3/scene/plugins/ogre/matext/OgreMaterialKey;-><init>(Ljava/lang/String;)V
    :try_end_2
    .catch Lorg/xml/sax/SAXException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_2 .. :try_end_2} :catch_2

    .line 851
    :try_start_3
    iget-object v0, p0, Lcom/jme3/scene/plugins/ogre/MeshLoader;->assetManager:Lcom/jme3/asset/AssetManager;

    invoke-interface {v0, v1}, Lcom/jme3/asset/AssetManager;->loadAsset(Lcom/jme3/asset/AssetKey;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/jme3/material/MaterialList;

    iput-object v0, p0, Lcom/jme3/scene/plugins/ogre/MeshLoader;->materialList:Lcom/jme3/material/MaterialList;
    :try_end_3
    .catch Lcom/jme3/asset/AssetNotFoundException; {:try_start_3 .. :try_end_3} :catch_3
    .catch Lorg/xml/sax/SAXException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_3 .. :try_end_3} :catch_2

    .line 862
    :cond_2
    :goto_1
    :try_start_4
    invoke-static {}, Ljavax/xml/parsers/SAXParserFactory;->newInstance()Ljavax/xml/parsers/SAXParserFactory;

    move-result-object v0

    .line 863
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljavax/xml/parsers/SAXParserFactory;->setNamespaceAware(Z)V

    .line 865
    invoke-virtual {v0}, Ljavax/xml/parsers/SAXParserFactory;->newSAXParser()Ljavax/xml/parsers/SAXParser;

    move-result-object v0

    invoke-virtual {v0}, Ljavax/xml/parsers/SAXParser;->getXMLReader()Lorg/xml/sax/XMLReader;

    move-result-object v0

    .line 866
    invoke-interface {v0, p0}, Lorg/xml/sax/XMLReader;->setContentHandler(Lorg/xml/sax/ContentHandler;)V

    .line 867
    invoke-interface {v0, p0}, Lorg/xml/sax/XMLReader;->setErrorHandler(Lorg/xml/sax/ErrorHandler;)V
    :try_end_4
    .catch Lorg/xml/sax/SAXException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_4 .. :try_end_4} :catch_2

    .line 871
    :try_start_5
    new-instance v1, Ljava/io/InputStreamReader;

    invoke-virtual {p1}, Lcom/jme3/asset/AssetInfo;->openStream()Ljava/io/InputStream;

    move-result-object v3

    invoke-direct {v1, v3}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 872
    :try_start_6
    new-instance v2, Lorg/xml/sax/InputSource;

    invoke-direct {v2, v1}, Lorg/xml/sax/InputSource;-><init>(Ljava/io/Reader;)V

    invoke-interface {v0, v2}, Lorg/xml/sax/XMLReader;->parse(Lorg/xml/sax/InputSource;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 874
    if-eqz v1, :cond_3

    .line 875
    :try_start_7
    invoke-virtual {v1}, Ljava/io/InputStreamReader;->close()V

    .line 879
    :cond_3
    invoke-direct {p0}, Lcom/jme3/scene/plugins/ogre/MeshLoader;->compileModel()Lcom/jme3/scene/Node;

    move-result-object v0

    return-object v0

    .line 835
    :catch_0
    move-exception v0

    .line 836
    sget-object v0, Lcom/jme3/scene/plugins/ogre/MeshLoader;->logger:Ljava/util/logging/Logger;

    sget-object v3, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    const-string v4, "Cannot locate {0} for model {1}"

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object v1, v5, v6

    const/4 v1, 0x1

    iget-object v6, p0, Lcom/jme3/scene/plugins/ogre/MeshLoader;->key:Lcom/jme3/asset/AssetKey;

    aput-object v6, v5, v1

    invoke-virtual {v0, v3, v4, v5}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_7
    .catch Lorg/xml/sax/SAXException; {:try_start_7 .. :try_end_7} :catch_1
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_7 .. :try_end_7} :catch_2

    goto :goto_0

    .line 880
    :catch_1
    move-exception v0

    .line 881
    new-instance v1, Ljava/io/IOException;

    const-string v2, "Error while parsing Ogre3D mesh.xml"

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 882
    invoke-virtual {v1, v0}, Ljava/io/IOException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 883
    throw v1

    .line 842
    :cond_4
    const/4 v0, 0x0

    :try_start_8
    iput-object v0, p0, Lcom/jme3/scene/plugins/ogre/MeshLoader;->materialList:Lcom/jme3/material/MaterialList;
    :try_end_8
    .catch Lorg/xml/sax/SAXException; {:try_start_8 .. :try_end_8} :catch_1
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_8 .. :try_end_8} :catch_2

    goto/16 :goto_0

    .line 884
    :catch_2
    move-exception v0

    .line 885
    new-instance v1, Ljava/io/IOException;

    const-string v2, "Error while parsing Ogre3D mesh.xml"

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 886
    invoke-virtual {v1, v0}, Ljava/io/IOException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 887
    throw v1

    .line 852
    :catch_3
    move-exception v0

    .line 853
    :try_start_9
    sget-object v0, Lcom/jme3/scene/plugins/ogre/MeshLoader;->logger:Ljava/util/logging/Logger;

    sget-object v3, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    const-string v4, "Cannot locate {0} for model {1}"

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object v1, v5, v6

    const/4 v1, 0x1

    iget-object v6, p0, Lcom/jme3/scene/plugins/ogre/MeshLoader;->key:Lcom/jme3/asset/AssetKey;

    aput-object v6, v5, v1

    invoke-virtual {v0, v3, v4, v5}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_1

    .line 874
    :catchall_0
    move-exception v0

    move-object v1, v2

    :goto_2
    if-eqz v1, :cond_5

    .line 875
    invoke-virtual {v1}, Ljava/io/InputStreamReader;->close()V

    :cond_5
    throw v0
    :try_end_9
    .catch Lorg/xml/sax/SAXException; {:try_start_9 .. :try_end_9} :catch_1
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_9 .. :try_end_9} :catch_2

    .line 874
    :catchall_1
    move-exception v0

    goto :goto_2
.end method

.method public startDocument()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 120
    iget-object v0, p0, Lcom/jme3/scene/plugins/ogre/MeshLoader;->geoms:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 121
    iget-object v0, p0, Lcom/jme3/scene/plugins/ogre/MeshLoader;->lodLevels:Lcom/jme3/util/IntMap;

    invoke-virtual {v0}, Lcom/jme3/util/IntMap;->clear()V

    .line 123
    iput-object v1, p0, Lcom/jme3/scene/plugins/ogre/MeshLoader;->sb:Ljava/nio/ShortBuffer;

    .line 124
    iput-object v1, p0, Lcom/jme3/scene/plugins/ogre/MeshLoader;->ib:Ljava/nio/IntBuffer;

    .line 125
    iput-object v1, p0, Lcom/jme3/scene/plugins/ogre/MeshLoader;->fb:Ljava/nio/FloatBuffer;

    .line 126
    iput-object v1, p0, Lcom/jme3/scene/plugins/ogre/MeshLoader;->vb:Lcom/jme3/scene/VertexBuffer;

    .line 127
    iput-object v1, p0, Lcom/jme3/scene/plugins/ogre/MeshLoader;->mesh:Lcom/jme3/scene/Mesh;

    .line 128
    iput-object v1, p0, Lcom/jme3/scene/plugins/ogre/MeshLoader;->geom:Lcom/jme3/scene/Geometry;

    .line 129
    iput-object v1, p0, Lcom/jme3/scene/plugins/ogre/MeshLoader;->sharedMesh:Lcom/jme3/scene/Mesh;

    .line 131
    iget-object v0, p0, Lcom/jme3/scene/plugins/ogre/MeshLoader;->usesSharedMesh:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 132
    iput-boolean v2, p0, Lcom/jme3/scene/plugins/ogre/MeshLoader;->usesSharedVerts:Z

    .line 133
    iput v2, p0, Lcom/jme3/scene/plugins/ogre/MeshLoader;->vertCount:I

    .line 134
    iput v2, p0, Lcom/jme3/scene/plugins/ogre/MeshLoader;->meshIndex:I

    .line 135
    iput v2, p0, Lcom/jme3/scene/plugins/ogre/MeshLoader;->texCoordIndex:I

    .line 136
    iput-object v1, p0, Lcom/jme3/scene/plugins/ogre/MeshLoader;->ignoreUntilEnd:Ljava/lang/String;

    .line 138
    iput-object v1, p0, Lcom/jme3/scene/plugins/ogre/MeshLoader;->animData:Lcom/jme3/scene/plugins/ogre/AnimData;

    .line 140
    iput-boolean v2, p0, Lcom/jme3/scene/plugins/ogre/MeshLoader;->actuallyHasWeights:Z

    .line 141
    iput-object v1, p0, Lcom/jme3/scene/plugins/ogre/MeshLoader;->indicesData:Ljava/nio/ByteBuffer;

    .line 142
    iput-object v1, p0, Lcom/jme3/scene/plugins/ogre/MeshLoader;->weightsFloatData:Ljava/nio/FloatBuffer;

    .line 143
    return-void
.end method

.method public startElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/xml/sax/Attributes;)V
    .locals 5
    .parameter "uri"
    .parameter "localName"
    .parameter "qName"
    .parameter "attribs"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 606
    iget-object v1, p0, Lcom/jme3/scene/plugins/ogre/MeshLoader;->ignoreUntilEnd:Ljava/lang/String;

    if-eqz v1, :cond_1

    .line 679
    :cond_0
    :goto_0
    return-void

    .line 610
    :cond_1
    const-string v1, "texcoord"

    invoke-virtual {p3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 611
    invoke-direct {p0, p4}, Lcom/jme3/scene/plugins/ogre/MeshLoader;->pushTexCoord(Lorg/xml/sax/Attributes;)V

    goto :goto_0

    .line 612
    :cond_2
    const-string v1, "vertexboneassignment"

    invoke-virtual {p3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 613
    const-string v1, "vertexindex"

    invoke-interface {p4, v1}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "boneindex"

    invoke-interface {p4, v2}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "weight"

    invoke-interface {p4, v3}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v1, v2, v3}, Lcom/jme3/scene/plugins/ogre/MeshLoader;->pushBoneAssign(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 616
    :cond_3
    const-string v1, "face"

    invoke-virtual {p3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 617
    const-string v1, "v1"

    invoke-interface {p4, v1}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "v2"

    invoke-interface {p4, v2}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "v3"

    invoke-interface {p4, v3}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v1, v2, v3}, Lcom/jme3/scene/plugins/ogre/MeshLoader;->pushFace(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 620
    :cond_4
    const-string v1, "position"

    invoke-virtual {p3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 621
    sget-object v1, Lcom/jme3/scene/VertexBuffer$Type;->Position:Lcom/jme3/scene/VertexBuffer$Type;

    invoke-direct {p0, v1, p4}, Lcom/jme3/scene/plugins/ogre/MeshLoader;->pushAttrib(Lcom/jme3/scene/VertexBuffer$Type;Lorg/xml/sax/Attributes;)V

    goto :goto_0

    .line 622
    :cond_5
    const-string v1, "normal"

    invoke-virtual {p3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 623
    sget-object v1, Lcom/jme3/scene/VertexBuffer$Type;->Normal:Lcom/jme3/scene/VertexBuffer$Type;

    invoke-direct {p0, v1, p4}, Lcom/jme3/scene/plugins/ogre/MeshLoader;->pushAttrib(Lcom/jme3/scene/VertexBuffer$Type;Lorg/xml/sax/Attributes;)V

    goto :goto_0

    .line 624
    :cond_6
    const-string v1, "tangent"

    invoke-virtual {p3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 625
    invoke-direct {p0, p4}, Lcom/jme3/scene/plugins/ogre/MeshLoader;->pushTangent(Lorg/xml/sax/Attributes;)V

    goto :goto_0

    .line 626
    :cond_7
    const-string v1, "binormal"

    invoke-virtual {p3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 627
    sget-object v1, Lcom/jme3/scene/VertexBuffer$Type;->Binormal:Lcom/jme3/scene/VertexBuffer$Type;

    invoke-direct {p0, v1, p4}, Lcom/jme3/scene/plugins/ogre/MeshLoader;->pushAttrib(Lcom/jme3/scene/VertexBuffer$Type;Lorg/xml/sax/Attributes;)V

    goto :goto_0

    .line 628
    :cond_8
    const-string v1, "colour_diffuse"

    invoke-virtual {p3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_9

    .line 629
    invoke-direct {p0, p4}, Lcom/jme3/scene/plugins/ogre/MeshLoader;->pushColor(Lorg/xml/sax/Attributes;)V

    goto/16 :goto_0

    .line 630
    :cond_9
    const-string v1, "vertex"

    invoke-virtual {p3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_a

    .line 631
    invoke-direct {p0}, Lcom/jme3/scene/plugins/ogre/MeshLoader;->startVertex()V

    goto/16 :goto_0

    .line 632
    :cond_a
    const-string v1, "faces"

    invoke-virtual {p3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_b

    .line 633
    const-string v1, "count"

    invoke-interface {p4, v1}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/jme3/scene/plugins/ogre/MeshLoader;->startFaces(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 634
    :cond_b
    const-string v1, "geometry"

    invoke-virtual {p3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_d

    .line 635
    const-string v1, "vertexcount"

    invoke-interface {p4, v1}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 636
    .local v0, count:Ljava/lang/String;
    if-nez v0, :cond_c

    .line 637
    const-string v1, "count"

    invoke-interface {p4, v1}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 639
    :cond_c
    invoke-direct {p0, v0}, Lcom/jme3/scene/plugins/ogre/MeshLoader;->startGeometry(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 640
    .end local v0           #count:Ljava/lang/String;
    :cond_d
    const-string v1, "vertexbuffer"

    invoke-virtual {p3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_e

    .line 641
    invoke-direct {p0, p4}, Lcom/jme3/scene/plugins/ogre/MeshLoader;->startVertexBuffer(Lorg/xml/sax/Attributes;)V

    goto/16 :goto_0

    .line 642
    :cond_e
    const-string v1, "lodfacelist"

    invoke-virtual {p3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_f

    .line 643
    const-string v1, "submeshindex"

    invoke-interface {p4, v1}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "numfaces"

    invoke-interface {p4, v2}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v1, v2}, Lcom/jme3/scene/plugins/ogre/MeshLoader;->startLodFaceList(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 645
    :cond_f
    const-string v1, "lodgenerated"

    invoke-virtual {p3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_10

    .line 646
    const-string v1, "fromdepthsquared"

    invoke-interface {p4, v1}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/jme3/scene/plugins/ogre/MeshLoader;->startLodGenerated(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 647
    :cond_10
    const-string v1, "levelofdetail"

    invoke-virtual {p3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_11

    .line 648
    const-string v1, "numlevels"

    invoke-interface {p4, v1}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/jme3/scene/plugins/ogre/MeshLoader;->startLevelOfDetail(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 649
    :cond_11
    const-string v1, "boneassignments"

    invoke-virtual {p3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_12

    .line 650
    invoke-direct {p0}, Lcom/jme3/scene/plugins/ogre/MeshLoader;->startBoneAssigns()V

    goto/16 :goto_0

    .line 651
    :cond_12
    const-string v1, "submesh"

    invoke-virtual {p3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_13

    .line 652
    const-string v1, "material"

    invoke-interface {p4, v1}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "usesharedvertices"

    invoke-interface {p4, v2}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "use32bitindexes"

    invoke-interface {p4, v3}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "operationtype"

    invoke-interface {p4, v4}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v1, v2, v3, v4}, Lcom/jme3/scene/plugins/ogre/MeshLoader;->startSubMesh(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 656
    :cond_13
    const-string v1, "sharedgeometry"

    invoke-virtual {p3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_15

    .line 657
    const-string v1, "vertexcount"

    invoke-interface {p4, v1}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 658
    .restart local v0       #count:Ljava/lang/String;
    if-nez v0, :cond_14

    .line 659
    const-string v1, "count"

    invoke-interface {p4, v1}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 662
    :cond_14
    if-eqz v0, :cond_0

    const-string v1, "0"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 663
    invoke-direct {p0, v0}, Lcom/jme3/scene/plugins/ogre/MeshLoader;->startSharedGeom(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 665
    .end local v0           #count:Ljava/lang/String;
    :cond_15
    const-string v1, "submeshes"

    invoke-virtual {p3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 667
    const-string v1, "skeletonlink"

    invoke-virtual {p3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_16

    .line 668
    const-string v1, "name"

    invoke-interface {p4, v1}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/jme3/scene/plugins/ogre/MeshLoader;->startSkeleton(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 669
    :cond_16
    const-string v1, "submeshnames"

    invoke-virtual {p3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 671
    const-string v1, "submeshname"

    invoke-virtual {p3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_17

    .line 672
    const-string v1, "index"

    invoke-interface {p4, v1}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "name"

    invoke-interface {p4, v2}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v1, v2}, Lcom/jme3/scene/plugins/ogre/MeshLoader;->startSubmeshName(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 673
    :cond_17
    const-string v1, "mesh"

    invoke-virtual {p3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 676
    sget-object v1, Lcom/jme3/scene/plugins/ogre/MeshLoader;->logger:Ljava/util/logging/Logger;

    sget-object v2, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    const-string v3, "Unknown tag: {0}. Ignoring."

    invoke-virtual {v1, v2, v3, p3}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Object;)V

    .line 677
    iput-object p3, p0, Lcom/jme3/scene/plugins/ogre/MeshLoader;->ignoreUntilEnd:Ljava/lang/String;

    goto/16 :goto_0
.end method
